; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.mlxfw_mfa2_tlv = type { i8, i8, i16, [0 x i8] }
%struct.mlxfw_mfa2_tlv_multi = type { i16, i16 }

@mlxfw_mfa2_tlv_multi_child_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013MFA2: TLV parsing error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlxfw_mfa2_tlv_multi_child_find\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c\00", [37 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_tlv_multi_child_find._entry_ptr = internal global ptr @mlxfw_mfa2_tlv_multi_child_find._entry, section ".printk_index", align 4
@mlxfw_mfa2_tlv_multi_child_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlxfw_mfa2_tlv_multi_child_count\00", [63 x i8] zeroinitializer }, align 32
@mlxfw_mfa2_tlv_multi_child_count._entry_ptr = internal global ptr @mlxfw_mfa2_tlv_multi_child_count._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 65, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 86, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mlxfw_mfa2_tlv_multi_child_count._entry, ptr @mlxfw_mfa2_tlv_multi_child_count._entry_ptr, ptr @mlxfw_mfa2_tlv_multi_child_find._entry, ptr @mlxfw_mfa2_tlv_multi_child_find._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_tlv_multi_child_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxfw_mfa2_tlv_multi_child_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxfw_mfa2_tlv_multi_child(ptr nocapture noundef readonly %mfa2_file, ptr noundef readnone %multi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %multi, i32 4
  %0 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfa2_file, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ult ptr %3, %add.ptr
  br i1 %cmp.i.i, label %mlxfw_mfa2_valid_ptr.exit.i, label %entry.mlxfw_mfa2_tlv_get.exit_crit_edge

entry.mlxfw_mfa2_tlv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_valid_ptr.exit.i:                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr
  br i1 %cmp4.i.i, label %lor.lhs.false.i, label %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

lor.lhs.false.i:                                  ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  %add.ptr.i = getelementptr i8, ptr %multi, i32 8
  %cmp.i6.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp.i6.i, label %mlxfw_mfa2_valid_ptr.exit10.i, label %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge

lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_valid_ptr.exit10.i:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i = icmp ugt ptr %add.ptr.i.i, %add.ptr.i
  %spec.select.i = select i1 %cmp4.i8.i, ptr %add.ptr, ptr null
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_tlv_get.exit:                          ; preds = %mlxfw_mfa2_valid_ptr.exit10.i, %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge, %entry.mlxfw_mfa2_tlv_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ null, %entry.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ null, %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ %spec.select.i, %mlxfw_mfa2_valid_ptr.exit10.i ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxfw_mfa2_tlv_next(ptr nocapture noundef readonly %mfa2_file, ptr noundef readonly %tlv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %len, align 1
  %sub = add i16 %1, 7
  %type = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %7, %tlv
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %if.then.mlxfw_mfa2_tlv_multi_get.exit_crit_edge

if.then.mlxfw_mfa2_tlv_multi_get.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %if.then
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %9
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %tlv
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %tlv, i32 %conv.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -1
  %cmp.i2.i.i = icmp ult ptr %7, %add.ptr1.i.i
  %cmp4.i4.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr1.i.i
  %or.cond.i = select i1 %cmp.i2.i.i, i1 %cmp4.i4.i.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true16.i.i, label %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge

lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit

land.lhs.true16.i.i:                              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp19.not.i.i = icmp eq i16 %1, 4
  %data.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv, i32 0, i32 3
  %spec.select.i.i = select i1 %cmp19.not.i.i, ptr %data.i.i, ptr null
  br label %mlxfw_mfa2_tlv_multi_get.exit

mlxfw_mfa2_tlv_multi_get.exit:                    ; preds = %land.lhs.true16.i.i, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge, %if.then.mlxfw_mfa2_tlv_multi_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true16.i.i ], [ null, %if.then.mlxfw_mfa2_tlv_multi_get.exit_crit_edge ], [ null, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_get.exit_crit_edge ]
  %total_len = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %total_len to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %total_len, align 1
  %add7 = or i16 %sub, 3
  %sub9 = add i16 %add7, %11
  br label %if.end

if.end:                                           ; preds = %mlxfw_mfa2_tlv_multi_get.exit, %entry.if.end_crit_edge
  %tlv_len.0.in = phi i16 [ %sub9, %mlxfw_mfa2_tlv_multi_get.exit ], [ %sub, %entry.if.end_crit_edge ]
  %tlv_len.0 = and i16 %tlv_len.0.in, -4
  %conv12 = zext i16 %tlv_len.0 to i32
  %add.ptr = getelementptr i8, ptr %tlv, i32 %conv12
  %12 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mfa2_file, align 4
  %data.i.i19 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i19, align 4
  %cmp.i.i = icmp ult ptr %15, %add.ptr
  br i1 %cmp.i.i, label %mlxfw_mfa2_valid_ptr.exit.i, label %if.end.mlxfw_mfa2_tlv_get.exit_crit_edge

if.end.mlxfw_mfa2_tlv_get.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_valid_ptr.exit.i:                      ; preds = %if.end
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %15, i32 %17
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i20, %add.ptr
  br i1 %cmp4.i.i, label %lor.lhs.false.i, label %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

lor.lhs.false.i:                                  ; preds = %mlxfw_mfa2_valid_ptr.exit.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %cmp.i6.i = icmp ult ptr %15, %add.ptr.i
  br i1 %cmp.i6.i, label %mlxfw_mfa2_valid_ptr.exit10.i, label %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge

lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_valid_ptr.exit10.i:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i = icmp ugt ptr %add.ptr.i.i20, %add.ptr.i
  %spec.select.i = select i1 %cmp4.i8.i, ptr %add.ptr, ptr null
  br label %mlxfw_mfa2_tlv_get.exit

mlxfw_mfa2_tlv_get.exit:                          ; preds = %mlxfw_mfa2_valid_ptr.exit10.i, %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge, %if.end.mlxfw_mfa2_tlv_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ null, %if.end.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ null, %lor.lhs.false.i.mlxfw_mfa2_tlv_get.exit_crit_edge ], [ %spec.select.i, %mlxfw_mfa2_valid_ptr.exit10.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxfw_mfa2_tlv_advance(ptr nocapture noundef readonly %mfa2_file, ptr noundef readonly %from_tlv, i16 noundef zeroext %count) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %cmp7 = icmp eq i16 %count, 0
  %tobool.not8 = icmp eq ptr %from_tlv, null
  %or.cond9 = or i1 %cmp7, %tobool.not8
  br i1 %or.cond9, label %entry.cleanup_crit_edge, label %for.inc.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.lr.ph:                                    ; preds = %entry
  %0 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfa2_file, align 4
  %data.i.i19.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i19.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %mlxfw_mfa2_tlv_next.exit.for.inc_crit_edge, %for.inc.lr.ph
  %idx.013 = phi i16 [ 0, %for.inc.lr.ph ], [ %inc, %mlxfw_mfa2_tlv_next.exit.for.inc_crit_edge ]
  %tlv.010 = phi ptr [ %from_tlv, %for.inc.lr.ph ], [ %add.ptr.i, %mlxfw_mfa2_tlv_next.exit.for.inc_crit_edge ]
  %inc = add nuw i16 %idx.013, 1
  %len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.010, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len.i, align 1
  %sub.i = add i16 %5, 7
  %type.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.010, i32 0, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %for.inc.if.end.i_crit_edge

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.inc
  %8 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ult ptr %11, %tlv.010
  br i1 %cmp.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i, label %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_valid_ptr.exit.i.i.i:                  ; preds = %if.then.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 %13
  %cmp4.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %tlv.010
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

lor.lhs.false.i.i.i:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %tlv.010, i32 -1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i.i.i
  %cmp.i2.i.i.i = icmp ult ptr %11, %add.ptr1.i.i.i
  %cmp4.i4.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr1.i.i.i
  %or.cond.i.i = select i1 %cmp.i2.i.i.i, i1 %cmp4.i4.i.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true16.i.i.i, label %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

land.lhs.true16.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp19.not.i.i.i = icmp eq i16 %5, 4
  %data.i.i.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.010, i32 0, i32 3
  %spec.select.i.i.i = select i1 %cmp19.not.i.i.i, ptr %data.i.i.i, ptr null
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_tlv_multi_get.exit.i:                  ; preds = %land.lhs.true16.i.i.i, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true16.i.i.i ], [ null, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ]
  %total_len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, ptr %retval.0.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %total_len.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %total_len.i, align 1
  %add7.i = or i16 %sub.i, 3
  %sub9.i = add i16 %15, %add7.i
  br label %if.end.i

if.end.i:                                         ; preds = %mlxfw_mfa2_tlv_multi_get.exit.i, %for.inc.if.end.i_crit_edge
  %tlv_len.0.in.i = phi i16 [ %sub9.i, %mlxfw_mfa2_tlv_multi_get.exit.i ], [ %sub.i, %for.inc.if.end.i_crit_edge ]
  %tlv_len.0.i = and i16 %tlv_len.0.in.i, -4
  %conv12.i = zext i16 %tlv_len.0.i to i32
  %add.ptr.i = getelementptr i8, ptr %tlv.010, i32 %conv12.i
  %cmp.i.i.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %if.end.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %3, i32 %17
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge:  ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %cmp.i6.i.i = icmp ult ptr %3, %add.ptr.i.i
  br i1 %cmp.i6.i.i, label %mlxfw_mfa2_tlv_next.exit, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mlxfw_mfa2_tlv_next.exit:                         ; preds = %lor.lhs.false.i.i
  %cmp4.i8.i.i = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i.i
  %spec.select.i.i = select i1 %cmp4.i8.i.i, ptr %add.ptr.i, ptr null
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %count)
  %cmp = icmp uge i16 %inc, %count
  %tobool.not = icmp eq ptr %spec.select.i.i, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge, label %mlxfw_mfa2_tlv_next.exit.for.inc_crit_edge

mlxfw_mfa2_tlv_next.exit.for.inc_crit_edge:       ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge:       ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tlv.0.lcssa = phi ptr [ %from_tlv, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.cleanup_crit_edge ], [ %spec.select.i.i, %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge ]
  ret ptr %tlv.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxfw_mfa2_tlv_multi_child_find(ptr nocapture noundef readonly %mfa2_file, ptr noundef readonly %multi, i32 noundef %type, i16 noundef zeroext %index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %multi, i32 4
  %0 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %5
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr.i
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %multi, i32 8
  %cmp.i6.i.i = icmp ult ptr %3, %add.ptr.i.i
  br i1 %cmp.i6.i.i, label %mlxfw_mfa2_valid_ptr.exit10.i.i, label %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_valid_ptr.exit10.i.i:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr.i.i
  %spec.select.i.i = select i1 %cmp4.i8.i.i, ptr %add.ptr.i, ptr null
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_tlv_multi_child.exit:                  ; preds = %mlxfw_mfa2_valid_ptr.exit10.i.i, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge, %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ null, %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ null, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ %spec.select.i.i, %mlxfw_mfa2_valid_ptr.exit10.i.i ]
  %6 = ptrtoint ptr %multi to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %multi, align 1
  br label %for.body

for.body:                                         ; preds = %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge, %mlxfw_mfa2_tlv_multi_child.exit
  %idx.044 = phi i16 [ 0, %mlxfw_mfa2_tlv_multi_child.exit ], [ %inc16, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %skip.043 = phi i16 [ 0, %mlxfw_mfa2_tlv_multi_child.exit ], [ %skip.1, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %tlv.039 = phi ptr [ %retval.0.i.i, %mlxfw_mfa2_tlv_multi_child.exit ], [ %retval.0.i.i38, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %tlv.039, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type4 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.039, i32 0, i32 1
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type4, align 1
  %conv5 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %type)
  %cmp6 = icmp eq i32 %conv5, %type
  br i1 %cmp6, label %if.then8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then8:                                         ; preds = %if.end
  %inc = add i16 %skip.043, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %skip.043, i16 %index)
  %cmp11 = icmp eq i16 %skip.043, %index
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %skip.1 = phi i16 [ %inc, %if.then8.for.inc_crit_edge ], [ %skip.043, %if.end.for.inc_crit_edge ]
  %inc16 = add i16 %idx.044, 1
  %len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.039, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len.i, align 1
  %sub.i = add i16 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  br i1 %cmp.i, label %if.then.i, label %for.inc.if.end.i_crit_edge

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.inc
  %cmp.i.i.i.i = icmp ult ptr %3, %tlv.039
  br i1 %cmp.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i, label %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_valid_ptr.exit.i.i.i:                  ; preds = %if.then.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %13
  %cmp4.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %tlv.039
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

lor.lhs.false.i.i.i:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i26 = getelementptr i8, ptr %tlv.039, i32 -1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i26, i32 %conv.i.i.i
  %cmp.i2.i.i.i = icmp ult ptr %3, %add.ptr1.i.i.i
  %cmp4.i4.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr1.i.i.i
  %or.cond.i.i = select i1 %cmp.i2.i.i.i, i1 %cmp4.i4.i.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true16.i.i.i, label %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

land.lhs.true16.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp19.not.i.i.i = icmp eq i16 %11, 4
  %data.i.i.i27 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.039, i32 0, i32 3
  %spec.select.i.i.i = select i1 %cmp19.not.i.i.i, ptr %data.i.i.i27, ptr null
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_tlv_multi_get.exit.i:                  ; preds = %land.lhs.true16.i.i.i, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true16.i.i.i ], [ null, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ]
  %total_len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, ptr %retval.0.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %total_len.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %total_len.i, align 1
  %add7.i = or i16 %sub.i, 3
  %sub9.i = add i16 %15, %add7.i
  br label %if.end.i

if.end.i:                                         ; preds = %mlxfw_mfa2_tlv_multi_get.exit.i, %for.inc.if.end.i_crit_edge
  %tlv_len.0.in.i = phi i16 [ %sub9.i, %mlxfw_mfa2_tlv_multi_get.exit.i ], [ %sub.i, %for.inc.if.end.i_crit_edge ]
  %tlv_len.0.i = and i16 %tlv_len.0.in.i, -4
  %conv12.i = zext i16 %tlv_len.0.i to i32
  %add.ptr.i28 = getelementptr i8, ptr %tlv.039, i32 %conv12.i
  %cmp.i.i.i29 = icmp ult ptr %3, %add.ptr.i28
  br i1 %cmp.i.i.i29, label %mlxfw_mfa2_valid_ptr.exit.i.i31, label %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge

if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_valid_ptr.exit.i.i31:                  ; preds = %if.end.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %3, i32 %17
  %cmp4.i.i.i30 = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i28
  br i1 %cmp4.i.i.i30, label %lor.lhs.false.i.i34, label %mlxfw_mfa2_valid_ptr.exit.i.i31.mlxfw_mfa2_tlv_next.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i31.mlxfw_mfa2_tlv_next.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

lor.lhs.false.i.i34:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i31
  %add.ptr.i.i32 = getelementptr i8, ptr %add.ptr.i28, i32 4
  %cmp.i6.i.i33 = icmp ult ptr %3, %add.ptr.i.i32
  br i1 %cmp.i6.i.i33, label %mlxfw_mfa2_valid_ptr.exit10.i.i37, label %lor.lhs.false.i.i34.mlxfw_mfa2_tlv_next.exit_crit_edge

lor.lhs.false.i.i34.mlxfw_mfa2_tlv_next.exit_crit_edge: ; preds = %lor.lhs.false.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_valid_ptr.exit10.i.i37:                ; preds = %lor.lhs.false.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i.i35 = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i.i32
  %spec.select.i.i36 = select i1 %cmp4.i8.i.i35, ptr %add.ptr.i28, ptr null
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_tlv_next.exit:                         ; preds = %mlxfw_mfa2_valid_ptr.exit10.i.i37, %lor.lhs.false.i.i34.mlxfw_mfa2_tlv_next.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i31.mlxfw_mfa2_tlv_next.exit_crit_edge, %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge
  %retval.0.i.i38 = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i31.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ null, %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ null, %lor.lhs.false.i.i34.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ %spec.select.i.i36, %mlxfw_mfa2_valid_ptr.exit10.i.i37 ]
  %cmp.not = icmp ult i16 %7, %inc16
  br i1 %cmp.not, label %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge, label %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge

mlxfw_mfa2_tlv_next.exit.for.body_crit_edge:      ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge:       ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %mlxfw_mfa2_tlv_next.exit.cleanup_crit_edge ], [ %tlv.039, %if.then8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxfw_mfa2_tlv_multi_child_count(ptr nocapture noundef readonly %mfa2_file, ptr noundef readonly %multi, i32 noundef %type, ptr nocapture noundef writeonly %p_count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %multi, i32 4
  %0 = ptrtoint ptr %mfa2_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfa2_file, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i, label %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_valid_ptr.exit.i.i:                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %5
  %cmp4.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr.i
  br i1 %cmp4.i.i.i, label %lor.lhs.false.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

lor.lhs.false.i.i:                                ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %multi, i32 8
  %cmp.i6.i.i = icmp ult ptr %3, %add.ptr.i.i
  br i1 %cmp.i6.i.i, label %mlxfw_mfa2_valid_ptr.exit10.i.i, label %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge

lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_valid_ptr.exit10.i.i:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i.i = icmp ugt ptr %add.ptr.i.i.i, %add.ptr.i.i
  %spec.select.i.i = select i1 %cmp4.i8.i.i, ptr %add.ptr.i, ptr null
  br label %mlxfw_mfa2_tlv_multi_child.exit

mlxfw_mfa2_tlv_multi_child.exit:                  ; preds = %mlxfw_mfa2_valid_ptr.exit10.i.i, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge, %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ null, %entry.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ null, %lor.lhs.false.i.i.mlxfw_mfa2_tlv_multi_child.exit_crit_edge ], [ %spec.select.i.i, %mlxfw_mfa2_valid_ptr.exit10.i.i ]
  %6 = ptrtoint ptr %multi to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %multi, align 1
  br label %for.body

for.body:                                         ; preds = %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge, %mlxfw_mfa2_tlv_multi_child.exit
  %idx.038 = phi i16 [ 0, %mlxfw_mfa2_tlv_multi_child.exit ], [ %inc10, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %count.037 = phi i16 [ 0, %mlxfw_mfa2_tlv_multi_child.exit ], [ %spec.select, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %tlv.034 = phi ptr [ %retval.0.i.i, %mlxfw_mfa2_tlv_multi_child.exit ], [ %retval.0.i.i32, %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %tlv.034, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %type4 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.034, i32 0, i32 1
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type4, align 1
  %conv5 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %type)
  %cmp6 = icmp eq i32 %conv5, %type
  %inc = zext i1 %cmp6 to i16
  %spec.select = add i16 %count.037, %inc
  %inc10 = add i16 %idx.038, 1
  %len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.034, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len.i, align 1
  %sub.i = add i16 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %cmp.i.i.i.i = icmp ult ptr %3, %tlv.034
  br i1 %cmp.i.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i, label %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_valid_ptr.exit.i.i.i:                  ; preds = %if.then.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %13
  %cmp4.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %tlv.034
  br i1 %cmp4.i.i.i.i, label %lor.lhs.false.i.i.i, label %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

lor.lhs.false.i.i.i:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i.i
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i20 = getelementptr i8, ptr %tlv.034, i32 -1
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i20, i32 %conv.i.i.i
  %cmp.i2.i.i.i = icmp ult ptr %3, %add.ptr1.i.i.i
  %cmp4.i4.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr1.i.i.i
  %or.cond.i.i = select i1 %cmp.i2.i.i.i, i1 %cmp4.i4.i.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true16.i.i.i, label %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge

lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

land.lhs.true16.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp19.not.i.i.i = icmp eq i16 %11, 4
  %data.i.i.i21 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, ptr %tlv.034, i32 0, i32 3
  %spec.select.i.i.i = select i1 %cmp19.not.i.i.i, ptr %data.i.i.i21, ptr null
  br label %mlxfw_mfa2_tlv_multi_get.exit.i

mlxfw_mfa2_tlv_multi_get.exit.i:                  ; preds = %land.lhs.true16.i.i.i, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true16.i.i.i ], [ null, %if.then.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.i.mlxfw_mfa2_tlv_multi_get.exit.i_crit_edge ]
  %total_len.i = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, ptr %retval.0.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %total_len.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %total_len.i, align 1
  %add7.i = or i16 %sub.i, 3
  %sub9.i = add i16 %15, %add7.i
  br label %if.end.i

if.end.i:                                         ; preds = %mlxfw_mfa2_tlv_multi_get.exit.i, %if.end.if.end.i_crit_edge
  %tlv_len.0.in.i = phi i16 [ %sub9.i, %mlxfw_mfa2_tlv_multi_get.exit.i ], [ %sub.i, %if.end.if.end.i_crit_edge ]
  %tlv_len.0.i = and i16 %tlv_len.0.in.i, -4
  %conv12.i = zext i16 %tlv_len.0.i to i32
  %add.ptr.i22 = getelementptr i8, ptr %tlv.034, i32 %conv12.i
  %cmp.i.i.i23 = icmp ult ptr %3, %add.ptr.i22
  br i1 %cmp.i.i.i23, label %mlxfw_mfa2_valid_ptr.exit.i.i25, label %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge

if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_valid_ptr.exit.i.i25:                  ; preds = %if.end.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %3, i32 %17
  %cmp4.i.i.i24 = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i22
  br i1 %cmp4.i.i.i24, label %lor.lhs.false.i.i28, label %mlxfw_mfa2_valid_ptr.exit.i.i25.mlxfw_mfa2_tlv_next.exit_crit_edge

mlxfw_mfa2_valid_ptr.exit.i.i25.mlxfw_mfa2_tlv_next.exit_crit_edge: ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

lor.lhs.false.i.i28:                              ; preds = %mlxfw_mfa2_valid_ptr.exit.i.i25
  %add.ptr.i.i26 = getelementptr i8, ptr %add.ptr.i22, i32 4
  %cmp.i6.i.i27 = icmp ult ptr %3, %add.ptr.i.i26
  br i1 %cmp.i6.i.i27, label %mlxfw_mfa2_valid_ptr.exit10.i.i31, label %lor.lhs.false.i.i28.mlxfw_mfa2_tlv_next.exit_crit_edge

lor.lhs.false.i.i28.mlxfw_mfa2_tlv_next.exit_crit_edge: ; preds = %lor.lhs.false.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_valid_ptr.exit10.i.i31:                ; preds = %lor.lhs.false.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  %cmp4.i8.i.i29 = icmp ugt ptr %add.ptr.i.i20.i, %add.ptr.i.i26
  %spec.select.i.i30 = select i1 %cmp4.i8.i.i29, ptr %add.ptr.i22, ptr null
  br label %mlxfw_mfa2_tlv_next.exit

mlxfw_mfa2_tlv_next.exit:                         ; preds = %mlxfw_mfa2_valid_ptr.exit10.i.i31, %lor.lhs.false.i.i28.mlxfw_mfa2_tlv_next.exit_crit_edge, %mlxfw_mfa2_valid_ptr.exit.i.i25.mlxfw_mfa2_tlv_next.exit_crit_edge, %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge
  %retval.0.i.i32 = phi ptr [ null, %mlxfw_mfa2_valid_ptr.exit.i.i25.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ null, %if.end.i.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ null, %lor.lhs.false.i.i28.mlxfw_mfa2_tlv_next.exit_crit_edge ], [ %spec.select.i.i30, %mlxfw_mfa2_valid_ptr.exit10.i.i31 ]
  %cmp.not = icmp ult i16 %7, %inc10
  br i1 %cmp.not, label %for.end, label %mlxfw_mfa2_tlv_next.exit.for.body_crit_edge

mlxfw_mfa2_tlv_next.exit.for.body_crit_edge:      ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %mlxfw_mfa2_tlv_next.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %p_count to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %spec.select, ptr %p_count, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c", i32 65, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlxfw_mfa2_tlv_multi_child_find._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mlxfw_mfa2_tlv_multi_child_find._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c", i32 86, i32 4}
!8 = !{ptr @mlxfw_mfa2_tlv_multi_child_count._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlxfw_mfa2_tlv_multi_child_count._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
