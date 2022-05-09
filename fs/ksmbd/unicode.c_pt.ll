; ModuleID = '/llk/IR_all_yes/fs/ksmbd/unicode.c_pt.bc'
source_filename = "../fs/ksmbd/unicode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.UniCaseRange = type { i16, i16, ptr }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@SmbUniUpperTable = dso_local global { [512 x i8], [128 x i8] } { [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\E0\E0\E0\E0\E0\E0\E0y\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\FF\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\FF\00\FF\00\FF\00\00\FF\00\00\00\00\FF\00\00\FF\00\00\00\FF\00\FF\00\00\FF\00\00\00\FF\00\00\00\00\00\00\00\FF\FE\00\FF\FE\00\FF\FE\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\B1\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\FE\00\FF\00\00\00\FF\00\FF\00\FF\00\FF", [128 x i8] zeroinitializer }, align 32
@UniCaseRangeU03a0 = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\DA\DB\DB\DB\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E1\E0\E0\E0\E0\E0\E0\E0\E0\E0\C0\C1\C1", [49 x i8] zeroinitializer }, align 32
@UniCaseRangeU0430 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\00\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\00\B0\B0", [48 x i8] zeroinitializer }, align 32
@UniCaseRangeU0490 = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\00\00\FF\00\00\00\FF", [35 x i8] zeroinitializer }, align 32
@UniCaseRangeUff40 = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\00\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0", [37 x i8] zeroinitializer }, align 32
@SmbUniUpperRange = dso_local constant { [6 x %struct.UniCaseRange], [48 x i8] } { [6 x %struct.UniCaseRange] [%struct.UniCaseRange { i16 928, i16 974, ptr @UniCaseRangeU03a0 }, %struct.UniCaseRange { i16 1072, i16 1119, ptr @UniCaseRangeU0430 }, %struct.UniCaseRange { i16 1168, i16 1228, ptr @UniCaseRangeU0490 }, %struct.UniCaseRange { i16 7680, i16 8188, ptr @UniCaseRangeU1e00 }, %struct.UniCaseRange { i16 -192, i16 -166, ptr @UniCaseRangeUff40 }, %struct.UniCaseRange zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@UniCaseRangeU1e00 = internal global { <{ [500 x i8], [9 x i8] }>, [99 x i8] } { <{ [500 x i8], [9 x i8] }> <{ [500 x i8] c"\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\C5\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\00\00\00\00\00\00\00\00\00\00\00\08\00\08\00\08\00\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00JJVVVVdd\00\00pp~~\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\00\00\00\00\00\00\00\00\08\08\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [9 x i8] zeroinitializer }>, [99 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 42, i64 58, i64 60, i64 62, i64 63, i64 124]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"SmbUniUpperTable\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 16, i32 13 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU03a0\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 56, i32 20 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0430\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 65, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU0490\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 75, i32 20 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"UniCaseRangeUff40\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 120, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"SmbUniUpperRange\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 129, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [22 x i8] c"../fs/ksmbd/unicode.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 220, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"UniCaseRangeU1e00\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"../fs/ksmbd/uniupr.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 83, i32 20 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @SmbUniUpperTable, ptr @UniCaseRangeU03a0, ptr @UniCaseRangeU0430, ptr @UniCaseRangeU0490, ptr @UniCaseRangeUff40, ptr @SmbUniUpperRange, ptr @.str, ptr @UniCaseRangeU1e00], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SmbUniUpperTable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU03a0 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0430 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU0490 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeUff40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SmbUniUpperRange to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UniCaseRangeU1e00 to i32), i32 509, i32 608, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb_strtoUTF16(ptr noundef %to, ptr noundef %from, i32 noundef %len, ptr nocapture noundef readonly %codepage) local_unnamed_addr #0 align 64 {
entry:
  %wchar_to = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wchar_to) #6
  %0 = ptrtoint ptr %wchar_to to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %wchar_to, align 2, !annotation !25
  %1 = ptrtoint ptr %codepage to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %codepage, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @utf8s_to_utf16s(ptr noundef %from, i32 noundef %len, i32 noundef 1, ptr noundef %to, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then.success_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.success_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp428 = icmp sgt i32 %len, 0
  br i1 %cmp428, label %land.rhs.lr.ph, label %if.end3.success_crit_edge

if.end3.success_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

land.rhs.lr.ph:                                   ; preds = %if.end3
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end10.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.031 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end10.land.rhs_crit_edge ]
  %from.addr.030 = phi ptr [ %from, %land.rhs.lr.ph ], [ %add.ptr, %if.end10.land.rhs_crit_edge ]
  %len.addr.029 = phi i32 [ %len, %land.rhs.lr.ph ], [ %sub, %if.end10.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %from.addr.030 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %from.addr.030, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.rhs.success_crit_edge, label %for.body

land.rhs.success_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

for.body:                                         ; preds = %land.rhs
  %5 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %char2uni, align 4
  %call6 = call i32 %6(ptr noundef %from.addr.030, i32 noundef %len.addr.029, ptr noundef nonnull %wchar_to) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then9, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %wchar_to to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 63, ptr %wchar_to, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body.if.end10_crit_edge
  %charlen.0 = phi i32 [ 1, %if.then9 ], [ %call6, %for.body.if.end10_crit_edge ]
  %8 = ptrtoint ptr %wchar_to to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wchar_to, align 2
  %arrayidx = getelementptr i16, ptr %to, i32 %i.031
  %10 = call i16 @llvm.bswap.i16(i16 %9) #6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %arrayidx, align 1
  %inc = add i32 %i.031, 1
  %add.ptr = getelementptr i8, ptr %from.addr.030, i32 %charlen.0
  %sub = sub nsw i32 %len.addr.029, %charlen.0
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %if.end10.land.rhs_crit_edge, label %if.end10.success_crit_edge

if.end10.success_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %success

if.end10.land.rhs_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

success:                                          ; preds = %if.end10.success_crit_edge, %land.rhs.success_crit_edge, %if.end3.success_crit_edge, %if.then.success_crit_edge
  %i.1 = phi i32 [ %call1, %if.then.success_crit_edge ], [ 0, %if.end3.success_crit_edge ], [ %inc, %if.end10.success_crit_edge ], [ %i.031, %land.rhs.success_crit_edge ]
  %arrayidx11 = getelementptr i16, ptr %to, i32 %i.1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %arrayidx11, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wchar_to) #6
  ret i32 %i.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smb_strndup_from_utf16(ptr noundef %src, i32 noundef %maxlen, i1 noundef zeroext %is_unicode, ptr nocapture noundef readonly %codepage) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca [6 x i8], align 1
  %tmp.i68 = alloca [6 x i8], align 1
  %tmp.i66 = alloca [6 x i8], align 1
  %tmp.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_unicode, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div.i = sdiv i32 %maxlen, 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxlen)
  %cmp15.i = icmp sgt i32 %maxlen, 1
  %0 = call ptr @memset(ptr %tmp.i, i32 255, i32 6)
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then.smb_utf16_bytes.exit_crit_edge

if.then.smb_utf16_bytes.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_utf16_bytes.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i65.for.body.i_crit_edge, %for.body.lr.ph.i
  %outlen.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %outlen.1.i, %if.end.i65.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %if.end.i65.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %src, i32 %i.016.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp1.i = icmp eq i16 %2, 0
  br i1 %cmp1.i, label %for.body.i.smb_utf16_bytes.exit_crit_edge, label %if.end.i65

for.body.i.smb_utf16_bytes.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_utf16_bytes.exit

if.end.i65:                                       ; preds = %for.body.i
  %3 = call i16 @llvm.bswap.i16(i16 %2) #6
  %4 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni2char.i, align 4
  %call3.i = call i32 %5(i16 noundef zeroext %3, ptr noundef nonnull %tmp.i, i32 noundef 6) #6
  %6 = call i32 @llvm.smax.i32(i32 %call3.i, i32 1) #6
  %outlen.1.i = add i32 %6, %outlen.017.i
  %inc8.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc8.i, %div.i
  br i1 %exitcond.not.i, label %if.end.i65.smb_utf16_bytes.exit_crit_edge, label %if.end.i65.for.body.i_crit_edge

if.end.i65.for.body.i_crit_edge:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i65.smb_utf16_bytes.exit_crit_edge:        ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_utf16_bytes.exit

smb_utf16_bytes.exit:                             ; preds = %if.end.i65.smb_utf16_bytes.exit_crit_edge, %for.body.i.smb_utf16_bytes.exit_crit_edge, %if.then.smb_utf16_bytes.exit_crit_edge
  %outlen.0.lcssa.i = phi i32 [ 0, %if.then.smb_utf16_bytes.exit_crit_edge ], [ %outlen.1.i, %if.end.i65.smb_utf16_bytes.exit_crit_edge ], [ %outlen.017.i, %for.body.i.smb_utf16_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i66) #6
  %uni2char.i67 = getelementptr inbounds %struct.nls_table, ptr %codepage, i32 0, i32 2
  %7 = call ptr @memset(ptr %tmp.i66, i32 255, i32 6)
  %8 = ptrtoint ptr %uni2char.i67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uni2char.i67, align 4
  %call.i = call i32 %9(i16 noundef zeroext 0, ptr noundef nonnull %tmp.i66, i32 noundef 6) #6
  %10 = call i32 @llvm.smax.i32(i32 %call.i, i32 1) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i66) #6
  %add = add i32 %10, %outlen.0.lcssa.i
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %smb_utf16_bytes.exit.cleanup_crit_edge, label %if.end

smb_utf16_bytes.exit.cleanup_crit_edge:           ; preds = %smb_utf16_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %smb_utf16_bytes.exit
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i.i) #6
  %11 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 6)
  %12 = ptrtoint ptr %uni2char.i67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uni2char.i67, align 4
  %call.i.i = call i32 %13(i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 6) #6
  %14 = call i32 @llvm.smax.i32(i32 %call.i.i, i32 1) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i68) #6
  %add.neg.i = add i32 %add, -6
  %sub.i = sub i32 %add.neg.i, %14
  %15 = call ptr @memset(ptr %tmp.i68, i32 255, i32 6)
  br i1 %cmp15.i, label %for.body.lr.ph.i70, label %if.end.smb_from_utf16.exit_crit_edge

if.end.smb_from_utf16.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_from_utf16.exit

for.body.lr.ph.i70:                               ; preds = %if.end
  %sub9.i = sub i32 %add, %14
  br label %for.body.i72

for.body.i72:                                     ; preds = %cifs_mapchar.exit8.i.for.body.i72_crit_edge, %for.body.lr.ph.i70
  %outlen.011.i = phi i32 [ 0, %for.body.lr.ph.i70 ], [ %add18.i, %cifs_mapchar.exit8.i.for.body.i72_crit_edge ]
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i70 ], [ %inc.i, %cifs_mapchar.exit8.i.for.body.i72_crit_edge ]
  %arrayidx.i71 = getelementptr i16, ptr %src, i32 %i.010.i
  %16 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx.i71, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp2.i = icmp eq i16 %17, 0
  br i1 %cmp2.i, label %for.body.i72.smb_from_utf16.exit_crit_edge, label %if.end.i73

for.body.i72.smb_from_utf16.exit_crit_edge:       ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_from_utf16.exit

if.end.i73:                                       ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_cmp4(i32 %outlen.011.i, i32 %sub.i)
  %cmp4.not.i = icmp slt i32 %outlen.011.i, %sub.i
  br i1 %cmp4.not.i, label %if.end.i73.if.end14.i_crit_edge, label %if.then6.i

if.end.i73.if.end14.i_crit_edge:                  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end.i73
  %19 = ptrtoint ptr %uni2char.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uni2char.i67, align 4
  %call.i2.i = call i32 %20(i16 noundef zeroext %18, ptr noundef nonnull %tmp.i68, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i2.i)
  %cmp.i.i74 = icmp slt i32 %call.i2.i, 1
  br i1 %cmp.i.i74, label %if.then7.i.i, label %if.then6.i.cifs_mapchar.exit.i_crit_edge

if.then6.i.cifs_mapchar.exit.i_crit_edge:         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cifs_mapchar.exit.i

if.then7.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 63, ptr %tmp.i68, align 1
  br label %cifs_mapchar.exit.i

cifs_mapchar.exit.i:                              ; preds = %if.then7.i.i, %if.then6.i.cifs_mapchar.exit.i_crit_edge
  %len.0.i.i = phi i32 [ 1, %if.then7.i.i ], [ %call.i2.i, %if.then6.i.cifs_mapchar.exit.i_crit_edge ]
  %add8.i = add i32 %len.0.i.i, %outlen.011.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %sub9.i)
  %cmp10.i = icmp sgt i32 %add8.i, %sub9.i
  br i1 %cmp10.i, label %cifs_mapchar.exit.i.smb_from_utf16.exit_crit_edge, label %cifs_mapchar.exit.i.if.end14.i_crit_edge

cifs_mapchar.exit.i.if.end14.i_crit_edge:         ; preds = %cifs_mapchar.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

cifs_mapchar.exit.i.smb_from_utf16.exit_crit_edge: ; preds = %cifs_mapchar.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_from_utf16.exit

if.end14.i:                                       ; preds = %cifs_mapchar.exit.i.if.end14.i_crit_edge, %if.end.i73.if.end14.i_crit_edge
  %arrayidx15.i = getelementptr i8, ptr %call9.i, i32 %outlen.011.i
  %22 = ptrtoint ptr %uni2char.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uni2char.i67, align 4
  %call.i4.i = call i32 %23(i16 noundef zeroext %18, ptr noundef %arrayidx15.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 1
  br i1 %cmp.i5.i, label %if.then7.i7.i, label %if.end14.i.cifs_mapchar.exit8.i_crit_edge

if.end14.i.cifs_mapchar.exit8.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cifs_mapchar.exit8.i

if.then7.i7.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 63, ptr %arrayidx15.i, align 1
  br label %cifs_mapchar.exit8.i

cifs_mapchar.exit8.i:                             ; preds = %if.then7.i7.i, %if.end14.i.cifs_mapchar.exit8.i_crit_edge
  %len.0.i6.i = phi i32 [ 1, %if.then7.i7.i ], [ %call.i4.i, %if.end14.i.cifs_mapchar.exit8.i_crit_edge ]
  %add18.i = add i32 %len.0.i6.i, %outlen.011.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i75, label %cifs_mapchar.exit8.i.smb_from_utf16.exit_crit_edge, label %cifs_mapchar.exit8.i.for.body.i72_crit_edge

cifs_mapchar.exit8.i.for.body.i72_crit_edge:      ; preds = %cifs_mapchar.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i72

cifs_mapchar.exit8.i.smb_from_utf16.exit_crit_edge: ; preds = %cifs_mapchar.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_from_utf16.exit

smb_from_utf16.exit:                              ; preds = %cifs_mapchar.exit8.i.smb_from_utf16.exit_crit_edge, %cifs_mapchar.exit.i.smb_from_utf16.exit_crit_edge, %for.body.i72.smb_from_utf16.exit_crit_edge, %if.end.smb_from_utf16.exit_crit_edge
  %outlen.0.lcssa.i76 = phi i32 [ 0, %if.end.smb_from_utf16.exit_crit_edge ], [ %add18.i, %cifs_mapchar.exit8.i.smb_from_utf16.exit_crit_edge ], [ %outlen.011.i, %for.body.i72.smb_from_utf16.exit_crit_edge ], [ %outlen.011.i, %cifs_mapchar.exit.i.smb_from_utf16.exit_crit_edge ]
  %uglygep.i = getelementptr i8, ptr %call9.i, i32 %outlen.0.lcssa.i76
  %25 = call ptr @memset(ptr %uglygep.i, i32 0, i32 %14)
  %26 = add i32 %outlen.0.lcssa.i76, %14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp slt i32 %26, 0
  br i1 %cmp, label %if.then7, label %smb_from_utf16.exit.cleanup_crit_edge

smb_from_utf16.exit.cleanup_crit_edge:            ; preds = %smb_from_utf16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %smb_from_utf16.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %call10 = tail call i32 @strnlen(ptr noundef %src, i32 noundef %maxlen) #9
  %inc = add i32 %call10, 1
  %call9.i61 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %inc, i32 noundef 3264) #10
  %tobool12.not = icmp eq ptr %call9.i61, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @strscpy(ptr noundef nonnull %call9.i61, ptr noundef %src, i32 noundef %inc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else.cleanup_crit_edge, %if.then7, %smb_from_utf16.exit.cleanup_crit_edge, %smb_utf16_bytes.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then7 ], [ %call9.i, %smb_from_utf16.exit.cleanup_crit_edge ], [ %call9.i61, %if.end15 ], [ inttoptr (i32 -12 to ptr), %smb_utf16_bytes.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smbConvertToUTF16(ptr noundef %target, ptr noundef %source, i32 noundef %srclen, ptr nocapture noundef readonly %cp, i32 noundef %mapchars) local_unnamed_addr #0 align 64 {
entry:
  %wchar_to.i = alloca i16, align 2
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp, align 2, !annotation !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapchars)
  %tobool.not = icmp eq i32 %mapchars, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen)
  %cmp42 = icmp sgt i32 %srclen, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %cp, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wchar_to.i) #6
  %1 = ptrtoint ptr %wchar_to.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %wchar_to.i, align 2, !annotation !25
  %2 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(5) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end3.i_crit_edge

if.then.if.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %call1.i = tail call i32 @utf8s_to_utf16s(ptr noundef %source, i32 noundef %srclen, i32 noundef 1, ptr noundef %target, i32 noundef %srclen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then.i.smb_strtoUTF16.exit_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i.smb_strtoUTF16.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_strtoUTF16.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.then.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srclen)
  %cmp428.i = icmp sgt i32 %srclen, 0
  br i1 %cmp428.i, label %land.rhs.lr.ph.i, label %if.end3.i.smb_strtoUTF16.exit_crit_edge

if.end3.i.smb_strtoUTF16.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_strtoUTF16.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end3.i
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %cp, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end10.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.031.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %if.end10.i.land.rhs.i_crit_edge ]
  %from.addr.030.i = phi ptr [ %source, %land.rhs.lr.ph.i ], [ %add.ptr.i, %if.end10.i.land.rhs.i_crit_edge ]
  %len.addr.029.i = phi i32 [ %srclen, %land.rhs.lr.ph.i ], [ %sub.i, %if.end10.i.land.rhs.i_crit_edge ]
  %4 = ptrtoint ptr %from.addr.030.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %from.addr.030.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i = icmp eq i8 %5, 0
  br i1 %tobool5.not.i, label %land.rhs.i.smb_strtoUTF16.exit_crit_edge, label %for.body.i

land.rhs.i.smb_strtoUTF16.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_strtoUTF16.exit

for.body.i:                                       ; preds = %land.rhs.i
  %6 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %char2uni.i, align 4
  %call6.i = call i32 %7(ptr noundef %from.addr.030.i, i32 noundef %len.addr.029.i, ptr noundef nonnull %wchar_to.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %wchar_to.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 63, ptr %wchar_to.i, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %for.body.i.if.end10.i_crit_edge
  %charlen.0.i = phi i32 [ 1, %if.then9.i ], [ %call6.i, %for.body.i.if.end10.i_crit_edge ]
  %9 = ptrtoint ptr %wchar_to.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wchar_to.i, align 2
  %arrayidx.i = getelementptr i16, ptr %target, i32 %i.031.i
  %11 = call i16 @llvm.bswap.i16(i16 %10) #6
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %arrayidx.i, align 1
  %inc.i = add i32 %i.031.i, 1
  %add.ptr.i = getelementptr i8, ptr %from.addr.030.i, i32 %charlen.0.i
  %sub.i = sub nsw i32 %len.addr.029.i, %charlen.0.i
  %cmp4.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp4.i, label %if.end10.i.land.rhs.i_crit_edge, label %if.end10.i.smb_strtoUTF16.exit_crit_edge

if.end10.i.smb_strtoUTF16.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smb_strtoUTF16.exit

if.end10.i.land.rhs.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

smb_strtoUTF16.exit:                              ; preds = %if.end10.i.smb_strtoUTF16.exit_crit_edge, %land.rhs.i.smb_strtoUTF16.exit_crit_edge, %if.end3.i.smb_strtoUTF16.exit_crit_edge, %if.then.i.smb_strtoUTF16.exit_crit_edge
  %i.1.i = phi i32 [ %call1.i, %if.then.i.smb_strtoUTF16.exit_crit_edge ], [ 0, %if.end3.i.smb_strtoUTF16.exit_crit_edge ], [ %i.031.i, %land.rhs.i.smb_strtoUTF16.exit_crit_edge ], [ %inc.i, %if.end10.i.smb_strtoUTF16.exit_crit_edge ]
  %arrayidx11.i = getelementptr i16, ptr %target, i32 %i.1.i
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %arrayidx11.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wchar_to.i) #6
  br label %cleanup

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %sw.epilog.for.body_crit_edge ]
  %j.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %source, i32 %i.044
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %sw.default [
    i8 0, label %do.body
    i8 58, label %for.body.sw.epilog_crit_edge
    i8 42, label %sw.bb3
    i8 63, label %sw.bb4
    i8 60, label %sw.bb5
    i8 62, label %sw.bb6
    i8 124, label %sw.bb7
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1 = getelementptr i16, ptr %target, i32 %j.043
  %17 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 0, ptr %arrayidx1, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %char2uni, align 4
  %sub = sub i32 %srclen, %i.044
  %call8 = call i32 %19(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %tmp) #6
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tmp, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 1
  %23 = call i32 @llvm.smax.i32(i32 %call8, i32 1)
  %spec.select40 = select i1 %cmp9, i16 16128, i16 %22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %for.body.sw.epilog_crit_edge
  %charlen.0 = phi i32 [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %for.body.sw.epilog_crit_edge ], [ %23, %sw.default ]
  %dst_char.0 = phi i16 [ 31984, %sw.bb7 ], [ 16112, %sw.bb6 ], [ 15600, %sw.bb5 ], [ 16368, %sw.bb4 ], [ 10992, %sw.bb3 ], [ 15088, %for.body.sw.epilog_crit_edge ], [ %spec.select40, %sw.default ]
  %add = add i32 %charlen.0, %i.044
  %arrayidx15 = getelementptr i16, ptr %target, i32 %j.043
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %dst_char.0, ptr %arrayidx15, align 1
  %inc = add i32 %j.043, 1
  %cmp = icmp slt i32 %add, %srclen
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.body, %smb_strtoUTF16.exit, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %j.043, %do.body ], [ %i.1.i, %smb_strtoUTF16.exit ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %inc, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @SmbUniUpperTable, !1, !"SmbUniUpperTable", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/uniupr.h", i32 16, i32 13}
!2 = !{ptr @SmbUniUpperRange, !3, !"SmbUniUpperRange", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/uniupr.h", i32 129, i32 27}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/unicode.c", i32 220, i32 33}
!6 = !{ptr @UniCaseRangeU03a0, !7, !"UniCaseRangeU03a0", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/uniupr.h", i32 56, i32 20}
!8 = !{ptr @UniCaseRangeU0430, !9, !"UniCaseRangeU0430", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/uniupr.h", i32 65, i32 20}
!10 = !{ptr @UniCaseRangeU0490, !11, !"UniCaseRangeU0490", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/uniupr.h", i32 75, i32 20}
!12 = !{ptr @UniCaseRangeU1e00, !13, !"UniCaseRangeU1e00", i1 false, i1 false}
!13 = !{!"../fs/ksmbd/uniupr.h", i32 83, i32 20}
!14 = !{ptr @UniCaseRangeUff40, !15, !"UniCaseRangeUff40", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/uniupr.h", i32 120, i32 20}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
