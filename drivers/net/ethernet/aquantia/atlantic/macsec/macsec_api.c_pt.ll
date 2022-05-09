; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aq_mss_ingress_prectlf_record = type { [2 x i32], i32, i32, i32, i32 }
%struct.aq_mss_ingress_preclass_record = type { [2 x i32], i32, i32, i32, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_sc_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_sa_record = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_sakey_record = type { [8 x i32], i32 }
%struct.aq_mss_ingress_postclass_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_ingress_postctlf_record = type { [2 x i32], i32, i32, i32, i32 }
%struct.aq_mss_egress_ctlf_record = type { [2 x i32], i32, i32, i32, i32 }
%struct.aq_mss_egress_class_record = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_egress_sc_record = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_egress_sa_record = type { i32, i32, i32, i32, i32, i32 }
%struct.aq_mss_egress_sc_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_egress_sa_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_egress_common_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_ingress_sa_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.aq_mss_ingress_common_counters = type { [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }

@aq_mss_set_ingress_preclass_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.aq_mss_set_ingress_preclass_record = private unnamed_addr constant [35 x i8] c"aq_mss_set_ingress_preclass_record\00", align 1
@aq_mss_set_ingress_sc_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.aq_mss_set_ingress_sc_record = private unnamed_addr constant [29 x i8] c"aq_mss_set_ingress_sc_record\00", align 1
@aq_mss_set_ingress_sa_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.aq_mss_set_ingress_sa_record = private unnamed_addr constant [29 x i8] c"aq_mss_set_ingress_sa_record\00", align 1
@aq_mss_set_ingress_sakey_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.aq_mss_set_ingress_sakey_record = private unnamed_addr constant [32 x i8] c"aq_mss_set_ingress_sakey_record\00", align 1
@aq_mss_set_egress_sa_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.aq_mss_set_egress_sa_record = private unnamed_addr constant [28 x i8] c"aq_mss_set_egress_sa_record\00", align 1
@aq_mss_set_egress_sakey_record.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.aq_mss_set_egress_sakey_record = private unnamed_addr constant [31 x i8] c"aq_mss_set_egress_sakey_record\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [62 x i8] c"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 443, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_prectlf_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i7, label %if.end.set_ingress_prectlf_record.exit_crit_edge, label %if.end.i

if.end.set_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_ingress_prectlf_record.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 1
  %6 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %7, 16
  %conv7.i = trunc i32 %shr.i to i16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv7.i, ptr %5, align 2
  %arrayidx10.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %11 to i16
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12.i, ptr %4, align 2
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eth_type.i, align 4
  %conv15.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.i, ptr %3, align 2
  %match_mask.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %match_mask.i, align 4
  %conv18.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv18.i, ptr %2, align 2
  %match_type.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 3
  %19 = ptrtoint ptr %match_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %match_type.i, align 4
  %21 = trunc i32 %20 to i16
  %conv21.i = and i16 %21, 15
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 4
  %22 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action.i, align 4
  %.tr.i = trunc i32 %23 to i16
  %24 = shl i16 %.tr.i, 4
  %25 = and i16 %24, 16
  %conv26.i = or i16 %25, %conv21.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26.i, ptr %1, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 6, i8 noundef zeroext 0, i16 noundef zeroext %table_index) #4
  br label %set_ingress_prectlf_record.exit

set_ingress_prectlf_record.exit:                  ; preds = %if.end.i, %if.end.set_ingress_prectlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end.set_ingress_prectlf_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_ingress_prectlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_ingress_prectlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_prectlf_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 24)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i8, label %if.end.get_ingress_prectlf_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.then5.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.then5.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_prectlf_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i.2.i.if.end12.i_crit_edge, !prof !29

if.end38.i.2.i.if.end12.i_crit_edge:              ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end38.i.2.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end38.i.i:                                     ; preds = %if.then5.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_prectlf_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end12.i:                                       ; preds = %if.end38.i.2.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i61.i = or i16 %.pre.i, 112
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i61.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i68.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.i)
  %cmp.not.i.not.i69.i = icmp eq i16 %call.i.i68.i, -1
  br i1 %cmp.not.i.not.i69.i, label %if.end12.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i76.i, !prof !29

if.end12.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

for.cond.i64.i:                                   ; preds = %if.end38.i76.i
  %call.i.i68.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.1.i)
  %cmp.not.i.not.i69.1.i = icmp eq i16 %call.i.i68.1.i, -1
  br i1 %cmp.not.i.not.i69.1.i, label %for.cond.i64.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i76.1.i, !prof !29

for.cond.i64.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %for.cond.i64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end38.i76.1.i:                                 ; preds = %for.cond.i64.i
  %call.i76.i74.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.1.i)
  %cmp.not.i77.not.i75.1.i = icmp eq i16 %call.i76.i74.1.i, -1
  br i1 %cmp.not.i77.not.i75.1.i, label %if.end38.i76.1.i.get_ingress_prectlf_record.exit_crit_edge, label %for.cond.i64.1.i, !prof !29

if.end38.i76.1.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i76.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

for.cond.i64.1.i:                                 ; preds = %if.end38.i76.1.i
  %call.i.i68.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.2.i)
  %cmp.not.i.not.i69.2.i = icmp eq i16 %call.i.i68.2.i, -1
  br i1 %cmp.not.i.not.i69.2.i, label %for.cond.i64.1.i.get_ingress_prectlf_record.exit_crit_edge, label %if.end38.i76.2.i, !prof !29

for.cond.i64.1.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %for.cond.i64.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

if.end38.i76.2.i:                                 ; preds = %for.cond.i64.1.i
  %call.i76.i74.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.2.i)
  %cmp.not.i77.not.i75.2.i = icmp eq i16 %call.i76.i74.2.i, -1
  br i1 %cmp.not.i77.not.i75.2.i, label %if.end38.i76.2.i.get_ingress_prectlf_record.exit_crit_edge, label %for.cond.i64.2.i, !prof !29

if.end38.i76.2.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

for.cond.i64.2.i:                                 ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv27.i = zext i16 %call.i.i68.i to i32
  %conv30.i = zext i16 %call.i76.i74.i to i32
  %shl.i = shl nuw i32 %conv30.i, 16
  %or.i = or i32 %shl.i, %conv27.i
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %rec, align 4
  %conv34.i = zext i16 %call.i.i68.1.i to i32
  %arrayidx36.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv34.i, ptr %arrayidx36.i, align 4
  %conv38.i = zext i16 %call.i76.i74.1.i to i32
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv38.i, ptr %eth_type.i, align 4
  %conv40.i = zext i16 %call.i.i68.2.i to i32
  %match_mask.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 2
  %6 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv40.i, ptr %match_mask.i, align 4
  %7 = and i16 %call.i76.i74.2.i, 15
  %and.i = zext i16 %7 to i32
  %match_type.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %match_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %match_type.i, align 4
  %9 = lshr i16 %call.i76.i74.2.i, 4
  %10 = and i16 %9, 1
  %and45.i = zext i16 %10 to i32
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_prectlf_record, ptr %rec, i32 0, i32 4
  %11 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and45.i, ptr %action.i, align 4
  br label %get_ingress_prectlf_record.exit

if.end38.i76.i:                                   ; preds = %if.end12.i
  %call.i76.i74.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.i)
  %cmp.not.i77.not.i75.i = icmp eq i16 %call.i76.i74.i, -1
  br i1 %cmp.not.i77.not.i75.i, label %if.end38.i76.i.get_ingress_prectlf_record.exit_crit_edge, label %for.cond.i64.i, !prof !29

if.end38.i76.i.get_ingress_prectlf_record.exit_crit_edge: ; preds = %if.end38.i76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_prectlf_record.exit

get_ingress_prectlf_record.exit:                  ; preds = %if.end38.i76.i.get_ingress_prectlf_record.exit_crit_edge, %for.cond.i64.2.i, %if.end38.i76.2.i.get_ingress_prectlf_record.exit_crit_edge, %for.cond.i64.1.i.get_ingress_prectlf_record.exit_crit_edge, %if.end38.i76.1.i.get_ingress_prectlf_record.exit_crit_edge, %for.cond.i64.i.get_ingress_prectlf_record.exit_crit_edge, %if.end12.i.get_ingress_prectlf_record.exit_crit_edge, %if.end38.i.i.get_ingress_prectlf_record.exit_crit_edge, %if.end38.i.2.i.get_ingress_prectlf_record.exit_crit_edge, %for.cond.i.1.i.get_ingress_prectlf_record.exit_crit_edge, %if.end38.i.1.i.get_ingress_prectlf_record.exit_crit_edge, %for.cond.i.i.get_ingress_prectlf_record.exit_crit_edge, %if.then5.i.get_ingress_prectlf_record.exit_crit_edge, %if.end.get_ingress_prectlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i64.2.i ], [ -22, %if.end.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i76.2.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %for.cond.i64.1.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i76.1.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %for.cond.i64.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i76.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end12.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_prectlf_record.exit_crit_edge ], [ -62, %if.then5.i.get_ingress_prectlf_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_prectlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_prectlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_preclass_record(ptr noundef %hw, ptr noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [20 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %2 to i16
  %3 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %2, 16
  %conv7.i = trunc i32 %shr.i to i16
  %arrayidx8.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv7.i, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %6 to i16
  %arrayidx13.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv12.i, ptr %arrayidx13.i, align 2
  %shr16.i = lshr i32 %6, 16
  %conv18.i = trunc i32 %shr16.i to i16
  %arrayidx19.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv18.i, ptr %arrayidx19.i, align 2
  %tci.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 1
  %9 = ptrtoint ptr %tci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tci.i, align 4
  %11 = trunc i32 %10 to i16
  %conv21.i = and i16 %11, 255
  %arrayidx22.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 4
  %encr_offset.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 2
  %12 = ptrtoint ptr %encr_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encr_offset.i, align 4
  %.tr.i = trunc i32 %13 to i16
  %14 = shl i16 %.tr.i, 8
  %conv26.i = or i16 %14, %conv21.i
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv26.i, ptr %arrayidx22.i, align 2
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 3
  %16 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eth_type.i, align 4
  %conv28.i = trunc i32 %17 to i16
  %arrayidx29.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv28.i, ptr %arrayidx29.i, align 2
  %snap.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 4
  %19 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snap.i, align 4
  %conv32.i = trunc i32 %20 to i16
  %arrayidx33.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv32.i, ptr %arrayidx33.i, align 2
  %shr36.i = lshr i32 %20, 16
  %conv38.i = trunc i32 %shr36.i to i16
  %arrayidx39.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv38.i, ptr %arrayidx39.i, align 2
  %arrayidx41.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx41.i, align 4
  %25 = trunc i32 %24 to i16
  %conv43.i = and i16 %25, 255
  %arrayidx44.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 8
  %llc.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 5
  %26 = ptrtoint ptr %llc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %llc.i, align 4
  %.tr248.i = trunc i32 %27 to i16
  %28 = shl i16 %.tr248.i, 8
  %conv50.i = or i16 %28, %conv43.i
  %29 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv50.i, ptr %arrayidx44.i, align 2
  %shr52.i = lshr i32 %27, 8
  %conv54.i = trunc i32 %shr52.i to i16
  %arrayidx55.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 9
  %30 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv54.i, ptr %arrayidx55.i, align 2
  %mac_sa.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 6
  %31 = ptrtoint ptr %mac_sa.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac_sa.i, align 4
  %conv58.i = trunc i32 %32 to i16
  %arrayidx59.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 10
  %33 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv58.i, ptr %arrayidx59.i, align 2
  %shr62.i = lshr i32 %32, 16
  %conv64.i = trunc i32 %shr62.i to i16
  %arrayidx65.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 11
  %34 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv64.i, ptr %arrayidx65.i, align 2
  %arrayidx67.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx67.i, align 4
  %conv69.i = trunc i32 %36 to i16
  %arrayidx70.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 12
  %37 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv69.i, ptr %arrayidx70.i, align 2
  %mac_da.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 7
  %38 = ptrtoint ptr %mac_da.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_da.i, align 4
  %conv73.i = trunc i32 %39 to i16
  %arrayidx74.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 13
  %40 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv73.i, ptr %arrayidx74.i, align 2
  %shr77.i = lshr i32 %39, 16
  %conv79.i = trunc i32 %shr77.i to i16
  %arrayidx80.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 14
  %41 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv79.i, ptr %arrayidx80.i, align 2
  %arrayidx82.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx82.i, align 4
  %conv84.i = trunc i32 %43 to i16
  %arrayidx85.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 15
  %44 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv84.i, ptr %arrayidx85.i, align 2
  %lpbk_packet.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 8
  %45 = ptrtoint ptr %lpbk_packet.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lpbk_packet.i, align 4
  %47 = trunc i32 %46 to i16
  %conv87.i = and i16 %47, 1
  %arrayidx88.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 16
  %an_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 9
  %48 = ptrtoint ptr %an_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %an_mask.i, align 4
  %.tr249.i = trunc i32 %49 to i16
  %50 = shl i16 %.tr249.i, 1
  %51 = and i16 %50, 6
  %conv94.i = or i16 %51, %conv87.i
  %tci_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 10
  %52 = ptrtoint ptr %tci_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tci_mask.i, align 4
  %.tr250.i = trunc i32 %53 to i16
  %54 = shl i16 %.tr250.i, 3
  %55 = and i16 %54, 504
  %conv100.i = or i16 %conv94.i, %55
  %sci_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 11
  %56 = ptrtoint ptr %sci_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sci_mask.i, align 4
  %.tr251.i = trunc i32 %57 to i16
  %58 = shl i16 %.tr251.i, 9
  %conv106.i = or i16 %conv100.i, %58
  %59 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv106.i, ptr %arrayidx88.i, align 2
  %60 = lshr i16 %.tr251.i, 7
  %conv110.i = and i16 %60, 1
  %arrayidx111.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 17
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 12
  %61 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %eth_type_mask.i, align 4
  %.tr252.i = trunc i32 %62 to i16
  %63 = shl i16 %.tr252.i, 1
  %64 = and i16 %63, 6
  %conv117.i = or i16 %64, %conv110.i
  %snap_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 13
  %65 = ptrtoint ptr %snap_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %snap_mask.i, align 4
  %.tr253.i = trunc i32 %66 to i16
  %67 = shl i16 %.tr253.i, 3
  %68 = and i16 %67, 248
  %conv123.i = or i16 %conv117.i, %68
  %llc_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 14
  %69 = ptrtoint ptr %llc_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %llc_mask.i, align 4
  %.tr254.i = trunc i32 %70 to i16
  %71 = shl i16 %.tr254.i, 8
  %72 = and i16 %71, 1792
  %conv129.i = or i16 %conv123.i, %72
  %_802_2_encapsulate.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 15
  %73 = ptrtoint ptr %_802_2_encapsulate.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %_802_2_encapsulate.i, align 4
  %.tr255.i = trunc i32 %74 to i16
  %75 = shl i16 %.tr255.i, 11
  %76 = and i16 %75, 2048
  %conv135.i = or i16 %conv129.i, %76
  %sa_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 16
  %77 = ptrtoint ptr %sa_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sa_mask.i, align 4
  %.tr256.i = trunc i32 %78 to i16
  %79 = shl i16 %.tr256.i, 12
  %conv141.i = or i16 %conv135.i, %79
  %80 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv141.i, ptr %arrayidx111.i, align 2
  %81 = lshr i16 %.tr256.i, 4
  %conv145.i = and i16 %81, 3
  %arrayidx146.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 18
  %da_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 17
  %82 = ptrtoint ptr %da_mask.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %da_mask.i, align 4
  %.tr257.i = trunc i32 %83 to i16
  %84 = shl i16 %.tr257.i, 2
  %85 = and i16 %84, 252
  %conv152.i = or i16 %85, %conv145.i
  %lpbk_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 18
  %86 = ptrtoint ptr %lpbk_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lpbk_mask.i, align 4
  %.tr258.i = trunc i32 %87 to i16
  %88 = shl i16 %.tr258.i, 8
  %89 = and i16 %88, 256
  %conv158.i = or i16 %conv152.i, %89
  %sc_idx.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 19
  %90 = ptrtoint ptr %sc_idx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sc_idx.i, align 4
  %.tr259.i = trunc i32 %91 to i16
  %92 = shl i16 %.tr259.i, 9
  %93 = and i16 %92, 15872
  %conv164.i = or i16 %conv158.i, %93
  %proc_dest.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 20
  %94 = ptrtoint ptr %proc_dest.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %proc_dest.i, align 4
  %.tr260.i = trunc i32 %95 to i16
  %96 = shl i16 %.tr260.i, 14
  %97 = and i16 %96, 16384
  %conv170.i = or i16 %conv164.i, %97
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 21
  %98 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %action.i, align 4
  %.tr261.i = trunc i32 %99 to i16
  %100 = shl i16 %.tr261.i, 15
  %conv176.i = or i16 %conv170.i, %100
  %101 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv176.i, ptr %arrayidx146.i, align 2
  %102 = lshr i16 %.tr261.i, 1
  %conv180.i = and i16 %102, 1
  %arrayidx181.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 19
  %ctrl_unctrl.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 22
  %103 = ptrtoint ptr %ctrl_unctrl.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ctrl_unctrl.i, align 4
  %.tr262.i = trunc i32 %104 to i16
  %105 = shl i16 %.tr262.i, 1
  %106 = and i16 %105, 2
  %conv187.i = or i16 %106, %conv180.i
  %sci_from_table.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 23
  %107 = ptrtoint ptr %sci_from_table.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sci_from_table.i, align 4
  %.tr263.i = trunc i32 %108 to i16
  %109 = shl i16 %.tr263.i, 2
  %110 = and i16 %109, 4
  %conv193.i = or i16 %conv187.i, %110
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 24
  %111 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reserved.i, align 4
  %.tr264.i = trunc i32 %112 to i16
  %113 = shl i16 %.tr264.i, 3
  %114 = and i16 %113, 120
  %conv199.i = or i16 %conv193.i, %114
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 25
  %115 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %valid.i, align 4
  %.tr265.i = trunc i32 %116 to i16
  %117 = shl i16 %.tr265.i, 7
  %118 = and i16 %117, 128
  %conv205.i = or i16 %conv199.i, %118
  %119 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv205.i, ptr %arrayidx181.i, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 20, i8 noundef zeroext 1, i16 noundef zeroext %table_index) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_ingress_preclass_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_ingress_preclass_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_ingress_preclass_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_preclass_record(ptr noundef %hw, ptr noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [20 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 120)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i8, label %if.end.get_ingress_preclass_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_preclass_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_preclass_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -15
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %add54.i.i = add nuw nsw i32 %i.080.i.i, 2
  %cmp.i.i = icmp ult i32 %i.080.i.i, 18
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end12.i_crit_edge

for.cond.i.i.if.end12.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then5.i
  %i.080.i.i = phi i32 [ %add54.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i ]
  %3 = trunc i32 %i.080.i.i to i16
  %conv28.i.i = add nuw nsw i16 %3, -32608
  %arrayidx.i.i = getelementptr i16, ptr %packed_record.i, i32 %i.080.i.i
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv28.i.i) #4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.i.i.i, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %for.body.i.i.get_ingress_preclass_record.exit_crit_edge, label %if.end38.i.i, !prof !29

for.body.i.i.get_ingress_preclass_record.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_preclass_record.exit

if.end38.i.i:                                     ; preds = %for.body.i.i
  %conv41.i.i = add nuw nsw i16 %3, -32607
  %add42.i.i = or i32 %i.080.i.i, 1
  %arrayidx43.i.i = getelementptr i16, ptr %packed_record.i, i32 %add42.i.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv41.i.i) #4
  %5 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.i76.i.i, ptr %arrayidx43.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_preclass_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_preclass_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_preclass_record.exit

if.end12.i:                                       ; preds = %for.cond.i.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i238.i = or i16 %.pre.i, 113
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i238.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %6 = call ptr @memset(ptr %packed_record.i, i32 0, i32 40)
  br label %for.body.i247.i

for.cond.i241.i:                                  ; preds = %if.end38.i253.i
  %add54.i239.i = add nuw nsw i32 %i.080.i242.i, 2
  %cmp.i240.i = icmp ult i32 %i.080.i242.i, 18
  br i1 %cmp.i240.i, label %for.cond.i241.i.for.body.i247.i_crit_edge, label %if.end26.i

for.cond.i241.i.for.body.i247.i_crit_edge:        ; preds = %for.cond.i241.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i247.i

for.body.i247.i:                                  ; preds = %for.cond.i241.i.for.body.i247.i_crit_edge, %if.end12.i
  %i.080.i242.i = phi i32 [ %add54.i239.i, %for.cond.i241.i.for.body.i247.i_crit_edge ], [ 0, %if.end12.i ]
  %7 = trunc i32 %i.080.i242.i to i16
  %conv28.i243.i = add nuw nsw i16 %7, -32608
  %arrayidx.i244.i = getelementptr i16, ptr %packed_record.i, i32 %i.080.i242.i
  %call.i.i245.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv28.i243.i) #4
  %8 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call.i.i245.i, ptr %arrayidx.i244.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i245.i)
  %cmp.not.i.not.i246.i = icmp eq i16 %call.i.i245.i, -1
  br i1 %cmp.not.i.not.i246.i, label %for.body.i247.i.get_ingress_preclass_record.exit_crit_edge, label %if.end38.i253.i, !prof !29

for.body.i247.i.get_ingress_preclass_record.exit_crit_edge: ; preds = %for.body.i247.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_preclass_record.exit

if.end38.i253.i:                                  ; preds = %for.body.i247.i
  %conv41.i248.i = add nuw nsw i16 %7, -32607
  %add42.i249.i = or i32 %i.080.i242.i, 1
  %arrayidx43.i250.i = getelementptr i16, ptr %packed_record.i, i32 %add42.i249.i
  %call.i76.i251.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv41.i248.i) #4
  %9 = ptrtoint ptr %arrayidx43.i250.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call.i76.i251.i, ptr %arrayidx43.i250.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i251.i)
  %cmp.not.i77.not.i252.i = icmp eq i16 %call.i76.i251.i, -1
  br i1 %cmp.not.i77.not.i252.i, label %if.end38.i253.i.get_ingress_preclass_record.exit_crit_edge, label %for.cond.i241.i, !prof !29

if.end38.i253.i.get_ingress_preclass_record.exit_crit_edge: ; preds = %if.end38.i253.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_preclass_record.exit

if.end26.i:                                       ; preds = %for.cond.i241.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %packed_record.i, align 2
  %conv27.i = zext i16 %11 to i32
  %arrayidx29.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx29.i, align 2
  %conv30.i = zext i16 %13 to i32
  %shl.i = shl nuw i32 %conv30.i, 16
  %or.i = or i32 %shl.i, %conv27.i
  %14 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %rec, align 4
  %arrayidx33.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx33.i, align 2
  %conv34.i = zext i16 %16 to i32
  %arrayidx36.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %arrayidx37.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx37.i, align 2
  %conv38.i = zext i16 %18 to i32
  %shl39.i = shl nuw i32 %conv38.i, 16
  %or42.i = or i32 %shl39.i, %conv34.i
  %19 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or42.i, ptr %arrayidx36.i, align 4
  %arrayidx43.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx43.i, align 2
  %22 = and i16 %21, 255
  %and.i = zext i16 %22 to i32
  %tci.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 1
  %23 = ptrtoint ptr %tci.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %tci.i, align 4
  %24 = lshr i16 %21, 8
  %25 = zext i16 %24 to i32
  %encr_offset.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 2
  %26 = ptrtoint ptr %encr_offset.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %encr_offset.i, align 4
  %arrayidx48.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx48.i, align 2
  %conv49.i = zext i16 %28 to i32
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 3
  %29 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv49.i, ptr %eth_type.i, align 4
  %arrayidx50.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx50.i, align 2
  %conv51.i = zext i16 %31 to i32
  %snap.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 4
  %arrayidx53.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx53.i, align 2
  %conv54.i = zext i16 %33 to i32
  %shl55.i = shl nuw i32 %conv54.i, 16
  %or58.i = or i32 %shl55.i, %conv51.i
  %34 = ptrtoint ptr %snap.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or58.i, ptr %snap.i, align 4
  %arrayidx59.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 8
  %35 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx59.i, align 2
  %37 = and i16 %36, 255
  %and61.i = zext i16 %37 to i32
  %arrayidx63.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and61.i, ptr %arrayidx63.i, align 4
  %39 = lshr i16 %36, 8
  %40 = zext i16 %39 to i32
  %llc.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 5
  %arrayidx68.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx68.i, align 2
  %conv69.i = zext i16 %42 to i32
  %shl70.i = shl nuw nsw i32 %conv69.i, 8
  %or72.i = or i32 %shl70.i, %40
  %43 = ptrtoint ptr %llc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or72.i, ptr %llc.i, align 4
  %arrayidx73.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 10
  %44 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx73.i, align 2
  %conv74.i = zext i16 %45 to i32
  %mac_sa.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 6
  %arrayidx76.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 11
  %46 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx76.i, align 2
  %conv77.i = zext i16 %47 to i32
  %shl78.i = shl nuw i32 %conv77.i, 16
  %or81.i = or i32 %shl78.i, %conv74.i
  %48 = ptrtoint ptr %mac_sa.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or81.i, ptr %mac_sa.i, align 4
  %arrayidx82.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 12
  %49 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx82.i, align 2
  %conv83.i = zext i16 %50 to i32
  %arrayidx85.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv83.i, ptr %arrayidx85.i, align 4
  %arrayidx86.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 13
  %52 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx86.i, align 2
  %conv87.i = zext i16 %53 to i32
  %mac_da.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 7
  %arrayidx89.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 14
  %54 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx89.i, align 2
  %conv90.i = zext i16 %55 to i32
  %shl91.i = shl nuw i32 %conv90.i, 16
  %or94.i = or i32 %shl91.i, %conv87.i
  %56 = ptrtoint ptr %mac_da.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or94.i, ptr %mac_da.i, align 4
  %arrayidx95.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 15
  %57 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx95.i, align 2
  %conv96.i = zext i16 %58 to i32
  %arrayidx98.i = getelementptr %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv96.i, ptr %arrayidx98.i, align 4
  %arrayidx99.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 16
  %60 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx99.i, align 2
  %62 = and i16 %61, 1
  %and101.i = zext i16 %62 to i32
  %lpbk_packet.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 8
  %63 = ptrtoint ptr %lpbk_packet.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and101.i, ptr %lpbk_packet.i, align 4
  %64 = lshr i16 %61, 1
  %65 = and i16 %64, 3
  %and105.i = zext i16 %65 to i32
  %an_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 9
  %66 = ptrtoint ptr %an_mask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and105.i, ptr %an_mask.i, align 4
  %67 = lshr i16 %61, 3
  %68 = and i16 %67, 63
  %and109.i = zext i16 %68 to i32
  %tci_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 10
  %69 = ptrtoint ptr %tci_mask.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and109.i, ptr %tci_mask.i, align 4
  %70 = lshr i16 %61, 9
  %sci_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 11
  %arrayidx114.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 17
  %71 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx114.i, align 2
  %73 = shl i16 %72, 7
  %74 = and i16 %73, 128
  %or119234.i = or i16 %74, %70
  %or119.i = zext i16 %or119234.i to i32
  %75 = ptrtoint ptr %sci_mask.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or119.i, ptr %sci_mask.i, align 4
  %76 = lshr i16 %72, 1
  %77 = and i16 %76, 3
  %and123.i = zext i16 %77 to i32
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 12
  %78 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and123.i, ptr %eth_type_mask.i, align 4
  %79 = lshr i16 %72, 3
  %80 = and i16 %79, 31
  %and127.i = zext i16 %80 to i32
  %snap_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 13
  %81 = ptrtoint ptr %snap_mask.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and127.i, ptr %snap_mask.i, align 4
  %82 = lshr i16 %72, 8
  %83 = and i16 %82, 7
  %and131.i = zext i16 %83 to i32
  %llc_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 14
  %84 = ptrtoint ptr %llc_mask.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and131.i, ptr %llc_mask.i, align 4
  %85 = lshr i16 %72, 11
  %86 = and i16 %85, 1
  %and135.i = zext i16 %86 to i32
  %_802_2_encapsulate.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 15
  %87 = ptrtoint ptr %_802_2_encapsulate.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and135.i, ptr %_802_2_encapsulate.i, align 4
  %88 = lshr i16 %72, 12
  %sa_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 16
  %arrayidx140.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 18
  %89 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx140.i, align 2
  %91 = shl i16 %90, 4
  %92 = and i16 %91, 48
  %or145235.i = or i16 %92, %88
  %or145.i = zext i16 %or145235.i to i32
  %93 = ptrtoint ptr %sa_mask.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or145.i, ptr %sa_mask.i, align 4
  %94 = lshr i16 %90, 2
  %95 = and i16 %94, 63
  %and149.i = zext i16 %95 to i32
  %da_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 17
  %96 = ptrtoint ptr %da_mask.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and149.i, ptr %da_mask.i, align 4
  %97 = lshr i16 %90, 8
  %98 = and i16 %97, 1
  %and153.i = zext i16 %98 to i32
  %lpbk_mask.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 18
  %99 = ptrtoint ptr %lpbk_mask.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and153.i, ptr %lpbk_mask.i, align 4
  %100 = lshr i16 %90, 9
  %101 = and i16 %100, 31
  %and157.i = zext i16 %101 to i32
  %sc_idx.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 19
  %102 = ptrtoint ptr %sc_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and157.i, ptr %sc_idx.i, align 4
  %103 = lshr i16 %90, 14
  %104 = and i16 %103, 1
  %and161.i = zext i16 %104 to i32
  %proc_dest.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 20
  %105 = ptrtoint ptr %proc_dest.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and161.i, ptr %proc_dest.i, align 4
  %106 = lshr i16 %90, 15
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 21
  %arrayidx166.i = getelementptr inbounds [20 x i16], ptr %packed_record.i, i32 0, i32 19
  %107 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx166.i, align 2
  %109 = shl i16 %108, 1
  %110 = and i16 %109, 2
  %or171236.i = or i16 %110, %106
  %or171.i = zext i16 %or171236.i to i32
  %111 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or171.i, ptr %action.i, align 4
  %112 = lshr i16 %108, 1
  %113 = and i16 %112, 1
  %and175.i = zext i16 %113 to i32
  %ctrl_unctrl.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 22
  %114 = ptrtoint ptr %ctrl_unctrl.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and175.i, ptr %ctrl_unctrl.i, align 4
  %115 = lshr i16 %108, 2
  %116 = and i16 %115, 1
  %and179.i = zext i16 %116 to i32
  %sci_from_table.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 23
  %117 = ptrtoint ptr %sci_from_table.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and179.i, ptr %sci_from_table.i, align 4
  %118 = lshr i16 %108, 3
  %119 = and i16 %118, 15
  %and183.i = zext i16 %119 to i32
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 24
  %120 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and183.i, ptr %reserved.i, align 4
  %121 = lshr i16 %108, 7
  %122 = and i16 %121, 1
  %and187.i = zext i16 %122 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_preclass_record, ptr %rec, i32 0, i32 25
  %123 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and187.i, ptr %valid.i, align 4
  br label %get_ingress_preclass_record.exit

get_ingress_preclass_record.exit:                 ; preds = %if.end26.i, %if.end38.i253.i.get_ingress_preclass_record.exit_crit_edge, %for.body.i247.i.get_ingress_preclass_record.exit_crit_edge, %if.end38.i.i.get_ingress_preclass_record.exit_crit_edge, %for.body.i.i.get_ingress_preclass_record.exit_crit_edge, %if.end.get_ingress_preclass_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end26.i ], [ -22, %if.end.get_ingress_preclass_record.exit_crit_edge ], [ -62, %if.end38.i253.i.get_ingress_preclass_record.exit_crit_edge ], [ -62, %for.body.i247.i.get_ingress_preclass_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_preclass_record.exit_crit_edge ], [ -62, %for.body.i.i.get_ingress_preclass_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_preclass_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_preclass_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_sc_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 1
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %9, 16
  %conv5.i = trunc i32 %shr.i to i16
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %7, align 2
  %start_time.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 1
  %12 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_time.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8.i, ptr %6, align 2
  %shr11.i = lshr i32 %13, 16
  %conv13.i = trunc i32 %shr11.i to i16
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13.i, ptr %5, align 2
  %validate_frames.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %validate_frames.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %validate_frames.i, align 4
  %18 = trunc i32 %17 to i16
  %conv16.i = and i16 %18, 3
  %replay_protect.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 3
  %19 = ptrtoint ptr %replay_protect.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %replay_protect.i, align 4
  %.tr.i = trunc i32 %20 to i16
  %21 = shl i16 %.tr.i, 2
  %22 = and i16 %21, 4
  %conv21.i = or i16 %conv16.i, %22
  %anti_replay_window.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 4
  %23 = ptrtoint ptr %anti_replay_window.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %anti_replay_window.i, align 4
  %.tr91.i = trunc i32 %24 to i16
  %25 = shl i16 %.tr91.i, 3
  %conv27.i = or i16 %conv21.i, %25
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv27.i, ptr %4, align 2
  %shr29.i = lshr i32 %24, 13
  %conv31.i = trunc i32 %shr29.i to i16
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv31.i, ptr %3, align 2
  %shr34.i = lshr i32 %24, 29
  %receiving.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 5
  %28 = ptrtoint ptr %receiving.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %receiving.i, align 4
  %and38.i = shl i32 %29, 3
  %shl39.i = and i32 %and38.i, 8
  %or42.i = or i32 %shl39.i, %shr34.i
  %fresh.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 6
  %30 = ptrtoint ptr %fresh.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fresh.i, align 4
  %and44.i = shl i32 %31, 4
  %shl45.i = and i32 %and44.i, 16
  %or48.i = or i32 %or42.i, %shl45.i
  %an_rol.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 7
  %32 = ptrtoint ptr %an_rol.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %an_rol.i, align 4
  %and50.i = shl i32 %33, 5
  %shl51.i = and i32 %and50.i, 32
  %or54.i = or i32 %or48.i, %shl51.i
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 8
  %34 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reserved.i, align 4
  %and56.i = shl i32 %35, 6
  %or60.i = or i32 %or54.i, %and56.i
  %conv61.i = trunc i32 %or60.i to i16
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv61.i, ptr %2, align 2
  %shr63.i = lshr i32 %35, 10
  %37 = trunc i32 %shr63.i to i16
  %conv65.i = and i16 %37, 32767
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 9
  %38 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %valid.i, align 4
  %.tr92.i = trunc i32 %39 to i16
  %40 = shl i16 %.tr92.i, 15
  %conv72.i = or i16 %40, %conv65.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv72.i, ptr %1, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 3, i16 noundef zeroext %table_index) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_ingress_sc_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_ingress_sc_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 604, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_ingress_sc_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_sc_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 40)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_ingress_sc_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_sc_record.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

if.end.i:                                         ; preds = %if.end
  %bf.shl.i.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = or i16 %bf.shl.i.i, 115
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_ingress_sc_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_ingress_sc_record.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_sc_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_sc_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_sc_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_sc_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_ingress_sc_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_ingress_sc_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_ingress_sc_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_ingress_sc_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32602) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_ingress_sc_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_ingress_sc_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32601) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_ingress_sc_record.exit_crit_edge, label %for.cond.i.3.i, !prof !29

if.end38.i.3.i.get_ingress_sc_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

for.cond.i.3.i:                                   ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %rec, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %start_time.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 1
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or18.i = or i32 %shl16.i, %conv13.i
  %3 = ptrtoint ptr %start_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or18.i, ptr %start_time.i, align 4
  %4 = and i16 %call.i.i.2.i, 3
  %and.i = zext i16 %4 to i32
  %validate_frames.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 2
  %5 = ptrtoint ptr %validate_frames.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %validate_frames.i, align 4
  %6 = lshr i16 %call.i.i.2.i, 2
  %7 = and i16 %6, 1
  %and23.i = zext i16 %7 to i32
  %replay_protect.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %replay_protect.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and23.i, ptr %replay_protect.i, align 4
  %9 = lshr i16 %call.i.i.2.i, 3
  %10 = zext i16 %9 to i32
  %anti_replay_window.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 4
  %conv29.i = zext i16 %call.i76.i.2.i to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 13
  %or32.i = or i32 %shl30.i, %10
  %and35.i = zext i16 %call.i.i.3.i to i32
  %shl36.i = shl i32 %and35.i, 29
  %or38.i = or i32 %shl36.i, %or32.i
  %11 = ptrtoint ptr %anti_replay_window.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or38.i, ptr %anti_replay_window.i, align 4
  %12 = lshr i16 %call.i.i.3.i, 3
  %13 = and i16 %12, 1
  %and42.i = zext i16 %13 to i32
  %receiving.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 5
  %14 = ptrtoint ptr %receiving.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and42.i, ptr %receiving.i, align 4
  %15 = lshr i16 %call.i.i.3.i, 4
  %16 = and i16 %15, 1
  %and46.i = zext i16 %16 to i32
  %fresh.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 6
  %17 = ptrtoint ptr %fresh.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and46.i, ptr %fresh.i, align 4
  %18 = lshr i16 %call.i.i.3.i, 5
  %19 = and i16 %18, 1
  %and50.i = zext i16 %19 to i32
  %an_rol.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 7
  %20 = ptrtoint ptr %an_rol.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and50.i, ptr %an_rol.i, align 4
  %21 = lshr i16 %call.i.i.3.i, 6
  %22 = zext i16 %21 to i32
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 8
  %23 = and i16 %call.i76.i.3.i, 32767
  %and57.i = zext i16 %23 to i32
  %shl58.i = shl nuw nsw i32 %and57.i, 10
  %or60.i = or i32 %shl58.i, %22
  %24 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or60.i, ptr %reserved.i, align 4
  %25 = lshr i16 %call.i76.i.3.i, 15
  %26 = zext i16 %25 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_sc_record, ptr %rec, i32 0, i32 9
  %27 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %valid.i, align 4
  br label %get_ingress_sc_record.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_sc_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_sc_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sc_record.exit

get_ingress_sc_record.exit:                       ; preds = %if.end38.i.i.get_ingress_sc_record.exit_crit_edge, %for.cond.i.3.i, %if.end38.i.3.i.get_ingress_sc_record.exit_crit_edge, %for.cond.i.2.i.get_ingress_sc_record.exit_crit_edge, %if.end38.i.2.i.get_ingress_sc_record.exit_crit_edge, %for.cond.i.1.i.get_ingress_sc_record.exit_crit_edge, %if.end38.i.1.i.get_ingress_sc_record.exit_crit_edge, %for.cond.i.i.get_ingress_sc_record.exit_crit_edge, %if.end.i.get_ingress_sc_record.exit_crit_edge, %if.end.get_ingress_sc_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i.3.i ], [ -22, %if.end.get_ingress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_sc_record.exit_crit_edge ], [ -62, %if.end.i.get_ingress_sc_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_sc_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_sc_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_sa_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 1
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %9, 16
  %conv5.i = trunc i32 %shr.i to i16
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %7, align 2
  %start_time.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 1
  %12 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_time.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8.i, ptr %6, align 2
  %shr11.i = lshr i32 %13, 16
  %conv13.i = trunc i32 %shr11.i to i16
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13.i, ptr %5, align 2
  %next_pn.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %next_pn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_pn.i, align 4
  %conv16.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv16.i, ptr %4, align 2
  %shr19.i = lshr i32 %17, 16
  %conv21.i = trunc i32 %shr19.i to i16
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv21.i, ptr %3, align 2
  %sat_nextpn.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 3
  %20 = ptrtoint ptr %sat_nextpn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sat_nextpn.i, align 4
  %22 = trunc i32 %21 to i16
  %conv24.i = and i16 %22, 1
  %in_use.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 4
  %23 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_use.i, align 4
  %.tr.i = trunc i32 %24 to i16
  %25 = shl i16 %.tr.i, 1
  %26 = and i16 %25, 2
  %conv29.i = or i16 %26, %conv24.i
  %fresh.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 5
  %27 = ptrtoint ptr %fresh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fresh.i, align 4
  %.tr68.i = trunc i32 %28 to i16
  %29 = shl i16 %.tr68.i, 2
  %30 = and i16 %29, 4
  %conv35.i = or i16 %conv29.i, %30
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 6
  %31 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reserved.i, align 4
  %.tr69.i = trunc i32 %32 to i16
  %33 = shl i16 %.tr69.i, 3
  %conv41.i = or i16 %conv35.i, %33
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv41.i, ptr %2, align 2
  %shr43.i = lshr i32 %32, 13
  %35 = trunc i32 %shr43.i to i16
  %conv45.i = and i16 %35, 32767
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 7
  %36 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %valid.i, align 4
  %.tr70.i = trunc i32 %37 to i16
  %38 = shl i16 %.tr70.i, 15
  %conv52.i = or i16 %38, %conv45.i
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv52.i, ptr %1, align 2
  %add.i = add nuw nsw i16 %table_index, 32
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 3, i16 noundef zeroext %add.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_ingress_sa_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_ingress_sa_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_ingress_sa_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_sa_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 32)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_ingress_sa_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_sa_record.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

if.end.i:                                         ; preds = %if.end
  %add.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = add nuw nsw i16 %add.i, 4211
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_ingress_sa_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_ingress_sa_record.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_sa_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_sa_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_sa_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_sa_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_ingress_sa_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_ingress_sa_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_ingress_sa_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_ingress_sa_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32602) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_ingress_sa_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_ingress_sa_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32601) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_ingress_sa_record.exit_crit_edge, label %for.cond.i.3.i, !prof !29

if.end38.i.3.i.get_ingress_sa_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

for.cond.i.3.i:                                   ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %rec, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %start_time.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 1
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or18.i = or i32 %shl16.i, %conv13.i
  %3 = ptrtoint ptr %start_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or18.i, ptr %start_time.i, align 4
  %conv20.i = zext i16 %call.i.i.2.i to i32
  %next_pn.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 2
  %conv22.i = zext i16 %call.i76.i.2.i to i32
  %shl23.i = shl nuw i32 %conv22.i, 16
  %or25.i = or i32 %shl23.i, %conv20.i
  %4 = ptrtoint ptr %next_pn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or25.i, ptr %next_pn.i, align 4
  %5 = and i16 %call.i.i.3.i, 1
  %and.i = zext i16 %5 to i32
  %sat_nextpn.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 3
  %6 = ptrtoint ptr %sat_nextpn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %sat_nextpn.i, align 4
  %7 = lshr i16 %call.i.i.3.i, 1
  %8 = and i16 %7, 1
  %and30.i = zext i16 %8 to i32
  %in_use.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 4
  %9 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and30.i, ptr %in_use.i, align 4
  %10 = lshr i16 %call.i.i.3.i, 2
  %11 = and i16 %10, 1
  %and34.i = zext i16 %11 to i32
  %fresh.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 5
  %12 = ptrtoint ptr %fresh.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and34.i, ptr %fresh.i, align 4
  %13 = lshr i16 %call.i.i.3.i, 3
  %14 = zext i16 %13 to i32
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 6
  %15 = and i16 %call.i76.i.3.i, 32767
  %and41.i = zext i16 %15 to i32
  %shl42.i = shl nuw nsw i32 %and41.i, 13
  %or44.i = or i32 %shl42.i, %14
  %16 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or44.i, ptr %reserved.i, align 4
  %17 = lshr i16 %call.i76.i.3.i, 15
  %18 = zext i16 %17 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_sa_record, ptr %rec, i32 0, i32 7
  %19 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %valid.i, align 4
  br label %get_ingress_sa_record.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_sa_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_sa_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_record.exit

get_ingress_sa_record.exit:                       ; preds = %if.end38.i.i.get_ingress_sa_record.exit_crit_edge, %for.cond.i.3.i, %if.end38.i.3.i.get_ingress_sa_record.exit_crit_edge, %for.cond.i.2.i.get_ingress_sa_record.exit_crit_edge, %if.end38.i.2.i.get_ingress_sa_record.exit_crit_edge, %for.cond.i.1.i.get_ingress_sa_record.exit_crit_edge, %if.end38.i.1.i.get_ingress_sa_record.exit_crit_edge, %for.cond.i.i.get_ingress_sa_record.exit_crit_edge, %if.end.i.get_ingress_sa_record.exit_crit_edge, %if.end.get_ingress_sa_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i.3.i ], [ -22, %if.end.get_ingress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_sa_record.exit_crit_edge ], [ -62, %if.end.i.get_ingress_sa_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_sa_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_sa_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_sakey_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds i8, ptr %packed_record.i, i32 34
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %4 to i16
  %5 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %4, 16
  %conv7.i = trunc i32 %shr.i to i16
  %arrayidx8.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv7.i, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %8 to i16
  %arrayidx13.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv12.i, ptr %arrayidx13.i, align 2
  %shr16.i = lshr i32 %8, 16
  %conv18.i = trunc i32 %shr16.i to i16
  %arrayidx19.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv18.i, ptr %arrayidx19.i, align 2
  %arrayidx21.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx21.i, align 4
  %conv23.i = trunc i32 %12 to i16
  %arrayidx24.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv23.i, ptr %arrayidx24.i, align 2
  %shr27.i = lshr i32 %12, 16
  %conv29.i = trunc i32 %shr27.i to i16
  %arrayidx30.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv29.i, ptr %arrayidx30.i, align 2
  %arrayidx32.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx32.i, align 4
  %conv34.i = trunc i32 %16 to i16
  %arrayidx35.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv34.i, ptr %arrayidx35.i, align 2
  %shr38.i = lshr i32 %16, 16
  %conv40.i = trunc i32 %shr38.i to i16
  %arrayidx41.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv40.i, ptr %arrayidx41.i, align 2
  %arrayidx43.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx43.i, align 4
  %conv45.i = trunc i32 %20 to i16
  %arrayidx46.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 8
  %21 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv45.i, ptr %arrayidx46.i, align 2
  %shr49.i = lshr i32 %20, 16
  %conv51.i = trunc i32 %shr49.i to i16
  %arrayidx52.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 9
  %22 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv51.i, ptr %arrayidx52.i, align 2
  %arrayidx54.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx54.i, align 4
  %conv56.i = trunc i32 %24 to i16
  %arrayidx57.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 10
  %25 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv56.i, ptr %arrayidx57.i, align 2
  %shr60.i = lshr i32 %24, 16
  %conv62.i = trunc i32 %shr60.i to i16
  %arrayidx63.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv62.i, ptr %arrayidx63.i, align 2
  %arrayidx65.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx65.i, align 4
  %conv67.i = trunc i32 %28 to i16
  %arrayidx68.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 12
  %29 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv67.i, ptr %arrayidx68.i, align 2
  %shr71.i = lshr i32 %28, 16
  %conv73.i = trunc i32 %shr71.i to i16
  %arrayidx74.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 13
  %30 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv73.i, ptr %arrayidx74.i, align 2
  %arrayidx76.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx76.i, align 4
  %conv78.i = trunc i32 %32 to i16
  %arrayidx79.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 14
  %33 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv78.i, ptr %arrayidx79.i, align 2
  %shr82.i = lshr i32 %32, 16
  %conv84.i = trunc i32 %shr82.i to i16
  %arrayidx85.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 15
  %34 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv84.i, ptr %arrayidx85.i, align 2
  %key_len.i = getelementptr inbounds %struct.aq_mss_ingress_sakey_record, ptr %rec, i32 0, i32 1
  %35 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_len.i, align 4
  %37 = trunc i32 %36 to i16
  %conv87.i = and i16 %37, 3
  %arrayidx88.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 16
  %38 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv87.i, ptr %arrayidx88.i, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 18, i8 noundef zeroext 2, i16 noundef zeroext %table_index) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_ingress_sakey_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_ingress_sakey_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 804, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_ingress_sakey_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_sakey_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 36)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_ingress_sakey_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_sakey_record.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sakey_record.exit

if.end.i:                                         ; preds = %if.end
  %bf.shl.i.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = or i16 %bf.shl.i.i, 114
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %2 = call ptr @memset(ptr %packed_record.i, i32 0, i32 36)
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %add54.i.i = add nuw nsw i32 %i.080.i.i, 2
  %cmp.i.i = icmp ult i32 %i.080.i.i, 16
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %if.end7.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.080.i.i = phi i32 [ %add54.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %3 = trunc i32 %i.080.i.i to i16
  %conv28.i.i = add nuw nsw i16 %3, -32608
  %arrayidx.i.i = getelementptr i16, ptr %packed_record.i, i32 %i.080.i.i
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv28.i.i) #4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.i.i.i, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %for.body.i.i.get_ingress_sakey_record.exit_crit_edge, label %if.end38.i.i, !prof !29

for.body.i.i.get_ingress_sakey_record.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sakey_record.exit

if.end38.i.i:                                     ; preds = %for.body.i.i
  %conv41.i.i = add nuw nsw i16 %3, -32607
  %add42.i.i = or i32 %i.080.i.i, 1
  %arrayidx43.i.i = getelementptr i16, ptr %packed_record.i, i32 %add42.i.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv41.i.i) #4
  %5 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.i76.i.i, ptr %arrayidx43.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_sakey_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_sakey_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sakey_record.exit

if.end7.i:                                        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %packed_record.i, align 2
  %conv8.i = zext i16 %7 to i32
  %arrayidx10.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %9 to i32
  %shl.i = shl nuw i32 %conv11.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %10 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %rec, align 4
  %arrayidx14.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx14.i, align 2
  %conv15.i = zext i16 %12 to i32
  %arrayidx17.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 1
  %arrayidx18.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %14 to i32
  %shl20.i = shl nuw i32 %conv19.i, 16
  %or23.i = or i32 %shl20.i, %conv15.i
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or23.i, ptr %arrayidx17.i, align 4
  %arrayidx24.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx24.i, align 2
  %conv25.i = zext i16 %17 to i32
  %arrayidx27.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 2
  %arrayidx28.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx28.i, align 2
  %conv29.i = zext i16 %19 to i32
  %shl30.i = shl nuw i32 %conv29.i, 16
  %or33.i = or i32 %shl30.i, %conv25.i
  %20 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or33.i, ptr %arrayidx27.i, align 4
  %arrayidx34.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx34.i, align 2
  %conv35.i = zext i16 %22 to i32
  %arrayidx37.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 3
  %arrayidx38.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx38.i, align 2
  %conv39.i = zext i16 %24 to i32
  %shl40.i = shl nuw i32 %conv39.i, 16
  %or43.i = or i32 %shl40.i, %conv35.i
  %25 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or43.i, ptr %arrayidx37.i, align 4
  %arrayidx44.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 8
  %26 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx44.i, align 2
  %conv45.i = zext i16 %27 to i32
  %arrayidx47.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 4
  %arrayidx48.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 9
  %28 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx48.i, align 2
  %conv49.i = zext i16 %29 to i32
  %shl50.i = shl nuw i32 %conv49.i, 16
  %or53.i = or i32 %shl50.i, %conv45.i
  %30 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or53.i, ptr %arrayidx47.i, align 4
  %arrayidx54.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 10
  %31 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx54.i, align 2
  %conv55.i = zext i16 %32 to i32
  %arrayidx57.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 5
  %arrayidx58.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 11
  %33 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx58.i, align 2
  %conv59.i = zext i16 %34 to i32
  %shl60.i = shl nuw i32 %conv59.i, 16
  %or63.i = or i32 %shl60.i, %conv55.i
  %35 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or63.i, ptr %arrayidx57.i, align 4
  %arrayidx64.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx64.i, align 2
  %conv65.i = zext i16 %37 to i32
  %arrayidx67.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 6
  %arrayidx68.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 13
  %38 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx68.i, align 2
  %conv69.i = zext i16 %39 to i32
  %shl70.i = shl nuw i32 %conv69.i, 16
  %or73.i = or i32 %shl70.i, %conv65.i
  %40 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or73.i, ptr %arrayidx67.i, align 4
  %arrayidx74.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 14
  %41 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx74.i, align 2
  %conv75.i = zext i16 %42 to i32
  %arrayidx77.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 7
  %arrayidx78.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 15
  %43 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx78.i, align 2
  %conv79.i = zext i16 %44 to i32
  %shl80.i = shl nuw i32 %conv79.i, 16
  %or83.i = or i32 %shl80.i, %conv75.i
  %45 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or83.i, ptr %arrayidx77.i, align 4
  %arrayidx84.i = getelementptr inbounds [18 x i16], ptr %packed_record.i, i32 0, i32 16
  %46 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx84.i, align 2
  %48 = and i16 %47, 3
  %and.i = zext i16 %48 to i32
  %key_len.i = getelementptr inbounds %struct.aq_mss_ingress_sakey_record, ptr %rec, i32 0, i32 1
  %49 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i, ptr %key_len.i, align 4
  br label %get_ingress_sakey_record.exit

get_ingress_sakey_record.exit:                    ; preds = %if.end7.i, %if.end38.i.i.get_ingress_sakey_record.exit_crit_edge, %for.body.i.i.get_ingress_sakey_record.exit_crit_edge, %if.end.get_ingress_sakey_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ -22, %if.end.get_ingress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_sakey_record.exit_crit_edge ], [ -62, %for.body.i.i.get_ingress_sakey_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_sakey_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_sakey_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_postclass_record(ptr noundef %hw, ptr noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i7, label %if.end.set_ingress_postclass_record.exit_crit_edge, label %if.end.i

if.end.set_ingress_postclass_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_ingress_postclass_record.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 1
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec, align 4
  %10 = trunc i32 %9 to i16
  %conv2.i = and i16 %10, 255
  %byte1.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 1
  %11 = ptrtoint ptr %byte1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte1.i, align 4
  %.tr.i = trunc i32 %12 to i16
  %13 = shl i16 %.tr.i, 8
  %conv6.i = or i16 %13, %conv2.i
  %14 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i, ptr %packed_record.i, align 2
  %byte2.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 2
  %15 = ptrtoint ptr %byte2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %byte2.i, align 4
  %17 = trunc i32 %16 to i16
  %conv8.i = and i16 %17, 255
  %byte3.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 3
  %18 = ptrtoint ptr %byte3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte3.i, align 4
  %.tr213.i = trunc i32 %19 to i16
  %20 = shl i16 %.tr213.i, 8
  %conv15.i = or i16 %20, %conv8.i
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv15.i, ptr %7, align 2
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 4
  %22 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eth_type.i, align 4
  %conv17.i = trunc i32 %23 to i16
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv17.i, ptr %6, align 2
  %eth_type_valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 5
  %25 = ptrtoint ptr %eth_type_valid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eth_type_valid.i, align 4
  %27 = trunc i32 %26 to i16
  %conv20.i = and i16 %27, 1
  %vlan_id.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 6
  %28 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vlan_id.i, align 4
  %.tr214.i = trunc i32 %29 to i16
  %30 = shl i16 %.tr214.i, 1
  %31 = and i16 %30, 8190
  %conv27.i = or i16 %conv20.i, %31
  %vlan_up.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 7
  %32 = ptrtoint ptr %vlan_up.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vlan_up.i, align 4
  %.tr215.i = trunc i32 %33 to i16
  %34 = shl i16 %.tr215.i, 13
  %conv33.i = or i16 %conv27.i, %34
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv33.i, ptr %5, align 2
  %vlan_valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 8
  %36 = ptrtoint ptr %vlan_valid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vlan_valid.i, align 4
  %38 = trunc i32 %37 to i16
  %conv35.i = and i16 %38, 1
  %sai.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 9
  %39 = ptrtoint ptr %sai.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sai.i, align 4
  %.tr216.i = trunc i32 %40 to i16
  %41 = shl i16 %.tr216.i, 1
  %42 = and i16 %41, 62
  %conv42.i = or i16 %42, %conv35.i
  %sai_hit.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 10
  %43 = ptrtoint ptr %sai_hit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sai_hit.i, align 4
  %.tr217.i = trunc i32 %44 to i16
  %45 = shl i16 %.tr217.i, 6
  %46 = and i16 %45, 64
  %conv48.i = or i16 %conv42.i, %46
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 11
  %47 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %eth_type_mask.i, align 4
  %.tr218.i = trunc i32 %48 to i16
  %49 = shl i16 %.tr218.i, 7
  %50 = and i16 %49, 1920
  %conv54.i = or i16 %conv48.i, %50
  %byte3_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 12
  %51 = ptrtoint ptr %byte3_location.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %byte3_location.i, align 4
  %.tr219.i = trunc i32 %52 to i16
  %53 = shl i16 %.tr219.i, 11
  %conv60.i = or i16 %conv54.i, %53
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv60.i, ptr %4, align 2
  %55 = lshr i16 %.tr219.i, 5
  %conv63.i = and i16 %55, 1
  %byte3_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 13
  %56 = ptrtoint ptr %byte3_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte3_mask.i, align 4
  %.tr220.i = trunc i32 %57 to i16
  %58 = shl i16 %.tr220.i, 1
  %59 = and i16 %58, 6
  %conv70.i = or i16 %59, %conv63.i
  %byte2_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 14
  %60 = ptrtoint ptr %byte2_location.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %byte2_location.i, align 4
  %.tr221.i = trunc i32 %61 to i16
  %62 = shl i16 %.tr221.i, 3
  %63 = and i16 %62, 504
  %conv76.i = or i16 %conv70.i, %63
  %byte2_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 15
  %64 = ptrtoint ptr %byte2_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte2_mask.i, align 4
  %.tr222.i = trunc i32 %65 to i16
  %66 = shl i16 %.tr222.i, 9
  %67 = and i16 %66, 1536
  %conv82.i = or i16 %conv76.i, %67
  %byte1_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 16
  %68 = ptrtoint ptr %byte1_location.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %byte1_location.i, align 4
  %.tr223.i = trunc i32 %69 to i16
  %70 = shl i16 %.tr223.i, 11
  %conv88.i = or i16 %conv82.i, %70
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv88.i, ptr %3, align 2
  %72 = lshr i16 %.tr223.i, 5
  %conv92.i = and i16 %72, 1
  %byte1_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 17
  %73 = ptrtoint ptr %byte1_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %byte1_mask.i, align 4
  %.tr224.i = trunc i32 %74 to i16
  %75 = shl i16 %.tr224.i, 1
  %76 = and i16 %75, 6
  %conv99.i = or i16 %76, %conv92.i
  %byte0_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 18
  %77 = ptrtoint ptr %byte0_location.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %byte0_location.i, align 4
  %.tr225.i = trunc i32 %78 to i16
  %79 = shl i16 %.tr225.i, 3
  %80 = and i16 %79, 504
  %conv105.i = or i16 %conv99.i, %80
  %byte0_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 19
  %81 = ptrtoint ptr %byte0_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %byte0_mask.i, align 4
  %.tr226.i = trunc i32 %82 to i16
  %83 = shl i16 %.tr226.i, 9
  %84 = and i16 %83, 1536
  %conv111.i = or i16 %conv105.i, %84
  %eth_type_valid_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 20
  %85 = ptrtoint ptr %eth_type_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %eth_type_valid_mask.i, align 4
  %.tr227.i = trunc i32 %86 to i16
  %87 = shl i16 %.tr227.i, 11
  %88 = and i16 %87, 6144
  %conv117.i = or i16 %conv111.i, %88
  %vlan_id_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 21
  %89 = ptrtoint ptr %vlan_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vlan_id_mask.i, align 4
  %.tr228.i = trunc i32 %90 to i16
  %91 = shl i16 %.tr228.i, 13
  %conv123.i = or i16 %conv117.i, %91
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv123.i, ptr %2, align 2
  %93 = lshr i16 %.tr228.i, 3
  %conv127.i = and i16 %93, 1
  %vlan_up_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 22
  %94 = ptrtoint ptr %vlan_up_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vlan_up_mask.i, align 4
  %.tr229.i = trunc i32 %95 to i16
  %96 = shl i16 %.tr229.i, 1
  %97 = and i16 %96, 6
  %conv134.i = or i16 %97, %conv127.i
  %vlan_valid_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 23
  %98 = ptrtoint ptr %vlan_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vlan_valid_mask.i, align 4
  %.tr230.i = trunc i32 %99 to i16
  %100 = shl i16 %.tr230.i, 3
  %101 = and i16 %100, 24
  %conv140.i = or i16 %conv134.i, %101
  %sai_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 24
  %102 = ptrtoint ptr %sai_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sai_mask.i, align 4
  %.tr231.i = trunc i32 %103 to i16
  %104 = shl i16 %.tr231.i, 5
  %105 = and i16 %104, 96
  %conv146.i = or i16 %conv140.i, %105
  %sai_hit_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 25
  %106 = ptrtoint ptr %sai_hit_mask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sai_hit_mask.i, align 4
  %.tr232.i = trunc i32 %107 to i16
  %108 = shl i16 %.tr232.i, 7
  %109 = and i16 %108, 384
  %conv152.i = or i16 %conv146.i, %109
  %firstlevel_actions.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 26
  %110 = ptrtoint ptr %firstlevel_actions.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %firstlevel_actions.i, align 4
  %.tr233.i = trunc i32 %111 to i16
  %112 = shl i16 %.tr233.i, 9
  %113 = and i16 %112, 512
  %conv158.i = or i16 %conv152.i, %113
  %secondlevel_actions.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 27
  %114 = ptrtoint ptr %secondlevel_actions.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %secondlevel_actions.i, align 4
  %.tr234.i = trunc i32 %115 to i16
  %116 = shl i16 %.tr234.i, 10
  %117 = and i16 %116, 1024
  %conv164.i = or i16 %conv158.i, %117
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 28
  %118 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %reserved.i, align 4
  %.tr235.i = trunc i32 %119 to i16
  %120 = shl i16 %.tr235.i, 11
  %121 = and i16 %120, 30720
  %conv170.i = or i16 %conv164.i, %121
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 29
  %122 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %valid.i, align 4
  %.tr236.i = trunc i32 %123 to i16
  %124 = shl i16 %.tr236.i, 15
  %conv176.i = or i16 %conv170.i, %124
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv176.i, ptr %1, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 4, i16 noundef zeroext %table_index) #4
  br label %set_ingress_postclass_record.exit

set_ingress_postclass_record.exit:                ; preds = %if.end.i, %if.end.set_ingress_postclass_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end.set_ingress_postclass_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_ingress_postclass_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_ingress_postclass_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_postclass_record(ptr noundef %hw, ptr noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 120)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i8, label %if.end.get_ingress_postclass_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -12
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.then5.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.then5.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32602) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32601) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i.3.i.if.end12.i_crit_edge, !prof !29

if.end38.i.3.i.if.end12.i_crit_edge:              ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end38.i.3.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i.i:                                     ; preds = %if.then5.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end12.i:                                       ; preds = %if.end38.i.3.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i198.i = or i16 %.pre.i, 116
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i198.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i205.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i205.i)
  %cmp.not.i.not.i206.i = icmp eq i16 %call.i.i205.i, -1
  br i1 %cmp.not.i.not.i206.i, label %if.end12.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i213.i, !prof !29

if.end12.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i201.i:                                  ; preds = %if.end38.i213.i
  %call.i.i205.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i205.1.i)
  %cmp.not.i.not.i206.1.i = icmp eq i16 %call.i.i205.1.i, -1
  br i1 %cmp.not.i.not.i206.1.i, label %for.cond.i201.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i213.1.i, !prof !29

for.cond.i201.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i201.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i213.1.i:                                ; preds = %for.cond.i201.i
  %call.i76.i211.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i211.1.i)
  %cmp.not.i77.not.i212.1.i = icmp eq i16 %call.i76.i211.1.i, -1
  br i1 %cmp.not.i77.not.i212.1.i, label %if.end38.i213.1.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i201.1.i, !prof !29

if.end38.i213.1.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i213.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i201.1.i:                                ; preds = %if.end38.i213.1.i
  %call.i.i205.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i205.2.i)
  %cmp.not.i.not.i206.2.i = icmp eq i16 %call.i.i205.2.i, -1
  br i1 %cmp.not.i.not.i206.2.i, label %for.cond.i201.1.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i213.2.i, !prof !29

for.cond.i201.1.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i201.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i213.2.i:                                ; preds = %for.cond.i201.1.i
  %call.i76.i211.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i211.2.i)
  %cmp.not.i77.not.i212.2.i = icmp eq i16 %call.i76.i211.2.i, -1
  br i1 %cmp.not.i77.not.i212.2.i, label %if.end38.i213.2.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i201.2.i, !prof !29

if.end38.i213.2.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i213.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i201.2.i:                                ; preds = %if.end38.i213.2.i
  %call.i.i205.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32602) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i205.3.i)
  %cmp.not.i.not.i206.3.i = icmp eq i16 %call.i.i205.3.i, -1
  br i1 %cmp.not.i.not.i206.3.i, label %for.cond.i201.2.i.get_ingress_postclass_record.exit_crit_edge, label %if.end38.i213.3.i, !prof !29

for.cond.i201.2.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %for.cond.i201.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

if.end38.i213.3.i:                                ; preds = %for.cond.i201.2.i
  %call.i76.i211.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32601) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i211.3.i)
  %cmp.not.i77.not.i212.3.i = icmp eq i16 %call.i76.i211.3.i, -1
  br i1 %cmp.not.i77.not.i212.3.i, label %if.end38.i213.3.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i201.3.i, !prof !29

if.end38.i213.3.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i213.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

for.cond.i201.3.i:                                ; preds = %if.end38.i213.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = and i16 %call.i.i205.i, 255
  %and.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %rec, align 4
  %5 = lshr i16 %call.i.i205.i, 8
  %6 = zext i16 %5 to i32
  %byte1.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 1
  %7 = ptrtoint ptr %byte1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %byte1.i, align 4
  %8 = and i16 %call.i76.i211.i, 255
  %and33.i = zext i16 %8 to i32
  %byte2.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 2
  %9 = ptrtoint ptr %byte2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and33.i, ptr %byte2.i, align 4
  %10 = lshr i16 %call.i76.i211.i, 8
  %11 = zext i16 %10 to i32
  %byte3.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 3
  %12 = ptrtoint ptr %byte3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %byte3.i, align 4
  %conv39.i = zext i16 %call.i.i205.1.i to i32
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 4
  %13 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv39.i, ptr %eth_type.i, align 4
  %14 = and i16 %call.i76.i211.1.i, 1
  %and42.i = zext i16 %14 to i32
  %eth_type_valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 5
  %15 = ptrtoint ptr %eth_type_valid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and42.i, ptr %eth_type_valid.i, align 4
  %16 = lshr i16 %call.i76.i211.1.i, 1
  %17 = and i16 %16, 4095
  %and46.i = zext i16 %17 to i32
  %vlan_id.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 6
  %18 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and46.i, ptr %vlan_id.i, align 4
  %19 = lshr i16 %call.i76.i211.1.i, 13
  %20 = zext i16 %19 to i32
  %vlan_up.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 7
  %21 = ptrtoint ptr %vlan_up.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vlan_up.i, align 4
  %22 = and i16 %call.i.i205.2.i, 1
  %and53.i = zext i16 %22 to i32
  %vlan_valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 8
  %23 = ptrtoint ptr %vlan_valid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and53.i, ptr %vlan_valid.i, align 4
  %24 = lshr i16 %call.i.i205.2.i, 1
  %25 = and i16 %24, 31
  %and57.i = zext i16 %25 to i32
  %sai.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 9
  %26 = ptrtoint ptr %sai.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and57.i, ptr %sai.i, align 4
  %27 = lshr i16 %call.i.i205.2.i, 6
  %28 = and i16 %27, 1
  %and61.i = zext i16 %28 to i32
  %sai_hit.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 10
  %29 = ptrtoint ptr %sai_hit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and61.i, ptr %sai_hit.i, align 4
  %30 = lshr i16 %call.i.i205.2.i, 7
  %31 = and i16 %30, 15
  %and65.i = zext i16 %31 to i32
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 11
  %32 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and65.i, ptr %eth_type_mask.i, align 4
  %33 = lshr i16 %call.i.i205.2.i, 11
  %byte3_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 12
  %34 = shl i16 %call.i76.i211.2.i, 5
  %35 = and i16 %34, 32
  %or194.i = or i16 %35, %33
  %or.i = zext i16 %or194.i to i32
  %36 = ptrtoint ptr %byte3_location.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %byte3_location.i, align 4
  %37 = lshr i16 %call.i76.i211.2.i, 1
  %38 = and i16 %37, 3
  %and77.i = zext i16 %38 to i32
  %byte3_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 13
  %39 = ptrtoint ptr %byte3_mask.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and77.i, ptr %byte3_mask.i, align 4
  %40 = lshr i16 %call.i76.i211.2.i, 3
  %41 = and i16 %40, 63
  %and81.i = zext i16 %41 to i32
  %byte2_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 14
  %42 = ptrtoint ptr %byte2_location.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and81.i, ptr %byte2_location.i, align 4
  %43 = lshr i16 %call.i76.i211.2.i, 9
  %44 = and i16 %43, 3
  %and85.i = zext i16 %44 to i32
  %byte2_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 15
  %45 = ptrtoint ptr %byte2_mask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and85.i, ptr %byte2_mask.i, align 4
  %46 = lshr i16 %call.i76.i211.2.i, 11
  %byte1_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 16
  %47 = shl i16 %call.i.i205.3.i, 5
  %48 = and i16 %47, 32
  %or95195.i = or i16 %48, %46
  %or95.i = zext i16 %or95195.i to i32
  %49 = ptrtoint ptr %byte1_location.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or95.i, ptr %byte1_location.i, align 4
  %50 = lshr i16 %call.i.i205.3.i, 1
  %51 = and i16 %50, 3
  %and99.i = zext i16 %51 to i32
  %byte1_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 17
  %52 = ptrtoint ptr %byte1_mask.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and99.i, ptr %byte1_mask.i, align 4
  %53 = lshr i16 %call.i.i205.3.i, 3
  %54 = and i16 %53, 63
  %and103.i = zext i16 %54 to i32
  %byte0_location.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 18
  %55 = ptrtoint ptr %byte0_location.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and103.i, ptr %byte0_location.i, align 4
  %56 = lshr i16 %call.i.i205.3.i, 9
  %57 = and i16 %56, 3
  %and107.i = zext i16 %57 to i32
  %byte0_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 19
  %58 = ptrtoint ptr %byte0_mask.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and107.i, ptr %byte0_mask.i, align 4
  %59 = lshr i16 %call.i.i205.3.i, 11
  %60 = and i16 %59, 3
  %and111.i = zext i16 %60 to i32
  %eth_type_valid_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 20
  %61 = ptrtoint ptr %eth_type_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and111.i, ptr %eth_type_valid_mask.i, align 4
  %62 = lshr i16 %call.i.i205.3.i, 13
  %vlan_id_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 21
  %63 = shl i16 %call.i76.i211.3.i, 3
  %64 = and i16 %63, 8
  %or121196.i = or i16 %64, %62
  %or121.i = zext i16 %or121196.i to i32
  %65 = ptrtoint ptr %vlan_id_mask.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or121.i, ptr %vlan_id_mask.i, align 4
  %66 = lshr i16 %call.i76.i211.3.i, 1
  %67 = and i16 %66, 3
  %and125.i = zext i16 %67 to i32
  %vlan_up_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 22
  %68 = ptrtoint ptr %vlan_up_mask.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and125.i, ptr %vlan_up_mask.i, align 4
  %69 = lshr i16 %call.i76.i211.3.i, 3
  %70 = and i16 %69, 3
  %and129.i = zext i16 %70 to i32
  %vlan_valid_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 23
  %71 = ptrtoint ptr %vlan_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and129.i, ptr %vlan_valid_mask.i, align 4
  %72 = lshr i16 %call.i76.i211.3.i, 5
  %73 = and i16 %72, 3
  %and133.i = zext i16 %73 to i32
  %sai_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 24
  %74 = ptrtoint ptr %sai_mask.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and133.i, ptr %sai_mask.i, align 4
  %75 = lshr i16 %call.i76.i211.3.i, 7
  %76 = and i16 %75, 3
  %and137.i = zext i16 %76 to i32
  %sai_hit_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 25
  %77 = ptrtoint ptr %sai_hit_mask.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and137.i, ptr %sai_hit_mask.i, align 4
  %78 = lshr i16 %call.i76.i211.3.i, 9
  %79 = and i16 %78, 1
  %and141.i = zext i16 %79 to i32
  %firstlevel_actions.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 26
  %80 = ptrtoint ptr %firstlevel_actions.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and141.i, ptr %firstlevel_actions.i, align 4
  %81 = lshr i16 %call.i76.i211.3.i, 10
  %82 = and i16 %81, 1
  %and145.i = zext i16 %82 to i32
  %secondlevel_actions.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 27
  %83 = ptrtoint ptr %secondlevel_actions.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and145.i, ptr %secondlevel_actions.i, align 4
  %84 = lshr i16 %call.i76.i211.3.i, 11
  %85 = and i16 %84, 15
  %and149.i = zext i16 %85 to i32
  %reserved.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 28
  %86 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and149.i, ptr %reserved.i, align 4
  %87 = lshr i16 %call.i76.i211.3.i, 15
  %88 = zext i16 %87 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_ingress_postclass_record, ptr %rec, i32 0, i32 29
  %89 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %valid.i, align 4
  br label %get_ingress_postclass_record.exit

if.end38.i213.i:                                  ; preds = %if.end12.i
  %call.i76.i211.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i211.i)
  %cmp.not.i77.not.i212.i = icmp eq i16 %call.i76.i211.i, -1
  br i1 %cmp.not.i77.not.i212.i, label %if.end38.i213.i.get_ingress_postclass_record.exit_crit_edge, label %for.cond.i201.i, !prof !29

if.end38.i213.i.get_ingress_postclass_record.exit_crit_edge: ; preds = %if.end38.i213.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postclass_record.exit

get_ingress_postclass_record.exit:                ; preds = %if.end38.i213.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i201.3.i, %if.end38.i213.3.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i201.2.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i213.2.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i201.1.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i213.1.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i201.i.get_ingress_postclass_record.exit_crit_edge, %if.end12.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i.3.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i.2.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i.2.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i.1.i.get_ingress_postclass_record.exit_crit_edge, %if.end38.i.1.i.get_ingress_postclass_record.exit_crit_edge, %for.cond.i.i.get_ingress_postclass_record.exit_crit_edge, %if.then5.i.get_ingress_postclass_record.exit_crit_edge, %if.end.get_ingress_postclass_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i201.3.i ], [ -22, %if.end.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i213.3.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i201.2.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i213.2.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i201.1.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i213.1.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i201.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i213.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end12.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_postclass_record.exit_crit_edge ], [ -62, %if.then5.i.get_ingress_postclass_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_postclass_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_postclass_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_ingress_postctlf_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i7, label %if.end.set_ingress_postctlf_record.exit_crit_edge, label %if.end.i

if.end.set_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_ingress_postctlf_record.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 1
  %6 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %7, 16
  %conv7.i = trunc i32 %shr.i to i16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv7.i, ptr %5, align 2
  %arrayidx10.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %11 to i16
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12.i, ptr %4, align 2
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eth_type.i, align 4
  %conv15.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.i, ptr %3, align 2
  %match_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %match_mask.i, align 4
  %conv18.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv18.i, ptr %2, align 2
  %match_type.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 3
  %19 = ptrtoint ptr %match_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %match_type.i, align 4
  %21 = trunc i32 %20 to i16
  %conv21.i = and i16 %21, 15
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 4
  %22 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action.i, align 4
  %.tr.i = trunc i32 %23 to i16
  %24 = shl i16 %.tr.i, 4
  %25 = and i16 %24, 16
  %conv26.i = or i16 %25, %conv21.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26.i, ptr %1, align 2
  call fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 6, i8 noundef zeroext 5, i16 noundef zeroext %table_index) #4
  br label %set_ingress_postctlf_record.exit

set_ingress_postctlf_record.exit:                 ; preds = %if.end.i, %if.end.set_ingress_postctlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end.set_ingress_postctlf_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_ingress_postctlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_ingress_postctlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_postctlf_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 24)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i8, label %if.end.get_ingress_postctlf_record.exit_crit_edge, label %if.end.i

if.end.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -11
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.then5.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.then5.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_postctlf_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i.2.i.if.end12.i_crit_edge, !prof !29

if.end38.i.2.i.if.end12.i_crit_edge:              ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end38.i.2.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end38.i.i:                                     ; preds = %if.then5.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_postctlf_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end12.i:                                       ; preds = %if.end38.i.2.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i61.i = or i16 %.pre.i, 117
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i61.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i68.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.i)
  %cmp.not.i.not.i69.i = icmp eq i16 %call.i.i68.i, -1
  br i1 %cmp.not.i.not.i69.i, label %if.end12.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i76.i, !prof !29

if.end12.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

for.cond.i64.i:                                   ; preds = %if.end38.i76.i
  %call.i.i68.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.1.i)
  %cmp.not.i.not.i69.1.i = icmp eq i16 %call.i.i68.1.i, -1
  br i1 %cmp.not.i.not.i69.1.i, label %for.cond.i64.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i76.1.i, !prof !29

for.cond.i64.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %for.cond.i64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end38.i76.1.i:                                 ; preds = %for.cond.i64.i
  %call.i76.i74.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.1.i)
  %cmp.not.i77.not.i75.1.i = icmp eq i16 %call.i76.i74.1.i, -1
  br i1 %cmp.not.i77.not.i75.1.i, label %if.end38.i76.1.i.get_ingress_postctlf_record.exit_crit_edge, label %for.cond.i64.1.i, !prof !29

if.end38.i76.1.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i76.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

for.cond.i64.1.i:                                 ; preds = %if.end38.i76.1.i
  %call.i.i68.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32604) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.2.i)
  %cmp.not.i.not.i69.2.i = icmp eq i16 %call.i.i68.2.i, -1
  br i1 %cmp.not.i.not.i69.2.i, label %for.cond.i64.1.i.get_ingress_postctlf_record.exit_crit_edge, label %if.end38.i76.2.i, !prof !29

for.cond.i64.1.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %for.cond.i64.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

if.end38.i76.2.i:                                 ; preds = %for.cond.i64.1.i
  %call.i76.i74.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32603) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.2.i)
  %cmp.not.i77.not.i75.2.i = icmp eq i16 %call.i76.i74.2.i, -1
  br i1 %cmp.not.i77.not.i75.2.i, label %if.end38.i76.2.i.get_ingress_postctlf_record.exit_crit_edge, label %for.cond.i64.2.i, !prof !29

if.end38.i76.2.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

for.cond.i64.2.i:                                 ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv27.i = zext i16 %call.i.i68.i to i32
  %conv30.i = zext i16 %call.i76.i74.i to i32
  %shl.i = shl nuw i32 %conv30.i, 16
  %or.i = or i32 %shl.i, %conv27.i
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %rec, align 4
  %conv34.i = zext i16 %call.i.i68.1.i to i32
  %arrayidx36.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv34.i, ptr %arrayidx36.i, align 4
  %conv38.i = zext i16 %call.i76.i74.1.i to i32
  %eth_type.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv38.i, ptr %eth_type.i, align 4
  %conv40.i = zext i16 %call.i.i68.2.i to i32
  %match_mask.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 2
  %6 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv40.i, ptr %match_mask.i, align 4
  %7 = and i16 %call.i76.i74.2.i, 15
  %and.i = zext i16 %7 to i32
  %match_type.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %match_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %match_type.i, align 4
  %9 = lshr i16 %call.i76.i74.2.i, 4
  %10 = and i16 %9, 1
  %and45.i = zext i16 %10 to i32
  %action.i = getelementptr inbounds %struct.aq_mss_ingress_postctlf_record, ptr %rec, i32 0, i32 4
  %11 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and45.i, ptr %action.i, align 4
  br label %get_ingress_postctlf_record.exit

if.end38.i76.i:                                   ; preds = %if.end12.i
  %call.i76.i74.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.i)
  %cmp.not.i77.not.i75.i = icmp eq i16 %call.i76.i74.i, -1
  br i1 %cmp.not.i77.not.i75.i, label %if.end38.i76.i.get_ingress_postctlf_record.exit_crit_edge, label %for.cond.i64.i, !prof !29

if.end38.i76.i.get_ingress_postctlf_record.exit_crit_edge: ; preds = %if.end38.i76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_postctlf_record.exit

get_ingress_postctlf_record.exit:                 ; preds = %if.end38.i76.i.get_ingress_postctlf_record.exit_crit_edge, %for.cond.i64.2.i, %if.end38.i76.2.i.get_ingress_postctlf_record.exit_crit_edge, %for.cond.i64.1.i.get_ingress_postctlf_record.exit_crit_edge, %if.end38.i76.1.i.get_ingress_postctlf_record.exit_crit_edge, %for.cond.i64.i.get_ingress_postctlf_record.exit_crit_edge, %if.end12.i.get_ingress_postctlf_record.exit_crit_edge, %if.end38.i.i.get_ingress_postctlf_record.exit_crit_edge, %if.end38.i.2.i.get_ingress_postctlf_record.exit_crit_edge, %for.cond.i.1.i.get_ingress_postctlf_record.exit_crit_edge, %if.end38.i.1.i.get_ingress_postctlf_record.exit_crit_edge, %for.cond.i.i.get_ingress_postctlf_record.exit_crit_edge, %if.then5.i.get_ingress_postctlf_record.exit_crit_edge, %if.end.get_ingress_postctlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i64.2.i ], [ -22, %if.end.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.2.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %for.cond.i64.1.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.1.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %for.cond.i64.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end12.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_postctlf_record.exit_crit_edge ], [ -62, %if.then5.i.get_ingress_postctlf_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_postctlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_postctlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_ctlf_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [6 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i7, label %if.end.set_egress_ctlf_record.exit_crit_edge, label %if.end.i

if.end.set_egress_ctlf_record.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_egress_ctlf_record.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 5
  %2 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i16], ptr %packed_record.i, i32 0, i32 1
  %6 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %7, 16
  %conv7.i = trunc i32 %shr.i to i16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv7.i, ptr %5, align 2
  %arrayidx10.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %11 to i16
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12.i, ptr %4, align 2
  %eth_type.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eth_type.i, align 4
  %conv15.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.i, ptr %3, align 2
  %match_mask.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %match_mask.i, align 4
  %conv18.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv18.i, ptr %2, align 2
  %match_type.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 3
  %19 = ptrtoint ptr %match_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %match_type.i, align 4
  %21 = trunc i32 %20 to i16
  %conv21.i = and i16 %21, 15
  %action.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 4
  %22 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action.i, align 4
  %.tr.i = trunc i32 %23 to i16
  %24 = shl i16 %.tr.i, 4
  %25 = and i16 %24, 16
  %conv26.i = or i16 %25, %conv21.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26.i, ptr %1, align 2
  call fastcc void @set_raw_egress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 6, i8 noundef zeroext 0, i16 noundef zeroext %table_index) #4
  br label %set_egress_ctlf_record.exit

set_egress_ctlf_record.exit:                      ; preds = %if.end.i, %if.end.set_egress_ctlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end.set_egress_ctlf_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_egress_ctlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_egress_ctlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_ctlf_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 24)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 23
  br i1 %cmp.i8, label %if.end.get_egress_ctlf_record.exit_crit_edge, label %if.end.i

if.end.get_egress_ctlf_record.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.then5.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.then5.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_ctlf_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i.2.i.if.end12.i_crit_edge, !prof !29

if.end38.i.2.i.if.end12.i_crit_edge:              ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.end38.i.2.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end38.i.i:                                     ; preds = %if.then5.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_ctlf_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end12.i:                                       ; preds = %if.end38.i.2.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i61.i = or i16 %.pre.i, 112
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i61.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i68.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.i)
  %cmp.not.i.not.i69.i = icmp eq i16 %call.i.i68.i, -1
  br i1 %cmp.not.i.not.i69.i, label %if.end12.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i76.i, !prof !29

if.end12.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

for.cond.i64.i:                                   ; preds = %if.end38.i76.i
  %call.i.i68.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.1.i)
  %cmp.not.i.not.i69.1.i = icmp eq i16 %call.i.i68.1.i, -1
  br i1 %cmp.not.i.not.i69.1.i, label %for.cond.i64.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i76.1.i, !prof !29

for.cond.i64.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %for.cond.i64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end38.i76.1.i:                                 ; preds = %for.cond.i64.i
  %call.i76.i74.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.1.i)
  %cmp.not.i77.not.i75.1.i = icmp eq i16 %call.i76.i74.1.i, -1
  br i1 %cmp.not.i77.not.i75.1.i, label %if.end38.i76.1.i.get_egress_ctlf_record.exit_crit_edge, label %for.cond.i64.1.i, !prof !29

if.end38.i76.1.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i76.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

for.cond.i64.1.i:                                 ; preds = %if.end38.i76.1.i
  %call.i.i68.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i68.2.i)
  %cmp.not.i.not.i69.2.i = icmp eq i16 %call.i.i68.2.i, -1
  br i1 %cmp.not.i.not.i69.2.i, label %for.cond.i64.1.i.get_egress_ctlf_record.exit_crit_edge, label %if.end38.i76.2.i, !prof !29

for.cond.i64.1.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %for.cond.i64.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

if.end38.i76.2.i:                                 ; preds = %for.cond.i64.1.i
  %call.i76.i74.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.2.i)
  %cmp.not.i77.not.i75.2.i = icmp eq i16 %call.i76.i74.2.i, -1
  br i1 %cmp.not.i77.not.i75.2.i, label %if.end38.i76.2.i.get_egress_ctlf_record.exit_crit_edge, label %for.cond.i64.2.i, !prof !29

if.end38.i76.2.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

for.cond.i64.2.i:                                 ; preds = %if.end38.i76.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv27.i = zext i16 %call.i.i68.i to i32
  %conv30.i = zext i16 %call.i76.i74.i to i32
  %shl.i = shl nuw i32 %conv30.i, 16
  %or.i = or i32 %shl.i, %conv27.i
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %rec, align 4
  %conv34.i = zext i16 %call.i.i68.1.i to i32
  %arrayidx36.i = getelementptr [2 x i32], ptr %rec, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv34.i, ptr %arrayidx36.i, align 4
  %conv38.i = zext i16 %call.i76.i74.1.i to i32
  %eth_type.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 1
  %5 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv38.i, ptr %eth_type.i, align 4
  %conv40.i = zext i16 %call.i.i68.2.i to i32
  %match_mask.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 2
  %6 = ptrtoint ptr %match_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv40.i, ptr %match_mask.i, align 4
  %7 = and i16 %call.i76.i74.2.i, 15
  %and.i = zext i16 %7 to i32
  %match_type.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %match_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %match_type.i, align 4
  %9 = lshr i16 %call.i76.i74.2.i, 4
  %10 = and i16 %9, 1
  %and45.i = zext i16 %10 to i32
  %action.i = getelementptr inbounds %struct.aq_mss_egress_ctlf_record, ptr %rec, i32 0, i32 4
  %11 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and45.i, ptr %action.i, align 4
  br label %get_egress_ctlf_record.exit

if.end38.i76.i:                                   ; preds = %if.end12.i
  %call.i76.i74.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i74.i)
  %cmp.not.i77.not.i75.i = icmp eq i16 %call.i76.i74.i, -1
  br i1 %cmp.not.i77.not.i75.i, label %if.end38.i76.i.get_egress_ctlf_record.exit_crit_edge, label %for.cond.i64.i, !prof !29

if.end38.i76.i.get_egress_ctlf_record.exit_crit_edge: ; preds = %if.end38.i76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_ctlf_record.exit

get_egress_ctlf_record.exit:                      ; preds = %if.end38.i76.i.get_egress_ctlf_record.exit_crit_edge, %for.cond.i64.2.i, %if.end38.i76.2.i.get_egress_ctlf_record.exit_crit_edge, %for.cond.i64.1.i.get_egress_ctlf_record.exit_crit_edge, %if.end38.i76.1.i.get_egress_ctlf_record.exit_crit_edge, %for.cond.i64.i.get_egress_ctlf_record.exit_crit_edge, %if.end12.i.get_egress_ctlf_record.exit_crit_edge, %if.end38.i.i.get_egress_ctlf_record.exit_crit_edge, %if.end38.i.2.i.get_egress_ctlf_record.exit_crit_edge, %for.cond.i.1.i.get_egress_ctlf_record.exit_crit_edge, %if.end38.i.1.i.get_egress_ctlf_record.exit_crit_edge, %for.cond.i.i.get_egress_ctlf_record.exit_crit_edge, %if.then5.i.get_egress_ctlf_record.exit_crit_edge, %if.end.get_egress_ctlf_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i64.2.i ], [ -22, %if.end.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.2.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %for.cond.i64.1.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.1.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %for.cond.i64.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i76.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end12.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_ctlf_record.exit_crit_edge ], [ -62, %if.then5.i.get_egress_ctlf_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_ctlf_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_ctlf_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_class_record(ptr noundef %hw, ptr noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [28 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i7, label %if.end.set_egress_class_record.exit_crit_edge, label %if.end.i

if.end.set_egress_class_record.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_egress_class_record.exit

if.end.i:                                         ; preds = %if.end
  %1 = getelementptr inbounds i8, ptr %packed_record.i, i32 54
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rec, align 4
  %5 = trunc i32 %4 to i16
  %conv2.i = and i16 %5, 4095
  %vlan_up.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 1
  %6 = ptrtoint ptr %vlan_up.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vlan_up.i, align 4
  %.tr.i = trunc i32 %7 to i16
  %8 = shl i16 %.tr.i, 12
  %9 = and i16 %8, 28672
  %conv6.i = or i16 %conv2.i, %9
  %vlan_valid.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 2
  %10 = ptrtoint ptr %vlan_valid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vlan_valid.i, align 4
  %.tr453.i = trunc i32 %11 to i16
  %12 = shl i16 %.tr453.i, 15
  %conv12.i = or i16 %conv6.i, %12
  %13 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv12.i, ptr %packed_record.i, align 2
  %byte3.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 3
  %14 = ptrtoint ptr %byte3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %byte3.i, align 4
  %16 = trunc i32 %15 to i16
  %conv14.i = and i16 %16, 255
  %arrayidx15.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 1
  %byte2.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 4
  %17 = ptrtoint ptr %byte2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %byte2.i, align 4
  %.tr454.i = trunc i32 %18 to i16
  %19 = shl i16 %.tr454.i, 8
  %conv21.i = or i16 %19, %conv14.i
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv21.i, ptr %arrayidx15.i, align 2
  %byte1.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 5
  %21 = ptrtoint ptr %byte1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %byte1.i, align 4
  %23 = trunc i32 %22 to i16
  %conv23.i = and i16 %23, 255
  %arrayidx24.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 2
  %byte0.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 6
  %24 = ptrtoint ptr %byte0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %byte0.i, align 4
  %.tr455.i = trunc i32 %25 to i16
  %26 = shl i16 %.tr455.i, 8
  %conv30.i = or i16 %26, %conv23.i
  %27 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv30.i, ptr %arrayidx24.i, align 2
  %tci.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 7
  %28 = ptrtoint ptr %tci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tci.i, align 4
  %30 = trunc i32 %29 to i16
  %conv32.i = and i16 %30, 255
  %arrayidx33.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 3
  %sci.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 8
  %31 = ptrtoint ptr %sci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sci.i, align 4
  %.tr456.i = trunc i32 %32 to i16
  %33 = shl i16 %.tr456.i, 8
  %conv40.i = or i16 %33, %conv32.i
  %34 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv40.i, ptr %arrayidx33.i, align 2
  %shr.i = lshr i32 %32, 8
  %conv44.i = trunc i32 %shr.i to i16
  %arrayidx45.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv44.i, ptr %arrayidx45.i, align 2
  %arrayidx51.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 5
  %arrayidx53.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx53.i, align 4
  %or58.i = tail call i32 @llvm.fshl.i32(i32 %37, i32 %32, i32 8) #4
  %conv59.i = trunc i32 %or58.i to i16
  %38 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv59.i, ptr %arrayidx51.i, align 2
  %shr62.i = lshr i32 %37, 8
  %conv64.i = trunc i32 %shr62.i to i16
  %arrayidx65.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv64.i, ptr %arrayidx65.i, align 2
  %arrayidx71.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 7
  %eth_type.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 9
  %40 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eth_type.i, align 4
  %or76.i = tail call i32 @llvm.fshl.i32(i32 %41, i32 %37, i32 8) #4
  %conv77.i = trunc i32 %or76.i to i16
  %42 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv77.i, ptr %arrayidx71.i, align 2
  %43 = trunc i32 %41 to i16
  %arrayidx82.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 8
  %snap.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 10
  %44 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %snap.i, align 4
  %.tr457.i = trunc i32 %45 to i16
  %conv89.i = tail call i16 @llvm.fshl.i16(i16 %.tr457.i, i16 %43, i16 8) #4
  %46 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv89.i, ptr %arrayidx82.i, align 2
  %shr92.i = lshr i32 %45, 8
  %conv94.i = trunc i32 %shr92.i to i16
  %arrayidx95.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 9
  %47 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv94.i, ptr %arrayidx95.i, align 2
  %arrayidx101.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 10
  %arrayidx103.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx103.i, align 4
  %or108.i = tail call i32 @llvm.fshl.i32(i32 %49, i32 %45, i32 8) #4
  %conv109.i = trunc i32 %or108.i to i16
  %50 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv109.i, ptr %arrayidx101.i, align 2
  %llc.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 11
  %51 = ptrtoint ptr %llc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %llc.i, align 4
  %conv111.i = trunc i32 %52 to i16
  %arrayidx112.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 11
  %53 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv111.i, ptr %arrayidx112.i, align 2
  %shr114.i = lshr i32 %52, 16
  %54 = trunc i32 %shr114.i to i16
  %conv116.i = and i16 %54, 255
  %arrayidx117.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 12
  %mac_sa.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 12
  %55 = ptrtoint ptr %mac_sa.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mac_sa.i, align 4
  %.tr458.i = trunc i32 %56 to i16
  %57 = shl i16 %.tr458.i, 8
  %conv124.i = or i16 %57, %conv116.i
  %58 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv124.i, ptr %arrayidx117.i, align 2
  %shr127.i = lshr i32 %56, 8
  %conv129.i = trunc i32 %shr127.i to i16
  %arrayidx130.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 13
  %59 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv129.i, ptr %arrayidx130.i, align 2
  %arrayidx136.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 14
  %arrayidx138.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 12, i32 1
  %60 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx138.i, align 4
  %or143.i = tail call i32 @llvm.fshl.i32(i32 %61, i32 %56, i32 8) #4
  %conv144.i = trunc i32 %or143.i to i16
  %62 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv144.i, ptr %arrayidx136.i, align 2
  %63 = trunc i32 %61 to i16
  %arrayidx150.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 15
  %mac_da.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 13
  %64 = ptrtoint ptr %mac_da.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac_da.i, align 4
  %.tr459.i = trunc i32 %65 to i16
  %conv157.i = tail call i16 @llvm.fshl.i16(i16 %.tr459.i, i16 %63, i16 8) #4
  %66 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv157.i, ptr %arrayidx150.i, align 2
  %shr160.i = lshr i32 %65, 8
  %conv162.i = trunc i32 %shr160.i to i16
  %arrayidx163.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 16
  %67 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv162.i, ptr %arrayidx163.i, align 2
  %arrayidx169.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 17
  %arrayidx171.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 13, i32 1
  %68 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx171.i, align 4
  %or176.i = tail call i32 @llvm.fshl.i32(i32 %69, i32 %65, i32 8) #4
  %conv177.i = trunc i32 %or176.i to i16
  %70 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv177.i, ptr %arrayidx169.i, align 2
  %71 = trunc i32 %69 to i16
  %arrayidx183.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 18
  %pn.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 14
  %72 = ptrtoint ptr %pn.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pn.i, align 4
  %.tr460.i = trunc i32 %73 to i16
  %conv189.i = tail call i16 @llvm.fshl.i16(i16 %.tr460.i, i16 %71, i16 8) #4
  %74 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv189.i, ptr %arrayidx183.i, align 2
  %shr191.i = lshr i32 %73, 8
  %conv193.i = trunc i32 %shr191.i to i16
  %arrayidx194.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 19
  %75 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv193.i, ptr %arrayidx194.i, align 2
  %shr196.i = lshr i32 %73, 24
  %arrayidx199.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 20
  %byte3_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 15
  %76 = ptrtoint ptr %byte3_location.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %byte3_location.i, align 4
  %and200.i = shl i32 %77, 8
  %shl201.i = and i32 %and200.i, 16128
  %or204.i = or i32 %shl201.i, %shr196.i
  %byte3_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 16
  %78 = ptrtoint ptr %byte3_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %byte3_mask.i, align 4
  %and206.i = shl i32 %79, 14
  %shl207.i = and i32 %and206.i, 16384
  %or210.i = or i32 %or204.i, %shl207.i
  %byte2_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 17
  %80 = ptrtoint ptr %byte2_location.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %byte2_location.i, align 4
  %and212.i = shl i32 %81, 15
  %or216.i = or i32 %or210.i, %and212.i
  %conv217.i = trunc i32 %or216.i to i16
  %82 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv217.i, ptr %arrayidx199.i, align 2
  %83 = trunc i32 %81 to i16
  %84 = lshr i16 %83, 1
  %conv221.i = and i16 %84, 31
  %arrayidx222.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 21
  %byte2_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 18
  %85 = ptrtoint ptr %byte2_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %byte2_mask.i, align 4
  %.tr461.i = trunc i32 %86 to i16
  %87 = shl i16 %.tr461.i, 5
  %88 = and i16 %87, 32
  %conv228.i = or i16 %88, %conv221.i
  %byte1_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 19
  %89 = ptrtoint ptr %byte1_location.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %byte1_location.i, align 4
  %.tr462.i = trunc i32 %90 to i16
  %91 = shl i16 %.tr462.i, 6
  %92 = and i16 %91, 4032
  %conv234.i = or i16 %conv228.i, %92
  %byte1_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 20
  %93 = ptrtoint ptr %byte1_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %byte1_mask.i, align 4
  %.tr463.i = trunc i32 %94 to i16
  %95 = shl i16 %.tr463.i, 12
  %96 = and i16 %95, 4096
  %conv240.i = or i16 %conv234.i, %96
  %byte0_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 21
  %97 = ptrtoint ptr %byte0_location.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %byte0_location.i, align 4
  %.tr464.i = trunc i32 %98 to i16
  %99 = shl i16 %.tr464.i, 13
  %conv246.i = or i16 %conv240.i, %99
  %100 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv246.i, ptr %arrayidx222.i, align 2
  %101 = lshr i16 %.tr464.i, 3
  %conv250.i = and i16 %101, 7
  %arrayidx251.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 22
  %byte0_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 22
  %102 = ptrtoint ptr %byte0_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %byte0_mask.i, align 4
  %.tr465.i = trunc i32 %103 to i16
  %104 = shl i16 %.tr465.i, 3
  %105 = and i16 %104, 8
  %conv257.i = or i16 %105, %conv250.i
  %vlan_id_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 23
  %106 = ptrtoint ptr %vlan_id_mask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vlan_id_mask.i, align 4
  %.tr466.i = trunc i32 %107 to i16
  %108 = shl i16 %.tr466.i, 4
  %109 = and i16 %108, 48
  %conv263.i = or i16 %conv257.i, %109
  %vlan_up_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 24
  %110 = ptrtoint ptr %vlan_up_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vlan_up_mask.i, align 4
  %.tr467.i = trunc i32 %111 to i16
  %112 = shl i16 %.tr467.i, 6
  %113 = and i16 %112, 64
  %conv269.i = or i16 %conv263.i, %113
  %vlan_valid_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 25
  %114 = ptrtoint ptr %vlan_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vlan_valid_mask.i, align 4
  %.tr468.i = trunc i32 %115 to i16
  %116 = shl i16 %.tr468.i, 7
  %117 = and i16 %116, 128
  %conv275.i = or i16 %conv269.i, %117
  %tci_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 26
  %118 = ptrtoint ptr %tci_mask.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tci_mask.i, align 4
  %.tr469.i = trunc i32 %119 to i16
  %120 = shl i16 %.tr469.i, 8
  %conv281.i = or i16 %conv275.i, %120
  %121 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv281.i, ptr %arrayidx251.i, align 2
  %sci_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 27
  %122 = ptrtoint ptr %sci_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sci_mask.i, align 4
  %124 = trunc i32 %123 to i16
  %conv283.i = and i16 %124, 255
  %arrayidx284.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 23
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 28
  %125 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %eth_type_mask.i, align 4
  %.tr470.i = trunc i32 %126 to i16
  %127 = shl i16 %.tr470.i, 8
  %128 = and i16 %127, 768
  %conv290.i = or i16 %128, %conv283.i
  %snap_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 29
  %129 = ptrtoint ptr %snap_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %snap_mask.i, align 4
  %.tr471.i = trunc i32 %130 to i16
  %131 = shl i16 %.tr471.i, 10
  %132 = and i16 %131, 31744
  %conv296.i = or i16 %conv290.i, %132
  %llc_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 30
  %133 = ptrtoint ptr %llc_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %llc_mask.i, align 4
  %.tr472.i = trunc i32 %134 to i16
  %135 = shl i16 %.tr472.i, 15
  %conv302.i = or i16 %conv296.i, %135
  %136 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv302.i, ptr %arrayidx284.i, align 2
  %137 = lshr i16 %.tr472.i, 1
  %conv306.i = and i16 %137, 3
  %arrayidx307.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 24
  %sa_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 31
  %138 = ptrtoint ptr %sa_mask.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sa_mask.i, align 4
  %.tr473.i = trunc i32 %139 to i16
  %140 = shl i16 %.tr473.i, 2
  %141 = and i16 %140, 252
  %conv313.i = or i16 %141, %conv306.i
  %da_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 32
  %142 = ptrtoint ptr %da_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %da_mask.i, align 4
  %.tr474.i = trunc i32 %143 to i16
  %144 = shl i16 %.tr474.i, 8
  %145 = and i16 %144, 16128
  %conv319.i = or i16 %conv313.i, %145
  %pn_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 33
  %146 = ptrtoint ptr %pn_mask.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pn_mask.i, align 4
  %.tr475.i = trunc i32 %147 to i16
  %148 = shl i16 %.tr475.i, 14
  %conv325.i = or i16 %conv319.i, %148
  %149 = ptrtoint ptr %arrayidx307.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv325.i, ptr %arrayidx307.i, align 2
  %150 = lshr i16 %.tr475.i, 2
  %conv329.i = and i16 %150, 3
  %arrayidx330.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 25
  %eight02dot2.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 34
  %151 = ptrtoint ptr %eight02dot2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %eight02dot2.i, align 4
  %.tr476.i = trunc i32 %152 to i16
  %153 = shl i16 %.tr476.i, 2
  %154 = and i16 %153, 4
  %conv336.i = or i16 %154, %conv329.i
  %tci_sc.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 35
  %155 = ptrtoint ptr %tci_sc.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tci_sc.i, align 4
  %.tr477.i = trunc i32 %156 to i16
  %157 = shl i16 %.tr477.i, 3
  %158 = and i16 %157, 8
  %conv342.i = or i16 %conv336.i, %158
  %tci_87543.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 36
  %159 = ptrtoint ptr %tci_87543.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tci_87543.i, align 4
  %.tr478.i = trunc i32 %160 to i16
  %161 = shl i16 %.tr478.i, 4
  %162 = and i16 %161, 16
  %conv348.i = or i16 %conv342.i, %162
  %exp_sectag_en.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 37
  %163 = ptrtoint ptr %exp_sectag_en.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %exp_sectag_en.i, align 4
  %.tr479.i = trunc i32 %164 to i16
  %165 = shl i16 %.tr479.i, 5
  %166 = and i16 %165, 32
  %conv354.i = or i16 %conv348.i, %166
  %sc_idx.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 38
  %167 = ptrtoint ptr %sc_idx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sc_idx.i, align 4
  %.tr480.i = trunc i32 %168 to i16
  %169 = shl i16 %.tr480.i, 6
  %170 = and i16 %169, 1984
  %conv360.i = or i16 %conv354.i, %170
  %sc_sa.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 39
  %171 = ptrtoint ptr %sc_sa.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sc_sa.i, align 4
  %.tr481.i = trunc i32 %172 to i16
  %173 = shl i16 %.tr481.i, 11
  %174 = and i16 %173, 6144
  %conv366.i = or i16 %conv360.i, %174
  %debug.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 40
  %175 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %debug.i, align 4
  %.tr482.i = trunc i32 %176 to i16
  %177 = shl i16 %.tr482.i, 13
  %178 = and i16 %177, 8192
  %conv372.i = or i16 %conv366.i, %178
  %action.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 41
  %179 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %action.i, align 4
  %.tr483.i = trunc i32 %180 to i16
  %181 = shl i16 %.tr483.i, 14
  %conv378.i = or i16 %conv372.i, %181
  %182 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv378.i, ptr %arrayidx330.i, align 2
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 42
  %183 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %valid.i, align 4
  %.tr484.i = trunc i32 %184 to i16
  %185 = shl i16 %.tr484.i, 3
  %conv381.i = and i16 %185, 8
  %arrayidx382.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 26
  %186 = ptrtoint ptr %arrayidx382.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv381.i, ptr %arrayidx382.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.02.i.i = phi i32 [ %add9.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %187 = trunc i32 %i.02.i.i to i16
  %conv2.i.i = add nuw nsw i16 %187, 20640
  %arrayidx.i.i = getelementptr i16, ptr %packed_record.i, i32 %i.02.i.i
  %188 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx.i.i, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv2.i.i, i16 noundef zeroext %189) #4
  %conv5.i.i = add nuw nsw i16 %187, 20641
  %add6.i.i = or i32 %i.02.i.i, 1
  %arrayidx7.i.i = getelementptr i16, ptr %packed_record.i, i32 %add6.i.i
  %190 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %arrayidx7.i.i, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv5.i.i, i16 noundef zeroext %191) #4
  %add9.i.i = add nuw nsw i32 %i.02.i.i, 2
  %cmp.i.i = icmp ult i32 %i.02.i.i, 26
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %set_raw_egress_record.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

set_raw_egress_record.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.shl.i.i = shl i16 %table_index, 7
  %bf.set30.i.i = or i16 %bf.shl.i.i, 113
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set30.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -3) #4
  br label %set_egress_class_record.exit

set_egress_class_record.exit:                     ; preds = %set_raw_egress_record.exit.i, %if.end.set_egress_class_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %set_raw_egress_record.exit.i ], [ -22, %if.end.set_egress_class_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_egress_class_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_egress_class_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_class_record(ptr noundef %hw, ptr noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [28 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 188)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 47
  br i1 %cmp.i8, label %if.end.get_egress_class_record.exit_crit_edge, label %if.end.i

if.end.get_egress_class_record.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_class_record.exit

if.end.i:                                         ; preds = %if.end
  %2 = and i16 %table_index, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp3.not.i = icmp eq i16 %2, 0
  %.pre.i = shl nuw nsw i16 %table_index, 7
  br i1 %cmp3.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then5.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %bf.set5.i.i = add nsw i16 %.pre.i, -15
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %add54.i.i = add nuw nsw i32 %i.080.i.i, 2
  %cmp.i.i = icmp ult i32 %i.080.i.i, 26
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end12.i_crit_edge

for.cond.i.i.if.end12.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then5.i
  %i.080.i.i = phi i32 [ %add54.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i ]
  %3 = trunc i32 %i.080.i.i to i16
  %conv28.i.i = add nuw nsw i16 %3, 20640
  %arrayidx.i.i = getelementptr i16, ptr %packed_record.i, i32 %i.080.i.i
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv28.i.i) #4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call.i.i.i, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %for.body.i.i.get_egress_class_record.exit_crit_edge, label %if.end38.i.i, !prof !29

for.body.i.i.get_egress_class_record.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_class_record.exit

if.end38.i.i:                                     ; preds = %for.body.i.i
  %conv41.i.i = add nuw nsw i16 %3, 20641
  %add42.i.i = or i32 %i.080.i.i, 1
  %arrayidx43.i.i = getelementptr i16, ptr %packed_record.i, i32 %add42.i.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv41.i.i) #4
  %5 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call.i76.i.i, ptr %arrayidx43.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_class_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_class_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_class_record.exit

if.end12.i:                                       ; preds = %for.cond.i.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %bf.set5.i423.i = or i16 %.pre.i, 113
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i423.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %6 = call ptr @memset(ptr %packed_record.i, i32 0, i32 56)
  br label %for.body.i432.i

for.cond.i426.i:                                  ; preds = %if.end38.i438.i
  %add54.i424.i = add nuw nsw i32 %i.080.i427.i, 2
  %cmp.i425.i = icmp ult i32 %i.080.i427.i, 26
  br i1 %cmp.i425.i, label %for.cond.i426.i.for.body.i432.i_crit_edge, label %if.end26.i

for.cond.i426.i.for.body.i432.i_crit_edge:        ; preds = %for.cond.i426.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i432.i

for.body.i432.i:                                  ; preds = %for.cond.i426.i.for.body.i432.i_crit_edge, %if.end12.i
  %i.080.i427.i = phi i32 [ %add54.i424.i, %for.cond.i426.i.for.body.i432.i_crit_edge ], [ 0, %if.end12.i ]
  %7 = trunc i32 %i.080.i427.i to i16
  %conv28.i428.i = add nuw nsw i16 %7, 20640
  %arrayidx.i429.i = getelementptr i16, ptr %packed_record.i, i32 %i.080.i427.i
  %call.i.i430.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv28.i428.i) #4
  %8 = ptrtoint ptr %arrayidx.i429.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call.i.i430.i, ptr %arrayidx.i429.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i430.i)
  %cmp.not.i.not.i431.i = icmp eq i16 %call.i.i430.i, -1
  br i1 %cmp.not.i.not.i431.i, label %for.body.i432.i.get_egress_class_record.exit_crit_edge, label %if.end38.i438.i, !prof !29

for.body.i432.i.get_egress_class_record.exit_crit_edge: ; preds = %for.body.i432.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_class_record.exit

if.end38.i438.i:                                  ; preds = %for.body.i432.i
  %conv41.i433.i = add nuw nsw i16 %7, 20641
  %add42.i434.i = or i32 %i.080.i427.i, 1
  %arrayidx43.i435.i = getelementptr i16, ptr %packed_record.i, i32 %add42.i434.i
  %call.i76.i436.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv41.i433.i) #4
  %9 = ptrtoint ptr %arrayidx43.i435.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call.i76.i436.i, ptr %arrayidx43.i435.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i436.i)
  %cmp.not.i77.not.i437.i = icmp eq i16 %call.i76.i436.i, -1
  br i1 %cmp.not.i77.not.i437.i, label %if.end38.i438.i.get_egress_class_record.exit_crit_edge, label %for.cond.i426.i, !prof !29

if.end38.i438.i.get_egress_class_record.exit_crit_edge: ; preds = %if.end38.i438.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_class_record.exit

if.end26.i:                                       ; preds = %for.cond.i426.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %packed_record.i, align 2
  %12 = and i16 %11, 4095
  %and.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i, ptr %rec, align 4
  %14 = lshr i16 %11, 12
  %15 = and i16 %14, 7
  %and30.i = zext i16 %15 to i32
  %vlan_up.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 1
  %16 = ptrtoint ptr %vlan_up.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and30.i, ptr %vlan_up.i, align 4
  %17 = lshr i16 %11, 15
  %18 = zext i16 %17 to i32
  %vlan_valid.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 2
  %19 = ptrtoint ptr %vlan_valid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vlan_valid.i, align 4
  %arrayidx35.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx35.i, align 2
  %22 = and i16 %21, 255
  %and37.i = zext i16 %22 to i32
  %byte3.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 3
  %23 = ptrtoint ptr %byte3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and37.i, ptr %byte3.i, align 4
  %24 = lshr i16 %21, 8
  %25 = zext i16 %24 to i32
  %byte2.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 4
  %26 = ptrtoint ptr %byte2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %byte2.i, align 4
  %arrayidx42.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx42.i, align 2
  %29 = and i16 %28, 255
  %and44.i = zext i16 %29 to i32
  %byte1.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 5
  %30 = ptrtoint ptr %byte1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and44.i, ptr %byte1.i, align 4
  %31 = lshr i16 %28, 8
  %32 = zext i16 %31 to i32
  %byte0.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 6
  %33 = ptrtoint ptr %byte0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %byte0.i, align 4
  %arrayidx49.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx49.i, align 2
  %36 = and i16 %35, 255
  %and51.i = zext i16 %36 to i32
  %tci.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 7
  %37 = ptrtoint ptr %tci.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and51.i, ptr %tci.i, align 4
  %38 = lshr i16 %35, 8
  %39 = zext i16 %38 to i32
  %sci.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 8
  %arrayidx57.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx57.i, align 2
  %conv58.i = zext i16 %41 to i32
  %shl.i = shl nuw nsw i32 %conv58.i, 8
  %or.i = or i32 %shl.i, %39
  %arrayidx61.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx61.i, align 2
  %and63.i = zext i16 %43 to i32
  %shl64.i = shl i32 %and63.i, 24
  %or67.i = or i32 %shl64.i, %or.i
  %44 = ptrtoint ptr %sci.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or67.i, ptr %sci.i, align 4
  %45 = lshr i16 %43, 8
  %46 = zext i16 %45 to i32
  %arrayidx73.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 8, i32 1
  %arrayidx74.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 6
  %47 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx74.i, align 2
  %conv75.i = zext i16 %48 to i32
  %shl76.i = shl nuw nsw i32 %conv75.i, 8
  %or79.i = or i32 %shl76.i, %46
  %arrayidx80.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx80.i, align 2
  %and82.i = zext i16 %50 to i32
  %shl83.i = shl i32 %and82.i, 24
  %or86.i = or i32 %shl83.i, %or79.i
  %51 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or86.i, ptr %arrayidx73.i, align 4
  %eth_type.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 9
  %arrayidx91.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 8
  %52 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx91.i, align 2
  %or96415.i = tail call i16 @llvm.fshl.i16(i16 %53, i16 %50, i16 8) #4
  %or96.i = zext i16 %or96415.i to i32
  %54 = ptrtoint ptr %eth_type.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or96.i, ptr %eth_type.i, align 4
  %55 = lshr i16 %53, 8
  %56 = zext i16 %55 to i32
  %snap.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 10
  %arrayidx102.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 9
  %57 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx102.i, align 2
  %conv103.i = zext i16 %58 to i32
  %shl104.i = shl nuw nsw i32 %conv103.i, 8
  %or107.i = or i32 %shl104.i, %56
  %arrayidx108.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 10
  %59 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx108.i, align 2
  %and110.i = zext i16 %60 to i32
  %shl111.i = shl i32 %and110.i, 24
  %or114.i = or i32 %shl111.i, %or107.i
  %61 = ptrtoint ptr %snap.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or114.i, ptr %snap.i, align 4
  %62 = lshr i16 %60, 8
  %63 = zext i16 %62 to i32
  %arrayidx120.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx120.i, align 4
  %arrayidx121.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 11
  %65 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx121.i, align 2
  %conv122.i = zext i16 %66 to i32
  %llc.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 11
  %arrayidx123.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 12
  %67 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx123.i, align 2
  %69 = and i16 %68, 255
  %and125.i = zext i16 %69 to i32
  %shl126.i = shl nuw nsw i32 %and125.i, 16
  %or128.i = or i32 %shl126.i, %conv122.i
  %70 = ptrtoint ptr %llc.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or128.i, ptr %llc.i, align 4
  %71 = lshr i16 %68, 8
  %72 = zext i16 %71 to i32
  %mac_sa.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 12
  %arrayidx134.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 13
  %73 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx134.i, align 2
  %conv135.i = zext i16 %74 to i32
  %shl136.i = shl nuw nsw i32 %conv135.i, 8
  %or139.i = or i32 %shl136.i, %72
  %arrayidx140.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 14
  %75 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx140.i, align 2
  %and142.i = zext i16 %76 to i32
  %shl143.i = shl i32 %and142.i, 24
  %or146.i = or i32 %shl143.i, %or139.i
  %77 = ptrtoint ptr %mac_sa.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or146.i, ptr %mac_sa.i, align 4
  %arrayidx152.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 12, i32 1
  %arrayidx153.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 15
  %78 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx153.i, align 2
  %or159416.i = tail call i16 @llvm.fshl.i16(i16 %79, i16 %76, i16 8) #4
  %or159.i = zext i16 %or159416.i to i32
  %80 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or159.i, ptr %arrayidx152.i, align 4
  %81 = lshr i16 %79, 8
  %82 = zext i16 %81 to i32
  %mac_da.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 13
  %arrayidx165.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 16
  %83 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx165.i, align 2
  %conv166.i = zext i16 %84 to i32
  %shl167.i = shl nuw nsw i32 %conv166.i, 8
  %or170.i = or i32 %shl167.i, %82
  %arrayidx171.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 17
  %85 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx171.i, align 2
  %and173.i = zext i16 %86 to i32
  %shl174.i = shl i32 %and173.i, 24
  %or177.i = or i32 %shl174.i, %or170.i
  %87 = ptrtoint ptr %mac_da.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or177.i, ptr %mac_da.i, align 4
  %arrayidx183.i = getelementptr %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 13, i32 1
  %arrayidx184.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 18
  %88 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx184.i, align 2
  %or190417.i = tail call i16 @llvm.fshl.i16(i16 %89, i16 %86, i16 8) #4
  %or190.i = zext i16 %or190417.i to i32
  %90 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or190.i, ptr %arrayidx183.i, align 4
  %91 = lshr i16 %89, 8
  %92 = zext i16 %91 to i32
  %pn.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 14
  %arrayidx195.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 19
  %93 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx195.i, align 2
  %conv196.i = zext i16 %94 to i32
  %shl197.i = shl nuw nsw i32 %conv196.i, 8
  %or199.i = or i32 %shl197.i, %92
  %arrayidx200.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 20
  %95 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx200.i, align 2
  %and202.i = zext i16 %96 to i32
  %shl203.i = shl i32 %and202.i, 24
  %or205.i = or i32 %shl203.i, %or199.i
  %97 = ptrtoint ptr %pn.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or205.i, ptr %pn.i, align 4
  %98 = lshr i16 %96, 8
  %99 = and i16 %98, 63
  %and209.i = zext i16 %99 to i32
  %byte3_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 15
  %100 = ptrtoint ptr %byte3_location.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and209.i, ptr %byte3_location.i, align 4
  %101 = lshr i16 %96, 14
  %102 = and i16 %101, 1
  %and213.i = zext i16 %102 to i32
  %byte3_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 16
  %103 = ptrtoint ptr %byte3_mask.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and213.i, ptr %byte3_mask.i, align 4
  %104 = lshr i16 %96, 15
  %byte2_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 17
  %arrayidx218.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 21
  %105 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx218.i, align 2
  %107 = shl i16 %106, 1
  %108 = and i16 %107, 62
  %or223418.i = or i16 %108, %104
  %or223.i = zext i16 %or223418.i to i32
  %109 = ptrtoint ptr %byte2_location.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or223.i, ptr %byte2_location.i, align 4
  %110 = lshr i16 %106, 5
  %111 = and i16 %110, 1
  %and227.i = zext i16 %111 to i32
  %byte2_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 18
  %112 = ptrtoint ptr %byte2_mask.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and227.i, ptr %byte2_mask.i, align 4
  %113 = lshr i16 %106, 6
  %114 = and i16 %113, 63
  %and231.i = zext i16 %114 to i32
  %byte1_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 19
  %115 = ptrtoint ptr %byte1_location.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and231.i, ptr %byte1_location.i, align 4
  %116 = lshr i16 %106, 12
  %117 = and i16 %116, 1
  %and235.i = zext i16 %117 to i32
  %byte1_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 20
  %118 = ptrtoint ptr %byte1_mask.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and235.i, ptr %byte1_mask.i, align 4
  %119 = lshr i16 %106, 13
  %byte0_location.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 21
  %arrayidx240.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 22
  %120 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx240.i, align 2
  %122 = shl i16 %121, 3
  %123 = and i16 %122, 56
  %or245419.i = or i16 %123, %119
  %or245.i = zext i16 %or245419.i to i32
  %124 = ptrtoint ptr %byte0_location.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or245.i, ptr %byte0_location.i, align 4
  %125 = lshr i16 %121, 3
  %126 = and i16 %125, 1
  %and249.i = zext i16 %126 to i32
  %byte0_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 22
  %127 = ptrtoint ptr %byte0_mask.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %and249.i, ptr %byte0_mask.i, align 4
  %128 = lshr i16 %121, 4
  %129 = and i16 %128, 3
  %and253.i = zext i16 %129 to i32
  %vlan_id_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 23
  %130 = ptrtoint ptr %vlan_id_mask.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and253.i, ptr %vlan_id_mask.i, align 4
  %131 = lshr i16 %121, 6
  %132 = and i16 %131, 1
  %and257.i = zext i16 %132 to i32
  %vlan_up_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 24
  %133 = ptrtoint ptr %vlan_up_mask.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and257.i, ptr %vlan_up_mask.i, align 4
  %134 = lshr i16 %121, 7
  %135 = and i16 %134, 1
  %and261.i = zext i16 %135 to i32
  %vlan_valid_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 25
  %136 = ptrtoint ptr %vlan_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %and261.i, ptr %vlan_valid_mask.i, align 4
  %137 = lshr i16 %121, 8
  %138 = zext i16 %137 to i32
  %tci_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 26
  %139 = ptrtoint ptr %tci_mask.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %tci_mask.i, align 4
  %arrayidx266.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 23
  %140 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx266.i, align 2
  %142 = and i16 %141, 255
  %and268.i = zext i16 %142 to i32
  %sci_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 27
  %143 = ptrtoint ptr %sci_mask.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and268.i, ptr %sci_mask.i, align 4
  %144 = lshr i16 %141, 8
  %145 = and i16 %144, 3
  %and272.i = zext i16 %145 to i32
  %eth_type_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 28
  %146 = ptrtoint ptr %eth_type_mask.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and272.i, ptr %eth_type_mask.i, align 4
  %147 = lshr i16 %141, 10
  %148 = and i16 %147, 31
  %and276.i = zext i16 %148 to i32
  %snap_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 29
  %149 = ptrtoint ptr %snap_mask.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %and276.i, ptr %snap_mask.i, align 4
  %150 = lshr i16 %141, 15
  %llc_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 30
  %arrayidx281.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 24
  %151 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx281.i, align 2
  %153 = shl i16 %152, 1
  %154 = and i16 %153, 6
  %or286420.i = or i16 %154, %150
  %or286.i = zext i16 %or286420.i to i32
  %155 = ptrtoint ptr %llc_mask.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or286.i, ptr %llc_mask.i, align 4
  %156 = lshr i16 %152, 2
  %157 = and i16 %156, 63
  %and290.i = zext i16 %157 to i32
  %sa_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 31
  %158 = ptrtoint ptr %sa_mask.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %and290.i, ptr %sa_mask.i, align 4
  %159 = lshr i16 %152, 8
  %160 = and i16 %159, 63
  %and294.i = zext i16 %160 to i32
  %da_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 32
  %161 = ptrtoint ptr %da_mask.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %and294.i, ptr %da_mask.i, align 4
  %162 = lshr i16 %152, 14
  %pn_mask.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 33
  %arrayidx299.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 25
  %163 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx299.i, align 2
  %165 = shl i16 %164, 2
  %166 = and i16 %165, 12
  %or304421.i = or i16 %166, %162
  %or304.i = zext i16 %or304421.i to i32
  %167 = ptrtoint ptr %pn_mask.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or304.i, ptr %pn_mask.i, align 4
  %168 = lshr i16 %164, 2
  %169 = and i16 %168, 1
  %and308.i = zext i16 %169 to i32
  %eight02dot2.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 34
  %170 = ptrtoint ptr %eight02dot2.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %and308.i, ptr %eight02dot2.i, align 4
  %171 = lshr i16 %164, 3
  %172 = and i16 %171, 1
  %and312.i = zext i16 %172 to i32
  %tci_sc.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 35
  %173 = ptrtoint ptr %tci_sc.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %and312.i, ptr %tci_sc.i, align 4
  %174 = lshr i16 %164, 4
  %175 = and i16 %174, 1
  %and316.i = zext i16 %175 to i32
  %tci_87543.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 36
  %176 = ptrtoint ptr %tci_87543.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %and316.i, ptr %tci_87543.i, align 4
  %177 = lshr i16 %164, 5
  %178 = and i16 %177, 1
  %and320.i = zext i16 %178 to i32
  %exp_sectag_en.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 37
  %179 = ptrtoint ptr %exp_sectag_en.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %and320.i, ptr %exp_sectag_en.i, align 4
  %180 = lshr i16 %164, 6
  %181 = and i16 %180, 31
  %and324.i = zext i16 %181 to i32
  %sc_idx.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 38
  %182 = ptrtoint ptr %sc_idx.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %and324.i, ptr %sc_idx.i, align 4
  %183 = lshr i16 %164, 11
  %184 = and i16 %183, 3
  %and328.i = zext i16 %184 to i32
  %sc_sa.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 39
  %185 = ptrtoint ptr %sc_sa.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %and328.i, ptr %sc_sa.i, align 4
  %186 = lshr i16 %164, 13
  %187 = and i16 %186, 1
  %and332.i = zext i16 %187 to i32
  %debug.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 40
  %188 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %and332.i, ptr %debug.i, align 4
  %189 = lshr i16 %164, 14
  %190 = zext i16 %189 to i32
  %action.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 41
  %191 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %action.i, align 4
  %arrayidx337.i = getelementptr inbounds [28 x i16], ptr %packed_record.i, i32 0, i32 26
  %192 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx337.i, align 2
  %194 = lshr i16 %193, 3
  %195 = and i16 %194, 1
  %and340.i = zext i16 %195 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_class_record, ptr %rec, i32 0, i32 42
  %196 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %and340.i, ptr %valid.i, align 4
  br label %get_egress_class_record.exit

get_egress_class_record.exit:                     ; preds = %if.end26.i, %if.end38.i438.i.get_egress_class_record.exit_crit_edge, %for.body.i432.i.get_egress_class_record.exit_crit_edge, %if.end38.i.i.get_egress_class_record.exit_crit_edge, %for.body.i.i.get_egress_class_record.exit_crit_edge, %if.end.get_egress_class_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end26.i ], [ -22, %if.end.get_egress_class_record.exit_crit_edge ], [ -62, %if.end38.i438.i.get_egress_class_record.exit_crit_edge ], [ -62, %for.body.i432.i.get_egress_class_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_class_record.exit_crit_edge ], [ -62, %for.body.i.i.get_egress_class_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_class_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_class_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_sc_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i7 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i7, label %if.end.set_egress_sc_record.exit_crit_edge, label %if.end.i

if.end.set_egress_sc_record.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_egress_sc_record.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 5
  %3 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %packed_record.i, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %7, align 2
  %9 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %10 to i16
  %11 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %10, 16
  %conv5.i = trunc i32 %shr.i to i16
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv5.i, ptr %6, align 2
  %stop_time.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_time.i, align 4
  %conv8.i = trunc i32 %14 to i16
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv8.i, ptr %5, align 2
  %shr11.i = lshr i32 %14, 16
  %conv13.i = trunc i32 %shr11.i to i16
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv13.i, ptr %4, align 2
  %curr_an.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 2
  %17 = ptrtoint ptr %curr_an.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr_an.i, align 4
  %19 = trunc i32 %18 to i16
  %conv16.i = and i16 %19, 3
  %an_roll.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 3
  %20 = ptrtoint ptr %an_roll.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %an_roll.i, align 4
  %.tr.i = trunc i32 %21 to i16
  %22 = shl i16 %.tr.i, 2
  %23 = and i16 %22, 4
  %conv21.i = or i16 %23, %conv16.i
  %tci.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 4
  %24 = ptrtoint ptr %tci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tci.i, align 4
  %.tr84.i = trunc i32 %25 to i16
  %26 = shl i16 %.tr84.i, 3
  %27 = and i16 %26, 504
  %conv27.i = or i16 %conv21.i, %27
  %enc_off.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 5
  %28 = ptrtoint ptr %enc_off.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enc_off.i, align 4
  %.tr85.i = trunc i32 %29 to i16
  %30 = shl i16 %.tr85.i, 9
  %conv33.i = or i16 %conv27.i, %30
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv33.i, ptr %3, align 2
  %32 = lshr i16 %.tr85.i, 7
  %conv37.i = and i16 %32, 1
  %protect.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 6
  %33 = ptrtoint ptr %protect.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %protect.i, align 4
  %.tr86.i = trunc i32 %34 to i16
  %35 = shl i16 %.tr86.i, 1
  %36 = and i16 %35, 2
  %conv44.i = or i16 %36, %conv37.i
  %recv.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 7
  %37 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %recv.i, align 4
  %.tr87.i = trunc i32 %38 to i16
  %39 = shl i16 %.tr87.i, 2
  %40 = and i16 %39, 4
  %conv50.i = or i16 %conv44.i, %40
  %fresh.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 8
  %41 = ptrtoint ptr %fresh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fresh.i, align 4
  %.tr88.i = trunc i32 %42 to i16
  %43 = shl i16 %.tr88.i, 3
  %44 = and i16 %43, 8
  %conv56.i = or i16 %conv50.i, %44
  %sak_len.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 9
  %45 = ptrtoint ptr %sak_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sak_len.i, align 4
  %.tr89.i = trunc i32 %46 to i16
  %47 = shl i16 %.tr89.i, 4
  %48 = and i16 %47, 48
  %conv62.i = or i16 %conv56.i, %48
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv62.i, ptr %2, align 2
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 10
  %50 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %valid.i, align 4
  %.tr90.i = trunc i32 %51 to i16
  %conv65.i = shl i16 %.tr90.i, 15
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv65.i, ptr %1, align 2
  call fastcc void @set_raw_egress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext %table_index) #4
  br label %set_egress_sc_record.exit

set_egress_sc_record.exit:                        ; preds = %if.end.i, %if.end.set_egress_sc_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end.set_egress_sc_record.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %set_egress_sc_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %set_egress_sc_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sc_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 44)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_egress_sc_record.exit_crit_edge, label %if.end.i

if.end.get_egress_sc_record.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

if.end.i:                                         ; preds = %if.end
  %bf.shl.i.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = or i16 %bf.shl.i.i, 114
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_egress_sc_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_egress_sc_record.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_sc_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_sc_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_sc_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_sc_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_egress_sc_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_egress_sc_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_egress_sc_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_egress_sc_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20646) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_egress_sc_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_egress_sc_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20647) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_egress_sc_record.exit_crit_edge, label %for.cond.i.3.i, !prof !29

if.end38.i.3.i.get_egress_sc_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

for.cond.i.3.i:                                   ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %rec, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %stop_time.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 1
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or18.i = or i32 %shl16.i, %conv13.i
  %3 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or18.i, ptr %stop_time.i, align 4
  %4 = and i16 %call.i.i.2.i, 3
  %and.i = zext i16 %4 to i32
  %curr_an.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 2
  %5 = ptrtoint ptr %curr_an.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %curr_an.i, align 4
  %6 = lshr i16 %call.i.i.2.i, 2
  %7 = and i16 %6, 1
  %and23.i = zext i16 %7 to i32
  %an_roll.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 3
  %8 = ptrtoint ptr %an_roll.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and23.i, ptr %an_roll.i, align 4
  %9 = lshr i16 %call.i.i.2.i, 3
  %10 = and i16 %9, 63
  %and27.i = zext i16 %10 to i32
  %tci.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 4
  %11 = ptrtoint ptr %tci.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and27.i, ptr %tci.i, align 4
  %12 = lshr i16 %call.i.i.2.i, 9
  %enc_off.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 5
  %13 = shl i16 %call.i76.i.2.i, 7
  %14 = and i16 %13, 128
  %or3774.i = or i16 %14, %12
  %or37.i = zext i16 %or3774.i to i32
  %15 = ptrtoint ptr %enc_off.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or37.i, ptr %enc_off.i, align 4
  %16 = lshr i16 %call.i76.i.2.i, 1
  %17 = and i16 %16, 1
  %and41.i = zext i16 %17 to i32
  %protect.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 6
  %18 = ptrtoint ptr %protect.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and41.i, ptr %protect.i, align 4
  %19 = lshr i16 %call.i76.i.2.i, 2
  %20 = and i16 %19, 1
  %and45.i = zext i16 %20 to i32
  %recv.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 7
  %21 = ptrtoint ptr %recv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and45.i, ptr %recv.i, align 4
  %22 = lshr i16 %call.i76.i.2.i, 3
  %23 = and i16 %22, 1
  %and49.i = zext i16 %23 to i32
  %fresh.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 8
  %24 = ptrtoint ptr %fresh.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and49.i, ptr %fresh.i, align 4
  %25 = lshr i16 %call.i76.i.2.i, 4
  %26 = and i16 %25, 3
  %and53.i = zext i16 %26 to i32
  %sak_len.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 9
  %27 = ptrtoint ptr %sak_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and53.i, ptr %sak_len.i, align 4
  %28 = lshr i16 %call.i76.i.3.i, 15
  %29 = zext i16 %28 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_sc_record, ptr %rec, i32 0, i32 10
  %30 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %valid.i, align 4
  br label %get_egress_sc_record.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_sc_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_sc_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_record.exit

get_egress_sc_record.exit:                        ; preds = %if.end38.i.i.get_egress_sc_record.exit_crit_edge, %for.cond.i.3.i, %if.end38.i.3.i.get_egress_sc_record.exit_crit_edge, %for.cond.i.2.i.get_egress_sc_record.exit_crit_edge, %if.end38.i.2.i.get_egress_sc_record.exit_crit_edge, %for.cond.i.1.i.get_egress_sc_record.exit_crit_edge, %if.end38.i.1.i.get_egress_sc_record.exit_crit_edge, %for.cond.i.i.get_egress_sc_record.exit_crit_edge, %if.end.i.get_egress_sc_record.exit_crit_edge, %if.end.get_egress_sc_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i.3.i ], [ -22, %if.end.get_egress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_egress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_egress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_egress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_sc_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_sc_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_sc_record.exit_crit_edge ], [ -62, %if.end.i.get_egress_sc_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sc_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sc_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_sa_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i16], ptr %packed_record.i, i32 0, i32 1
  %8 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %9, 16
  %conv5.i = trunc i32 %shr.i to i16
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %7, align 2
  %stop_time.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 1
  %12 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stop_time.i, align 4
  %conv8.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8.i, ptr %6, align 2
  %shr11.i = lshr i32 %13, 16
  %conv13.i = trunc i32 %shr11.i to i16
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13.i, ptr %5, align 2
  %next_pn.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 2
  %16 = ptrtoint ptr %next_pn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_pn.i, align 4
  %conv16.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv16.i, ptr %4, align 2
  %shr19.i = lshr i32 %17, 16
  %conv21.i = trunc i32 %shr19.i to i16
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv21.i, ptr %3, align 2
  %sat_pn.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 3
  %20 = ptrtoint ptr %sat_pn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sat_pn.i, align 4
  %22 = trunc i32 %21 to i16
  %conv24.i = and i16 %22, 1
  %fresh.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 4
  %23 = ptrtoint ptr %fresh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fresh.i, align 4
  %.tr.i = trunc i32 %24 to i16
  %25 = shl i16 %.tr.i, 1
  %26 = and i16 %25, 2
  %conv29.i = or i16 %26, %conv24.i
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv29.i, ptr %2, align 2
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 5
  %28 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %valid.i, align 4
  %.tr46.i = trunc i32 %29 to i16
  %conv32.i = shl i16 %.tr46.i, 15
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv32.i, ptr %1, align 2
  %add.i = add nuw nsw i16 %table_index, 32
  call fastcc void @set_raw_egress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext %add.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_egress_sa_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_egress_sa_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1656, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_egress_sa_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sa_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 24)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_egress_sa_record.exit_crit_edge, label %if.end.i

if.end.get_egress_sa_record.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

if.end.i:                                         ; preds = %if.end
  %add.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = add nuw nsw i16 %add.i, 4210
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_egress_sa_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_egress_sa_record.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_sa_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_sa_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_sa_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_sa_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_egress_sa_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_egress_sa_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_egress_sa_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_egress_sa_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20646) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_egress_sa_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_egress_sa_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20647) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_egress_sa_record.exit_crit_edge, label %for.cond.i.3.i, !prof !29

if.end38.i.3.i.get_egress_sa_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

for.cond.i.3.i:                                   ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %rec, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %stop_time.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 1
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or18.i = or i32 %shl16.i, %conv13.i
  %3 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or18.i, ptr %stop_time.i, align 4
  %conv20.i = zext i16 %call.i.i.2.i to i32
  %next_pn.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 2
  %conv22.i = zext i16 %call.i76.i.2.i to i32
  %shl23.i = shl nuw i32 %conv22.i, 16
  %or25.i = or i32 %shl23.i, %conv20.i
  %4 = ptrtoint ptr %next_pn.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or25.i, ptr %next_pn.i, align 4
  %5 = and i16 %call.i.i.3.i, 1
  %and.i = zext i16 %5 to i32
  %sat_pn.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 3
  %6 = ptrtoint ptr %sat_pn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %sat_pn.i, align 4
  %7 = lshr i16 %call.i.i.3.i, 1
  %8 = and i16 %7, 1
  %and30.i = zext i16 %8 to i32
  %fresh.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 4
  %9 = ptrtoint ptr %fresh.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and30.i, ptr %fresh.i, align 4
  %10 = lshr i16 %call.i76.i.3.i, 15
  %11 = zext i16 %10 to i32
  %valid.i = getelementptr inbounds %struct.aq_mss_egress_sa_record, ptr %rec, i32 0, i32 5
  %12 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %valid.i, align 4
  br label %get_egress_sa_record.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_sa_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_sa_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_record.exit

get_egress_sa_record.exit:                        ; preds = %if.end38.i.i.get_egress_sa_record.exit_crit_edge, %for.cond.i.3.i, %if.end38.i.3.i.get_egress_sa_record.exit_crit_edge, %for.cond.i.2.i.get_egress_sa_record.exit_crit_edge, %if.end38.i.2.i.get_egress_sa_record.exit_crit_edge, %for.cond.i.1.i.get_egress_sa_record.exit_crit_edge, %if.end38.i.1.i.get_egress_sa_record.exit_crit_edge, %for.cond.i.i.get_egress_sa_record.exit_crit_edge, %if.end.i.get_egress_sa_record.exit_crit_edge, %if.end.get_egress_sa_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i.3.i ], [ -22, %if.end.get_egress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_egress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_egress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_egress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_sa_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_sa_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_sa_record.exit_crit_edge ], [ -62, %if.end.i.get_egress_sa_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sa_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sa_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_sakey_record(ptr noundef %hw, ptr nocapture noundef readonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  %packed_record.i = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.land.rhs_crit_edge

if.then6.i.land.rhs_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %packed_record.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i61 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i61, label %do.end, label %do.end.thread68

do.end.thread68:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 15
  %2 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 14
  %3 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 13
  %4 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 12
  %5 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 11
  %6 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 10
  %7 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 9
  %8 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 8
  %9 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 7
  %10 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 6
  %11 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 5
  %12 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 4
  %13 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 3
  %14 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 2
  %15 = getelementptr inbounds [16 x i16], ptr %packed_record.i, i32 0, i32 1
  %16 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rec, align 4
  %conv2.i = trunc i32 %17 to i16
  %18 = ptrtoint ptr %packed_record.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv2.i, ptr %packed_record.i, align 2
  %shr.i = lshr i32 %17, 16
  %conv7.i = trunc i32 %shr.i to i16
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv7.i, ptr %15, align 2
  %arrayidx10.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i, align 4
  %conv12.i = trunc i32 %21 to i16
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv12.i, ptr %14, align 2
  %shr16.i = lshr i32 %21, 16
  %conv18.i = trunc i32 %shr16.i to i16
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv18.i, ptr %13, align 2
  %arrayidx21.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21.i, align 4
  %conv23.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv23.i, ptr %12, align 2
  %shr27.i = lshr i32 %25, 16
  %conv29.i = trunc i32 %shr27.i to i16
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv29.i, ptr %11, align 2
  %arrayidx32.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32.i, align 4
  %conv34.i = trunc i32 %29 to i16
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv34.i, ptr %10, align 2
  %shr38.i = lshr i32 %29, 16
  %conv40.i = trunc i32 %shr38.i to i16
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv40.i, ptr %9, align 2
  %arrayidx43.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx43.i, align 4
  %conv45.i = trunc i32 %33 to i16
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv45.i, ptr %8, align 2
  %shr49.i = lshr i32 %33, 16
  %conv51.i = trunc i32 %shr49.i to i16
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv51.i, ptr %7, align 2
  %arrayidx54.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx54.i, align 4
  %conv56.i = trunc i32 %37 to i16
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv56.i, ptr %6, align 2
  %shr60.i = lshr i32 %37, 16
  %conv62.i = trunc i32 %shr60.i to i16
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv62.i, ptr %5, align 2
  %arrayidx65.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx65.i, align 4
  %conv67.i = trunc i32 %41 to i16
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv67.i, ptr %4, align 2
  %shr71.i = lshr i32 %41, 16
  %conv73.i = trunc i32 %shr71.i to i16
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv73.i, ptr %3, align 2
  %arrayidx76.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx76.i, align 4
  %conv78.i = trunc i32 %45 to i16
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv78.i, ptr %2, align 2
  %shr82.i = lshr i32 %45, 16
  %conv84.i = trunc i32 %shr82.i to i16
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv84.i, ptr %1, align 2
  %add.i = add nuw nsw i16 %table_index, 96
  call fastcc void @set_raw_egress_record(ptr noundef %hw, ptr noundef nonnull %packed_record.i, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext %add.i) #4
  %sub.i = add nuw nsw i16 %table_index, 64
  call fastcc void @set_raw_egress_record(ptr noundef %hw, ptr noundef %8, i8 noundef zeroext 8, i8 noundef zeroext 2, i16 noundef zeroext %sub.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %if.end45

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %packed_record.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end, %if.then6.i.land.rhs_crit_edge
  %ret.066 = phi i32 [ -22, %do.end ], [ -110, %if.then6.i.land.rhs_crit_edge ]
  %.b60 = load i1, ptr @aq_mss_set_egress_sakey_record.__already_done, align 1
  br i1 %.b60, label %land.rhs.if.end45_crit_edge, label %if.then19, !prof !30

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @aq_mss_set_egress_sakey_record.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1759, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.aq_mss_set_egress_sakey_record, i32 noundef %ret.066) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then19, %land.rhs.if.end45_crit_edge, %do.end.thread68
  %ret.067 = phi i32 [ %ret.066, %if.then19 ], [ %ret.066, %land.rhs.if.end45_crit_edge ], [ 0, %do.end.thread68 ]
  ret i32 %ret.067
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sakey_record(ptr noundef %hw, ptr nocapture noundef writeonly %rec, i16 noundef zeroext %table_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rec, i32 0, i32 32)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %table_index)
  %cmp.i8 = icmp ugt i16 %table_index, 31
  br i1 %cmp.i8, label %if.end.get_egress_sakey_record.exit_crit_edge, label %if.end.i

if.end.get_egress_sakey_record.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end.i:                                         ; preds = %if.end
  %add.i = shl nuw nsw i16 %table_index, 7
  %bf.set5.i.i = add nuw nsw i16 %add.i, 12402
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_egress_sakey_record.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %call.i.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.2.i)
  %cmp.not.i.not.i.2.i = icmp eq i16 %call.i.i.2.i, -1
  br i1 %cmp.not.i.not.i.2.i, label %for.cond.i.1.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i.2.i, !prof !29

for.cond.i.1.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i.2.i:                                   ; preds = %for.cond.i.1.i
  %call.i76.i.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.2.i)
  %cmp.not.i77.not.i.2.i = icmp eq i16 %call.i76.i.2.i, -1
  br i1 %cmp.not.i77.not.i.2.i, label %if.end38.i.2.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i.2.i, !prof !29

if.end38.i.2.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i.2.i:                                   ; preds = %if.end38.i.2.i
  %call.i.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20646) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.3.i)
  %cmp.not.i.not.i.3.i = icmp eq i16 %call.i.i.3.i, -1
  br i1 %cmp.not.i.not.i.3.i, label %for.cond.i.2.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i.3.i, !prof !29

for.cond.i.2.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i.3.i:                                   ; preds = %for.cond.i.2.i
  %call.i76.i.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20647) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.3.i)
  %cmp.not.i77.not.i.3.i = icmp eq i16 %call.i76.i.3.i, -1
  br i1 %cmp.not.i77.not.i.3.i, label %if.end38.i.3.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i.3.i, !prof !29

if.end38.i.3.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i.3.i:                                   ; preds = %if.end38.i.3.i
  %bf.set5.i121.i = add nuw nsw i16 %add.i, 8306
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i121.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i128.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i128.i)
  %cmp.not.i.not.i129.i = icmp eq i16 %call.i.i128.i, -1
  br i1 %cmp.not.i.not.i129.i, label %for.cond.i.3.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i136.i, !prof !29

for.cond.i.3.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i124.i:                                  ; preds = %if.end38.i136.i
  %call.i.i128.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i128.1.i)
  %cmp.not.i.not.i129.1.i = icmp eq i16 %call.i.i128.1.i, -1
  br i1 %cmp.not.i.not.i129.1.i, label %for.cond.i124.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i136.1.i, !prof !29

for.cond.i124.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i124.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i136.1.i:                                ; preds = %for.cond.i124.i
  %call.i76.i134.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i134.1.i)
  %cmp.not.i77.not.i135.1.i = icmp eq i16 %call.i76.i134.1.i, -1
  br i1 %cmp.not.i77.not.i135.1.i, label %if.end38.i136.1.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i124.1.i, !prof !29

if.end38.i136.1.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i136.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i124.1.i:                                ; preds = %if.end38.i136.1.i
  %call.i.i128.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20644) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i128.2.i)
  %cmp.not.i.not.i129.2.i = icmp eq i16 %call.i.i128.2.i, -1
  br i1 %cmp.not.i.not.i129.2.i, label %for.cond.i124.1.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i136.2.i, !prof !29

for.cond.i124.1.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i124.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i136.2.i:                                ; preds = %for.cond.i124.1.i
  %call.i76.i134.2.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20645) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i134.2.i)
  %cmp.not.i77.not.i135.2.i = icmp eq i16 %call.i76.i134.2.i, -1
  br i1 %cmp.not.i77.not.i135.2.i, label %if.end38.i136.2.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i124.2.i, !prof !29

if.end38.i136.2.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i136.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i124.2.i:                                ; preds = %if.end38.i136.2.i
  %call.i.i128.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20646) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i128.3.i)
  %cmp.not.i.not.i129.3.i = icmp eq i16 %call.i.i128.3.i, -1
  br i1 %cmp.not.i.not.i129.3.i, label %for.cond.i124.2.i.get_egress_sakey_record.exit_crit_edge, label %if.end38.i136.3.i, !prof !29

for.cond.i124.2.i.get_egress_sakey_record.exit_crit_edge: ; preds = %for.cond.i124.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

if.end38.i136.3.i:                                ; preds = %for.cond.i124.2.i
  %call.i76.i134.3.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20647) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i134.3.i)
  %cmp.not.i77.not.i135.3.i = icmp eq i16 %call.i76.i134.3.i, -1
  br i1 %cmp.not.i77.not.i135.3.i, label %if.end38.i136.3.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i124.3.i, !prof !29

if.end38.i136.3.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i136.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

for.cond.i124.3.i:                                ; preds = %if.end38.i136.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv22.i = zext i16 %call.i.i.i to i32
  %conv25.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv25.i, 16
  %or.i = or i32 %shl.i, %conv22.i
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %rec, align 4
  %conv29.i = zext i16 %call.i.i.1.i to i32
  %arrayidx31.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 1
  %conv33.i = zext i16 %call.i76.i.1.i to i32
  %shl34.i = shl nuw i32 %conv33.i, 16
  %or37.i = or i32 %shl34.i, %conv29.i
  %3 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or37.i, ptr %arrayidx31.i, align 4
  %conv39.i = zext i16 %call.i.i.2.i to i32
  %arrayidx41.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 2
  %conv43.i = zext i16 %call.i76.i.2.i to i32
  %shl44.i = shl nuw i32 %conv43.i, 16
  %or47.i = or i32 %shl44.i, %conv39.i
  %4 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or47.i, ptr %arrayidx41.i, align 4
  %conv49.i = zext i16 %call.i.i.3.i to i32
  %arrayidx51.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 3
  %conv53.i = zext i16 %call.i76.i.3.i to i32
  %shl54.i = shl nuw i32 %conv53.i, 16
  %or57.i = or i32 %shl54.i, %conv49.i
  %5 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or57.i, ptr %arrayidx51.i, align 4
  %conv59.i = zext i16 %call.i.i128.i to i32
  %arrayidx61.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 4
  %conv63.i = zext i16 %call.i76.i134.i to i32
  %shl64.i = shl nuw i32 %conv63.i, 16
  %or67.i = or i32 %shl64.i, %conv59.i
  %6 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or67.i, ptr %arrayidx61.i, align 4
  %conv69.i = zext i16 %call.i.i128.1.i to i32
  %arrayidx71.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 5
  %conv73.i = zext i16 %call.i76.i134.1.i to i32
  %shl74.i = shl nuw i32 %conv73.i, 16
  %or77.i = or i32 %shl74.i, %conv69.i
  %7 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or77.i, ptr %arrayidx71.i, align 4
  %conv79.i = zext i16 %call.i.i128.2.i to i32
  %arrayidx81.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 6
  %conv83.i = zext i16 %call.i76.i134.2.i to i32
  %shl84.i = shl nuw i32 %conv83.i, 16
  %or87.i = or i32 %shl84.i, %conv79.i
  %8 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or87.i, ptr %arrayidx81.i, align 4
  %conv89.i = zext i16 %call.i.i128.3.i to i32
  %arrayidx91.i = getelementptr [8 x i32], ptr %rec, i32 0, i32 7
  %conv93.i = zext i16 %call.i76.i134.3.i to i32
  %shl94.i = shl nuw i32 %conv93.i, 16
  %or97.i = or i32 %shl94.i, %conv89.i
  %9 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or97.i, ptr %arrayidx91.i, align 4
  br label %get_egress_sakey_record.exit

if.end38.i136.i:                                  ; preds = %for.cond.i.3.i
  %call.i76.i134.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i134.i)
  %cmp.not.i77.not.i135.i = icmp eq i16 %call.i76.i134.i, -1
  br i1 %cmp.not.i77.not.i135.i, label %if.end38.i136.i.get_egress_sakey_record.exit_crit_edge, label %for.cond.i124.i, !prof !29

if.end38.i136.i.get_egress_sakey_record.exit_crit_edge: ; preds = %if.end38.i136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sakey_record.exit

get_egress_sakey_record.exit:                     ; preds = %if.end38.i136.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i124.3.i, %if.end38.i136.3.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i124.2.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i136.2.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i124.1.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i136.1.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i124.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i.3.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i.3.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i.2.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i.2.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i.1.i.get_egress_sakey_record.exit_crit_edge, %if.end38.i.1.i.get_egress_sakey_record.exit_crit_edge, %for.cond.i.i.get_egress_sakey_record.exit_crit_edge, %if.end.i.get_egress_sakey_record.exit_crit_edge, %if.end.get_egress_sakey_record.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i124.3.i ], [ -22, %if.end.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i136.3.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i124.2.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i136.2.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i124.1.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i136.1.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i124.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i136.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i.3.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i.3.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i.2.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i.2.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_sakey_record.exit_crit_edge ], [ -62, %if.end.i.get_egress_sakey_record.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sakey_record.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sakey_record.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sc_counters(ptr noundef %hw, ptr nocapture noundef writeonly %counters, i16 noundef zeroext %sc_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %counters, i32 0, i32 32)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %sc_index)
  %cmp.i8 = icmp ugt i16 %sc_index, 31
  br i1 %cmp.i8, label %if.end.get_egress_sc_counters.exit_crit_edge, label %if.end.i

if.end.get_egress_sc_counters.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end.i:                                         ; preds = %if.end
  %mul.i = shl nuw nsw i16 %sc_index, 10
  %bf.set5.i.i = or i16 %mul.i, 627
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_egress_sc_counters.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %counters, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or17.i = or i32 %shl16.i, %conv13.i
  %arrayidx19.i = getelementptr [2 x i32], ptr %counters, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17.i, ptr %arrayidx19.i, align 4
  %bf.set5.i133.i = or i16 %mul.i, 755
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i133.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i140.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i140.i)
  %cmp.not.i.not.i141.i = icmp eq i16 %call.i.i140.i, -1
  br i1 %cmp.not.i.not.i141.i, label %for.cond.i.1.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i148.i, !prof !29

for.cond.i.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i136.i:                                  ; preds = %if.end38.i148.i
  %call.i.i140.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i140.1.i)
  %cmp.not.i.not.i141.1.i = icmp eq i16 %call.i.i140.1.i, -1
  br i1 %cmp.not.i.not.i141.1.i, label %for.cond.i136.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i148.1.i, !prof !29

for.cond.i136.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i148.1.i:                                ; preds = %for.cond.i136.i
  %call.i76.i146.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i146.1.i)
  %cmp.not.i77.not.i147.1.i = icmp eq i16 %call.i76.i146.1.i, -1
  br i1 %cmp.not.i77.not.i147.1.i, label %if.end38.i148.1.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i136.1.i, !prof !29

if.end38.i148.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i148.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i136.1.i:                                ; preds = %if.end38.i148.1.i
  %conv36.i = zext i16 %call.i.i140.i to i32
  %conv38.i = zext i16 %call.i76.i146.i to i32
  %shl39.i = shl nuw i32 %conv38.i, 16
  %or40.i = or i32 %shl39.i, %conv36.i
  %sc_encrypted_pkts.i = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 1
  %4 = ptrtoint ptr %sc_encrypted_pkts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or40.i, ptr %sc_encrypted_pkts.i, align 4
  %conv43.i = zext i16 %call.i.i140.1.i to i32
  %conv45.i = zext i16 %call.i76.i146.1.i to i32
  %shl46.i = shl nuw i32 %conv45.i, 16
  %or47.i = or i32 %shl46.i, %conv43.i
  %arrayidx49.i = getelementptr %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or47.i, ptr %arrayidx49.i, align 4
  %bf.set5.i152.i = or i16 %mul.i, 883
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i152.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i159.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i159.i)
  %cmp.not.i.not.i160.i = icmp eq i16 %call.i.i159.i, -1
  br i1 %cmp.not.i.not.i160.i, label %for.cond.i136.1.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i167.i, !prof !29

for.cond.i136.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i136.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i148.i:                                  ; preds = %for.cond.i.1.i
  %call.i76.i146.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i146.i)
  %cmp.not.i77.not.i147.i = icmp eq i16 %call.i76.i146.i, -1
  br i1 %cmp.not.i77.not.i147.i, label %if.end38.i148.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i136.i, !prof !29

if.end38.i148.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i155.i:                                  ; preds = %if.end38.i167.i
  %call.i.i159.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i159.1.i)
  %cmp.not.i.not.i160.1.i = icmp eq i16 %call.i.i159.1.i, -1
  br i1 %cmp.not.i.not.i160.1.i, label %for.cond.i155.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i167.1.i, !prof !29

for.cond.i155.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i167.1.i:                                ; preds = %for.cond.i155.i
  %call.i76.i165.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i165.1.i)
  %cmp.not.i77.not.i166.1.i = icmp eq i16 %call.i76.i165.1.i, -1
  br i1 %cmp.not.i77.not.i166.1.i, label %if.end38.i167.1.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i155.1.i, !prof !29

if.end38.i167.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i167.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i155.1.i:                                ; preds = %if.end38.i167.1.i
  %conv66.i = zext i16 %call.i.i159.i to i32
  %conv68.i = zext i16 %call.i76.i165.i to i32
  %shl69.i = shl nuw i32 %conv68.i, 16
  %or70.i = or i32 %shl69.i, %conv66.i
  %sc_protected_octets.i = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %sc_protected_octets.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or70.i, ptr %sc_protected_octets.i, align 4
  %conv73.i = zext i16 %call.i.i159.1.i to i32
  %conv75.i = zext i16 %call.i76.i165.1.i to i32
  %shl76.i = shl nuw i32 %conv75.i, 16
  %or77.i = or i32 %shl76.i, %conv73.i
  %arrayidx79.i = getelementptr %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or77.i, ptr %arrayidx79.i, align 4
  %bf.set5.i171.i = or i16 %mul.i, 1011
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i171.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i178.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.i)
  %cmp.not.i.not.i179.i = icmp eq i16 %call.i.i178.i, -1
  br i1 %cmp.not.i.not.i179.i, label %for.cond.i155.1.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i186.i, !prof !29

for.cond.i155.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i155.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i167.i:                                  ; preds = %for.cond.i136.1.i
  %call.i76.i165.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i165.i)
  %cmp.not.i77.not.i166.i = icmp eq i16 %call.i76.i165.i, -1
  br i1 %cmp.not.i77.not.i166.i, label %if.end38.i167.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i155.i, !prof !29

if.end38.i167.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i167.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i174.i:                                  ; preds = %if.end38.i186.i
  %call.i.i178.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.1.i)
  %cmp.not.i.not.i179.1.i = icmp eq i16 %call.i.i178.1.i, -1
  br i1 %cmp.not.i.not.i179.1.i, label %for.cond.i174.i.get_egress_sc_counters.exit_crit_edge, label %if.end38.i186.1.i, !prof !29

for.cond.i174.i.get_egress_sc_counters.exit_crit_edge: ; preds = %for.cond.i174.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

if.end38.i186.1.i:                                ; preds = %for.cond.i174.i
  %call.i76.i184.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.1.i)
  %cmp.not.i77.not.i185.1.i = icmp eq i16 %call.i76.i184.1.i, -1
  br i1 %cmp.not.i77.not.i185.1.i, label %if.end38.i186.1.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i174.1.i, !prof !29

if.end38.i186.1.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i186.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

for.cond.i174.1.i:                                ; preds = %if.end38.i186.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv96.i = zext i16 %call.i.i178.i to i32
  %conv98.i = zext i16 %call.i76.i184.i to i32
  %shl99.i = shl nuw i32 %conv98.i, 16
  %or100.i = or i32 %shl99.i, %conv96.i
  %sc_encrypted_octets.i = getelementptr inbounds %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 3
  %8 = ptrtoint ptr %sc_encrypted_octets.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or100.i, ptr %sc_encrypted_octets.i, align 4
  %conv103.i = zext i16 %call.i.i178.1.i to i32
  %conv105.i = zext i16 %call.i76.i184.1.i to i32
  %shl106.i = shl nuw i32 %conv105.i, 16
  %or107.i = or i32 %shl106.i, %conv103.i
  %arrayidx109.i = getelementptr %struct.aq_mss_egress_sc_counters, ptr %counters, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or107.i, ptr %arrayidx109.i, align 4
  br label %get_egress_sc_counters.exit

if.end38.i186.i:                                  ; preds = %for.cond.i155.1.i
  %call.i76.i184.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.i)
  %cmp.not.i77.not.i185.i = icmp eq i16 %call.i76.i184.i, -1
  br i1 %cmp.not.i77.not.i185.i, label %if.end38.i186.i.get_egress_sc_counters.exit_crit_edge, label %for.cond.i174.i, !prof !29

if.end38.i186.i.get_egress_sc_counters.exit_crit_edge: ; preds = %if.end38.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sc_counters.exit

get_egress_sc_counters.exit:                      ; preds = %if.end38.i186.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i174.1.i, %if.end38.i186.1.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i174.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i167.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i155.1.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i167.1.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i155.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i148.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i136.1.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i148.1.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i136.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i.1.i.get_egress_sc_counters.exit_crit_edge, %if.end38.i.1.i.get_egress_sc_counters.exit_crit_edge, %for.cond.i.i.get_egress_sc_counters.exit_crit_edge, %if.end.i.get_egress_sc_counters.exit_crit_edge, %if.end.get_egress_sc_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i174.1.i ], [ -22, %if.end.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i186.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i174.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i186.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i155.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i167.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i155.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i167.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i136.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i148.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i136.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i148.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_sc_counters.exit_crit_edge ], [ -62, %if.end.i.get_egress_sc_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sc_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sc_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sa_counters(ptr noundef %hw, ptr nocapture noundef writeonly %counters, i16 noundef zeroext %sa_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %counters, i32 0, i32 32)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %sa_index)
  %cmp.i8 = icmp ugt i16 %sa_index, 31
  br i1 %cmp.i8, label %if.end.get_egress_sa_counters.exit_crit_edge, label %if.end.i

if.end.get_egress_sa_counters.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end.i:                                         ; preds = %if.end
  %mul.i = shl nuw nsw i16 %sa_index, 10
  %bf.set5.i.i = or i16 %mul.i, 115
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_egress_sa_counters.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %counters, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or17.i = or i32 %shl16.i, %conv13.i
  %arrayidx19.i = getelementptr [2 x i32], ptr %counters, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17.i, ptr %arrayidx19.i, align 4
  %bf.set5.i133.i = or i16 %mul.i, 243
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i133.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i140.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i140.i)
  %cmp.not.i.not.i141.i = icmp eq i16 %call.i.i140.i, -1
  br i1 %cmp.not.i.not.i141.i, label %for.cond.i.1.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i148.i, !prof !29

for.cond.i.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i136.i:                                  ; preds = %if.end38.i148.i
  %call.i.i140.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i140.1.i)
  %cmp.not.i.not.i141.1.i = icmp eq i16 %call.i.i140.1.i, -1
  br i1 %cmp.not.i.not.i141.1.i, label %for.cond.i136.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i148.1.i, !prof !29

for.cond.i136.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i148.1.i:                                ; preds = %for.cond.i136.i
  %call.i76.i146.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i146.1.i)
  %cmp.not.i77.not.i147.1.i = icmp eq i16 %call.i76.i146.1.i, -1
  br i1 %cmp.not.i77.not.i147.1.i, label %if.end38.i148.1.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i136.1.i, !prof !29

if.end38.i148.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i148.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i136.1.i:                                ; preds = %if.end38.i148.1.i
  %conv36.i = zext i16 %call.i.i140.i to i32
  %conv38.i = zext i16 %call.i76.i146.i to i32
  %shl39.i = shl nuw i32 %conv38.i, 16
  %or40.i = or i32 %shl39.i, %conv36.i
  %sa_protected2_pkts.i = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 1
  %4 = ptrtoint ptr %sa_protected2_pkts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or40.i, ptr %sa_protected2_pkts.i, align 4
  %conv43.i = zext i16 %call.i.i140.1.i to i32
  %conv45.i = zext i16 %call.i76.i146.1.i to i32
  %shl46.i = shl nuw i32 %conv45.i, 16
  %or47.i = or i32 %shl46.i, %conv43.i
  %arrayidx49.i = getelementptr %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or47.i, ptr %arrayidx49.i, align 4
  %bf.set5.i152.i = or i16 %mul.i, 371
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i152.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i159.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i159.i)
  %cmp.not.i.not.i160.i = icmp eq i16 %call.i.i159.i, -1
  br i1 %cmp.not.i.not.i160.i, label %for.cond.i136.1.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i167.i, !prof !29

for.cond.i136.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i136.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i148.i:                                  ; preds = %for.cond.i.1.i
  %call.i76.i146.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i146.i)
  %cmp.not.i77.not.i147.i = icmp eq i16 %call.i76.i146.i, -1
  br i1 %cmp.not.i77.not.i147.i, label %if.end38.i148.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i136.i, !prof !29

if.end38.i148.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i155.i:                                  ; preds = %if.end38.i167.i
  %call.i.i159.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i159.1.i)
  %cmp.not.i.not.i160.1.i = icmp eq i16 %call.i.i159.1.i, -1
  br i1 %cmp.not.i.not.i160.1.i, label %for.cond.i155.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i167.1.i, !prof !29

for.cond.i155.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i167.1.i:                                ; preds = %for.cond.i155.i
  %call.i76.i165.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i165.1.i)
  %cmp.not.i77.not.i166.1.i = icmp eq i16 %call.i76.i165.1.i, -1
  br i1 %cmp.not.i77.not.i166.1.i, label %if.end38.i167.1.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i155.1.i, !prof !29

if.end38.i167.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i167.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i155.1.i:                                ; preds = %if.end38.i167.1.i
  %conv66.i = zext i16 %call.i.i159.i to i32
  %conv68.i = zext i16 %call.i76.i165.i to i32
  %shl69.i = shl nuw i32 %conv68.i, 16
  %or70.i = or i32 %shl69.i, %conv66.i
  %sa_protected_pkts.i = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %sa_protected_pkts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or70.i, ptr %sa_protected_pkts.i, align 4
  %conv73.i = zext i16 %call.i.i159.1.i to i32
  %conv75.i = zext i16 %call.i76.i165.1.i to i32
  %shl76.i = shl nuw i32 %conv75.i, 16
  %or77.i = or i32 %shl76.i, %conv73.i
  %arrayidx79.i = getelementptr %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or77.i, ptr %arrayidx79.i, align 4
  %bf.set5.i171.i = or i16 %mul.i, 499
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set5.i171.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i178.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.i)
  %cmp.not.i.not.i179.i = icmp eq i16 %call.i.i178.i, -1
  br i1 %cmp.not.i.not.i179.i, label %for.cond.i155.1.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i186.i, !prof !29

for.cond.i155.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i155.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i167.i:                                  ; preds = %for.cond.i136.1.i
  %call.i76.i165.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i165.i)
  %cmp.not.i77.not.i166.i = icmp eq i16 %call.i76.i165.i, -1
  br i1 %cmp.not.i77.not.i166.i, label %if.end38.i167.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i155.i, !prof !29

if.end38.i167.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i167.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i174.i:                                  ; preds = %if.end38.i186.i
  %call.i.i178.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.1.i)
  %cmp.not.i.not.i179.1.i = icmp eq i16 %call.i.i178.1.i, -1
  br i1 %cmp.not.i.not.i179.1.i, label %for.cond.i174.i.get_egress_sa_counters.exit_crit_edge, label %if.end38.i186.1.i, !prof !29

for.cond.i174.i.get_egress_sa_counters.exit_crit_edge: ; preds = %for.cond.i174.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

if.end38.i186.1.i:                                ; preds = %for.cond.i174.i
  %call.i76.i184.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.1.i)
  %cmp.not.i77.not.i185.1.i = icmp eq i16 %call.i76.i184.1.i, -1
  br i1 %cmp.not.i77.not.i185.1.i, label %if.end38.i186.1.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i174.1.i, !prof !29

if.end38.i186.1.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i186.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

for.cond.i174.1.i:                                ; preds = %if.end38.i186.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv96.i = zext i16 %call.i.i178.i to i32
  %conv98.i = zext i16 %call.i76.i184.i to i32
  %shl99.i = shl nuw i32 %conv98.i, 16
  %or100.i = or i32 %shl99.i, %conv96.i
  %sa_encrypted_pkts.i = getelementptr inbounds %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 3
  %8 = ptrtoint ptr %sa_encrypted_pkts.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or100.i, ptr %sa_encrypted_pkts.i, align 4
  %conv103.i = zext i16 %call.i.i178.1.i to i32
  %conv105.i = zext i16 %call.i76.i184.1.i to i32
  %shl106.i = shl nuw i32 %conv105.i, 16
  %or107.i = or i32 %shl106.i, %conv103.i
  %arrayidx109.i = getelementptr %struct.aq_mss_egress_sa_counters, ptr %counters, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or107.i, ptr %arrayidx109.i, align 4
  br label %get_egress_sa_counters.exit

if.end38.i186.i:                                  ; preds = %for.cond.i155.1.i
  %call.i76.i184.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.i)
  %cmp.not.i77.not.i185.i = icmp eq i16 %call.i76.i184.i, -1
  br i1 %cmp.not.i77.not.i185.i, label %if.end38.i186.i.get_egress_sa_counters.exit_crit_edge, label %for.cond.i174.i, !prof !29

if.end38.i186.i.get_egress_sa_counters.exit_crit_edge: ; preds = %if.end38.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_counters.exit

get_egress_sa_counters.exit:                      ; preds = %if.end38.i186.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i174.1.i, %if.end38.i186.1.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i174.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i167.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i155.1.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i167.1.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i155.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i148.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i136.1.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i148.1.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i136.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i.1.i.get_egress_sa_counters.exit_crit_edge, %if.end38.i.1.i.get_egress_sa_counters.exit_crit_edge, %for.cond.i.i.get_egress_sa_counters.exit_crit_edge, %if.end.i.get_egress_sa_counters.exit_crit_edge, %if.end.get_egress_sa_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i174.1.i ], [ -22, %if.end.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i186.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i174.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i186.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i155.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i167.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i155.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i167.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i136.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i148.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i136.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i148.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_sa_counters.exit_crit_edge ], [ -62, %if.end.i.get_egress_sa_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sa_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sa_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_common_counters(ptr noundef %hw, ptr nocapture noundef writeonly %counters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %counters, i32 0, i32 48)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32653) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.get_egress_common_counters.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.get_egress_common_counters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %conv.i = zext i16 %call.i.i.i to i32
  %conv4.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv4.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %counters, align 4
  %conv7.i = zext i16 %call.i.i.1.i to i32
  %conv9.i = zext i16 %call.i76.i.1.i to i32
  %shl10.i = shl nuw i32 %conv9.i, 16
  %or11.i = or i32 %shl10.i, %conv7.i
  %arrayidx13.i = getelementptr [2 x i32], ptr %counters, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or11.i, ptr %arrayidx13.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32525) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i178.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.i)
  %cmp.not.i.not.i179.i = icmp eq i16 %call.i.i178.i, -1
  br i1 %cmp.not.i.not.i179.i, label %for.cond.i.1.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i186.i, !prof !29

for.cond.i.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i.i:                                     ; preds = %if.end
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i174.i:                                  ; preds = %if.end38.i186.i
  %call.i.i178.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i178.1.i)
  %cmp.not.i.not.i179.1.i = icmp eq i16 %call.i.i178.1.i, -1
  br i1 %cmp.not.i.not.i179.1.i, label %for.cond.i174.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i186.1.i, !prof !29

for.cond.i174.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i174.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i186.1.i:                                ; preds = %for.cond.i174.i
  %call.i76.i184.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.1.i)
  %cmp.not.i77.not.i185.1.i = icmp eq i16 %call.i76.i184.1.i, -1
  br i1 %cmp.not.i77.not.i185.1.i, label %if.end38.i186.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i174.1.i, !prof !29

if.end38.i186.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i186.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i174.1.i:                                ; preds = %if.end38.i186.1.i
  %conv26.i = zext i16 %call.i.i178.i to i32
  %conv28.i = zext i16 %call.i76.i184.i to i32
  %shl29.i = shl nuw i32 %conv28.i, 16
  %or30.i = or i32 %shl29.i, %conv26.i
  %unknown_sa_pkts.i = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 1
  %4 = ptrtoint ptr %unknown_sa_pkts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or30.i, ptr %unknown_sa_pkts.i, align 4
  %conv33.i = zext i16 %call.i.i178.1.i to i32
  %conv35.i = zext i16 %call.i76.i184.1.i to i32
  %shl36.i = shl nuw i32 %conv35.i, 16
  %or37.i = or i32 %shl36.i, %conv33.i
  %arrayidx39.i = getelementptr %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or37.i, ptr %arrayidx39.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32397) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i195.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i195.i)
  %cmp.not.i.not.i196.i = icmp eq i16 %call.i.i195.i, -1
  br i1 %cmp.not.i.not.i196.i, label %for.cond.i174.1.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i203.i, !prof !29

for.cond.i174.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i174.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i186.i:                                  ; preds = %for.cond.i.1.i
  %call.i76.i184.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i184.i)
  %cmp.not.i77.not.i185.i = icmp eq i16 %call.i76.i184.i, -1
  br i1 %cmp.not.i77.not.i185.i, label %if.end38.i186.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i174.i, !prof !29

if.end38.i186.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i191.i:                                  ; preds = %if.end38.i203.i
  %call.i.i195.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i195.1.i)
  %cmp.not.i.not.i196.1.i = icmp eq i16 %call.i.i195.1.i, -1
  br i1 %cmp.not.i.not.i196.1.i, label %for.cond.i191.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i203.1.i, !prof !29

for.cond.i191.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i191.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i203.1.i:                                ; preds = %for.cond.i191.i
  %call.i76.i201.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i201.1.i)
  %cmp.not.i77.not.i202.1.i = icmp eq i16 %call.i76.i201.1.i, -1
  br i1 %cmp.not.i77.not.i202.1.i, label %if.end38.i203.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i191.1.i, !prof !29

if.end38.i203.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i203.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i191.1.i:                                ; preds = %if.end38.i203.1.i
  %conv52.i = zext i16 %call.i.i195.i to i32
  %conv54.i = zext i16 %call.i76.i201.i to i32
  %shl55.i = shl nuw i32 %conv54.i, 16
  %or56.i = or i32 %shl55.i, %conv52.i
  %untagged_pkts.i = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %untagged_pkts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or56.i, ptr %untagged_pkts.i, align 4
  %conv59.i = zext i16 %call.i.i195.1.i to i32
  %conv61.i = zext i16 %call.i76.i201.1.i to i32
  %shl62.i = shl nuw i32 %conv61.i, 16
  %or63.i = or i32 %shl62.i, %conv59.i
  %arrayidx65.i = getelementptr %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or63.i, ptr %arrayidx65.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32269) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i212.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i212.i)
  %cmp.not.i.not.i213.i = icmp eq i16 %call.i.i212.i, -1
  br i1 %cmp.not.i.not.i213.i, label %for.cond.i191.1.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i220.i, !prof !29

for.cond.i191.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i191.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i203.i:                                  ; preds = %for.cond.i174.1.i
  %call.i76.i201.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i201.i)
  %cmp.not.i77.not.i202.i = icmp eq i16 %call.i76.i201.i, -1
  br i1 %cmp.not.i77.not.i202.i, label %if.end38.i203.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i191.i, !prof !29

if.end38.i203.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i203.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i208.i:                                  ; preds = %if.end38.i220.i
  %call.i.i212.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i212.1.i)
  %cmp.not.i.not.i213.1.i = icmp eq i16 %call.i.i212.1.i, -1
  br i1 %cmp.not.i.not.i213.1.i, label %for.cond.i208.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i220.1.i, !prof !29

for.cond.i208.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i208.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i220.1.i:                                ; preds = %for.cond.i208.i
  %call.i76.i218.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i218.1.i)
  %cmp.not.i77.not.i219.1.i = icmp eq i16 %call.i76.i218.1.i, -1
  br i1 %cmp.not.i77.not.i219.1.i, label %if.end38.i220.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i208.1.i, !prof !29

if.end38.i220.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i220.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i208.1.i:                                ; preds = %if.end38.i220.1.i
  %conv78.i = zext i16 %call.i.i212.i to i32
  %conv80.i = zext i16 %call.i76.i218.i to i32
  %shl81.i = shl nuw i32 %conv80.i, 16
  %or82.i = or i32 %shl81.i, %conv78.i
  %too_long.i = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 3
  %8 = ptrtoint ptr %too_long.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or82.i, ptr %too_long.i, align 4
  %conv85.i = zext i16 %call.i.i212.1.i to i32
  %conv87.i = zext i16 %call.i76.i218.1.i to i32
  %shl88.i = shl nuw i32 %conv87.i, 16
  %or89.i = or i32 %shl88.i, %conv85.i
  %arrayidx91.i = getelementptr %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or89.i, ptr %arrayidx91.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32141) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i229.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i229.i)
  %cmp.not.i.not.i230.i = icmp eq i16 %call.i.i229.i, -1
  br i1 %cmp.not.i.not.i230.i, label %for.cond.i208.1.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i237.i, !prof !29

for.cond.i208.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i208.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i220.i:                                  ; preds = %for.cond.i191.1.i
  %call.i76.i218.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i218.i)
  %cmp.not.i77.not.i219.i = icmp eq i16 %call.i76.i218.i, -1
  br i1 %cmp.not.i77.not.i219.i, label %if.end38.i220.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i208.i, !prof !29

if.end38.i220.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i220.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i225.i:                                  ; preds = %if.end38.i237.i
  %call.i.i229.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i229.1.i)
  %cmp.not.i.not.i230.1.i = icmp eq i16 %call.i.i229.1.i, -1
  br i1 %cmp.not.i.not.i230.1.i, label %for.cond.i225.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i237.1.i, !prof !29

for.cond.i225.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i237.1.i:                                ; preds = %for.cond.i225.i
  %call.i76.i235.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i235.1.i)
  %cmp.not.i77.not.i236.1.i = icmp eq i16 %call.i76.i235.1.i, -1
  br i1 %cmp.not.i77.not.i236.1.i, label %if.end38.i237.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i225.1.i, !prof !29

if.end38.i237.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i237.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i225.1.i:                                ; preds = %if.end38.i237.1.i
  %conv104.i = zext i16 %call.i.i229.i to i32
  %conv106.i = zext i16 %call.i76.i235.i to i32
  %shl107.i = shl nuw i32 %conv106.i, 16
  %or108.i = or i32 %shl107.i, %conv104.i
  %ecc_error_pkts.i = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 4
  %10 = ptrtoint ptr %ecc_error_pkts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or108.i, ptr %ecc_error_pkts.i, align 4
  %conv111.i = zext i16 %call.i.i229.1.i to i32
  %conv113.i = zext i16 %call.i76.i235.1.i to i32
  %shl114.i = shl nuw i32 %conv113.i, 16
  %or115.i = or i32 %shl114.i, %conv111.i
  %arrayidx117.i = getelementptr %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or115.i, ptr %arrayidx117.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext -32013) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -2) #4
  %call.i.i246.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20640) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i246.i)
  %cmp.not.i.not.i247.i = icmp eq i16 %call.i.i246.i, -1
  br i1 %cmp.not.i.not.i247.i, label %for.cond.i225.1.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i254.i, !prof !29

for.cond.i225.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i225.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i237.i:                                  ; preds = %for.cond.i208.1.i
  %call.i76.i235.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i235.i)
  %cmp.not.i77.not.i236.i = icmp eq i16 %call.i76.i235.i, -1
  br i1 %cmp.not.i77.not.i236.i, label %if.end38.i237.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i225.i, !prof !29

if.end38.i237.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i237.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i242.i:                                  ; preds = %if.end38.i254.i
  %call.i.i246.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20642) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i246.1.i)
  %cmp.not.i.not.i247.1.i = icmp eq i16 %call.i.i246.1.i, -1
  br i1 %cmp.not.i.not.i247.1.i, label %for.cond.i242.i.get_egress_common_counters.exit_crit_edge, label %if.end38.i254.1.i, !prof !29

for.cond.i242.i.get_egress_common_counters.exit_crit_edge: ; preds = %for.cond.i242.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

if.end38.i254.1.i:                                ; preds = %for.cond.i242.i
  %call.i76.i252.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20643) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i252.1.i)
  %cmp.not.i77.not.i253.1.i = icmp eq i16 %call.i76.i252.1.i, -1
  br i1 %cmp.not.i77.not.i253.1.i, label %if.end38.i254.1.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i242.1.i, !prof !29

if.end38.i254.1.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i254.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

for.cond.i242.1.i:                                ; preds = %if.end38.i254.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv130.i = zext i16 %call.i.i246.i to i32
  %conv132.i = zext i16 %call.i76.i252.i to i32
  %shl133.i = shl nuw i32 %conv132.i, 16
  %or134.i = or i32 %shl133.i, %conv130.i
  %unctrl_hit_drop_redir.i = getelementptr inbounds %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 5
  %12 = ptrtoint ptr %unctrl_hit_drop_redir.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or134.i, ptr %unctrl_hit_drop_redir.i, align 4
  %conv137.i = zext i16 %call.i.i246.1.i to i32
  %conv139.i = zext i16 %call.i76.i252.1.i to i32
  %shl140.i = shl nuw i32 %conv139.i, 16
  %or141.i = or i32 %shl140.i, %conv137.i
  %arrayidx143.i = getelementptr %struct.aq_mss_egress_common_counters, ptr %counters, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or141.i, ptr %arrayidx143.i, align 4
  br label %get_egress_common_counters.exit

if.end38.i254.i:                                  ; preds = %for.cond.i225.1.i
  %call.i76.i252.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20641) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i252.i)
  %cmp.not.i77.not.i253.i = icmp eq i16 %call.i76.i252.i, -1
  br i1 %cmp.not.i77.not.i253.i, label %if.end38.i254.i.get_egress_common_counters.exit_crit_edge, label %for.cond.i242.i, !prof !29

if.end38.i254.i.get_egress_common_counters.exit_crit_edge: ; preds = %if.end38.i254.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_common_counters.exit

get_egress_common_counters.exit:                  ; preds = %if.end38.i254.i.get_egress_common_counters.exit_crit_edge, %for.cond.i242.1.i, %if.end38.i254.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i242.i.get_egress_common_counters.exit_crit_edge, %if.end38.i237.i.get_egress_common_counters.exit_crit_edge, %for.cond.i225.1.i.get_egress_common_counters.exit_crit_edge, %if.end38.i237.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i225.i.get_egress_common_counters.exit_crit_edge, %if.end38.i220.i.get_egress_common_counters.exit_crit_edge, %for.cond.i208.1.i.get_egress_common_counters.exit_crit_edge, %if.end38.i220.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i208.i.get_egress_common_counters.exit_crit_edge, %if.end38.i203.i.get_egress_common_counters.exit_crit_edge, %for.cond.i191.1.i.get_egress_common_counters.exit_crit_edge, %if.end38.i203.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i191.i.get_egress_common_counters.exit_crit_edge, %if.end38.i186.i.get_egress_common_counters.exit_crit_edge, %for.cond.i174.1.i.get_egress_common_counters.exit_crit_edge, %if.end38.i186.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i174.i.get_egress_common_counters.exit_crit_edge, %if.end38.i.i.get_egress_common_counters.exit_crit_edge, %for.cond.i.1.i.get_egress_common_counters.exit_crit_edge, %if.end38.i.1.i.get_egress_common_counters.exit_crit_edge, %for.cond.i.i.get_egress_common_counters.exit_crit_edge, %if.end.get_egress_common_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i242.1.i ], [ -62, %if.end38.i254.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i242.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i254.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i225.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i237.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i225.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i237.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i208.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i220.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i208.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i220.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i191.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i203.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i191.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i203.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i174.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i186.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i174.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i186.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_egress_common_counters.exit_crit_edge ], [ -62, %for.cond.i.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end38.i.i.get_egress_common_counters.exit_crit_edge ], [ -62, %if.end.get_egress_common_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_common_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_common_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_clear_egress_counters(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20482) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i)
  %cmp.not.i.not.i = icmp eq i16 %call.i.i, -1
  br i1 %cmp.not.i.not.i, label %if.end.clear_egress_counters.exit_crit_edge, label %if.end.i, !prof !29

if.end.clear_egress_counters.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %clear_egress_counters.exit

if.end.i:                                         ; preds = %if.end
  %call.i102.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20486) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i102.i)
  %cmp.not.i103.not.i = icmp eq i16 %call.i102.i, -1
  br i1 %cmp.not.i103.not.i, label %if.end.i.clear_egress_counters.exit_crit_edge, label %if.end12.i, !prof !29

if.end.i.clear_egress_counters.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clear_egress_counters.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear.i = and i16 %call.i.i, -17
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20482, i16 noundef zeroext %bf.clear.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20486, i16 noundef zeroext %call.i102.i) #4
  %bf.set35.i = or i16 %call.i.i, 16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20482, i16 noundef zeroext %bf.set35.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20486, i16 noundef zeroext %call.i102.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20482, i16 noundef zeroext %bf.clear.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20486, i16 noundef zeroext %call.i102.i) #4
  br label %clear_egress_counters.exit

clear_egress_counters.exit:                       ; preds = %if.end12.i, %if.end.i.clear_egress_counters.exit_crit_edge, %if.end.clear_egress_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -62, %if.end.clear_egress_counters.exit_crit_edge ], [ -62, %if.end.i.clear_egress_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %clear_egress_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %clear_egress_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_sa_counters(ptr noundef %hw, ptr noundef writeonly %counters, i16 noundef zeroext %sa_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %counters, i32 0, i32 96)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %sa_index)
  %cmp.i8 = icmp ugt i16 %sa_index, 31
  br i1 %cmp.i8, label %if.end.get_ingress_sa_counters.exit_crit_edge, label %if.end.i

if.end.get_ingress_sa_counters.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end.i:                                         ; preds = %if.end
  %bf.shl.i.i = mul nuw i16 %sa_index, 1536
  %bf.set5.i.i = or i16 %bf.shl.i.i, 118
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.i.get_ingress_sa_counters.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %conv8.i = zext i16 %call.i.i.i to i32
  %conv10.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv10.i, 16
  %or.i = or i32 %shl.i, %conv8.i
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %counters, align 4
  %conv13.i = zext i16 %call.i.i.1.i to i32
  %conv15.i = zext i16 %call.i76.i.1.i to i32
  %shl16.i = shl nuw i32 %conv15.i, 16
  %or17.i = or i32 %shl16.i, %conv13.i
  %arrayidx19.i = getelementptr [2 x i32], ptr %counters, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or17.i, ptr %arrayidx19.i, align 4
  %bf.set5.i421.i = or i16 %bf.shl.i.i, 246
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i421.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i428.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i428.i)
  %cmp.not.i.not.i429.i = icmp eq i16 %call.i.i428.i, -1
  br i1 %cmp.not.i.not.i429.i, label %for.cond.i.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i436.i, !prof !29

for.cond.i.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i.i:                                     ; preds = %if.end.i
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i424.i:                                  ; preds = %if.end38.i436.i
  %call.i.i428.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i428.1.i)
  %cmp.not.i.not.i429.1.i = icmp eq i16 %call.i.i428.1.i, -1
  br i1 %cmp.not.i.not.i429.1.i, label %for.cond.i424.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i436.1.i, !prof !29

for.cond.i424.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i424.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i436.1.i:                                ; preds = %for.cond.i424.i
  %call.i76.i434.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i434.1.i)
  %cmp.not.i77.not.i435.1.i = icmp eq i16 %call.i76.i434.1.i, -1
  br i1 %cmp.not.i77.not.i435.1.i, label %if.end38.i436.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i424.1.i, !prof !29

if.end38.i436.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i436.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i424.1.i:                                ; preds = %if.end38.i436.1.i
  %conv36.i = zext i16 %call.i.i428.i to i32
  %conv38.i = zext i16 %call.i76.i434.i to i32
  %shl39.i = shl nuw i32 %conv38.i, 16
  %or40.i = or i32 %shl39.i, %conv36.i
  %ctrl_hit_drop_redir_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_hit_drop_redir_pkts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or40.i, ptr %ctrl_hit_drop_redir_pkts.i, align 4
  %conv43.i = zext i16 %call.i.i428.1.i to i32
  %conv45.i = zext i16 %call.i76.i434.1.i to i32
  %shl46.i = shl nuw i32 %conv45.i, 16
  %or47.i = or i32 %shl46.i, %conv43.i
  %arrayidx49.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or47.i, ptr %arrayidx49.i, align 4
  %bf.set5.i440.i = or i16 %bf.shl.i.i, 374
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i440.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i447.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i447.i)
  %cmp.not.i.not.i448.i = icmp eq i16 %call.i.i447.i, -1
  br i1 %cmp.not.i.not.i448.i, label %for.cond.i424.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i455.i, !prof !29

for.cond.i424.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i424.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i436.i:                                  ; preds = %for.cond.i.1.i
  %call.i76.i434.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i434.i)
  %cmp.not.i77.not.i435.i = icmp eq i16 %call.i76.i434.i, -1
  br i1 %cmp.not.i77.not.i435.i, label %if.end38.i436.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i424.i, !prof !29

if.end38.i436.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i436.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i443.i:                                  ; preds = %if.end38.i455.i
  %call.i.i447.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i447.1.i)
  %cmp.not.i.not.i448.1.i = icmp eq i16 %call.i.i447.1.i, -1
  br i1 %cmp.not.i.not.i448.1.i, label %for.cond.i443.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i455.1.i, !prof !29

for.cond.i443.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i443.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i455.1.i:                                ; preds = %for.cond.i443.i
  %call.i76.i453.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i453.1.i)
  %cmp.not.i77.not.i454.1.i = icmp eq i16 %call.i76.i453.1.i, -1
  br i1 %cmp.not.i77.not.i454.1.i, label %if.end38.i455.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i443.1.i, !prof !29

if.end38.i455.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i455.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i443.1.i:                                ; preds = %if.end38.i455.1.i
  %conv66.i = zext i16 %call.i.i447.i to i32
  %conv68.i = zext i16 %call.i76.i453.i to i32
  %shl69.i = shl nuw i32 %conv68.i, 16
  %or70.i = or i32 %shl69.i, %conv66.i
  %not_using_sa.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %not_using_sa.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or70.i, ptr %not_using_sa.i, align 4
  %conv73.i = zext i16 %call.i.i447.1.i to i32
  %conv75.i = zext i16 %call.i76.i453.1.i to i32
  %shl76.i = shl nuw i32 %conv75.i, 16
  %or77.i = or i32 %shl76.i, %conv73.i
  %arrayidx79.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or77.i, ptr %arrayidx79.i, align 4
  %bf.set5.i459.i = or i16 %bf.shl.i.i, 502
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i459.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i466.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i466.i)
  %cmp.not.i.not.i467.i = icmp eq i16 %call.i.i466.i, -1
  br i1 %cmp.not.i.not.i467.i, label %for.cond.i443.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i474.i, !prof !29

for.cond.i443.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i443.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i455.i:                                  ; preds = %for.cond.i424.1.i
  %call.i76.i453.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i453.i)
  %cmp.not.i77.not.i454.i = icmp eq i16 %call.i76.i453.i, -1
  br i1 %cmp.not.i77.not.i454.i, label %if.end38.i455.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i443.i, !prof !29

if.end38.i455.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i455.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i462.i:                                  ; preds = %if.end38.i474.i
  %call.i.i466.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i466.1.i)
  %cmp.not.i.not.i467.1.i = icmp eq i16 %call.i.i466.1.i, -1
  br i1 %cmp.not.i.not.i467.1.i, label %for.cond.i462.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i474.1.i, !prof !29

for.cond.i462.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i462.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i474.1.i:                                ; preds = %for.cond.i462.i
  %call.i76.i472.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i472.1.i)
  %cmp.not.i77.not.i473.1.i = icmp eq i16 %call.i76.i472.1.i, -1
  br i1 %cmp.not.i77.not.i473.1.i, label %if.end38.i474.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i462.1.i, !prof !29

if.end38.i474.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i474.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i462.1.i:                                ; preds = %if.end38.i474.1.i
  %conv96.i = zext i16 %call.i.i466.i to i32
  %conv98.i = zext i16 %call.i76.i472.i to i32
  %shl99.i = shl nuw i32 %conv98.i, 16
  %or100.i = or i32 %shl99.i, %conv96.i
  %unused_sa.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 3
  %8 = ptrtoint ptr %unused_sa.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or100.i, ptr %unused_sa.i, align 4
  %conv103.i = zext i16 %call.i.i466.1.i to i32
  %conv105.i = zext i16 %call.i76.i472.1.i to i32
  %shl106.i = shl nuw i32 %conv105.i, 16
  %or107.i = or i32 %shl106.i, %conv103.i
  %arrayidx109.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or107.i, ptr %arrayidx109.i, align 4
  %bf.set5.i478.i = add nuw i16 %bf.shl.i.i, 630
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i478.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i485.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i485.i)
  %cmp.not.i.not.i486.i = icmp eq i16 %call.i.i485.i, -1
  br i1 %cmp.not.i.not.i486.i, label %for.cond.i462.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i493.i, !prof !29

for.cond.i462.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i462.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i474.i:                                  ; preds = %for.cond.i443.1.i
  %call.i76.i472.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i472.i)
  %cmp.not.i77.not.i473.i = icmp eq i16 %call.i76.i472.i, -1
  br i1 %cmp.not.i77.not.i473.i, label %if.end38.i474.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i462.i, !prof !29

if.end38.i474.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i474.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i481.i:                                  ; preds = %if.end38.i493.i
  %call.i.i485.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i485.1.i)
  %cmp.not.i.not.i486.1.i = icmp eq i16 %call.i.i485.1.i, -1
  br i1 %cmp.not.i.not.i486.1.i, label %for.cond.i481.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i493.1.i, !prof !29

for.cond.i481.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i481.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i493.1.i:                                ; preds = %for.cond.i481.i
  %call.i76.i491.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i491.1.i)
  %cmp.not.i77.not.i492.1.i = icmp eq i16 %call.i76.i491.1.i, -1
  br i1 %cmp.not.i77.not.i492.1.i, label %if.end38.i493.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i481.1.i, !prof !29

if.end38.i493.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i493.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i481.1.i:                                ; preds = %if.end38.i493.1.i
  %conv126.i = zext i16 %call.i.i485.i to i32
  %conv128.i = zext i16 %call.i76.i491.i to i32
  %shl129.i = shl nuw i32 %conv128.i, 16
  %or130.i = or i32 %shl129.i, %conv126.i
  %not_valid_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 4
  %10 = ptrtoint ptr %not_valid_pkts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or130.i, ptr %not_valid_pkts.i, align 4
  %conv133.i = zext i16 %call.i.i485.1.i to i32
  %conv135.i = zext i16 %call.i76.i491.1.i to i32
  %shl136.i = shl nuw i32 %conv135.i, 16
  %or137.i = or i32 %shl136.i, %conv133.i
  %arrayidx139.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or137.i, ptr %arrayidx139.i, align 4
  %bf.set5.i497.i = add nuw i16 %bf.shl.i.i, 758
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i497.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i504.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i504.i)
  %cmp.not.i.not.i505.i = icmp eq i16 %call.i.i504.i, -1
  br i1 %cmp.not.i.not.i505.i, label %for.cond.i481.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i512.i, !prof !29

for.cond.i481.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i481.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i493.i:                                  ; preds = %for.cond.i462.1.i
  %call.i76.i491.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i491.i)
  %cmp.not.i77.not.i492.i = icmp eq i16 %call.i76.i491.i, -1
  br i1 %cmp.not.i77.not.i492.i, label %if.end38.i493.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i481.i, !prof !29

if.end38.i493.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i493.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i500.i:                                  ; preds = %if.end38.i512.i
  %call.i.i504.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i504.1.i)
  %cmp.not.i.not.i505.1.i = icmp eq i16 %call.i.i504.1.i, -1
  br i1 %cmp.not.i.not.i505.1.i, label %for.cond.i500.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i512.1.i, !prof !29

for.cond.i500.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i500.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i512.1.i:                                ; preds = %for.cond.i500.i
  %call.i76.i510.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i510.1.i)
  %cmp.not.i77.not.i511.1.i = icmp eq i16 %call.i76.i510.1.i, -1
  br i1 %cmp.not.i77.not.i511.1.i, label %if.end38.i512.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i500.1.i, !prof !29

if.end38.i512.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i512.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i500.1.i:                                ; preds = %if.end38.i512.1.i
  %conv156.i = zext i16 %call.i.i504.i to i32
  %conv158.i = zext i16 %call.i76.i510.i to i32
  %shl159.i = shl nuw i32 %conv158.i, 16
  %or160.i = or i32 %shl159.i, %conv156.i
  %invalid_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 5
  %12 = ptrtoint ptr %invalid_pkts.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or160.i, ptr %invalid_pkts.i, align 4
  %conv163.i = zext i16 %call.i.i504.1.i to i32
  %conv165.i = zext i16 %call.i76.i510.1.i to i32
  %shl166.i = shl nuw i32 %conv165.i, 16
  %or167.i = or i32 %shl166.i, %conv163.i
  %arrayidx169.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or167.i, ptr %arrayidx169.i, align 4
  %bf.set5.i516.i = add nuw i16 %bf.shl.i.i, 886
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i516.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i523.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i523.i)
  %cmp.not.i.not.i524.i = icmp eq i16 %call.i.i523.i, -1
  br i1 %cmp.not.i.not.i524.i, label %for.cond.i500.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i531.i, !prof !29

for.cond.i500.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i500.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i512.i:                                  ; preds = %for.cond.i481.1.i
  %call.i76.i510.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i510.i)
  %cmp.not.i77.not.i511.i = icmp eq i16 %call.i76.i510.i, -1
  br i1 %cmp.not.i77.not.i511.i, label %if.end38.i512.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i500.i, !prof !29

if.end38.i512.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i512.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i519.i:                                  ; preds = %if.end38.i531.i
  %call.i.i523.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i523.1.i)
  %cmp.not.i.not.i524.1.i = icmp eq i16 %call.i.i523.1.i, -1
  br i1 %cmp.not.i.not.i524.1.i, label %for.cond.i519.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i531.1.i, !prof !29

for.cond.i519.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i519.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i531.1.i:                                ; preds = %for.cond.i519.i
  %call.i76.i529.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i529.1.i)
  %cmp.not.i77.not.i530.1.i = icmp eq i16 %call.i76.i529.1.i, -1
  br i1 %cmp.not.i77.not.i530.1.i, label %if.end38.i531.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i519.1.i, !prof !29

if.end38.i531.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i531.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i519.1.i:                                ; preds = %if.end38.i531.1.i
  %conv186.i = zext i16 %call.i.i523.i to i32
  %conv188.i = zext i16 %call.i76.i529.i to i32
  %shl189.i = shl nuw i32 %conv188.i, 16
  %or190.i = or i32 %shl189.i, %conv186.i
  %ok_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 6
  %14 = ptrtoint ptr %ok_pkts.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or190.i, ptr %ok_pkts.i, align 4
  %conv193.i = zext i16 %call.i.i523.1.i to i32
  %conv195.i = zext i16 %call.i76.i529.1.i to i32
  %shl196.i = shl nuw i32 %conv195.i, 16
  %or197.i = or i32 %shl196.i, %conv193.i
  %arrayidx199.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or197.i, ptr %arrayidx199.i, align 4
  %bf.set5.i535.i = add nuw i16 %bf.shl.i.i, 1014
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i535.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i542.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i542.i)
  %cmp.not.i.not.i543.i = icmp eq i16 %call.i.i542.i, -1
  br i1 %cmp.not.i.not.i543.i, label %for.cond.i519.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i550.i, !prof !29

for.cond.i519.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i519.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i531.i:                                  ; preds = %for.cond.i500.1.i
  %call.i76.i529.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i529.i)
  %cmp.not.i77.not.i530.i = icmp eq i16 %call.i76.i529.i, -1
  br i1 %cmp.not.i77.not.i530.i, label %if.end38.i531.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i519.i, !prof !29

if.end38.i531.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i531.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i538.i:                                  ; preds = %if.end38.i550.i
  %call.i.i542.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i542.1.i)
  %cmp.not.i.not.i543.1.i = icmp eq i16 %call.i.i542.1.i, -1
  br i1 %cmp.not.i.not.i543.1.i, label %for.cond.i538.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i550.1.i, !prof !29

for.cond.i538.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i538.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i550.1.i:                                ; preds = %for.cond.i538.i
  %call.i76.i548.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i548.1.i)
  %cmp.not.i77.not.i549.1.i = icmp eq i16 %call.i76.i548.1.i, -1
  br i1 %cmp.not.i77.not.i549.1.i, label %if.end38.i550.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i538.1.i, !prof !29

if.end38.i550.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i550.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i538.1.i:                                ; preds = %if.end38.i550.1.i
  %conv216.i = zext i16 %call.i.i542.i to i32
  %conv218.i = zext i16 %call.i76.i548.i to i32
  %shl219.i = shl nuw i32 %conv218.i, 16
  %or220.i = or i32 %shl219.i, %conv216.i
  %late_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 7
  %16 = ptrtoint ptr %late_pkts.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or220.i, ptr %late_pkts.i, align 4
  %conv223.i = zext i16 %call.i.i542.1.i to i32
  %conv225.i = zext i16 %call.i76.i548.1.i to i32
  %shl226.i = shl nuw i32 %conv225.i, 16
  %or227.i = or i32 %shl226.i, %conv223.i
  %arrayidx229.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or227.i, ptr %arrayidx229.i, align 4
  %bf.set5.i554.i = add nuw i16 %bf.shl.i.i, 1142
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i554.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i561.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i561.i)
  %cmp.not.i.not.i562.i = icmp eq i16 %call.i.i561.i, -1
  br i1 %cmp.not.i.not.i562.i, label %for.cond.i538.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i569.i, !prof !29

for.cond.i538.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i538.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i550.i:                                  ; preds = %for.cond.i519.1.i
  %call.i76.i548.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i548.i)
  %cmp.not.i77.not.i549.i = icmp eq i16 %call.i76.i548.i, -1
  br i1 %cmp.not.i77.not.i549.i, label %if.end38.i550.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i538.i, !prof !29

if.end38.i550.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i550.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i557.i:                                  ; preds = %if.end38.i569.i
  %call.i.i561.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i561.1.i)
  %cmp.not.i.not.i562.1.i = icmp eq i16 %call.i.i561.1.i, -1
  br i1 %cmp.not.i.not.i562.1.i, label %for.cond.i557.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i569.1.i, !prof !29

for.cond.i557.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i557.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i569.1.i:                                ; preds = %for.cond.i557.i
  %call.i76.i567.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i567.1.i)
  %cmp.not.i77.not.i568.1.i = icmp eq i16 %call.i76.i567.1.i, -1
  br i1 %cmp.not.i77.not.i568.1.i, label %if.end38.i569.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i557.1.i, !prof !29

if.end38.i569.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i569.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i557.1.i:                                ; preds = %if.end38.i569.1.i
  %conv246.i = zext i16 %call.i.i561.i to i32
  %conv248.i = zext i16 %call.i76.i567.i to i32
  %shl249.i = shl nuw i32 %conv248.i, 16
  %or250.i = or i32 %shl249.i, %conv246.i
  %delayed_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 8
  %18 = ptrtoint ptr %delayed_pkts.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or250.i, ptr %delayed_pkts.i, align 4
  %conv253.i = zext i16 %call.i.i561.1.i to i32
  %conv255.i = zext i16 %call.i76.i567.1.i to i32
  %shl256.i = shl nuw i32 %conv255.i, 16
  %or257.i = or i32 %shl256.i, %conv253.i
  %arrayidx259.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or257.i, ptr %arrayidx259.i, align 4
  %bf.set5.i573.i = add nuw i16 %bf.shl.i.i, 1270
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i573.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i580.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i580.i)
  %cmp.not.i.not.i581.i = icmp eq i16 %call.i.i580.i, -1
  br i1 %cmp.not.i.not.i581.i, label %for.cond.i557.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i588.i, !prof !29

for.cond.i557.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i557.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i569.i:                                  ; preds = %for.cond.i538.1.i
  %call.i76.i567.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i567.i)
  %cmp.not.i77.not.i568.i = icmp eq i16 %call.i76.i567.i, -1
  br i1 %cmp.not.i77.not.i568.i, label %if.end38.i569.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i557.i, !prof !29

if.end38.i569.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i569.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i576.i:                                  ; preds = %if.end38.i588.i
  %call.i.i580.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i580.1.i)
  %cmp.not.i.not.i581.1.i = icmp eq i16 %call.i.i580.1.i, -1
  br i1 %cmp.not.i.not.i581.1.i, label %for.cond.i576.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i588.1.i, !prof !29

for.cond.i576.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i576.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i588.1.i:                                ; preds = %for.cond.i576.i
  %call.i76.i586.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i586.1.i)
  %cmp.not.i77.not.i587.1.i = icmp eq i16 %call.i76.i586.1.i, -1
  br i1 %cmp.not.i77.not.i587.1.i, label %if.end38.i588.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i576.1.i, !prof !29

if.end38.i588.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i588.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i576.1.i:                                ; preds = %if.end38.i588.1.i
  %conv276.i = zext i16 %call.i.i580.i to i32
  %conv278.i = zext i16 %call.i76.i586.i to i32
  %shl279.i = shl nuw i32 %conv278.i, 16
  %or280.i = or i32 %shl279.i, %conv276.i
  %unchecked_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 9
  %20 = ptrtoint ptr %unchecked_pkts.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or280.i, ptr %unchecked_pkts.i, align 4
  %conv283.i = zext i16 %call.i.i580.1.i to i32
  %conv285.i = zext i16 %call.i76.i586.1.i to i32
  %shl286.i = shl nuw i32 %conv285.i, 16
  %or287.i = or i32 %shl286.i, %conv283.i
  %arrayidx289.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or287.i, ptr %arrayidx289.i, align 4
  %bf.set5.i592.i = add nuw i16 %bf.shl.i.i, 1398
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i592.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i599.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i599.i)
  %cmp.not.i.not.i600.i = icmp eq i16 %call.i.i599.i, -1
  br i1 %cmp.not.i.not.i600.i, label %for.cond.i576.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i607.i, !prof !29

for.cond.i576.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i576.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i588.i:                                  ; preds = %for.cond.i557.1.i
  %call.i76.i586.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i586.i)
  %cmp.not.i77.not.i587.i = icmp eq i16 %call.i76.i586.i, -1
  br i1 %cmp.not.i77.not.i587.i, label %if.end38.i588.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i576.i, !prof !29

if.end38.i588.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i588.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i595.i:                                  ; preds = %if.end38.i607.i
  %call.i.i599.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i599.1.i)
  %cmp.not.i.not.i600.1.i = icmp eq i16 %call.i.i599.1.i, -1
  br i1 %cmp.not.i.not.i600.1.i, label %for.cond.i595.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i607.1.i, !prof !29

for.cond.i595.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i595.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i607.1.i:                                ; preds = %for.cond.i595.i
  %call.i76.i605.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i605.1.i)
  %cmp.not.i77.not.i606.1.i = icmp eq i16 %call.i76.i605.1.i, -1
  br i1 %cmp.not.i77.not.i606.1.i, label %if.end38.i607.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i595.1.i, !prof !29

if.end38.i607.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i607.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i595.1.i:                                ; preds = %if.end38.i607.1.i
  %conv306.i = zext i16 %call.i.i599.i to i32
  %conv308.i = zext i16 %call.i76.i605.i to i32
  %shl309.i = shl nuw i32 %conv308.i, 16
  %or310.i = or i32 %shl309.i, %conv306.i
  %validated_octets.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 10
  %22 = ptrtoint ptr %validated_octets.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or310.i, ptr %validated_octets.i, align 4
  %conv313.i = zext i16 %call.i.i599.1.i to i32
  %conv315.i = zext i16 %call.i76.i605.1.i to i32
  %shl316.i = shl nuw i32 %conv315.i, 16
  %or317.i = or i32 %shl316.i, %conv313.i
  %arrayidx319.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or317.i, ptr %arrayidx319.i, align 4
  %bf.set5.i611.i = add nuw i16 %bf.shl.i.i, 1526
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set5.i611.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i618.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i618.i)
  %cmp.not.i.not.i619.i = icmp eq i16 %call.i.i618.i, -1
  br i1 %cmp.not.i.not.i619.i, label %for.cond.i595.1.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i626.i, !prof !29

for.cond.i595.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i595.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i607.i:                                  ; preds = %for.cond.i576.1.i
  %call.i76.i605.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i605.i)
  %cmp.not.i77.not.i606.i = icmp eq i16 %call.i76.i605.i, -1
  br i1 %cmp.not.i77.not.i606.i, label %if.end38.i607.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i595.i, !prof !29

if.end38.i607.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i607.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i614.i:                                  ; preds = %if.end38.i626.i
  %call.i.i618.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i618.1.i)
  %cmp.not.i.not.i619.1.i = icmp eq i16 %call.i.i618.1.i, -1
  br i1 %cmp.not.i.not.i619.1.i, label %for.cond.i614.i.get_ingress_sa_counters.exit_crit_edge, label %if.end38.i626.1.i, !prof !29

for.cond.i614.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %for.cond.i614.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

if.end38.i626.1.i:                                ; preds = %for.cond.i614.i
  %call.i76.i624.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i624.1.i)
  %cmp.not.i77.not.i625.1.i = icmp eq i16 %call.i76.i624.1.i, -1
  br i1 %cmp.not.i77.not.i625.1.i, label %if.end38.i626.1.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i614.1.i, !prof !29

if.end38.i626.1.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i626.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

for.cond.i614.1.i:                                ; preds = %if.end38.i626.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv336.i = zext i16 %call.i.i618.i to i32
  %conv338.i = zext i16 %call.i76.i624.i to i32
  %shl339.i = shl nuw i32 %conv338.i, 16
  %or340.i = or i32 %shl339.i, %conv336.i
  %decrypted_octets.i = getelementptr inbounds %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 11
  %24 = ptrtoint ptr %decrypted_octets.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or340.i, ptr %decrypted_octets.i, align 4
  %conv343.i = zext i16 %call.i.i618.1.i to i32
  %conv345.i = zext i16 %call.i76.i624.1.i to i32
  %shl346.i = shl nuw i32 %conv345.i, 16
  %or347.i = or i32 %shl346.i, %conv343.i
  %arrayidx349.i = getelementptr %struct.aq_mss_ingress_sa_counters, ptr %counters, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or347.i, ptr %arrayidx349.i, align 4
  br label %get_ingress_sa_counters.exit

if.end38.i626.i:                                  ; preds = %for.cond.i595.1.i
  %call.i76.i624.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i624.i)
  %cmp.not.i77.not.i625.i = icmp eq i16 %call.i76.i624.i, -1
  br i1 %cmp.not.i77.not.i625.i, label %if.end38.i626.i.get_ingress_sa_counters.exit_crit_edge, label %for.cond.i614.i, !prof !29

if.end38.i626.i.get_ingress_sa_counters.exit_crit_edge: ; preds = %if.end38.i626.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_sa_counters.exit

get_ingress_sa_counters.exit:                     ; preds = %if.end38.i626.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i614.1.i, %if.end38.i626.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i614.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i607.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i595.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i607.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i595.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i588.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i576.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i588.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i576.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i569.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i557.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i569.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i557.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i550.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i538.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i550.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i538.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i531.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i519.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i531.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i519.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i512.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i500.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i512.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i500.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i493.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i481.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i493.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i481.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i474.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i462.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i474.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i462.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i455.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i443.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i455.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i443.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i436.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i424.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i436.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i424.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i.1.i.get_ingress_sa_counters.exit_crit_edge, %if.end38.i.1.i.get_ingress_sa_counters.exit_crit_edge, %for.cond.i.i.get_ingress_sa_counters.exit_crit_edge, %if.end.i.get_ingress_sa_counters.exit_crit_edge, %if.end.get_ingress_sa_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i614.1.i ], [ -22, %if.end.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i626.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i614.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i626.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i595.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i607.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i595.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i607.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i576.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i588.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i576.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i588.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i557.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i569.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i557.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i569.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i538.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i550.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i538.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i550.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i519.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i531.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i519.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i531.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i500.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i512.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i500.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i512.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i481.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i493.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i481.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i493.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i462.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i474.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i462.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i474.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i443.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i455.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i443.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i455.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i424.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i436.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i424.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i436.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_sa_counters.exit_crit_edge ], [ -62, %if.end.i.get_ingress_sa_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_sa_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_sa_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_ingress_common_counters(ptr noundef %hw, ptr noundef writeonly %counters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %counters, i32 0, i32 128)
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -16138) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i16 %call.i.i.i, -1
  br i1 %cmp.not.i.not.i.i, label %if.end.get_ingress_common_counters.exit_crit_edge, label %if.end38.i.i, !prof !29

if.end.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i.i:                                     ; preds = %if.end38.i.i
  %call.i.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.1.i)
  %cmp.not.i.not.i.1.i = icmp eq i16 %call.i.i.1.i, -1
  br i1 %cmp.not.i.not.i.1.i, label %for.cond.i.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i.1.i, !prof !29

for.cond.i.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i.1.i:                                   ; preds = %for.cond.i.i
  %call.i76.i.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.1.i)
  %cmp.not.i77.not.i.1.i = icmp eq i16 %call.i76.i.1.i, -1
  br i1 %cmp.not.i77.not.i.1.i, label %if.end38.i.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i.1.i, !prof !29

if.end38.i.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i.1.i:                                   ; preds = %if.end38.i.1.i
  %conv.i = zext i16 %call.i.i.i to i32
  %conv4.i = zext i16 %call.i76.i.i to i32
  %shl.i = shl nuw i32 %conv4.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %counters, align 4
  %conv7.i = zext i16 %call.i.i.1.i to i32
  %conv9.i = zext i16 %call.i76.i.1.i to i32
  %shl10.i = shl nuw i32 %conv9.i, 16
  %or11.i = or i32 %shl10.i, %conv7.i
  %arrayidx13.i = getelementptr [2 x i32], ptr %counters, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or11.i, ptr %arrayidx13.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -16010) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i488.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i488.i)
  %cmp.not.i.not.i489.i = icmp eq i16 %call.i.i488.i, -1
  br i1 %cmp.not.i.not.i489.i, label %for.cond.i.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i496.i, !prof !29

for.cond.i.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i.i:                                     ; preds = %if.end
  %call.i76.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i.i)
  %cmp.not.i77.not.i.i = icmp eq i16 %call.i76.i.i, -1
  br i1 %cmp.not.i77.not.i.i, label %if.end38.i.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i.i, !prof !29

if.end38.i.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i484.i:                                  ; preds = %if.end38.i496.i
  %call.i.i488.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i488.1.i)
  %cmp.not.i.not.i489.1.i = icmp eq i16 %call.i.i488.1.i, -1
  br i1 %cmp.not.i.not.i489.1.i, label %for.cond.i484.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i496.1.i, !prof !29

for.cond.i484.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i484.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i496.1.i:                                ; preds = %for.cond.i484.i
  %call.i76.i494.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i494.1.i)
  %cmp.not.i77.not.i495.1.i = icmp eq i16 %call.i76.i494.1.i, -1
  br i1 %cmp.not.i77.not.i495.1.i, label %if.end38.i496.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i484.1.i, !prof !29

if.end38.i496.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i496.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i484.1.i:                                ; preds = %if.end38.i496.1.i
  %conv26.i = zext i16 %call.i.i488.i to i32
  %conv28.i = zext i16 %call.i76.i494.i to i32
  %shl29.i = shl nuw i32 %conv28.i, 16
  %or30.i = or i32 %shl29.i, %conv26.i
  %tagged_miss_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 1
  %4 = ptrtoint ptr %tagged_miss_pkts.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or30.i, ptr %tagged_miss_pkts.i, align 4
  %conv33.i = zext i16 %call.i.i488.1.i to i32
  %conv35.i = zext i16 %call.i76.i494.1.i to i32
  %shl36.i = shl nuw i32 %conv35.i, 16
  %or37.i = or i32 %shl36.i, %conv33.i
  %arrayidx39.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or37.i, ptr %arrayidx39.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15882) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i505.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i505.i)
  %cmp.not.i.not.i506.i = icmp eq i16 %call.i.i505.i, -1
  br i1 %cmp.not.i.not.i506.i, label %for.cond.i484.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i513.i, !prof !29

for.cond.i484.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i484.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i496.i:                                  ; preds = %for.cond.i.1.i
  %call.i76.i494.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i494.i)
  %cmp.not.i77.not.i495.i = icmp eq i16 %call.i76.i494.i, -1
  br i1 %cmp.not.i77.not.i495.i, label %if.end38.i496.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i484.i, !prof !29

if.end38.i496.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i496.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i501.i:                                  ; preds = %if.end38.i513.i
  %call.i.i505.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i505.1.i)
  %cmp.not.i.not.i506.1.i = icmp eq i16 %call.i.i505.1.i, -1
  br i1 %cmp.not.i.not.i506.1.i, label %for.cond.i501.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i513.1.i, !prof !29

for.cond.i501.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i501.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i513.1.i:                                ; preds = %for.cond.i501.i
  %call.i76.i511.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i511.1.i)
  %cmp.not.i77.not.i512.1.i = icmp eq i16 %call.i76.i511.1.i, -1
  br i1 %cmp.not.i77.not.i512.1.i, label %if.end38.i513.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i501.1.i, !prof !29

if.end38.i513.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i513.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i501.1.i:                                ; preds = %if.end38.i513.1.i
  %conv52.i = zext i16 %call.i.i505.i to i32
  %conv54.i = zext i16 %call.i76.i511.i to i32
  %shl55.i = shl nuw i32 %conv54.i, 16
  %or56.i = or i32 %shl55.i, %conv52.i
  %untagged_miss_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 2
  %6 = ptrtoint ptr %untagged_miss_pkts.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or56.i, ptr %untagged_miss_pkts.i, align 4
  %conv59.i = zext i16 %call.i.i505.1.i to i32
  %conv61.i = zext i16 %call.i76.i511.1.i to i32
  %shl62.i = shl nuw i32 %conv61.i, 16
  %or63.i = or i32 %shl62.i, %conv59.i
  %arrayidx65.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or63.i, ptr %arrayidx65.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15754) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i522.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i522.i)
  %cmp.not.i.not.i523.i = icmp eq i16 %call.i.i522.i, -1
  br i1 %cmp.not.i.not.i523.i, label %for.cond.i501.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i530.i, !prof !29

for.cond.i501.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i501.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i513.i:                                  ; preds = %for.cond.i484.1.i
  %call.i76.i511.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i511.i)
  %cmp.not.i77.not.i512.i = icmp eq i16 %call.i76.i511.i, -1
  br i1 %cmp.not.i77.not.i512.i, label %if.end38.i513.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i501.i, !prof !29

if.end38.i513.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i513.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i518.i:                                  ; preds = %if.end38.i530.i
  %call.i.i522.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i522.1.i)
  %cmp.not.i.not.i523.1.i = icmp eq i16 %call.i.i522.1.i, -1
  br i1 %cmp.not.i.not.i523.1.i, label %for.cond.i518.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i530.1.i, !prof !29

for.cond.i518.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i518.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i530.1.i:                                ; preds = %for.cond.i518.i
  %call.i76.i528.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i528.1.i)
  %cmp.not.i77.not.i529.1.i = icmp eq i16 %call.i76.i528.1.i, -1
  br i1 %cmp.not.i77.not.i529.1.i, label %if.end38.i530.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i518.1.i, !prof !29

if.end38.i530.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i530.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i518.1.i:                                ; preds = %if.end38.i530.1.i
  %conv78.i = zext i16 %call.i.i522.i to i32
  %conv80.i = zext i16 %call.i76.i528.i to i32
  %shl81.i = shl nuw i32 %conv80.i, 16
  %or82.i = or i32 %shl81.i, %conv78.i
  %notag_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 3
  %8 = ptrtoint ptr %notag_pkts.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or82.i, ptr %notag_pkts.i, align 4
  %conv85.i = zext i16 %call.i.i522.1.i to i32
  %conv87.i = zext i16 %call.i76.i528.1.i to i32
  %shl88.i = shl nuw i32 %conv87.i, 16
  %or89.i = or i32 %shl88.i, %conv85.i
  %arrayidx91.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or89.i, ptr %arrayidx91.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15626) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i539.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i539.i)
  %cmp.not.i.not.i540.i = icmp eq i16 %call.i.i539.i, -1
  br i1 %cmp.not.i.not.i540.i, label %for.cond.i518.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i547.i, !prof !29

for.cond.i518.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i518.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i530.i:                                  ; preds = %for.cond.i501.1.i
  %call.i76.i528.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i528.i)
  %cmp.not.i77.not.i529.i = icmp eq i16 %call.i76.i528.i, -1
  br i1 %cmp.not.i77.not.i529.i, label %if.end38.i530.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i518.i, !prof !29

if.end38.i530.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i530.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i535.i:                                  ; preds = %if.end38.i547.i
  %call.i.i539.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i539.1.i)
  %cmp.not.i.not.i540.1.i = icmp eq i16 %call.i.i539.1.i, -1
  br i1 %cmp.not.i.not.i540.1.i, label %for.cond.i535.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i547.1.i, !prof !29

for.cond.i535.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i535.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i547.1.i:                                ; preds = %for.cond.i535.i
  %call.i76.i545.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i545.1.i)
  %cmp.not.i77.not.i546.1.i = icmp eq i16 %call.i76.i545.1.i, -1
  br i1 %cmp.not.i77.not.i546.1.i, label %if.end38.i547.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i535.1.i, !prof !29

if.end38.i547.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i547.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i535.1.i:                                ; preds = %if.end38.i547.1.i
  %conv104.i = zext i16 %call.i.i539.i to i32
  %conv106.i = zext i16 %call.i76.i545.i to i32
  %shl107.i = shl nuw i32 %conv106.i, 16
  %or108.i = or i32 %shl107.i, %conv104.i
  %untagged_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 4
  %10 = ptrtoint ptr %untagged_pkts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or108.i, ptr %untagged_pkts.i, align 4
  %conv111.i = zext i16 %call.i.i539.1.i to i32
  %conv113.i = zext i16 %call.i76.i545.1.i to i32
  %shl114.i = shl nuw i32 %conv113.i, 16
  %or115.i = or i32 %shl114.i, %conv111.i
  %arrayidx117.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or115.i, ptr %arrayidx117.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15498) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i556.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i556.i)
  %cmp.not.i.not.i557.i = icmp eq i16 %call.i.i556.i, -1
  br i1 %cmp.not.i.not.i557.i, label %for.cond.i535.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i564.i, !prof !29

for.cond.i535.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i535.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i547.i:                                  ; preds = %for.cond.i518.1.i
  %call.i76.i545.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i545.i)
  %cmp.not.i77.not.i546.i = icmp eq i16 %call.i76.i545.i, -1
  br i1 %cmp.not.i77.not.i546.i, label %if.end38.i547.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i535.i, !prof !29

if.end38.i547.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i547.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i552.i:                                  ; preds = %if.end38.i564.i
  %call.i.i556.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i556.1.i)
  %cmp.not.i.not.i557.1.i = icmp eq i16 %call.i.i556.1.i, -1
  br i1 %cmp.not.i.not.i557.1.i, label %for.cond.i552.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i564.1.i, !prof !29

for.cond.i552.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i552.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i564.1.i:                                ; preds = %for.cond.i552.i
  %call.i76.i562.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i562.1.i)
  %cmp.not.i77.not.i563.1.i = icmp eq i16 %call.i76.i562.1.i, -1
  br i1 %cmp.not.i77.not.i563.1.i, label %if.end38.i564.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i552.1.i, !prof !29

if.end38.i564.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i564.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i552.1.i:                                ; preds = %if.end38.i564.1.i
  %conv130.i = zext i16 %call.i.i556.i to i32
  %conv132.i = zext i16 %call.i76.i562.i to i32
  %shl133.i = shl nuw i32 %conv132.i, 16
  %or134.i = or i32 %shl133.i, %conv130.i
  %bad_tag_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 5
  %12 = ptrtoint ptr %bad_tag_pkts.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or134.i, ptr %bad_tag_pkts.i, align 4
  %conv137.i = zext i16 %call.i.i556.1.i to i32
  %conv139.i = zext i16 %call.i76.i562.1.i to i32
  %shl140.i = shl nuw i32 %conv139.i, 16
  %or141.i = or i32 %shl140.i, %conv137.i
  %arrayidx143.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or141.i, ptr %arrayidx143.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15370) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i573.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i573.i)
  %cmp.not.i.not.i574.i = icmp eq i16 %call.i.i573.i, -1
  br i1 %cmp.not.i.not.i574.i, label %for.cond.i552.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i581.i, !prof !29

for.cond.i552.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i552.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i564.i:                                  ; preds = %for.cond.i535.1.i
  %call.i76.i562.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i562.i)
  %cmp.not.i77.not.i563.i = icmp eq i16 %call.i76.i562.i, -1
  br i1 %cmp.not.i77.not.i563.i, label %if.end38.i564.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i552.i, !prof !29

if.end38.i564.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i564.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i569.i:                                  ; preds = %if.end38.i581.i
  %call.i.i573.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i573.1.i)
  %cmp.not.i.not.i574.1.i = icmp eq i16 %call.i.i573.1.i, -1
  br i1 %cmp.not.i.not.i574.1.i, label %for.cond.i569.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i581.1.i, !prof !29

for.cond.i569.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i569.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i581.1.i:                                ; preds = %for.cond.i569.i
  %call.i76.i579.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i579.1.i)
  %cmp.not.i77.not.i580.1.i = icmp eq i16 %call.i76.i579.1.i, -1
  br i1 %cmp.not.i77.not.i580.1.i, label %if.end38.i581.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i569.1.i, !prof !29

if.end38.i581.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i581.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i569.1.i:                                ; preds = %if.end38.i581.1.i
  %conv156.i = zext i16 %call.i.i573.i to i32
  %conv158.i = zext i16 %call.i76.i579.i to i32
  %shl159.i = shl nuw i32 %conv158.i, 16
  %or160.i = or i32 %shl159.i, %conv156.i
  %no_sci_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 6
  %14 = ptrtoint ptr %no_sci_pkts.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or160.i, ptr %no_sci_pkts.i, align 4
  %conv163.i = zext i16 %call.i.i573.1.i to i32
  %conv165.i = zext i16 %call.i76.i579.1.i to i32
  %shl166.i = shl nuw i32 %conv165.i, 16
  %or167.i = or i32 %shl166.i, %conv163.i
  %arrayidx169.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or167.i, ptr %arrayidx169.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15242) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i590.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i590.i)
  %cmp.not.i.not.i591.i = icmp eq i16 %call.i.i590.i, -1
  br i1 %cmp.not.i.not.i591.i, label %for.cond.i569.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i598.i, !prof !29

for.cond.i569.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i569.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i581.i:                                  ; preds = %for.cond.i552.1.i
  %call.i76.i579.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i579.i)
  %cmp.not.i77.not.i580.i = icmp eq i16 %call.i76.i579.i, -1
  br i1 %cmp.not.i77.not.i580.i, label %if.end38.i581.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i569.i, !prof !29

if.end38.i581.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i581.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i586.i:                                  ; preds = %if.end38.i598.i
  %call.i.i590.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i590.1.i)
  %cmp.not.i.not.i591.1.i = icmp eq i16 %call.i.i590.1.i, -1
  br i1 %cmp.not.i.not.i591.1.i, label %for.cond.i586.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i598.1.i, !prof !29

for.cond.i586.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i586.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i598.1.i:                                ; preds = %for.cond.i586.i
  %call.i76.i596.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i596.1.i)
  %cmp.not.i77.not.i597.1.i = icmp eq i16 %call.i76.i596.1.i, -1
  br i1 %cmp.not.i77.not.i597.1.i, label %if.end38.i598.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i586.1.i, !prof !29

if.end38.i598.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i598.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i586.1.i:                                ; preds = %if.end38.i598.1.i
  %conv182.i = zext i16 %call.i.i590.i to i32
  %conv184.i = zext i16 %call.i76.i596.i to i32
  %shl185.i = shl nuw i32 %conv184.i, 16
  %or186.i = or i32 %shl185.i, %conv182.i
  %unknown_sci_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 7
  %16 = ptrtoint ptr %unknown_sci_pkts.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or186.i, ptr %unknown_sci_pkts.i, align 4
  %conv189.i = zext i16 %call.i.i590.1.i to i32
  %conv191.i = zext i16 %call.i76.i596.1.i to i32
  %shl192.i = shl nuw i32 %conv191.i, 16
  %or193.i = or i32 %shl192.i, %conv189.i
  %arrayidx195.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or193.i, ptr %arrayidx195.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -15114) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i607.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i607.i)
  %cmp.not.i.not.i608.i = icmp eq i16 %call.i.i607.i, -1
  br i1 %cmp.not.i.not.i608.i, label %for.cond.i586.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i615.i, !prof !29

for.cond.i586.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i586.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i598.i:                                  ; preds = %for.cond.i569.1.i
  %call.i76.i596.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i596.i)
  %cmp.not.i77.not.i597.i = icmp eq i16 %call.i76.i596.i, -1
  br i1 %cmp.not.i77.not.i597.i, label %if.end38.i598.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i586.i, !prof !29

if.end38.i598.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i598.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i603.i:                                  ; preds = %if.end38.i615.i
  %call.i.i607.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i607.1.i)
  %cmp.not.i.not.i608.1.i = icmp eq i16 %call.i.i607.1.i, -1
  br i1 %cmp.not.i.not.i608.1.i, label %for.cond.i603.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i615.1.i, !prof !29

for.cond.i603.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i603.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i615.1.i:                                ; preds = %for.cond.i603.i
  %call.i76.i613.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i613.1.i)
  %cmp.not.i77.not.i614.1.i = icmp eq i16 %call.i76.i613.1.i, -1
  br i1 %cmp.not.i77.not.i614.1.i, label %if.end38.i615.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i603.1.i, !prof !29

if.end38.i615.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i615.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i603.1.i:                                ; preds = %if.end38.i615.1.i
  %conv208.i = zext i16 %call.i.i607.i to i32
  %conv210.i = zext i16 %call.i76.i613.i to i32
  %shl211.i = shl nuw i32 %conv210.i, 16
  %or212.i = or i32 %shl211.i, %conv208.i
  %ctrl_prt_pass_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 8
  %18 = ptrtoint ptr %ctrl_prt_pass_pkts.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or212.i, ptr %ctrl_prt_pass_pkts.i, align 4
  %conv215.i = zext i16 %call.i.i607.1.i to i32
  %conv217.i = zext i16 %call.i76.i613.1.i to i32
  %shl218.i = shl nuw i32 %conv217.i, 16
  %or219.i = or i32 %shl218.i, %conv215.i
  %arrayidx221.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or219.i, ptr %arrayidx221.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14986) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i624.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i624.i)
  %cmp.not.i.not.i625.i = icmp eq i16 %call.i.i624.i, -1
  br i1 %cmp.not.i.not.i625.i, label %for.cond.i603.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i632.i, !prof !29

for.cond.i603.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i603.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i615.i:                                  ; preds = %for.cond.i586.1.i
  %call.i76.i613.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i613.i)
  %cmp.not.i77.not.i614.i = icmp eq i16 %call.i76.i613.i, -1
  br i1 %cmp.not.i77.not.i614.i, label %if.end38.i615.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i603.i, !prof !29

if.end38.i615.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i615.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i620.i:                                  ; preds = %if.end38.i632.i
  %call.i.i624.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i624.1.i)
  %cmp.not.i.not.i625.1.i = icmp eq i16 %call.i.i624.1.i, -1
  br i1 %cmp.not.i.not.i625.1.i, label %for.cond.i620.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i632.1.i, !prof !29

for.cond.i620.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i620.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i632.1.i:                                ; preds = %for.cond.i620.i
  %call.i76.i630.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i630.1.i)
  %cmp.not.i77.not.i631.1.i = icmp eq i16 %call.i76.i630.1.i, -1
  br i1 %cmp.not.i77.not.i631.1.i, label %if.end38.i632.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i620.1.i, !prof !29

if.end38.i632.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i632.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i620.1.i:                                ; preds = %if.end38.i632.1.i
  %conv234.i = zext i16 %call.i.i624.i to i32
  %conv236.i = zext i16 %call.i76.i630.i to i32
  %shl237.i = shl nuw i32 %conv236.i, 16
  %or238.i = or i32 %shl237.i, %conv234.i
  %unctrl_prt_pass_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 9
  %20 = ptrtoint ptr %unctrl_prt_pass_pkts.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or238.i, ptr %unctrl_prt_pass_pkts.i, align 4
  %conv241.i = zext i16 %call.i.i624.1.i to i32
  %conv243.i = zext i16 %call.i76.i630.1.i to i32
  %shl244.i = shl nuw i32 %conv243.i, 16
  %or245.i = or i32 %shl244.i, %conv241.i
  %arrayidx247.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or245.i, ptr %arrayidx247.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14858) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i641.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i641.i)
  %cmp.not.i.not.i642.i = icmp eq i16 %call.i.i641.i, -1
  br i1 %cmp.not.i.not.i642.i, label %for.cond.i620.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i649.i, !prof !29

for.cond.i620.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i620.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i632.i:                                  ; preds = %for.cond.i603.1.i
  %call.i76.i630.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i630.i)
  %cmp.not.i77.not.i631.i = icmp eq i16 %call.i76.i630.i, -1
  br i1 %cmp.not.i77.not.i631.i, label %if.end38.i632.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i620.i, !prof !29

if.end38.i632.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i632.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i637.i:                                  ; preds = %if.end38.i649.i
  %call.i.i641.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i641.1.i)
  %cmp.not.i.not.i642.1.i = icmp eq i16 %call.i.i641.1.i, -1
  br i1 %cmp.not.i.not.i642.1.i, label %for.cond.i637.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i649.1.i, !prof !29

for.cond.i637.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i637.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i649.1.i:                                ; preds = %for.cond.i637.i
  %call.i76.i647.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i647.1.i)
  %cmp.not.i77.not.i648.1.i = icmp eq i16 %call.i76.i647.1.i, -1
  br i1 %cmp.not.i77.not.i648.1.i, label %if.end38.i649.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i637.1.i, !prof !29

if.end38.i649.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i649.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i637.1.i:                                ; preds = %if.end38.i649.1.i
  %conv260.i = zext i16 %call.i.i641.i to i32
  %conv262.i = zext i16 %call.i76.i647.i to i32
  %shl263.i = shl nuw i32 %conv262.i, 16
  %or264.i = or i32 %shl263.i, %conv260.i
  %ctrl_prt_fail_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 10
  %22 = ptrtoint ptr %ctrl_prt_fail_pkts.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or264.i, ptr %ctrl_prt_fail_pkts.i, align 4
  %conv267.i = zext i16 %call.i.i641.1.i to i32
  %conv269.i = zext i16 %call.i76.i647.1.i to i32
  %shl270.i = shl nuw i32 %conv269.i, 16
  %or271.i = or i32 %shl270.i, %conv267.i
  %arrayidx273.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or271.i, ptr %arrayidx273.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14730) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i658.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i658.i)
  %cmp.not.i.not.i659.i = icmp eq i16 %call.i.i658.i, -1
  br i1 %cmp.not.i.not.i659.i, label %for.cond.i637.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i666.i, !prof !29

for.cond.i637.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i637.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i649.i:                                  ; preds = %for.cond.i620.1.i
  %call.i76.i647.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i647.i)
  %cmp.not.i77.not.i648.i = icmp eq i16 %call.i76.i647.i, -1
  br i1 %cmp.not.i77.not.i648.i, label %if.end38.i649.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i637.i, !prof !29

if.end38.i649.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i649.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i654.i:                                  ; preds = %if.end38.i666.i
  %call.i.i658.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i658.1.i)
  %cmp.not.i.not.i659.1.i = icmp eq i16 %call.i.i658.1.i, -1
  br i1 %cmp.not.i.not.i659.1.i, label %for.cond.i654.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i666.1.i, !prof !29

for.cond.i654.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i654.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i666.1.i:                                ; preds = %for.cond.i654.i
  %call.i76.i664.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i664.1.i)
  %cmp.not.i77.not.i665.1.i = icmp eq i16 %call.i76.i664.1.i, -1
  br i1 %cmp.not.i77.not.i665.1.i, label %if.end38.i666.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i654.1.i, !prof !29

if.end38.i666.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i666.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i654.1.i:                                ; preds = %if.end38.i666.1.i
  %conv286.i = zext i16 %call.i.i658.i to i32
  %conv288.i = zext i16 %call.i76.i664.i to i32
  %shl289.i = shl nuw i32 %conv288.i, 16
  %or290.i = or i32 %shl289.i, %conv286.i
  %unctrl_prt_fail_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 11
  %24 = ptrtoint ptr %unctrl_prt_fail_pkts.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or290.i, ptr %unctrl_prt_fail_pkts.i, align 4
  %conv293.i = zext i16 %call.i.i658.1.i to i32
  %conv295.i = zext i16 %call.i76.i664.1.i to i32
  %shl296.i = shl nuw i32 %conv295.i, 16
  %or297.i = or i32 %shl296.i, %conv293.i
  %arrayidx299.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or297.i, ptr %arrayidx299.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14602) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i675.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i675.i)
  %cmp.not.i.not.i676.i = icmp eq i16 %call.i.i675.i, -1
  br i1 %cmp.not.i.not.i676.i, label %for.cond.i654.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i683.i, !prof !29

for.cond.i654.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i654.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i666.i:                                  ; preds = %for.cond.i637.1.i
  %call.i76.i664.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i664.i)
  %cmp.not.i77.not.i665.i = icmp eq i16 %call.i76.i664.i, -1
  br i1 %cmp.not.i77.not.i665.i, label %if.end38.i666.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i654.i, !prof !29

if.end38.i666.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i666.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i671.i:                                  ; preds = %if.end38.i683.i
  %call.i.i675.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i675.1.i)
  %cmp.not.i.not.i676.1.i = icmp eq i16 %call.i.i675.1.i, -1
  br i1 %cmp.not.i.not.i676.1.i, label %for.cond.i671.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i683.1.i, !prof !29

for.cond.i671.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i671.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i683.1.i:                                ; preds = %for.cond.i671.i
  %call.i76.i681.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i681.1.i)
  %cmp.not.i77.not.i682.1.i = icmp eq i16 %call.i76.i681.1.i, -1
  br i1 %cmp.not.i77.not.i682.1.i, label %if.end38.i683.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i671.1.i, !prof !29

if.end38.i683.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i683.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i671.1.i:                                ; preds = %if.end38.i683.1.i
  %conv312.i = zext i16 %call.i.i675.i to i32
  %conv314.i = zext i16 %call.i76.i681.i to i32
  %shl315.i = shl nuw i32 %conv314.i, 16
  %or316.i = or i32 %shl315.i, %conv312.i
  %too_long_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 12
  %26 = ptrtoint ptr %too_long_pkts.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or316.i, ptr %too_long_pkts.i, align 4
  %conv319.i = zext i16 %call.i.i675.1.i to i32
  %conv321.i = zext i16 %call.i76.i681.1.i to i32
  %shl322.i = shl nuw i32 %conv321.i, 16
  %or323.i = or i32 %shl322.i, %conv319.i
  %arrayidx325.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or323.i, ptr %arrayidx325.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14474) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i692.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i692.i)
  %cmp.not.i.not.i693.i = icmp eq i16 %call.i.i692.i, -1
  br i1 %cmp.not.i.not.i693.i, label %for.cond.i671.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i700.i, !prof !29

for.cond.i671.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i671.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i683.i:                                  ; preds = %for.cond.i654.1.i
  %call.i76.i681.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i681.i)
  %cmp.not.i77.not.i682.i = icmp eq i16 %call.i76.i681.i, -1
  br i1 %cmp.not.i77.not.i682.i, label %if.end38.i683.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i671.i, !prof !29

if.end38.i683.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i683.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i688.i:                                  ; preds = %if.end38.i700.i
  %call.i.i692.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i692.1.i)
  %cmp.not.i.not.i693.1.i = icmp eq i16 %call.i.i692.1.i, -1
  br i1 %cmp.not.i.not.i693.1.i, label %for.cond.i688.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i700.1.i, !prof !29

for.cond.i688.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i688.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i700.1.i:                                ; preds = %for.cond.i688.i
  %call.i76.i698.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i698.1.i)
  %cmp.not.i77.not.i699.1.i = icmp eq i16 %call.i76.i698.1.i, -1
  br i1 %cmp.not.i77.not.i699.1.i, label %if.end38.i700.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i688.1.i, !prof !29

if.end38.i700.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i700.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i688.1.i:                                ; preds = %if.end38.i700.1.i
  %conv338.i = zext i16 %call.i.i692.i to i32
  %conv340.i = zext i16 %call.i76.i698.i to i32
  %shl341.i = shl nuw i32 %conv340.i, 16
  %or342.i = or i32 %shl341.i, %conv338.i
  %igpoc_ctl_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 13
  %28 = ptrtoint ptr %igpoc_ctl_pkts.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or342.i, ptr %igpoc_ctl_pkts.i, align 4
  %conv345.i = zext i16 %call.i.i692.1.i to i32
  %conv347.i = zext i16 %call.i76.i698.1.i to i32
  %shl348.i = shl nuw i32 %conv347.i, 16
  %or349.i = or i32 %shl348.i, %conv345.i
  %arrayidx351.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or349.i, ptr %arrayidx351.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14346) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i709.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i709.i)
  %cmp.not.i.not.i710.i = icmp eq i16 %call.i.i709.i, -1
  br i1 %cmp.not.i.not.i710.i, label %for.cond.i688.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i717.i, !prof !29

for.cond.i688.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i688.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i700.i:                                  ; preds = %for.cond.i671.1.i
  %call.i76.i698.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i698.i)
  %cmp.not.i77.not.i699.i = icmp eq i16 %call.i76.i698.i, -1
  br i1 %cmp.not.i77.not.i699.i, label %if.end38.i700.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i688.i, !prof !29

if.end38.i700.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i700.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i705.i:                                  ; preds = %if.end38.i717.i
  %call.i.i709.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i709.1.i)
  %cmp.not.i.not.i710.1.i = icmp eq i16 %call.i.i709.1.i, -1
  br i1 %cmp.not.i.not.i710.1.i, label %for.cond.i705.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i717.1.i, !prof !29

for.cond.i705.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i705.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i717.1.i:                                ; preds = %for.cond.i705.i
  %call.i76.i715.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i715.1.i)
  %cmp.not.i77.not.i716.1.i = icmp eq i16 %call.i76.i715.1.i, -1
  br i1 %cmp.not.i77.not.i716.1.i, label %if.end38.i717.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i705.1.i, !prof !29

if.end38.i717.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i717.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i705.1.i:                                ; preds = %if.end38.i717.1.i
  %conv364.i = zext i16 %call.i.i709.i to i32
  %conv366.i = zext i16 %call.i76.i715.i to i32
  %shl367.i = shl nuw i32 %conv366.i, 16
  %or368.i = or i32 %shl367.i, %conv364.i
  %ecc_error_pkts.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 14
  %30 = ptrtoint ptr %ecc_error_pkts.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or368.i, ptr %ecc_error_pkts.i, align 4
  %conv371.i = zext i16 %call.i.i709.1.i to i32
  %conv373.i = zext i16 %call.i76.i715.1.i to i32
  %shl374.i = shl nuw i32 %conv373.i, 16
  %or375.i = or i32 %shl374.i, %conv371.i
  %arrayidx377.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %arrayidx377.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or375.i, ptr %arrayidx377.i, align 4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext -14218) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -2) #4
  %call.i.i726.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32608) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i726.i)
  %cmp.not.i.not.i727.i = icmp eq i16 %call.i.i726.i, -1
  br i1 %cmp.not.i.not.i727.i, label %for.cond.i705.1.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i734.i, !prof !29

for.cond.i705.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i705.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i717.i:                                  ; preds = %for.cond.i688.1.i
  %call.i76.i715.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i715.i)
  %cmp.not.i77.not.i716.i = icmp eq i16 %call.i76.i715.i, -1
  br i1 %cmp.not.i77.not.i716.i, label %if.end38.i717.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i705.i, !prof !29

if.end38.i717.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i717.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i722.i:                                  ; preds = %if.end38.i734.i
  %call.i.i726.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32606) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i726.1.i)
  %cmp.not.i.not.i727.1.i = icmp eq i16 %call.i.i726.1.i, -1
  br i1 %cmp.not.i.not.i727.1.i, label %for.cond.i722.i.get_ingress_common_counters.exit_crit_edge, label %if.end38.i734.1.i, !prof !29

for.cond.i722.i.get_ingress_common_counters.exit_crit_edge: ; preds = %for.cond.i722.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

if.end38.i734.1.i:                                ; preds = %for.cond.i722.i
  %call.i76.i732.1.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32605) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i732.1.i)
  %cmp.not.i77.not.i733.1.i = icmp eq i16 %call.i76.i732.1.i, -1
  br i1 %cmp.not.i77.not.i733.1.i, label %if.end38.i734.1.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i722.1.i, !prof !29

if.end38.i734.1.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i734.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

for.cond.i722.1.i:                                ; preds = %if.end38.i734.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv390.i = zext i16 %call.i.i726.i to i32
  %conv392.i = zext i16 %call.i76.i732.i to i32
  %shl393.i = shl nuw i32 %conv392.i, 16
  %or394.i = or i32 %shl393.i, %conv390.i
  %unctrl_hit_drop_redir.i = getelementptr inbounds %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 15
  %32 = ptrtoint ptr %unctrl_hit_drop_redir.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or394.i, ptr %unctrl_hit_drop_redir.i, align 4
  %conv397.i = zext i16 %call.i.i726.1.i to i32
  %conv399.i = zext i16 %call.i76.i732.1.i to i32
  %shl400.i = shl nuw i32 %conv399.i, 16
  %or401.i = or i32 %shl400.i, %conv397.i
  %arrayidx403.i = getelementptr %struct.aq_mss_ingress_common_counters, ptr %counters, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or401.i, ptr %arrayidx403.i, align 4
  br label %get_ingress_common_counters.exit

if.end38.i734.i:                                  ; preds = %for.cond.i705.1.i
  %call.i76.i732.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32607) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i76.i732.i)
  %cmp.not.i77.not.i733.i = icmp eq i16 %call.i76.i732.i, -1
  br i1 %cmp.not.i77.not.i733.i, label %if.end38.i734.i.get_ingress_common_counters.exit_crit_edge, label %for.cond.i722.i, !prof !29

if.end38.i734.i.get_ingress_common_counters.exit_crit_edge: ; preds = %if.end38.i734.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_ingress_common_counters.exit

get_ingress_common_counters.exit:                 ; preds = %if.end38.i734.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i722.1.i, %if.end38.i734.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i722.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i717.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i705.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i717.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i705.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i700.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i688.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i700.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i688.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i683.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i671.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i683.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i671.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i666.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i654.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i666.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i654.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i649.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i637.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i649.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i637.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i632.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i620.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i632.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i620.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i615.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i603.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i615.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i603.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i598.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i586.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i598.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i586.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i581.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i569.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i581.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i569.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i564.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i552.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i564.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i552.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i547.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i535.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i547.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i535.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i530.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i518.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i530.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i518.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i513.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i501.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i513.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i501.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i496.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i484.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i496.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i484.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i.1.i.get_ingress_common_counters.exit_crit_edge, %if.end38.i.1.i.get_ingress_common_counters.exit_crit_edge, %for.cond.i.i.get_ingress_common_counters.exit_crit_edge, %if.end.get_ingress_common_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.i722.1.i ], [ -62, %if.end38.i734.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i722.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i734.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i705.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i717.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i705.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i717.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i688.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i700.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i688.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i700.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i671.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i683.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i671.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i683.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i654.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i666.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i654.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i666.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i637.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i649.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i637.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i649.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i620.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i632.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i620.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i632.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i603.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i615.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i603.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i615.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i586.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i598.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i586.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i598.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i569.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i581.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i569.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i581.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i552.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i564.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i552.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i564.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i535.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i547.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i535.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i547.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i518.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i530.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i518.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i530.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i501.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i513.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i501.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i513.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i484.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i496.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i484.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i496.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i.1.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %for.cond.i.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end38.i.i.get_ingress_common_counters.exit_crit_edge ], [ -62, %if.end.get_ingress_common_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_ingress_common_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_ingress_common_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_clear_ingress_counters(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32754) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i)
  %cmp.not.i.not.i = icmp eq i16 %call.i.i, -1
  br i1 %cmp.not.i.not.i, label %if.end.clear_ingress_counters.exit_crit_edge, label %if.end.i, !prof !29

if.end.clear_ingress_counters.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %clear_ingress_counters.exit

if.end.i:                                         ; preds = %if.end
  %call.i102.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32750) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i102.i)
  %cmp.not.i103.not.i = icmp eq i16 %call.i102.i, -1
  br i1 %cmp.not.i103.not.i, label %if.end.i.clear_ingress_counters.exit_crit_edge, label %if.end12.i, !prof !29

if.end.i.clear_ingress_counters.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clear_ingress_counters.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear.i = and i16 %call.i.i, -129
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32754, i16 noundef zeroext %bf.clear.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32750, i16 noundef zeroext %call.i102.i) #4
  %bf.set35.i = or i16 %call.i.i, 128
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32754, i16 noundef zeroext %bf.set35.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32750, i16 noundef zeroext %call.i102.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32754, i16 noundef zeroext %bf.clear.i) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32750, i16 noundef zeroext %call.i102.i) #4
  br label %clear_ingress_counters.exit

clear_ingress_counters.exit:                      ; preds = %if.end12.i, %if.end.i.clear_ingress_counters.exit_crit_edge, %if.end.clear_ingress_counters.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -62, %if.end.clear_ingress_counters.exit_crit_edge ], [ -62, %if.end.i.clear_ingress_counters.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %clear_ingress_counters.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %clear_ingress_counters.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sa_expired(ptr noundef %hw, ptr nocapture noundef %expired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expired to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %expired, align 4
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20576) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i)
  %cmp.not.i.not.i = icmp eq i16 %call.i.i, -1
  br i1 %cmp.not.i.not.i, label %if.end.get_egress_sa_expired.exit_crit_edge, label %if.end.i, !prof !29

if.end.get_egress_sa_expired.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_expired.exit

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i16 %call.i.i to i32
  %2 = ptrtoint ptr %expired to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %expired, align 4
  %call.i20.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20577) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i20.i)
  %cmp.not.i21.not.i = icmp eq i16 %call.i20.i, -1
  br i1 %cmp.not.i21.not.i, label %if.end.i.get_egress_sa_expired.exit_crit_edge, label %if.end12.i, !prof !29

if.end.i.get_egress_sa_expired.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_expired.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv13.i = zext i16 %call.i20.i to i32
  %shl.i = shl nuw i32 %conv13.i, 16
  %3 = ptrtoint ptr %expired to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expired, align 4
  %or.i = or i32 %4, %shl.i
  store i32 %or.i, ptr %expired, align 4
  br label %get_egress_sa_expired.exit

get_egress_sa_expired.exit:                       ; preds = %if.end12.i, %if.end.i.get_egress_sa_expired.exit_crit_edge, %if.end.get_egress_sa_expired.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -62, %if.end.get_egress_sa_expired.exit_crit_edge ], [ -62, %if.end.i.get_egress_sa_expired.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sa_expired.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sa_expired.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_get_egress_sa_threshold_expired(ptr noundef %hw, ptr nocapture noundef %expired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expired to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %expired, align 4
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20578) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i)
  %cmp.not.i.not.i = icmp eq i16 %call.i.i, -1
  br i1 %cmp.not.i.not.i, label %if.end.get_egress_sa_threshold_expired.exit_crit_edge, label %if.end.i, !prof !29

if.end.get_egress_sa_threshold_expired.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_threshold_expired.exit

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i16 %call.i.i to i32
  %2 = ptrtoint ptr %expired to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %expired, align 4
  %call.i20.i = tail call zeroext i16 @aq_mdio_read_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20579) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i20.i)
  %cmp.not.i21.not.i = icmp eq i16 %call.i20.i, -1
  br i1 %cmp.not.i21.not.i, label %if.end.i.get_egress_sa_threshold_expired.exit_crit_edge, label %if.end12.i, !prof !29

if.end.i.get_egress_sa_threshold_expired.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_egress_sa_threshold_expired.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv13.i = zext i16 %call.i20.i to i32
  %shl.i = shl nuw i32 %conv13.i, 16
  %3 = ptrtoint ptr %expired to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expired, align 4
  %or.i = or i32 %4, %shl.i
  store i32 %or.i, ptr %expired, align 4
  br label %get_egress_sa_threshold_expired.exit

get_egress_sa_threshold_expired.exit:             ; preds = %if.end12.i, %if.end.i.get_egress_sa_threshold_expired.exit_crit_edge, %if.end.get_egress_sa_threshold_expired.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -62, %if.end.get_egress_sa_threshold_expired.exit_crit_edge ], [ -62, %if.end.i.get_egress_sa_threshold_expired.exit_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %get_egress_sa_threshold_expired.exit, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %get_egress_sa_threshold_expired.exit ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_sa_expired(ptr noundef %hw, i32 noundef %expired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.i = trunc i32 %expired to i16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20576, i16 noundef zeroext %conv.i) #4
  %shr.i = lshr i32 %expired, 16
  %conv3.i = trunc i32 %shr.i to i16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20577, i16 noundef zeroext %conv3.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %if.end, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_mss_set_egress_sa_threshold_expired(ptr noundef %hw, i32 noundef %expired) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call224.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call224.i)
  %cmp25.i = icmp eq i32 %call224.i, 1
  br i1 %cmp25.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 1
  br i1 %phi.cmp.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.do.end_crit_edge

if.then6.i.do.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #4
  %call2.i = tail call i32 @hw_atl_sem_mdio_get(ptr noundef %hw) #4
  %cmp.i = icmp eq i32 %call2.i, 1
  br i1 %cmp.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.false.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.i = trunc i32 %expired to i16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20578, i16 noundef zeroext %conv.i) #4
  %shr.i = lshr i32 %expired, 16
  %conv3.i = trunc i32 %shr.i to i16
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20579, i16 noundef zeroext %conv3.i) #4
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %hw, i32 noundef 1, i32 noundef 0) #4
  br label %do.end

do.end:                                           ; preds = %if.end, %if.then6.i.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -110, %if.then6.i.do.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_sem_mdio_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_raw_ingress_record(ptr noundef %hw, ptr nocapture noundef readonly %packed_record, i8 noundef zeroext %num_words, i8 noundef zeroext %table_id, i16 noundef zeroext %table_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_words to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_words)
  %cmp1.not = icmp eq i8 %num_words, 0
  br i1 %cmp1.not, label %entry.for.body14.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.preheader

for.cond11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %num_words)
  %cmp123 = icmp ult i8 %num_words, 24
  br i1 %cmp123, label %for.cond11.preheader.for.body14.preheader_crit_edge, label %for.cond11.preheader.for.end24_crit_edge

for.cond11.preheader.for.end24_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end24

for.cond11.preheader.for.body14.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %for.cond11.preheader.for.body14.preheader_crit_edge, %entry.for.body14.preheader_crit_edge
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = trunc i32 %i.02 to i16
  %conv2 = add i16 %0, -32608
  %arrayidx = getelementptr i16, ptr %packed_record, i32 %i.02
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv2, i16 noundef zeroext %2) #4
  %conv5 = add i16 %0, -32607
  %add6 = or i32 %i.02, 1
  %arrayidx7 = getelementptr i16, ptr %packed_record, i32 %add6
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx7, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv5, i16 noundef zeroext %4) #4
  %add9 = add nuw nsw i32 %i.02, 2
  %cmp = icmp ult i32 %add9, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond11.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.14 = phi i32 [ %add23, %for.body14.for.body14_crit_edge ], [ %conv, %for.body14.preheader ]
  %5 = trunc i32 %i.14 to i16
  %conv16 = add nuw nsw i16 %5, -32608
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv16, i16 noundef zeroext 0) #4
  %conv20 = add nuw nsw i16 %5, -32607
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv20, i16 noundef zeroext 0) #4
  %add23 = add nuw nsw i32 %i.14, 2
  %cmp12 = icmp ult i32 %i.14, 22
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end24_crit_edge

for.body14.for.end24_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end24

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14

for.end24:                                        ; preds = %for.body14.for.end24_crit_edge, %for.cond11.preheader.for.end24_crit_edge
  %bf.shl = shl i16 %table_index, 7
  %6 = and i8 %table_id, 15
  %7 = or i8 %6, 112
  %bf.clear29 = zext i8 %7 to i16
  %bf.set30 = or i16 %bf.shl, %bf.clear29
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32640, i16 noundef zeroext %bf.set30) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext -32639, i16 noundef zeroext -3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_mdio_write_word(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_glb_cpu_sem_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @aq_mdio_read_word(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_raw_egress_record(ptr noundef %hw, ptr nocapture noundef readonly %packed_record, i8 noundef zeroext %num_words, i8 noundef zeroext %table_id, i16 noundef zeroext %table_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_words to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_words)
  %cmp1.not = icmp eq i8 %num_words, 0
  br i1 %cmp1.not, label %entry.for.body14.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.preheader

for.cond11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %num_words)
  %cmp123 = icmp ult i8 %num_words, 28
  br i1 %cmp123, label %for.cond11.preheader.for.body14.preheader_crit_edge, label %for.cond11.preheader.for.end24_crit_edge

for.cond11.preheader.for.end24_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end24

for.cond11.preheader.for.body14.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %for.cond11.preheader.for.body14.preheader_crit_edge, %entry.for.body14.preheader_crit_edge
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = trunc i32 %i.02 to i16
  %conv2 = add i16 %0, 20640
  %arrayidx = getelementptr i16, ptr %packed_record, i32 %i.02
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv2, i16 noundef zeroext %2) #4
  %conv5 = add i16 %0, 20641
  %add6 = or i32 %i.02, 1
  %arrayidx7 = getelementptr i16, ptr %packed_record, i32 %add6
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx7, align 2
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv5, i16 noundef zeroext %4) #4
  %add9 = add nuw nsw i32 %i.02, 2
  %cmp = icmp ult i32 %add9, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond11.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.14 = phi i32 [ %add23, %for.body14.for.body14_crit_edge ], [ %conv, %for.body14.preheader ]
  %5 = trunc i32 %i.14 to i16
  %conv16 = add nuw nsw i16 %5, 20640
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv16, i16 noundef zeroext 0) #4
  %conv20 = add nuw nsw i16 %5, 20641
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext %conv20, i16 noundef zeroext 0) #4
  %add23 = add nuw nsw i32 %i.14, 2
  %cmp12 = icmp ult i32 %i.14, 26
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end24_crit_edge

for.body14.for.end24_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end24

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14

for.end24:                                        ; preds = %for.body14.for.end24_crit_edge, %for.cond11.preheader.for.end24_crit_edge
  %bf.shl = shl i16 %table_index, 7
  %6 = and i8 %table_id, 15
  %7 = or i8 %6, 112
  %bf.clear29 = zext i8 %7 to i16
  %bf.set30 = or i16 %bf.shl, %bf.clear29
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20608, i16 noundef zeroext %bf.set30) #4
  tail call void @aq_mdio_write_word(ptr noundef %hw, i16 noundef zeroext 30, i16 noundef zeroext 20609, i16 noundef zeroext -3) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 443, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.aq_mss_set_ingress_preclass_record, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 604, i32 2}
!7 = !{ptr @__func__.aq_mss_set_ingress_sc_record, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 702, i32 2}
!10 = !{ptr @__func__.aq_mss_set_ingress_sa_record, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 804, i32 2}
!13 = !{ptr @__func__.aq_mss_set_ingress_sakey_record, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 1656, i32 2}
!16 = !{ptr @__func__.aq_mss_set_egress_sa_record, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/aquantia/atlantic/macsec/macsec_api.c", i32 1759, i32 2}
!19 = !{ptr @__func__.aq_mss_set_egress_sakey_record, !18, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
