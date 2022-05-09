; ModuleID = '/llk/IR_all_yes/lib/zstd/decompress/huf_decompress.c_pt.bc'
source_filename = "../lib/zstd/decompress/huf_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.algo_time_t = type { i32, i32 }
%struct.HUF_ReadDTableX1_Workspace = type { [16 x i32], [16 x i32], [218 x i32], [256 x i8], [256 x i8] }
%struct.HUF_DEltX1 = type { i8, i8 }
%struct.BIT_DStream_t = type { i32, i32, ptr, ptr, ptr }
%struct.HUF_ReadDTableX2_Workspace = type { [12 x [13 x i32]], [13 x i32], [14 x i32], [256 x %struct.sortedSymbol_t], [256 x i8], [218 x i32] }
%struct.sortedSymbol_t = type { i8, i8 }
%struct.HUF_DEltX2 = type { i16, i8, i8 }

@algoTime = internal constant { [16 x [3 x %struct.algo_time_t]], [96 x i8] } { [16 x [3 x %struct.algo_time_t]] [[3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 38, i32 130 }, %struct.algo_time_t { i32 1313, i32 74 }, %struct.algo_time_t { i32 2151, i32 38 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 448, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 41 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 556, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 47 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 714, i32 128 }, %struct.algo_time_t { i32 1418, i32 74 }, %struct.algo_time_t { i32 2436, i32 53 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 883, i32 128 }, %struct.algo_time_t { i32 1437, i32 74 }, %struct.algo_time_t { i32 2464, i32 61 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 897, i32 128 }, %struct.algo_time_t { i32 1515, i32 75 }, %struct.algo_time_t { i32 2622, i32 68 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 926, i32 128 }, %struct.algo_time_t { i32 1613, i32 75 }, %struct.algo_time_t { i32 2730, i32 75 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 947, i32 128 }, %struct.algo_time_t { i32 1729, i32 77 }, %struct.algo_time_t { i32 3359, i32 77 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1107, i32 128 }, %struct.algo_time_t { i32 2083, i32 81 }, %struct.algo_time_t { i32 4006, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1177, i32 128 }, %struct.algo_time_t { i32 2379, i32 87 }, %struct.algo_time_t { i32 4785, i32 88 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1242, i32 128 }, %struct.algo_time_t { i32 2415, i32 93 }, %struct.algo_time_t { i32 5155, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1349, i32 128 }, %struct.algo_time_t { i32 2644, i32 106 }, %struct.algo_time_t { i32 5260, i32 106 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1455, i32 128 }, %struct.algo_time_t { i32 2422, i32 124 }, %struct.algo_time_t { i32 4174, i32 124 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 722, i32 128 }, %struct.algo_time_t { i32 1891, i32 145 }, %struct.algo_time_t { i32 1936, i32 146 }]], [96 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"algoTime\00", align 1
@___asan_gen_.11 = private constant [40 x i8] c"../lib/zstd/decompress/huf_decompress.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1028, i32 26 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @algoTime], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algoTime to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX1_wksp(ptr nocapture noundef %DTable, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %DTable, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX1_wksp_bmi2(ptr nocapture noundef %DTable, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef %bmi2) local_unnamed_addr #0 align 64 {
entry:
  %tableLog = alloca i32, align 4
  %nbSymbols = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tableLog) #7
  %0 = ptrtoint ptr %tableLog to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tableLog, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbSymbols) #7
  %1 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nbSymbols, align 4
  %add.ptr = getelementptr i32, ptr %DTable, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1512, i32 %wkspSize)
  %cmp = icmp ult i32 %wkspSize, 1512
  br i1 %cmp, label %entry.cleanup176_crit_edge, label %if.end

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end:                                           ; preds = %entry
  %huffWeight = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4
  %statsWksp = getelementptr inbounds %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 2
  %call = call i32 @HUF_readStats_wksp(ptr noundef %huffWeight, i32 noundef 256, ptr noundef %workSpace, ptr noundef nonnull %nbSymbols, ptr noundef nonnull %tableLog, ptr noundef %src, i32 noundef %srcSize, ptr noundef %statsWksp, i32 noundef 872, i32 noundef %bmi2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end5, label %if.end.cleanup176_crit_edge

if.end.cleanup176_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %DTable to i32
  call void @__asan_load1_noabort(i32 %2)
  %retval.sroa.0.0.copyload.i = load i8, ptr %DTable, align 4
  %retval.sroa.0.0.insert.ext.i = zext i8 %retval.sroa.0.0.copyload.i to i32
  %3 = ptrtoint ptr %tableLog to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tableLog, align 4
  %add = add nuw nsw i32 %retval.sroa.0.0.insert.ext.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp7 = icmp ugt i32 %4, %add
  br i1 %cmp7, label %if.end5.cleanup176_crit_edge, label %if.end10

if.end5.cleanup176_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end10:                                         ; preds = %if.end5
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %retval.sroa.4.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %conv11 = trunc i32 %4 to i8
  %5 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  %6 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i, align 2
  %7 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbSymbols, align 4
  %add13 = add i32 %8, -3
  %add14 = add i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %4)
  %cmp15304 = icmp ult i32 %4, 2147483647
  br i1 %cmp15304, label %if.end10.for.body_crit_edge, label %if.end10.for.cond20.preheader_crit_edge

if.end10.for.cond20.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond20.preheader

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.cond20.preheader:                             ; preds = %for.body.for.cond20.preheader_crit_edge, %if.end10.for.cond20.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13)
  %cmp21308 = icmp sgt i32 %add13, 0
  br i1 %cmp21308, label %for.cond20.preheader.for.cond24.preheader_crit_edge, label %for.cond20.preheader.for.cond44.preheader_crit_edge

for.cond20.preheader.for.cond44.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond44.preheader

for.cond20.preheader.for.cond24.preheader_crit_edge: ; preds = %for.cond20.preheader
  br label %for.cond24.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %n.0306 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %nextRankStart.0305 = phi i32 [ %add18, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %workSpace, i32 0, i32 %n.0306
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add18 = add i32 %10, %nextRankStart.0305
  %arrayidx19 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %n.0306
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nextRankStart.0305, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %n.0306, 1
  %exitcond.not = icmp eq i32 %n.0306, %4
  br i1 %exitcond.not, label %for.body.for.cond20.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond20.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond20.preheader

for.cond24.preheader:                             ; preds = %for.cond24.preheader.for.cond24.preheader_crit_edge, %for.cond20.preheader.for.cond24.preheader_crit_edge
  %n.1309 = phi i32 [ %add42, %for.cond24.preheader.for.cond24.preheader_crit_edge ], [ 0, %for.cond20.preheader.for.cond24.preheader_crit_edge ]
  %arrayidx30 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4, i32 %n.1309
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %13 to i32
  %conv33 = trunc i32 %n.1309 to i8
  %arrayidx35 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %conv31
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx35, align 4
  %inc36 = add i32 %15, 1
  store i32 %inc36, ptr %arrayidx35, align 4
  %arrayidx37 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %15
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv33, ptr %arrayidx37, align 1
  %add29.1 = or i32 %n.1309, 1
  %arrayidx30.1 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4, i32 %add29.1
  %17 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30.1, align 1
  %conv31.1 = zext i8 %18 to i32
  %conv33.1 = trunc i32 %add29.1 to i8
  %arrayidx35.1 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %conv31.1
  %19 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx35.1, align 4
  %inc36.1 = add i32 %20, 1
  store i32 %inc36.1, ptr %arrayidx35.1, align 4
  %arrayidx37.1 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %20
  %21 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv33.1, ptr %arrayidx37.1, align 1
  %add29.2 = or i32 %n.1309, 2
  %arrayidx30.2 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4, i32 %add29.2
  %22 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30.2, align 1
  %conv31.2 = zext i8 %23 to i32
  %conv33.2 = trunc i32 %add29.2 to i8
  %arrayidx35.2 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %conv31.2
  %24 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx35.2, align 4
  %inc36.2 = add i32 %25, 1
  store i32 %inc36.2, ptr %arrayidx35.2, align 4
  %arrayidx37.2 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %25
  %26 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33.2, ptr %arrayidx37.2, align 1
  %add29.3 = or i32 %n.1309, 3
  %arrayidx30.3 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4, i32 %add29.3
  %27 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx30.3, align 1
  %conv31.3 = zext i8 %28 to i32
  %conv33.3 = trunc i32 %add29.3 to i8
  %arrayidx35.3 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %conv31.3
  %29 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35.3, align 4
  %inc36.3 = add i32 %30, 1
  store i32 %inc36.3, ptr %arrayidx35.3, align 4
  %arrayidx37.3 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %30
  %31 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv33.3, ptr %arrayidx37.3, align 1
  %add42 = add i32 %n.1309, 4
  %cmp21 = icmp slt i32 %add42, %add13
  br i1 %cmp21, label %for.cond24.preheader.for.cond24.preheader_crit_edge, label %for.cond24.preheader.for.cond44.preheader_crit_edge

for.cond24.preheader.for.cond44.preheader_crit_edge: ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond44.preheader

for.cond24.preheader.for.cond24.preheader_crit_edge: ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.preheader

for.cond44.preheader:                             ; preds = %for.cond24.preheader.for.cond44.preheader_crit_edge, %for.cond20.preheader.for.cond44.preheader_crit_edge
  %n.1.lcssa = phi i32 [ 0, %for.cond20.preheader.for.cond44.preheader_crit_edge ], [ %add42, %for.cond24.preheader.for.cond44.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.lcssa, i32 %8)
  %cmp45311 = icmp slt i32 %n.1.lcssa, %8
  br i1 %cmp45311, label %for.cond44.preheader.for.body47_crit_edge, label %for.cond44.preheader.for.end60_crit_edge

for.cond44.preheader.for.end60_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.cond44.preheader.for.body47_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond44.preheader.for.body47_crit_edge
  %n.2312 = phi i32 [ %inc59, %for.body47.for.body47_crit_edge ], [ %n.1.lcssa, %for.cond44.preheader.for.body47_crit_edge ]
  %arrayidx50 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 4, i32 %n.2312
  %32 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %33 to i32
  %conv52 = trunc i32 %n.2312 to i8
  %arrayidx55 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 1, i32 %conv51
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx55, align 4
  %inc56 = add i32 %35, 1
  store i32 %inc56, ptr %arrayidx55, align 4
  %arrayidx57 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %35
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv52, ptr %arrayidx57, align 1
  %inc59 = add nsw i32 %n.2312, 1
  %exitcond350.not = icmp eq i32 %inc59, %8
  br i1 %exitcond350.not, label %for.body47.for.end60_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.body47.for.end60_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.end60:                                        ; preds = %for.body47.for.end60_crit_edge, %for.cond44.preheader.for.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14)
  %cmp67330 = icmp ugt i32 %add14, 1
  br i1 %cmp67330, label %for.body69.preheader, label %for.end60.cleanup176_crit_edge

for.end60.cleanup176_crit_edge:                   ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

for.body69.preheader:                             ; preds = %for.end60
  %37 = ptrtoint ptr %workSpace to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %workSpace, align 4
  br label %for.body69

for.body69:                                       ; preds = %sw.epilog.for.body69_crit_edge, %for.body69.preheader
  %rankStart64.0338 = phi i32 [ %add172, %sw.epilog.for.body69_crit_edge ], [ 0, %for.body69.preheader ]
  %symbol.0332 = phi i32 [ %add171, %sw.epilog.for.body69_crit_edge ], [ %38, %for.body69.preheader ]
  %w61.0331 = phi i32 [ %inc174, %sw.epilog.for.body69_crit_edge ], [ 1, %for.body69.preheader ]
  %arrayidx71 = getelementptr [16 x i32], ptr %workSpace, i32 0, i32 %w61.0331
  %39 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx71, align 4
  %shl = shl nuw i32 1, %w61.0331
  %shr = ashr exact i32 %shl, 1
  %sub73 = sub i32 %add14, %w61.0331
  %conv74 = trunc i32 %sub73 to i8
  %41 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %for.cond139.preheader [
    i32 1, label %for.cond76.preheader
    i32 2, label %for.cond90.preheader
    i32 4, label %for.cond109.preheader
    i32 8, label %for.cond123.preheader
  ]

for.cond123.preheader:                            ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp124313 = icmp sgt i32 %40, 0
  br i1 %cmp124313, label %for.body126.lr.ph, label %for.cond123.preheader.sw.epilog_crit_edge

for.cond123.preheader.sw.epilog_crit_edge:        ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body126.lr.ph:                                ; preds = %for.cond123.preheader
  %conv5.i291 = and i32 %sub73, 255
  br label %for.body126

for.cond109.preheader:                            ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp110316 = icmp sgt i32 %40, 0
  br i1 %cmp110316, label %for.body112.lr.ph, label %for.cond109.preheader.sw.epilog_crit_edge

for.cond109.preheader.sw.epilog_crit_edge:        ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body112.lr.ph:                                ; preds = %for.cond109.preheader
  %conv5.i = and i32 %sub73, 255
  br label %for.body112

for.cond90.preheader:                             ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp91319 = icmp sgt i32 %40, 0
  br i1 %cmp91319, label %for.cond90.preheader.for.body93_crit_edge, label %for.cond90.preheader.sw.epilog_crit_edge

for.cond90.preheader.sw.epilog_crit_edge:         ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond90.preheader.for.body93_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body93

for.cond76.preheader:                             ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp77322 = icmp sgt i32 %40, 0
  br i1 %cmp77322, label %for.cond76.preheader.for.body79_crit_edge, label %for.cond76.preheader.sw.epilog_crit_edge

for.cond76.preheader.sw.epilog_crit_edge:         ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond76.preheader.for.body79_crit_edge:        ; preds = %for.cond76.preheader
  br label %for.body79

for.cond139.preheader:                            ; preds = %for.body69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp140327 = icmp sgt i32 %40, 0
  br i1 %cmp140327, label %for.body142.lr.ph, label %for.cond139.preheader.sw.epilog_crit_edge

for.cond139.preheader.sw.epilog_crit_edge:        ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body142.lr.ph:                                ; preds = %for.cond139.preheader
  %conv5.i296 = and i32 %sub73, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl)
  %cmp149325 = icmp sgt i32 %shl, 1
  br label %for.body142

for.body79:                                       ; preds = %for.body79.for.body79_crit_edge, %for.cond76.preheader.for.body79_crit_edge
  %s.0324 = phi i32 [ %inc87, %for.body79.for.body79_crit_edge ], [ 0, %for.cond76.preheader.for.body79_crit_edge ]
  %uStart.0323 = phi i32 [ %add85, %for.body79.for.body79_crit_edge ], [ %rankStart64.0338, %for.cond76.preheader.for.body79_crit_edge ]
  %add81 = add i32 %s.0324, %symbol.0332
  %arrayidx82 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %add81
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx82, align 1
  %arrayidx84 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %uStart.0323
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx84, align 1
  %D.sroa.5.0.arrayidx84.sroa_idx = getelementptr inbounds i8, ptr %arrayidx84, i32 1
  %45 = ptrtoint ptr %D.sroa.5.0.arrayidx84.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv74, ptr %D.sroa.5.0.arrayidx84.sroa_idx, align 1
  %add85 = add i32 %uStart.0323, 1
  %inc87 = add nuw nsw i32 %s.0324, 1
  %exitcond354.not = icmp eq i32 %inc87, %40
  br i1 %exitcond354.not, label %for.body79.sw.epilog_crit_edge, label %for.body79.for.body79_crit_edge

for.body79.for.body79_crit_edge:                  ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79

for.body79.sw.epilog_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %for.cond90.preheader.for.body93_crit_edge
  %s.1321 = phi i32 [ %inc106, %for.body93.for.body93_crit_edge ], [ 0, %for.cond90.preheader.for.body93_crit_edge ]
  %uStart.1320 = phi i32 [ %add104, %for.body93.for.body93_crit_edge ], [ %rankStart64.0338, %for.cond90.preheader.for.body93_crit_edge ]
  %add96 = add i32 %s.1321, %symbol.0332
  %arrayidx97 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %add96
  %46 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx97, align 1
  %arrayidx101 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %uStart.1320
  %48 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx101, align 1
  %D94.sroa.6.0.arrayidx101.sroa_idx = getelementptr inbounds i8, ptr %arrayidx101, i32 1
  %49 = ptrtoint ptr %D94.sroa.6.0.arrayidx101.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv74, ptr %D94.sroa.6.0.arrayidx101.sroa_idx, align 1
  %add102 = add i32 %uStart.1320, 1
  %arrayidx103 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %add102
  %50 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %47, ptr %arrayidx103, align 1
  %D94.sroa.6.0.arrayidx103.sroa_idx = getelementptr inbounds i8, ptr %arrayidx103, i32 1
  %51 = ptrtoint ptr %D94.sroa.6.0.arrayidx103.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv74, ptr %D94.sroa.6.0.arrayidx103.sroa_idx, align 1
  %add104 = add i32 %uStart.1320, 2
  %inc106 = add nuw nsw i32 %s.1321, 1
  %exitcond353.not = icmp eq i32 %inc106, %40
  br i1 %exitcond353.not, label %for.body93.sw.epilog_crit_edge, label %for.body93.for.body93_crit_edge

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93

for.body93.sw.epilog_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %for.body112.lr.ph
  %s.2318 = phi i32 [ 0, %for.body112.lr.ph ], [ %inc120, %for.body112.for.body112_crit_edge ]
  %uStart.2317 = phi i32 [ %rankStart64.0338, %for.body112.lr.ph ], [ %add118, %for.body112.for.body112_crit_edge ]
  %add114 = add i32 %s.2318, %symbol.0332
  %arrayidx115 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %add114
  %52 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx115, align 1
  %conv3.i = zext i8 %53 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %add6.i = or i32 %shl4.i, %conv5.i
  %54 = zext i32 %add6.i to i64
  %mul.i = mul nuw i64 %54, 281479271743489
  %add.ptr117 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %uStart.2317
  %55 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %mul.i, ptr %add.ptr117, align 1
  %add118 = add i32 %uStart.2317, 4
  %inc120 = add nuw nsw i32 %s.2318, 1
  %exitcond352.not = icmp eq i32 %inc120, %40
  br i1 %exitcond352.not, label %for.body112.sw.epilog_crit_edge, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body112

for.body112.sw.epilog_crit_edge:                  ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body126:                                      ; preds = %for.body126.for.body126_crit_edge, %for.body126.lr.ph
  %s.3315 = phi i32 [ 0, %for.body126.lr.ph ], [ %inc137, %for.body126.for.body126_crit_edge ]
  %uStart.3314 = phi i32 [ %rankStart64.0338, %for.body126.lr.ph ], [ %add135, %for.body126.for.body126_crit_edge ]
  %add129 = add i32 %s.3315, %symbol.0332
  %arrayidx130 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %add129
  %56 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx130, align 1
  %conv3.i289 = zext i8 %57 to i32
  %shl4.i290 = shl nuw nsw i32 %conv3.i289, 8
  %add6.i292 = or i32 %shl4.i290, %conv5.i291
  %58 = zext i32 %add6.i292 to i64
  %mul.i293 = mul nuw i64 %58, 281479271743489
  %add.ptr132 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %uStart.3314
  %59 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %mul.i293, ptr %add.ptr132, align 1
  %add.ptr134 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr132, i32 4
  %60 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %mul.i293, ptr %add.ptr134, align 1
  %add135 = add i32 %uStart.3314, 8
  %inc137 = add nuw nsw i32 %s.3315, 1
  %exitcond351.not = icmp eq i32 %inc137, %40
  br i1 %exitcond351.not, label %for.body126.sw.epilog_crit_edge, label %for.body126.for.body126_crit_edge

for.body126.for.body126_crit_edge:                ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body126

for.body126.sw.epilog_crit_edge:                  ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body142:                                      ; preds = %for.end166.for.body142_crit_edge, %for.body142.lr.ph
  %s.4329 = phi i32 [ 0, %for.body142.lr.ph ], [ %inc169, %for.end166.for.body142_crit_edge ]
  %uStart.4328 = phi i32 [ %rankStart64.0338, %for.body142.lr.ph ], [ %add167, %for.end166.for.body142_crit_edge ]
  %add145 = add i32 %s.4329, %symbol.0332
  %arrayidx146 = getelementptr %struct.HUF_ReadDTableX1_Workspace, ptr %workSpace, i32 0, i32 3, i32 %add145
  %61 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx146, align 1
  %conv3.i294 = zext i8 %62 to i32
  %shl4.i295 = shl nuw nsw i32 %conv3.i294, 8
  %add6.i297 = or i32 %shl4.i295, %conv5.i296
  %63 = zext i32 %add6.i297 to i64
  %mul.i298 = mul nuw i64 %63, 281479271743489
  br i1 %cmp149325, label %for.body151.lr.ph, label %for.body142.for.end166_crit_edge

for.body142.for.end166_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end166

for.body151.lr.ph:                                ; preds = %for.body142
  %add.ptr152 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr, i32 %uStart.4328
  br label %for.body151

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.body151.lr.ph
  %u75.0326 = phi i32 [ 0, %for.body151.lr.ph ], [ %add165, %for.body151.for.body151_crit_edge ]
  %add.ptr153 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr152, i32 %u75.0326
  %64 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %mul.i298, ptr %add.ptr153, align 1
  %add.ptr157 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr153, i32 4
  %65 = ptrtoint ptr %add.ptr157 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %mul.i298, ptr %add.ptr157, align 1
  %add.ptr160 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr153, i32 8
  %66 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %mul.i298, ptr %add.ptr160, align 1
  %add.ptr163 = getelementptr %struct.HUF_DEltX1, ptr %add.ptr153, i32 12
  %67 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %mul.i298, ptr %add.ptr163, align 1
  %add165 = add nuw nsw i32 %u75.0326, 16
  %cmp149 = icmp slt i32 %add165, %shr
  br i1 %cmp149, label %for.body151.for.body151_crit_edge, label %for.body151.for.end166_crit_edge

for.body151.for.end166_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end166

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body151

for.end166:                                       ; preds = %for.body151.for.end166_crit_edge, %for.body142.for.end166_crit_edge
  %add167 = add i32 %uStart.4328, %shr
  %inc169 = add nuw nsw i32 %s.4329, 1
  %exitcond355.not = icmp eq i32 %inc169, %40
  br i1 %exitcond355.not, label %for.end166.sw.epilog_crit_edge, label %for.end166.for.body142_crit_edge

for.end166.for.body142_crit_edge:                 ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body142

for.end166.sw.epilog_crit_edge:                   ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end166.sw.epilog_crit_edge, %for.body126.sw.epilog_crit_edge, %for.body112.sw.epilog_crit_edge, %for.body93.sw.epilog_crit_edge, %for.body79.sw.epilog_crit_edge, %for.cond139.preheader.sw.epilog_crit_edge, %for.cond76.preheader.sw.epilog_crit_edge, %for.cond90.preheader.sw.epilog_crit_edge, %for.cond109.preheader.sw.epilog_crit_edge, %for.cond123.preheader.sw.epilog_crit_edge
  %add171 = add i32 %40, %symbol.0332
  %mul = mul i32 %40, %shr
  %add172 = add i32 %mul, %rankStart64.0338
  %inc174 = add nuw i32 %w61.0331, 1
  %exitcond356.not = icmp eq i32 %w61.0331, %4
  br i1 %exitcond356.not, label %sw.epilog.cleanup176_crit_edge, label %sw.epilog.for.body69_crit_edge

sw.epilog.for.body69_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69

sw.epilog.cleanup176_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

cleanup176:                                       ; preds = %sw.epilog.cleanup176_crit_edge, %for.end60.cleanup176_crit_edge, %if.end5.cleanup176_crit_edge, %if.end.cleanup176_crit_edge, %entry.cleanup176_crit_edge
  %retval.1 = phi i32 [ -44, %entry.cleanup176_crit_edge ], [ %call, %if.end.cleanup176_crit_edge ], [ -44, %if.end5.cleanup176_crit_edge ], [ %call, %for.end60.cleanup176_crit_edge ], [ %call, %sw.epilog.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbSymbols) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tableLog) #7
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readStats_wksp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_usingDTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %cmp.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr1.i = getelementptr i32, ptr %DTable, i32 1
  %retval.sroa.4.0.table.addr.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %0 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.4.0.copyload.i.i = load i8, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i, align 2
  %retval.sroa.4.0.insert.ext.i.i = zext i8 %retval.sroa.4.0.copyload.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cSrcSize)
  %cmp.i20.i = icmp eq i32 %cSrcSize, 0
  br i1 %cmp.i20.i, label %entry.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, label %if.end.i.i

entry.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X1_usingDTable_internal_body.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i21.i = getelementptr i8, ptr %cSrc, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cSrcSize)
  %cmp2.i.i = icmp ugt i32 %cSrcSize, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add i32 %cSrcSize, -1
  %arrayidx.i.i = getelementptr i8, ptr %cSrc, i32 %sub.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, label %BIT_initDStream.exit.i

if.then3.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X1_usingDTable_internal_body.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %3 = ptrtoint ptr %cSrc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cSrc, align 1
  %conv18.i.i = zext i8 %4 to i32
  %5 = zext i32 %cSrcSize to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %cSrcSize, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %if.else.i.i.sw.bb47.i.i_crit_edge
    i32 3, label %sw.bb41.i.i
  ]

if.else.i.i.sw.bb47.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i.i = getelementptr i8, ptr %cSrc, i32 2
  %6 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %7 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %add46.i.i = or i32 %shl44.i.i, %conv18.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb41.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge
  %bitD.sroa.0.0.i = phi i32 [ %add46.i.i, %sw.bb41.i.i ], [ %conv18.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %cSrc, i32 1
  %8 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %9 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 8
  %add52.i.i = add nuw nsw i32 %shl50.i.i, %bitD.sroa.0.0.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %bitD.sroa.0.1.i = phi i32 [ %conv18.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge ], [ %add52.i.i, %sw.bb47.i.i ]
  %sub54.i.i = add nsw i32 %cSrcSize, -1
  %arrayidx55.i.i = getelementptr i8, ptr %cSrc, i32 %sub54.i.i
  %10 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool57.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool57.not.i.i, label %sw.epilog.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, label %BIT_initDStream.exit.thread67.i

sw.epilog.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X1_usingDTable_internal_body.exit

BIT_initDStream.exit.thread67.i:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i.i = zext i8 %11 to i32
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i, i1 true) #7, !range !11
  %.neg.i.i = mul nsw i32 %cSrcSize, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 9
  %add76.i.i = add nsw i32 %mul.i.i, %12
  br label %cleanup.cont.i

BIT_initDStream.exit.i:                           ; preds = %if.then3.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 -4
  %13 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr5.i.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %conv.i.i = zext i8 %2 to i32
  %16 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #7, !range !11
  %sub9.i.i = add nsw i32 %16, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSrcSize)
  %cmp.i22.i = icmp ult i32 %cSrcSize, -119
  br i1 %cmp.i22.i, label %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, label %BIT_initDStream.exit.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge

BIT_initDStream.exit.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge: ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X1_usingDTable_internal_body.exit

BIT_initDStream.exit.i.cleanup.cont.i_crit_edge:  ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, %BIT_initDStream.exit.thread67.i
  %bitD.sroa.35.079.i = phi ptr [ %cSrc, %BIT_initDStream.exit.thread67.i ], [ %add.ptr5.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.16.078.i = phi i32 [ %add76.i.i, %BIT_initDStream.exit.thread67.i ], [ %sub9.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.0.277.i = phi i32 [ %bitD.sroa.0.1.i, %BIT_initDStream.exit.thread67.i ], [ %15, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %pEnd82.i.i = ptrtoint ptr %add.ptr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.16.078.i)
  %cmp.i73.i.i = icmp ugt i32 %bitD.sroa.16.078.i, 32
  br i1 %cmp.i73.i.i, label %entry.while.end_crit_edge.i.i, label %if.end.i.lr.ph.i.i

entry.while.end_crit_edge.i.i:                    ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre84.i.i = and i32 %.pre.i.i, 31
  br label %while.end.i.i

if.end.i.lr.ph.i.i:                               ; preds = %cleanup.cont.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 -3
  %sub.i.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %cSrc to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %bitD.sroa.0.3.i = phi i32 [ %bitD.sroa.0.277.i, %if.end.i.lr.ph.i.i ], [ %19, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD.sroa.16.1.i = phi i32 [ %bitD.sroa.16.078.i, %if.end.i.lr.ph.i.i ], [ %add.i.i12.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD.sroa.35.1.i = phi ptr [ %bitD.sroa.35.079.i, %if.end.i.lr.ph.i.i ], [ %bitD.sroa.35.2.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %p.addr.074.i.i = phi ptr [ %dst, %if.end.i.lr.ph.i.i ], [ %incdec.ptr19.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %cmp1.not.i.i.i = icmp ult ptr %bitD.sroa.35.1.i, %add.ptr.i21.i
  br i1 %cmp1.not.i.i.i, label %if.end3.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i

BIT_reloadDStreamFast.exit.i.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i33.i.i = lshr i32 %bitD.sroa.16.1.i, 3
  %and.i.i34.i.i = and i32 %bitD.sroa.16.1.i, 7
  br label %BIT_reloadDStream.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp5.i.i.i = icmp eq ptr %bitD.sroa.35.1.i, %cSrc
  br i1 %cmp5.i.i.i, label %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge, label %if.end11.i.i.i

if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge:     ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i.lr.ph.i

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i.i = lshr i32 %bitD.sroa.16.1.i, 3
  %idx.neg.i.i.i = sub nsw i32 0, %shr.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %bitD.sroa.35.1.i, i32 %idx.neg.i.i.i
  %cmp15.i.i.i = icmp ult ptr %add.ptr.i.i.i, %cSrc
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bitD.sroa.35.1.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i.i.i = select i1 %cmp15.i.i.i, i32 %sub.ptr.sub.i.i.i, i32 %shr.i.i.i
  %result.0.i.i.i = zext i1 %cmp15.i.i.i to i32
  %mul.neg.i.i.i = mul i32 %nbBytes.0.i.i.i, -8
  %sub.i.i.i = add i32 %mul.neg.i.i.i, %bitD.sroa.16.1.i
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %if.end11.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i
  %nbBytes.0.i.i.pn.i = phi i32 [ %nbBytes.0.i.i.i, %if.end11.i.i.i ], [ %shr.i.i33.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %and.i.i34.sink.i.i = phi i32 [ %sub.i.i.i, %if.end11.i.i.i ], [ %and.i.i34.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %retval.0.i.i.i = phi i32 [ %result.0.i.i.i, %if.end11.i.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i.i ]
  %idx.neg21.i.i.pn.i = sub i32 0, %nbBytes.0.i.i.pn.i
  %bitD.sroa.35.2.i = getelementptr i8, ptr %bitD.sroa.35.1.i, i32 %idx.neg21.i.i.pn.i
  %17 = ptrtoint ptr %bitD.sroa.35.2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %bitD.sroa.35.2.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, 0
  %cmp1.i.i = icmp ult ptr %p.addr.074.i.i, %add.ptr.i.i
  %and1.i.i = and i1 %cmp1.i.i, %cmp.i.i
  br i1 %and1.i.i, label %while.body.i.i, label %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge

BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %BIT_reloadDStream.exit.i.i
  %and.i.i.i.i = and i32 %and.i.i34.sink.i.i, 31
  %shl.i.i.i.i = shl i32 %19, %and.i.i.i.i
  %shr.i.i.i.i = lshr i32 %shl.i.i.i.i, %and1.i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i, align 1
  %nbBits.i.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i.i.i, i32 1
  %22 = ptrtoint ptr %nbBits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nbBits.i.i.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %add.i.i.i.i = add i32 %and.i.i34.sink.i.i, %conv.i.i.i
  %24 = ptrtoint ptr %p.addr.074.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %p.addr.074.i.i, align 1
  %incdec.ptr10.i.i = getelementptr i8, ptr %p.addr.074.i.i, i32 1
  %and.i.i4.i.i = and i32 %add.i.i.i.i, 31
  %shl.i.i5.i.i = shl i32 %19, %and.i.i4.i.i
  %shr.i.i8.i.i = lshr i32 %shl.i.i5.i.i, %and1.i.i.i.i
  %arrayidx.i9.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i8.i.i
  %25 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i9.i.i, align 1
  %nbBits.i10.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i8.i.i, i32 1
  %27 = ptrtoint ptr %nbBits.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nbBits.i10.i.i, align 1
  %conv.i11.i.i = zext i8 %28 to i32
  %add.i.i12.i.i = add i32 %add.i.i.i.i, %conv.i11.i.i
  %incdec.ptr19.i.i = getelementptr i8, ptr %p.addr.074.i.i, i32 2
  %29 = ptrtoint ptr %incdec.ptr10.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %incdec.ptr10.i.i, align 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i12.i.i, 32
  br i1 %cmp.i.i.i, label %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.body.i.i.if.end.i.i.i_crit_edge

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

while.end.i.i:                                    ; preds = %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge, %entry.while.end_crit_edge.i.i
  %bitD.sroa.0.4.i = phi i32 [ %bitD.sroa.0.277.i, %entry.while.end_crit_edge.i.i ], [ %19, %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge ]
  %bitD.sroa.16.2.i = phi i32 [ %bitD.sroa.16.078.i, %entry.while.end_crit_edge.i.i ], [ %and.i.i34.sink.i.i, %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge ]
  %bitD.sroa.35.3.i = phi ptr [ %bitD.sroa.35.079.i, %entry.while.end_crit_edge.i.i ], [ %bitD.sroa.35.2.i, %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge ]
  %and1.i.i17.pre-phi.i.i = phi i32 [ %.pre84.i.i, %entry.while.end_crit_edge.i.i ], [ %and1.i.i.i.i, %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge ]
  %p.addr.0.lcssa.i.i = phi ptr [ %dst, %entry.while.end_crit_edge.i.i ], [ %p.addr.074.i.i, %BIT_reloadDStream.exit.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.16.2.i)
  %cmp.i36.i88.i = icmp ugt i32 %bitD.sroa.16.2.i, 32
  br i1 %cmp.i36.i88.i, label %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge

while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %cSrc to i32
  br label %if.end.i40.i.lr.ph.i

if.end.i40.i.lr.ph.i:                             ; preds = %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge
  %sub.ptr.rhs.cast.i57.i.i.pre-phi = phi i32 [ %.pre, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %sub.ptr.rhs.cast.i.i.i, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  %p.addr.0.lcssa.i122.i = phi ptr [ %p.addr.0.lcssa.i.i, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %p.addr.074.i.i, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  %and1.i.i17.pre-phi.i121.i = phi i32 [ %and1.i.i17.pre-phi.i.i, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %and1.i.i.i.i, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  %bitD.sroa.35.3120.i = phi ptr [ %bitD.sroa.35.3.i, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %cSrc, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  %bitD.sroa.16.2119.i = phi i32 [ %bitD.sroa.16.2.i, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %bitD.sroa.16.1.i, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  %bitD.sroa.0.4118.i = phi i32 [ %bitD.sroa.0.4.i, %while.end.i.i.if.end.i40.i.lr.ph.i_crit_edge ], [ %bitD.sroa.0.3.i, %if.end3.i.i.i.if.end.i40.i.lr.ph.i_crit_edge ]
  br label %if.end.i40.i.i

if.end.i40.i.i:                                   ; preds = %while.body31.i.i.if.end.i40.i.i_crit_edge, %if.end.i40.i.lr.ph.i
  %p.addr.3.i93.i = phi ptr [ %p.addr.0.lcssa.i122.i, %if.end.i40.i.lr.ph.i ], [ %incdec.ptr33.i.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ]
  %bitD.sroa.35.491.i = phi ptr [ %bitD.sroa.35.3120.i, %if.end.i40.i.lr.ph.i ], [ %bitD.sroa.35.5.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ]
  %bitD.sroa.16.390.i = phi i32 [ %bitD.sroa.16.2119.i, %if.end.i40.i.lr.ph.i ], [ %add.i.i22.i.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ]
  %bitD.sroa.0.589.i = phi i32 [ %bitD.sroa.0.4118.i, %if.end.i40.i.lr.ph.i ], [ %32, %while.body31.i.i.if.end.i40.i.i_crit_edge ]
  %cmp1.not.i39.i.i = icmp ult ptr %bitD.sroa.35.491.i, %add.ptr.i21.i
  br i1 %cmp1.not.i39.i.i, label %if.end3.i48.i.i, label %BIT_reloadDStreamFast.exit.i45.i.i

BIT_reloadDStreamFast.exit.i45.i.i:               ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i41.i.i = lshr i32 %bitD.sroa.16.390.i, 3
  %and.i.i44.i.i = and i32 %bitD.sroa.16.390.i, 7
  br label %BIT_reloadDStream.exit67.i.i

if.end3.i48.i.i:                                  ; preds = %if.end.i40.i.i
  %cmp5.i47.i.i = icmp eq ptr %bitD.sroa.35.491.i, %cSrc
  br i1 %cmp5.i47.i.i, label %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %if.end11.i65.i.i

if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %if.end3.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

if.end11.i65.i.i:                                 ; preds = %if.end3.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i52.i.i = lshr i32 %bitD.sroa.16.390.i, 3
  %idx.neg.i53.i.i = sub nsw i32 0, %shr.i52.i.i
  %add.ptr.i54.i.i = getelementptr i8, ptr %bitD.sroa.35.491.i, i32 %idx.neg.i53.i.i
  %cmp15.i55.i.i = icmp ult ptr %add.ptr.i54.i.i, %cSrc
  %sub.ptr.lhs.cast.i56.i.i = ptrtoint ptr %bitD.sroa.35.491.i to i32
  %sub.ptr.sub.i58.i.i = sub i32 %sub.ptr.lhs.cast.i56.i.i, %sub.ptr.rhs.cast.i57.i.i.pre-phi
  %nbBytes.0.i59.i.i = select i1 %cmp15.i55.i.i, i32 %sub.ptr.sub.i58.i.i, i32 %shr.i52.i.i
  %result.0.i60.i.i = zext i1 %cmp15.i55.i.i to i32
  %mul.neg.i63.i.i = mul i32 %nbBytes.0.i59.i.i, -8
  %sub.i64.i.i = add i32 %mul.neg.i63.i.i, %bitD.sroa.16.390.i
  br label %BIT_reloadDStream.exit67.i.i

BIT_reloadDStream.exit67.thread.i.i:              ; preds = %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge
  %and1.i.i17.pre-phi.i110.i = phi i32 [ %and1.i.i17.pre-phi.i.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %and1.i.i17.pre-phi.i121.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %and1.i.i17.pre-phi.i121.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %and1.i.i.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD.sroa.0.5.lcssa.i = phi i32 [ %bitD.sroa.0.4.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %32, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD.sroa.0.589.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %19, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD.sroa.16.3.lcssa.i = phi i32 [ %bitD.sroa.16.2.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %add.i.i22.i.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD.sroa.16.390.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %add.i.i12.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD.sroa.35.4.lcssa.i = phi ptr [ %bitD.sroa.35.3.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD.sroa.35.5.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %cSrc, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD.sroa.35.2.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %p.addr.3.i.lcssa.i = phi ptr [ %p.addr.0.lcssa.i.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %incdec.ptr33.i.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %p.addr.3.i93.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %incdec.ptr19.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %cmp2787.i.i = icmp ult ptr %p.addr.3.i.lcssa.i, %add.ptr.i
  br i1 %cmp2787.i.i, label %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge, label %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge

BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i.i

BIT_reloadDStream.exit67.i.i:                     ; preds = %if.end11.i65.i.i, %BIT_reloadDStreamFast.exit.i45.i.i
  %nbBytes.0.i59.i.pn.i = phi i32 [ %nbBytes.0.i59.i.i, %if.end11.i65.i.i ], [ %shr.i.i41.i.i, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %and.i.i44.sink.i.i = phi i32 [ %sub.i64.i.i, %if.end11.i65.i.i ], [ %and.i.i44.i.i, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %retval.0.i66.i.i = phi i32 [ %result.0.i60.i.i, %if.end11.i65.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %idx.neg21.i61.i.pn.i = sub i32 0, %nbBytes.0.i59.i.pn.i
  %bitD.sroa.35.5.i = getelementptr i8, ptr %bitD.sroa.35.491.i, i32 %idx.neg21.i61.i.pn.i
  %30 = ptrtoint ptr %bitD.sroa.35.5.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bitD.sroa.35.5.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66.i.i)
  %cmp25.i.i = icmp eq i32 %retval.0.i66.i.i, 0
  %cmp27.i.i = icmp ult ptr %p.addr.3.i93.i, %add.ptr.i
  %and292.i.i = and i1 %cmp27.i.i, %cmp25.i.i
  br i1 %and292.i.i, label %while.body31.i.i, label %while.cond36.preheader.i.i

while.cond36.preheader.i.i:                       ; preds = %BIT_reloadDStream.exit67.i.i
  br i1 %cmp27.i.i, label %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge, label %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge

while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %while.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge: ; preds = %while.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i.i

while.body39.lr.ph.i.i:                           ; preds = %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge
  %and1.i.i17.pre-phi.i109.i = phi i32 [ %and1.i.i17.pre-phi.i110.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %and1.i.i17.pre-phi.i121.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %p.addr.3.i84.i = phi ptr [ %p.addr.3.i.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %p.addr.3.i93.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD.sroa.0.6.i = phi i32 [ %bitD.sroa.0.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %32, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD.sroa.16.4.i = phi i32 [ %bitD.sroa.16.3.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %and.i.i44.sink.i.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD.sroa.35.6.i = phi ptr [ %bitD.sroa.35.4.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %bitD.sroa.35.5.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %p.addr.3.lcssa83.i.i = ptrtoint ptr %p.addr.3.i84.i to i32
  %33 = sub i32 %pEnd82.i.i, %p.addr.3.lcssa83.i.i
  %uglygep.i.i = getelementptr i8, ptr %p.addr.3.i84.i, i32 %33
  br label %while.body39.i.i

while.body31.i.i:                                 ; preds = %BIT_reloadDStream.exit67.i.i
  %and.i.i14.i.i = and i32 %and.i.i44.sink.i.i, 31
  %shl.i.i15.i.i = shl i32 %32, %and.i.i14.i.i
  %shr.i.i18.i.i = lshr i32 %shl.i.i15.i.i, %and1.i.i17.pre-phi.i121.i
  %arrayidx.i19.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i18.i.i
  %34 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i19.i.i, align 1
  %nbBits.i20.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i18.i.i, i32 1
  %36 = ptrtoint ptr %nbBits.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nbBits.i20.i.i, align 1
  %conv.i21.i.i = zext i8 %37 to i32
  %add.i.i22.i.i = add i32 %and.i.i44.sink.i.i, %conv.i21.i.i
  %incdec.ptr33.i.i = getelementptr i8, ptr %p.addr.3.i93.i, i32 1
  %38 = ptrtoint ptr %p.addr.3.i93.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %p.addr.3.i93.i, align 1
  %cmp.i36.i.i = icmp ugt i32 %add.i.i22.i.i, 32
  br i1 %cmp.i36.i.i, label %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.body31.i.i.if.end.i40.i.i_crit_edge

while.body31.i.i.if.end.i40.i.i_crit_edge:        ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i.i

while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

while.body39.i.i:                                 ; preds = %while.body39.i.i.while.body39.i.i_crit_edge, %while.body39.lr.ph.i.i
  %bitD.sroa.16.5.i = phi i32 [ %bitD.sroa.16.4.i, %while.body39.lr.ph.i.i ], [ %add.i.i32.i.i, %while.body39.i.i.while.body39.i.i_crit_edge ]
  %p.addr.581.i.i = phi ptr [ %p.addr.3.i84.i, %while.body39.lr.ph.i.i ], [ %incdec.ptr41.i.i, %while.body39.i.i.while.body39.i.i_crit_edge ]
  %and.i.i24.i.i = and i32 %bitD.sroa.16.5.i, 31
  %shl.i.i25.i.i = shl i32 %bitD.sroa.0.6.i, %and.i.i24.i.i
  %shr.i.i28.i.i = lshr i32 %shl.i.i25.i.i, %and1.i.i17.pre-phi.i109.i
  %arrayidx.i29.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i28.i.i
  %39 = ptrtoint ptr %arrayidx.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i29.i.i, align 1
  %nbBits.i30.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr1.i, i32 %shr.i.i28.i.i, i32 1
  %41 = ptrtoint ptr %nbBits.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nbBits.i30.i.i, align 1
  %conv.i31.i.i = zext i8 %42 to i32
  %add.i.i32.i.i = add i32 %bitD.sroa.16.5.i, %conv.i31.i.i
  %incdec.ptr41.i.i = getelementptr i8, ptr %p.addr.581.i.i, i32 1
  %43 = ptrtoint ptr %p.addr.581.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %p.addr.581.i.i, align 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr41.i.i, %uglygep.i.i
  br i1 %exitcond.not.i.i, label %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge, label %while.body39.i.i.while.body39.i.i_crit_edge

while.body39.i.i.while.body39.i.i_crit_edge:      ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.i.i

while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

HUF_decodeStreamX1.exit.i:                        ; preds = %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge
  %bitD.sroa.16.6.i = phi i32 [ %bitD.sroa.16.3.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %and.i.i44.sink.i.i, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %add.i.i32.i.i, %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge ]
  %bitD.sroa.35.7.i = phi ptr [ %bitD.sroa.35.4.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %bitD.sroa.35.5.i, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %bitD.sroa.35.6.i, %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge ]
  %cmp.i26.i = icmp eq ptr %bitD.sroa.35.7.i, %cSrc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.16.6.i)
  %cmp1.i28.not.i = icmp eq i32 %bitD.sroa.16.6.i, 32
  %or.cond.i = select i1 %cmp.i26.i, i1 %cmp1.i28.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %dstSize, i32 -20
  br label %HUF_decompress1X1_usingDTable_internal_body.exit

HUF_decompress1X1_usingDTable_internal_body.exit: ; preds = %HUF_decodeStreamX1.exit.i, %BIT_initDStream.exit.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, %sw.epilog.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, %if.then3.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge, %entry.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge
  %retval.1.i = phi i32 [ %cSrcSize, %BIT_initDStream.exit.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge ], [ -20, %sw.epilog.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge ], [ -1, %if.then3.i.i.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge ], [ -72, %entry.HUF_decompress1X1_usingDTable_internal_body.exit_crit_edge ], [ %spec.select.i, %HUF_decodeStreamX1.exit.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_DCtx_wksp(ptr nocapture noundef %DCtx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %DCtx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %cSrcSize)
  %cmp.not = icmp ult i32 %call.i, %cSrcSize
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %cSrc, i32 %call.i
  %sub = sub i32 %cSrcSize, %call.i
  %call4 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %DCtx)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X1_usingDTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %cmp.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef readonly %DTable) unnamed_addr #3 align 64 {
entry:
  %bitD4.i = alloca %struct.BIT_DStream_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cSrcSize)
  %cmp.i = icmp ult i32 %cSrcSize, 10
  br i1 %cmp.i, label %entry.HUF_decompress4X1_usingDTable_internal_body.exit_crit_edge, label %if.end.i

entry.HUF_decompress4X1_usingDTable_internal_body.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X1_usingDTable_internal_body.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -3
  %add.ptr2.i = getelementptr i32, ptr %DTable, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bitD4.i) #7
  %0 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %bitD4.i, i32 255, i32 20)
  %5 = ptrtoint ptr %cSrc to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %cSrc, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  %conv.i = zext i16 %7 to i32
  %add.ptr3.i = getelementptr i8, ptr %cSrc, i32 2
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr3.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  %conv5.i = zext i16 %10 to i32
  %add.ptr6.i = getelementptr i8, ptr %cSrc, i32 4
  %11 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr6.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #7
  %conv8.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 6
  %add9.i = add nuw nsw i32 %add.i, %conv5.i
  %add10.i = add nuw nsw i32 %add9.i, %conv8.i
  %sub.i = sub i32 %cSrcSize, %add10.i
  %add.ptr11.i = getelementptr i8, ptr %cSrc, i32 6
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 %conv.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i, i32 %conv5.i
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %conv8.i
  %add15.i = add i32 %dstSize, 3
  %div320.i = lshr i32 %add15.i, 2
  %add.ptr16.i = getelementptr i8, ptr %dst, i32 %div320.i
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %div320.i
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 %div320.i
  %retval.sroa.4.0.table.addr.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %14 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %retval.sroa.4.0.copyload.i.i = load i8, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i, align 2
  %retval.sroa.4.0.insert.ext.i.i = zext i8 %retval.sroa.4.0.copyload.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %cSrcSize)
  %cmp21.i = icmp ugt i32 %add10.i, %cSrcSize
  br i1 %cmp21.i, label %if.end.i.cleanup186.i_crit_edge, label %if.end24.i

if.end.i.cleanup186.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i775.i = icmp eq i16 %6, 0
  br i1 %cmp.i775.i, label %if.end24.i.cleanup186.i_crit_edge, label %if.end.i.i

if.end24.i.cleanup186.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i.i:                                       ; preds = %if.end24.i
  %add.ptr.i776.i = getelementptr i8, ptr %cSrc, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp2.i.i = icmp ugt i16 %7, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %conv.i, -1
  %arrayidx.i777.i = getelementptr i8, ptr %add.ptr11.i, i32 %sub.i.i
  %15 = ptrtoint ptr %arrayidx.i777.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i777.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.cleanup186.i_crit_edge, label %cond.end.thread.i.i

if.then3.i.i.cleanup186.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i.i:                              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr12.i, i32 -4
  %17 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr5.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %conv.i778.i = zext i8 %16 to i32
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv.i778.i, i1 true) #7, !range !11
  %sub9.i.i = add nsw i32 %20, -23
  br label %cleanup.cont.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr11.i, align 1
  %conv18.i.i = zext i8 %22 to i32
  %23 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %7, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i16 2, label %if.else.i.i.sw.bb47.i.i_crit_edge
    i16 3, label %sw.bb41.i.i
  ]

if.else.i.i.sw.bb47.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i.i = getelementptr i8, ptr %cSrc, i32 8
  %24 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %25 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %add46.i.i = or i32 %shl44.i.i, %conv18.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb41.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge
  %bitD1.sroa.0.0.i = phi i32 [ %add46.i.i, %sw.bb41.i.i ], [ %conv18.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %cSrc, i32 7
  %26 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %27 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 8
  %add52.i.i = add nuw nsw i32 %shl50.i.i, %bitD1.sroa.0.0.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %bitD1.sroa.0.1.i = phi i32 [ %conv18.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge ], [ %add52.i.i, %sw.bb47.i.i ]
  %sub54.i.i = add nsw i32 %conv.i, -1
  %arrayidx55.i.i = getelementptr i8, ptr %add.ptr11.i, i32 %sub54.i.i
  %28 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool57.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool57.not.i.i, label %sw.epilog.i.i.cleanup186.i_crit_edge, label %cleanup.cont73.i.i

sw.epilog.i.i.cleanup186.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i.i:                               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i.i = zext i8 %29 to i32
  %30 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i, i1 true) #7, !range !11
  %.neg.i.i = mul nsw i32 %conv.i, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 9
  %add76.i.i = add nsw i32 %mul.i.i, %30
  br label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %cleanup.cont73.i.i, %cond.end.thread.i.i
  %bitD1.sroa.0.2.i = phi i32 [ %19, %cond.end.thread.i.i ], [ %bitD1.sroa.0.1.i, %cleanup.cont73.i.i ]
  %bitD1.sroa.19.0.i = phi i32 [ %sub9.i.i, %cond.end.thread.i.i ], [ %add76.i.i, %cleanup.cont73.i.i ]
  %bitD1.sroa.44.0.i = phi ptr [ %add.ptr5.i.i, %cond.end.thread.i.i ], [ %add.ptr11.i, %cleanup.cont73.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i781.i = icmp eq i16 %9, 0
  br i1 %cmp.i781.i, label %cleanup.cont.i.cleanup186.i_crit_edge, label %if.end.i787.i

cleanup.cont.i.cleanup186.i_crit_edge:            ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i787.i:                                    ; preds = %cleanup.cont.i
  %add.ptr.i784.i = getelementptr i8, ptr %add.ptr12.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp2.i786.i = icmp ugt i16 %10, 3
  br i1 %cmp2.i786.i, label %if.then3.i794.i, label %if.else.i803.i

if.then3.i794.i:                                  ; preds = %if.end.i787.i
  %sub.i791.i = add nsw i32 %conv5.i, -1
  %arrayidx.i792.i = getelementptr i8, ptr %add.ptr12.i, i32 %sub.i791.i
  %31 = ptrtoint ptr %arrayidx.i792.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i792.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i793.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i793.i, label %if.then3.i794.i.cleanup186.i_crit_edge, label %cond.end.thread.i798.i

if.then3.i794.i.cleanup186.i_crit_edge:           ; preds = %if.then3.i794.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i798.i:                           ; preds = %if.then3.i794.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i789.i = getelementptr i8, ptr %add.ptr13.i, i32 -4
  %33 = ptrtoint ptr %add.ptr5.i789.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr5.i789.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %conv.i795.i = zext i8 %32 to i32
  %36 = tail call i32 @llvm.ctlz.i32(i32 %conv.i795.i, i1 true) #7, !range !11
  %sub9.i796.i = add nsw i32 %36, -23
  br label %cleanup.cont37.i

if.else.i803.i:                                   ; preds = %if.end.i787.i
  %37 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr12.i, align 1
  %conv18.i802.i = zext i8 %38 to i32
  %39 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %10, label %if.else.i803.i.sw.epilog.i817.i_crit_edge [
    i16 2, label %if.else.i803.i.sw.bb47.i813.i_crit_edge
    i16 3, label %sw.bb41.i808.i
  ]

if.else.i803.i.sw.bb47.i813.i_crit_edge:          ; preds = %if.else.i803.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i813.i

if.else.i803.i.sw.epilog.i817.i_crit_edge:        ; preds = %if.else.i803.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i817.i

sw.bb41.i808.i:                                   ; preds = %if.else.i803.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i804.i = getelementptr i8, ptr %add.ptr12.i, i32 2
  %40 = ptrtoint ptr %arrayidx42.i804.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx42.i804.i, align 1
  %conv43.i805.i = zext i8 %41 to i32
  %shl44.i806.i = shl nuw nsw i32 %conv43.i805.i, 16
  %add46.i807.i = or i32 %shl44.i806.i, %conv18.i802.i
  br label %sw.bb47.i813.i

sw.bb47.i813.i:                                   ; preds = %sw.bb41.i808.i, %if.else.i803.i.sw.bb47.i813.i_crit_edge
  %bitD2.sroa.0.0.i = phi i32 [ %add46.i807.i, %sw.bb41.i808.i ], [ %conv18.i802.i, %if.else.i803.i.sw.bb47.i813.i_crit_edge ]
  %arrayidx48.i809.i = getelementptr i8, ptr %add.ptr12.i, i32 1
  %42 = ptrtoint ptr %arrayidx48.i809.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx48.i809.i, align 1
  %conv49.i810.i = zext i8 %43 to i32
  %shl50.i811.i = shl nuw nsw i32 %conv49.i810.i, 8
  %add52.i812.i = add nuw nsw i32 %shl50.i811.i, %bitD2.sroa.0.0.i
  br label %sw.epilog.i817.i

sw.epilog.i817.i:                                 ; preds = %sw.bb47.i813.i, %if.else.i803.i.sw.epilog.i817.i_crit_edge
  %bitD2.sroa.0.1.i = phi i32 [ %conv18.i802.i, %if.else.i803.i.sw.epilog.i817.i_crit_edge ], [ %add52.i812.i, %sw.bb47.i813.i ]
  %sub54.i814.i = add nsw i32 %conv5.i, -1
  %arrayidx55.i815.i = getelementptr i8, ptr %add.ptr12.i, i32 %sub54.i814.i
  %44 = ptrtoint ptr %arrayidx55.i815.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx55.i815.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not.i816.i = icmp eq i8 %45, 0
  br i1 %tobool57.not.i816.i, label %sw.epilog.i817.i.cleanup186.i_crit_edge, label %cleanup.cont73.i825.i

sw.epilog.i817.i.cleanup186.i_crit_edge:          ; preds = %sw.epilog.i817.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i825.i:                            ; preds = %sw.epilog.i817.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i820.i = zext i8 %45 to i32
  %46 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i820.i, i1 true) #7, !range !11
  %.neg.i822.i = mul nsw i32 %conv5.i, -8
  %mul.i823.i = add nsw i32 %.neg.i822.i, 9
  %add76.i824.i = add nsw i32 %mul.i823.i, %46
  br label %cleanup.cont37.i

cleanup.cont37.i:                                 ; preds = %cleanup.cont73.i825.i, %cond.end.thread.i798.i
  %bitD2.sroa.0.2.i = phi i32 [ %35, %cond.end.thread.i798.i ], [ %bitD2.sroa.0.1.i, %cleanup.cont73.i825.i ]
  %bitD2.sroa.19.0.i = phi i32 [ %sub9.i796.i, %cond.end.thread.i798.i ], [ %add76.i824.i, %cleanup.cont73.i825.i ]
  %bitD2.sroa.44.0.i = phi ptr [ %add.ptr5.i789.i, %cond.end.thread.i798.i ], [ %add.ptr12.i, %cleanup.cont73.i825.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i830.i = icmp eq i16 %12, 0
  br i1 %cmp.i830.i, label %cleanup.cont37.i.cleanup186.i_crit_edge, label %if.end.i836.i

cleanup.cont37.i.cleanup186.i_crit_edge:          ; preds = %cleanup.cont37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i836.i:                                    ; preds = %cleanup.cont37.i
  %add.ptr.i833.i = getelementptr i8, ptr %add.ptr13.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp2.i835.i = icmp ugt i16 %13, 3
  br i1 %cmp2.i835.i, label %if.then3.i843.i, label %if.else.i852.i

if.then3.i843.i:                                  ; preds = %if.end.i836.i
  %sub.i840.i = add nsw i32 %conv8.i, -1
  %arrayidx.i841.i = getelementptr i8, ptr %add.ptr13.i, i32 %sub.i840.i
  %47 = ptrtoint ptr %arrayidx.i841.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i841.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i842.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i842.i, label %if.then3.i843.i.cleanup186.i_crit_edge, label %cond.end.thread.i847.i

if.then3.i843.i.cleanup186.i_crit_edge:           ; preds = %if.then3.i843.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i847.i:                           ; preds = %if.then3.i843.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i838.i = getelementptr i8, ptr %add.ptr14.i, i32 -4
  %49 = ptrtoint ptr %add.ptr5.i838.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr5.i838.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %conv.i844.i = zext i8 %48 to i32
  %52 = tail call i32 @llvm.ctlz.i32(i32 %conv.i844.i, i1 true) #7, !range !11
  %sub9.i845.i = add nsw i32 %52, -23
  br label %cleanup.cont46.i

if.else.i852.i:                                   ; preds = %if.end.i836.i
  %53 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr13.i, align 1
  %conv18.i851.i = zext i8 %54 to i32
  %55 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %13, label %if.else.i852.i.sw.epilog.i866.i_crit_edge [
    i16 2, label %if.else.i852.i.sw.bb47.i862.i_crit_edge
    i16 3, label %sw.bb41.i857.i
  ]

if.else.i852.i.sw.bb47.i862.i_crit_edge:          ; preds = %if.else.i852.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i862.i

if.else.i852.i.sw.epilog.i866.i_crit_edge:        ; preds = %if.else.i852.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i866.i

sw.bb41.i857.i:                                   ; preds = %if.else.i852.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i853.i = getelementptr i8, ptr %add.ptr13.i, i32 2
  %56 = ptrtoint ptr %arrayidx42.i853.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx42.i853.i, align 1
  %conv43.i854.i = zext i8 %57 to i32
  %shl44.i855.i = shl nuw nsw i32 %conv43.i854.i, 16
  %add46.i856.i = or i32 %shl44.i855.i, %conv18.i851.i
  br label %sw.bb47.i862.i

sw.bb47.i862.i:                                   ; preds = %sw.bb41.i857.i, %if.else.i852.i.sw.bb47.i862.i_crit_edge
  %bitD3.sroa.0.0.i = phi i32 [ %add46.i856.i, %sw.bb41.i857.i ], [ %conv18.i851.i, %if.else.i852.i.sw.bb47.i862.i_crit_edge ]
  %arrayidx48.i858.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %58 = ptrtoint ptr %arrayidx48.i858.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx48.i858.i, align 1
  %conv49.i859.i = zext i8 %59 to i32
  %shl50.i860.i = shl nuw nsw i32 %conv49.i859.i, 8
  %add52.i861.i = add nuw nsw i32 %shl50.i860.i, %bitD3.sroa.0.0.i
  br label %sw.epilog.i866.i

sw.epilog.i866.i:                                 ; preds = %sw.bb47.i862.i, %if.else.i852.i.sw.epilog.i866.i_crit_edge
  %bitD3.sroa.0.1.i = phi i32 [ %conv18.i851.i, %if.else.i852.i.sw.epilog.i866.i_crit_edge ], [ %add52.i861.i, %sw.bb47.i862.i ]
  %sub54.i863.i = add nsw i32 %conv8.i, -1
  %arrayidx55.i864.i = getelementptr i8, ptr %add.ptr13.i, i32 %sub54.i863.i
  %60 = ptrtoint ptr %arrayidx55.i864.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx55.i864.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool57.not.i865.i = icmp eq i8 %61, 0
  br i1 %tobool57.not.i865.i, label %sw.epilog.i866.i.cleanup186.i_crit_edge, label %cleanup.cont73.i874.i

sw.epilog.i866.i.cleanup186.i_crit_edge:          ; preds = %sw.epilog.i866.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i874.i:                            ; preds = %sw.epilog.i866.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i869.i = zext i8 %61 to i32
  %62 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i869.i, i1 true) #7, !range !11
  %.neg.i871.i = mul nsw i32 %conv8.i, -8
  %mul.i872.i = add nsw i32 %.neg.i871.i, 9
  %add76.i873.i = add nsw i32 %mul.i872.i, %62
  br label %cleanup.cont46.i

cleanup.cont46.i:                                 ; preds = %cleanup.cont73.i874.i, %cond.end.thread.i847.i
  %bitD3.sroa.0.2.i = phi i32 [ %51, %cond.end.thread.i847.i ], [ %bitD3.sroa.0.1.i, %cleanup.cont73.i874.i ]
  %bitD3.sroa.19.0.i = phi i32 [ %sub9.i845.i, %cond.end.thread.i847.i ], [ %add76.i873.i, %cleanup.cont73.i874.i ]
  %bitD3.sroa.44.0.i = phi ptr [ %add.ptr5.i838.i, %cond.end.thread.i847.i ], [ %add.ptr13.i, %cleanup.cont73.i874.i ]
  %call48.i = call fastcc i32 @BIT_initDStream(ptr noundef nonnull %bitD4.i, ptr noundef %add.ptr14.i, i32 noundef %sub.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call48.i)
  %cmp.i879.i = icmp ult i32 %call48.i, -119
  br i1 %cmp.i879.i, label %for.cond.preheader.i, label %cleanup.cont46.i.cleanup186.i_crit_edge

cleanup.cont46.i.cleanup186.i_crit_edge:          ; preds = %cleanup.cont46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

for.cond.preheader.i:                             ; preds = %cleanup.cont46.i
  %cmp561124.not.i = icmp ult ptr %add.ptr18.i, %add.ptr1.i
  br i1 %cmp561124.not.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i = and i32 %sub.i.i.i, 31
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %endSignal.01141.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %and156.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %op4.01140.i = phi ptr [ %add.ptr18.i, %for.body.lr.ph.i ], [ %incdec.ptr140.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %op3.01139.i = phi ptr [ %add.ptr17.i, %for.body.lr.ph.i ], [ %incdec.ptr138.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %op2.01138.i = phi ptr [ %add.ptr16.i, %for.body.lr.ph.i ], [ %incdec.ptr136.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %op1.01137.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %incdec.ptr134.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD3.sroa.44.11136.i = phi ptr [ %bitD3.sroa.44.0.i, %for.body.lr.ph.i ], [ %bitD3.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD3.sroa.19.11135.i = phi i32 [ %bitD3.sroa.19.0.i, %for.body.lr.ph.i ], [ %bitD3.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD3.sroa.0.31134.i = phi i32 [ %bitD3.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD3.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD2.sroa.44.11133.i = phi ptr [ %bitD2.sroa.44.0.i, %for.body.lr.ph.i ], [ %bitD2.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD2.sroa.19.11132.i = phi i32 [ %bitD2.sroa.19.0.i, %for.body.lr.ph.i ], [ %bitD2.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD2.sroa.0.31131.i = phi i32 [ %bitD2.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD2.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD1.sroa.44.11130.i = phi ptr [ %bitD1.sroa.44.0.i, %for.body.lr.ph.i ], [ %bitD1.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD1.sroa.19.11129.i = phi i32 [ %bitD1.sroa.19.0.i, %for.body.lr.ph.i ], [ %bitD1.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %bitD1.sroa.0.31128.i = phi i32 [ %bitD1.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD1.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge ]
  %and.i.i.i = and i32 %bitD1.sroa.19.11129.i, 31
  %shl.i.i.i = shl i32 %bitD1.sroa.0.31128.i, %and.i.i.i
  %shr.i.i.i = lshr i32 %shl.i.i.i, %and1.i.i.i
  %arrayidx.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i, align 1
  %nbBits.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i, i32 1
  %67 = ptrtoint ptr %nbBits.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nbBits.i.i, align 1
  %conv.i.i = zext i8 %68 to i32
  %add.i.i.i = add i32 %bitD1.sroa.19.11129.i, %conv.i.i
  %incdec.ptr86.i = getelementptr i8, ptr %op1.01137.i, i32 1
  %69 = ptrtoint ptr %op1.01137.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %op1.01137.i, align 1
  %and.i.i323.i = and i32 %bitD2.sroa.19.11132.i, 31
  %shl.i.i324.i = shl i32 %bitD2.sroa.0.31131.i, %and.i.i323.i
  %shr.i.i327.i = lshr i32 %shl.i.i324.i, %and1.i.i.i
  %arrayidx.i328.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i327.i
  %70 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i328.i, align 1
  %nbBits.i329.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i327.i, i32 1
  %72 = ptrtoint ptr %nbBits.i329.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nbBits.i329.i, align 1
  %conv.i330.i = zext i8 %73 to i32
  %add.i.i331.i = add i32 %bitD2.sroa.19.11132.i, %conv.i330.i
  %incdec.ptr93.i = getelementptr i8, ptr %op2.01138.i, i32 1
  %74 = ptrtoint ptr %op2.01138.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %71, ptr %op2.01138.i, align 1
  %and.i.i333.i = and i32 %bitD3.sroa.19.11135.i, 31
  %shl.i.i334.i = shl i32 %bitD3.sroa.0.31134.i, %and.i.i333.i
  %shr.i.i337.i = lshr i32 %shl.i.i334.i, %and1.i.i.i
  %arrayidx.i338.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i337.i
  %75 = ptrtoint ptr %arrayidx.i338.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i338.i, align 1
  %nbBits.i339.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i337.i, i32 1
  %77 = ptrtoint ptr %nbBits.i339.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nbBits.i339.i, align 1
  %conv.i340.i = zext i8 %78 to i32
  %add.i.i341.i = add i32 %bitD3.sroa.19.11135.i, %conv.i340.i
  %incdec.ptr100.i = getelementptr i8, ptr %op3.01139.i, i32 1
  %79 = ptrtoint ptr %op3.01139.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %op3.01139.i, align 1
  %80 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bitD4.i, align 4
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %0, align 4
  %and.i.i343.i = and i32 %83, 31
  %shl.i.i344.i = shl i32 %81, %and.i.i343.i
  %shr.i.i347.i = lshr i32 %shl.i.i344.i, %and1.i.i.i
  %arrayidx.i348.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i347.i
  %84 = ptrtoint ptr %arrayidx.i348.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i348.i, align 1
  %nbBits.i349.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i347.i, i32 1
  %86 = ptrtoint ptr %nbBits.i349.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nbBits.i349.i, align 1
  %conv.i350.i = zext i8 %87 to i32
  %add.i.i351.i = add i32 %83, %conv.i350.i
  %incdec.ptr107.i = getelementptr i8, ptr %op4.01140.i, i32 1
  %88 = ptrtoint ptr %op4.01140.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %85, ptr %op4.01140.i, align 1
  %and.i.i353.i = and i32 %add.i.i.i, 31
  %shl.i.i354.i = shl i32 %bitD1.sroa.0.31128.i, %and.i.i353.i
  %shr.i.i357.i = lshr i32 %shl.i.i354.i, %and1.i.i.i
  %arrayidx.i358.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i357.i
  %89 = ptrtoint ptr %arrayidx.i358.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i358.i, align 1
  %nbBits.i359.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i357.i, i32 1
  %91 = ptrtoint ptr %nbBits.i359.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nbBits.i359.i, align 1
  %conv.i360.i = zext i8 %92 to i32
  %add.i.i361.i = add i32 %add.i.i.i, %conv.i360.i
  %incdec.ptr134.i = getelementptr i8, ptr %op1.01137.i, i32 2
  %93 = ptrtoint ptr %incdec.ptr86.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %90, ptr %incdec.ptr86.i, align 1
  %and.i.i363.i = and i32 %add.i.i331.i, 31
  %shl.i.i364.i = shl i32 %bitD2.sroa.0.31131.i, %and.i.i363.i
  %shr.i.i367.i = lshr i32 %shl.i.i364.i, %and1.i.i.i
  %arrayidx.i368.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i367.i
  %94 = ptrtoint ptr %arrayidx.i368.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i368.i, align 1
  %nbBits.i369.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i367.i, i32 1
  %96 = ptrtoint ptr %nbBits.i369.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nbBits.i369.i, align 1
  %conv.i370.i = zext i8 %97 to i32
  %add.i.i371.i = add i32 %add.i.i331.i, %conv.i370.i
  %incdec.ptr136.i = getelementptr i8, ptr %op2.01138.i, i32 2
  %98 = ptrtoint ptr %incdec.ptr93.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %95, ptr %incdec.ptr93.i, align 1
  %and.i.i373.i = and i32 %add.i.i341.i, 31
  %shl.i.i374.i = shl i32 %bitD3.sroa.0.31134.i, %and.i.i373.i
  %shr.i.i377.i = lshr i32 %shl.i.i374.i, %and1.i.i.i
  %arrayidx.i378.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i377.i
  %99 = ptrtoint ptr %arrayidx.i378.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i378.i, align 1
  %nbBits.i379.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i377.i, i32 1
  %101 = ptrtoint ptr %nbBits.i379.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nbBits.i379.i, align 1
  %conv.i380.i = zext i8 %102 to i32
  %add.i.i381.i = add i32 %add.i.i341.i, %conv.i380.i
  %incdec.ptr138.i = getelementptr i8, ptr %op3.01139.i, i32 2
  %103 = ptrtoint ptr %incdec.ptr100.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %100, ptr %incdec.ptr100.i, align 1
  %and.i.i383.i = and i32 %add.i.i351.i, 31
  %shl.i.i384.i = shl i32 %81, %and.i.i383.i
  %shr.i.i387.i = lshr i32 %shl.i.i384.i, %and1.i.i.i
  %arrayidx.i388.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i387.i
  %104 = ptrtoint ptr %arrayidx.i388.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i388.i, align 1
  %nbBits.i389.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i387.i, i32 1
  %106 = ptrtoint ptr %nbBits.i389.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %nbBits.i389.i, align 1
  %conv.i390.i = zext i8 %107 to i32
  %add.i.i391.i = add i32 %add.i.i351.i, %conv.i390.i
  store i32 %add.i.i391.i, ptr %0, align 4
  %incdec.ptr140.i = getelementptr i8, ptr %op4.01140.i, i32 2
  %108 = ptrtoint ptr %incdec.ptr107.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %105, ptr %incdec.ptr107.i, align 1
  %cmp.i883.i = icmp ult ptr %bitD1.sroa.44.11130.i, %add.ptr.i776.i
  br i1 %cmp.i883.i, label %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge, label %if.end.i886.i, !prof !12

for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit.i

if.end.i886.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i32 %add.i.i361.i, 3
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %add.ptr.i885.i = getelementptr i8, ptr %bitD1.sroa.44.11130.i, i32 %idx.neg.i.i
  %and.i.i = and i32 %add.i.i361.i, 7
  %109 = ptrtoint ptr %add.ptr.i885.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %add.ptr.i885.i, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #7
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %if.end.i886.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge
  %bitD1.sroa.0.4.i = phi i32 [ %bitD1.sroa.0.31128.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %111, %if.end.i886.i ]
  %bitD1.sroa.19.2.i = phi i32 [ %add.i.i361.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %and.i.i, %if.end.i886.i ]
  %bitD1.sroa.44.2.i = phi ptr [ %bitD1.sroa.44.11130.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %add.ptr.i885.i, %if.end.i886.i ]
  %cmp.i889.i = icmp ult ptr %bitD2.sroa.44.11133.i, %add.ptr.i784.i
  br i1 %cmp.i889.i, label %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge, label %if.end.i895.i, !prof !12

BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit897.i

if.end.i895.i:                                    ; preds = %BIT_reloadDStreamFast.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i891.i = lshr i32 %add.i.i371.i, 3
  %idx.neg.i892.i = sub nsw i32 0, %shr.i891.i
  %add.ptr.i893.i = getelementptr i8, ptr %bitD2.sroa.44.11133.i, i32 %idx.neg.i892.i
  %and.i894.i = and i32 %add.i.i371.i, 7
  %112 = ptrtoint ptr %add.ptr.i893.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %add.ptr.i893.i, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  br label %BIT_reloadDStreamFast.exit897.i

BIT_reloadDStreamFast.exit897.i:                  ; preds = %if.end.i895.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge
  %bitD2.sroa.0.4.i = phi i32 [ %bitD2.sroa.0.31131.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge ], [ %114, %if.end.i895.i ]
  %bitD2.sroa.19.2.i = phi i32 [ %add.i.i371.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge ], [ %and.i894.i, %if.end.i895.i ]
  %bitD2.sroa.44.2.i = phi ptr [ %bitD2.sroa.44.11133.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit897.i_crit_edge ], [ %add.ptr.i893.i, %if.end.i895.i ]
  %cmp.i900.i = icmp ult ptr %bitD3.sroa.44.11136.i, %add.ptr.i833.i
  br i1 %cmp.i900.i, label %BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge, label %if.end.i906.i, !prof !12

BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit897.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit908.i

if.end.i906.i:                                    ; preds = %BIT_reloadDStreamFast.exit897.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i902.i = lshr i32 %add.i.i381.i, 3
  %idx.neg.i903.i = sub nsw i32 0, %shr.i902.i
  %add.ptr.i904.i = getelementptr i8, ptr %bitD3.sroa.44.11136.i, i32 %idx.neg.i903.i
  %and.i905.i = and i32 %add.i.i381.i, 7
  %115 = ptrtoint ptr %add.ptr.i904.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %add.ptr.i904.i, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  br label %BIT_reloadDStreamFast.exit908.i

BIT_reloadDStreamFast.exit908.i:                  ; preds = %if.end.i906.i, %BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge
  %bitD3.sroa.0.4.i = phi i32 [ %bitD3.sroa.0.31134.i, %BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge ], [ %117, %if.end.i906.i ]
  %bitD3.sroa.19.2.i = phi i32 [ %add.i.i381.i, %BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge ], [ %and.i905.i, %if.end.i906.i ]
  %bitD3.sroa.44.2.i = phi ptr [ %bitD3.sroa.44.11136.i, %BIT_reloadDStreamFast.exit897.i.BIT_reloadDStreamFast.exit908.i_crit_edge ], [ %add.ptr.i904.i, %if.end.i906.i ]
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %cmp.i911.i = icmp ult ptr %119, %64
  br i1 %cmp.i911.i, label %BIT_reloadDStreamFast.exit908.i.BIT_reloadDStreamFast.exit919.i_crit_edge, label %if.end.i917.i, !prof !12

BIT_reloadDStreamFast.exit908.i.BIT_reloadDStreamFast.exit919.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit908.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit919.i

if.end.i917.i:                                    ; preds = %BIT_reloadDStreamFast.exit908.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i913.i = lshr i32 %add.i.i391.i, 3
  %idx.neg.i914.i = sub nsw i32 0, %shr.i913.i
  %add.ptr.i915.i = getelementptr i8, ptr %119, i32 %idx.neg.i914.i
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %add.ptr.i915.i, ptr %1, align 4
  %and.i916.i = and i32 %add.i.i391.i, 7
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and.i916.i, ptr %0, align 4
  %122 = ptrtoint ptr %add.ptr.i915.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %add.ptr.i915.i, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #7
  %125 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %bitD4.i, align 4
  br label %BIT_reloadDStreamFast.exit919.i

BIT_reloadDStreamFast.exit919.i:                  ; preds = %if.end.i917.i, %BIT_reloadDStreamFast.exit908.i.BIT_reloadDStreamFast.exit919.i_crit_edge
  %126 = xor i1 %cmp.i911.i, true
  %conv155.i = zext i1 %126 to i32
  %and1441204.demorgan.i = or i1 %cmp.i889.i, %cmp.i883.i
  %and1481205.demorgan.i = or i1 %cmp.i900.i, %and1441204.demorgan.i
  %and1481205.i = xor i1 %and1481205.demorgan.i, true
  %and148.i = zext i1 %and1481205.i to i32
  %and152.i = and i32 %endSignal.01141.i, %and148.i
  %and156.i = and i32 %and152.i, %conv155.i
  %cmp56.i = icmp ult ptr %incdec.ptr140.i, %add.ptr1.i
  %conv57.i = zext i1 %cmp56.i to i32
  %and.i = and i32 %and156.i, %conv57.i
  %tobool58.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool58.not.i, label %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge, label %BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge

BIT_reloadDStreamFast.exit919.i.for.body.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit919.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit919.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bitD1.sroa.0.3.lcssa.i = phi i32 [ %bitD1.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD1.sroa.19.1.lcssa.i = phi i32 [ %bitD1.sroa.19.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD1.sroa.44.1.lcssa.i = phi ptr [ %bitD1.sroa.44.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD2.sroa.0.3.lcssa.i = phi i32 [ %bitD2.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD2.sroa.19.1.lcssa.i = phi i32 [ %bitD2.sroa.19.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD2.sroa.44.1.lcssa.i = phi ptr [ %bitD2.sroa.44.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD3.sroa.0.3.lcssa.i = phi i32 [ %bitD3.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.0.4.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD3.sroa.19.1.lcssa.i = phi i32 [ %bitD3.sroa.19.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.19.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %bitD3.sroa.44.1.lcssa.i = phi ptr [ %bitD3.sroa.44.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.44.2.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %op1.0.lcssa.i = phi ptr [ %dst, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr134.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %op2.0.lcssa.i = phi ptr [ %add.ptr16.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr136.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %op3.0.lcssa.i = phi ptr [ %add.ptr17.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr138.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %op4.0.lcssa.i = phi ptr [ %add.ptr18.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr140.i, %BIT_reloadDStreamFast.exit919.i.for.end.i_crit_edge ]
  %cmp157.i = icmp ugt ptr %op1.0.lcssa.i, %add.ptr16.i
  %cmp161.i = icmp ugt ptr %op2.0.lcssa.i, %add.ptr17.i
  %or.cond.i = select i1 %cmp157.i, i1 true, i1 %cmp161.i
  %cmp165.i = icmp ugt ptr %op3.0.lcssa.i, %add.ptr18.i
  %or.cond321.i = select i1 %or.cond.i, i1 true, i1 %cmp165.i
  br i1 %or.cond321.i, label %for.end.i.cleanup186.i_crit_edge, label %if.end168.i

for.end.i.cleanup186.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end168.i:                                      ; preds = %for.end.i
  %pEnd82.i.i = ptrtoint ptr %add.ptr16.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD1.sroa.19.1.lcssa.i)
  %cmp.i73.i.i = icmp ugt i32 %bitD1.sroa.19.1.lcssa.i, 32
  br i1 %cmp.i73.i.i, label %entry.while.end_crit_edge.i.i, label %if.end.i.lr.ph.i.i

entry.while.end_crit_edge.i.i:                    ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre84.i.i = and i32 %.pre.i.i, 31
  br label %BIT_reloadDStream.exit67.thread.i.i

if.end.i.lr.ph.i.i:                               ; preds = %if.end168.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr16.i, i32 -3
  %sub.i.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr11.i to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %bitD1.sroa.0.5.i = phi i32 [ %bitD1.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i.i ], [ %129, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD1.sroa.19.3.i = phi i32 [ %bitD1.sroa.19.1.lcssa.i, %if.end.i.lr.ph.i.i ], [ %add.i.i12.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD1.sroa.44.3.i = phi ptr [ %bitD1.sroa.44.1.lcssa.i, %if.end.i.lr.ph.i.i ], [ %bitD1.sroa.44.4.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %p.addr.074.i.i = phi ptr [ %op1.0.lcssa.i, %if.end.i.lr.ph.i.i ], [ %incdec.ptr19.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %cmp1.not.i.i.i = icmp ult ptr %bitD1.sroa.44.3.i, %add.ptr.i776.i
  br i1 %cmp1.not.i.i.i, label %if.end3.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i

BIT_reloadDStreamFast.exit.i.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i33.i.i = lshr i32 %bitD1.sroa.19.3.i, 3
  %and.i.i34.i.i = and i32 %bitD1.sroa.19.3.i, 7
  br label %BIT_reloadDStream.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp5.i.i.i = icmp eq ptr %bitD1.sroa.44.3.i, %add.ptr11.i
  br i1 %cmp5.i.i.i, label %if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge, label %if.end11.i.i.i

if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i.i.preheader

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i392.i = lshr i32 %bitD1.sroa.19.3.i, 3
  %idx.neg.i.i.i = sub nsw i32 0, %shr.i.i392.i
  %add.ptr.i.i.i = getelementptr i8, ptr %bitD1.sroa.44.3.i, i32 %idx.neg.i.i.i
  %cmp15.i.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr11.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bitD1.sroa.44.3.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i.i.i = select i1 %cmp15.i.i.i, i32 %sub.ptr.sub.i.i.i, i32 %shr.i.i392.i
  %result.0.i.i.i = zext i1 %cmp15.i.i.i to i32
  %mul.neg.i.i.i = mul i32 %nbBytes.0.i.i.i, -8
  %sub.i.i393.i = add i32 %mul.neg.i.i.i, %bitD1.sroa.19.3.i
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %if.end11.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i
  %nbBytes.0.i.i.pn.i = phi i32 [ %nbBytes.0.i.i.i, %if.end11.i.i.i ], [ %shr.i.i33.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %and.i.i34.sink.i.i = phi i32 [ %sub.i.i393.i, %if.end11.i.i.i ], [ %and.i.i34.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %retval.0.i.i.i = phi i32 [ %result.0.i.i.i, %if.end11.i.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i.i ]
  %idx.neg21.i.i.pn.i = sub i32 0, %nbBytes.0.i.i.pn.i
  %bitD1.sroa.44.4.i = getelementptr i8, ptr %bitD1.sroa.44.3.i, i32 %idx.neg21.i.i.pn.i
  %127 = ptrtoint ptr %bitD1.sroa.44.4.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %bitD1.sroa.44.4.i, align 1
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, 0
  %cmp1.i.i = icmp ult ptr %p.addr.074.i.i, %add.ptr.i.i
  %and1.i.i = and i1 %cmp1.i.i, %cmp.i.i
  br i1 %and1.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %BIT_reloadDStream.exit.i.i
  %and.i.i.i.i = and i32 %and.i.i34.sink.i.i, 31
  %shl.i.i.i.i = shl i32 %129, %and.i.i.i.i
  %shr.i.i.i.i = lshr i32 %shl.i.i.i.i, %and1.i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i.i
  %130 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i.i, align 1
  %nbBits.i.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i.i, i32 1
  %132 = ptrtoint ptr %nbBits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %nbBits.i.i.i, align 1
  %conv.i.i.i = zext i8 %133 to i32
  %add.i.i.i.i = add i32 %and.i.i34.sink.i.i, %conv.i.i.i
  %134 = ptrtoint ptr %p.addr.074.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %131, ptr %p.addr.074.i.i, align 1
  %incdec.ptr10.i.i = getelementptr i8, ptr %p.addr.074.i.i, i32 1
  %and.i.i4.i.i = and i32 %add.i.i.i.i, 31
  %shl.i.i5.i.i = shl i32 %129, %and.i.i4.i.i
  %shr.i.i8.i.i = lshr i32 %shl.i.i5.i.i, %and1.i.i.i.i
  %arrayidx.i9.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i.i
  %135 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i9.i.i, align 1
  %nbBits.i10.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i.i, i32 1
  %137 = ptrtoint ptr %nbBits.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %nbBits.i10.i.i, align 1
  %conv.i11.i.i = zext i8 %138 to i32
  %add.i.i12.i.i = add i32 %add.i.i.i.i, %conv.i11.i.i
  %incdec.ptr19.i.i = getelementptr i8, ptr %p.addr.074.i.i, i32 2
  %139 = ptrtoint ptr %incdec.ptr10.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %136, ptr %incdec.ptr10.i.i, align 1
  %cmp.i.i.i = icmp ugt i32 %add.i.i12.i.i, 32
  br i1 %cmp.i.i.i, label %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.body.i.i.if.end.i.i.i_crit_edge

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

while.end.i.i:                                    ; preds = %BIT_reloadDStream.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i34.sink.i.i)
  %cmp.i36.i1154.i = icmp ugt i32 %and.i.i34.sink.i.i, 32
  br i1 %cmp.i36.i1154.i, label %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.end.i.i.if.end.i40.i.i.preheader_crit_edge

while.end.i.i.if.end.i40.i.i.preheader_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i.i.preheader

while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

if.end.i40.i.i.preheader:                         ; preds = %while.end.i.i.if.end.i40.i.i.preheader_crit_edge, %if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge
  %bitD1.sroa.44.61157.i.ph = phi ptr [ %bitD1.sroa.44.4.i, %while.end.i.i.if.end.i40.i.i.preheader_crit_edge ], [ %add.ptr11.i, %if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge ]
  %bitD1.sroa.19.51156.i.ph = phi i32 [ %and.i.i34.sink.i.i, %while.end.i.i.if.end.i40.i.i.preheader_crit_edge ], [ %bitD1.sroa.19.3.i, %if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge ]
  %bitD1.sroa.0.71155.i.ph = phi i32 [ %129, %while.end.i.i.if.end.i40.i.i.preheader_crit_edge ], [ %bitD1.sroa.0.5.i, %if.end3.i.i.i.if.end.i40.i.i.preheader_crit_edge ]
  br label %if.end.i40.i.i

if.end.i40.i.i:                                   ; preds = %while.body31.i.i.if.end.i40.i.i_crit_edge, %if.end.i40.i.i.preheader
  %p.addr.3.i1159.i = phi ptr [ %incdec.ptr33.i.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ], [ %p.addr.074.i.i, %if.end.i40.i.i.preheader ]
  %bitD1.sroa.44.61157.i = phi ptr [ %bitD1.sroa.44.7.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ], [ %bitD1.sroa.44.61157.i.ph, %if.end.i40.i.i.preheader ]
  %bitD1.sroa.19.51156.i = phi i32 [ %add.i.i22.i.i, %while.body31.i.i.if.end.i40.i.i_crit_edge ], [ %bitD1.sroa.19.51156.i.ph, %if.end.i40.i.i.preheader ]
  %bitD1.sroa.0.71155.i = phi i32 [ %142, %while.body31.i.i.if.end.i40.i.i_crit_edge ], [ %bitD1.sroa.0.71155.i.ph, %if.end.i40.i.i.preheader ]
  %cmp1.not.i39.i.i = icmp ult ptr %bitD1.sroa.44.61157.i, %add.ptr.i776.i
  br i1 %cmp1.not.i39.i.i, label %if.end3.i48.i.i, label %BIT_reloadDStreamFast.exit.i45.i.i

BIT_reloadDStreamFast.exit.i45.i.i:               ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i41.i.i = lshr i32 %bitD1.sroa.19.51156.i, 3
  %and.i.i44.i.i = and i32 %bitD1.sroa.19.51156.i, 7
  br label %BIT_reloadDStream.exit67.i.i

if.end3.i48.i.i:                                  ; preds = %if.end.i40.i.i
  %cmp5.i47.i.i = icmp eq ptr %bitD1.sroa.44.61157.i, %add.ptr11.i
  br i1 %cmp5.i47.i.i, label %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %if.end11.i65.i.i

if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %if.end3.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

if.end11.i65.i.i:                                 ; preds = %if.end3.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i52.i.i = lshr i32 %bitD1.sroa.19.51156.i, 3
  %idx.neg.i53.i.i = sub nsw i32 0, %shr.i52.i.i
  %add.ptr.i54.i.i = getelementptr i8, ptr %bitD1.sroa.44.61157.i, i32 %idx.neg.i53.i.i
  %cmp15.i55.i.i = icmp ult ptr %add.ptr.i54.i.i, %add.ptr11.i
  %sub.ptr.lhs.cast.i56.i.i = ptrtoint ptr %bitD1.sroa.44.61157.i to i32
  %sub.ptr.sub.i58.i.i = sub i32 %sub.ptr.lhs.cast.i56.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i59.i.i = select i1 %cmp15.i55.i.i, i32 %sub.ptr.sub.i58.i.i, i32 %shr.i52.i.i
  %result.0.i60.i.i = zext i1 %cmp15.i55.i.i to i32
  %mul.neg.i63.i.i = mul i32 %nbBytes.0.i59.i.i, -8
  %sub.i64.i.i = add i32 %mul.neg.i63.i.i, %bitD1.sroa.19.51156.i
  br label %BIT_reloadDStream.exit67.i.i

BIT_reloadDStream.exit67.thread.i.i:              ; preds = %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, %entry.while.end_crit_edge.i.i
  %and1.i.i17.pre-phi.i1219.i = phi i32 [ %and1.i.i.i.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %.pre84.i.i, %entry.while.end_crit_edge.i.i ], [ %and1.i.i.i.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %and1.i.i.i.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %and1.i.i.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD1.sroa.0.7.lcssa.i = phi i32 [ %129, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.0.3.lcssa.i, %entry.while.end_crit_edge.i.i ], [ %142, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.0.71155.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %129, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD1.sroa.19.5.lcssa.i = phi i32 [ %and.i.i34.sink.i.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.19.1.lcssa.i, %entry.while.end_crit_edge.i.i ], [ %add.i.i22.i.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.19.51156.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %add.i.i12.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %bitD1.sroa.44.6.lcssa.i = phi ptr [ %bitD1.sroa.44.4.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.44.1.lcssa.i, %entry.while.end_crit_edge.i.i ], [ %bitD1.sroa.44.7.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %add.ptr11.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %bitD1.sroa.44.4.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %p.addr.3.i.lcssa.i = phi ptr [ %p.addr.074.i.i, %while.end.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %op1.0.lcssa.i, %entry.while.end_crit_edge.i.i ], [ %incdec.ptr33.i.i, %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %p.addr.3.i1159.i, %if.end3.i48.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ], [ %incdec.ptr19.i.i, %while.body.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge ]
  %cmp2787.i.i = icmp ult ptr %p.addr.3.i.lcssa.i, %add.ptr16.i
  br i1 %cmp2787.i.i, label %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge, label %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge

BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i.i

BIT_reloadDStream.exit67.i.i:                     ; preds = %if.end11.i65.i.i, %BIT_reloadDStreamFast.exit.i45.i.i
  %nbBytes.0.i59.i.pn.i = phi i32 [ %nbBytes.0.i59.i.i, %if.end11.i65.i.i ], [ %shr.i.i41.i.i, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %and.i.i44.sink.i.i = phi i32 [ %sub.i64.i.i, %if.end11.i65.i.i ], [ %and.i.i44.i.i, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %retval.0.i66.i.i = phi i32 [ %result.0.i60.i.i, %if.end11.i65.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i45.i.i ]
  %idx.neg21.i61.i.pn.i = sub i32 0, %nbBytes.0.i59.i.pn.i
  %bitD1.sroa.44.7.i = getelementptr i8, ptr %bitD1.sroa.44.61157.i, i32 %idx.neg21.i61.i.pn.i
  %140 = ptrtoint ptr %bitD1.sroa.44.7.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %bitD1.sroa.44.7.i, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66.i.i)
  %cmp25.i.i = icmp eq i32 %retval.0.i66.i.i, 0
  %cmp27.i.i = icmp ult ptr %p.addr.3.i1159.i, %add.ptr16.i
  %and292.i.i = and i1 %cmp27.i.i, %cmp25.i.i
  br i1 %and292.i.i, label %while.body31.i.i, label %while.cond36.preheader.i.i

while.cond36.preheader.i.i:                       ; preds = %BIT_reloadDStream.exit67.i.i
  br i1 %cmp27.i.i, label %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge, label %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge

while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %while.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge: ; preds = %while.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i.i

while.body39.lr.ph.i.i:                           ; preds = %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge
  %and1.i.i17.pre-phi.i1218.i = phi i32 [ %and1.i.i17.pre-phi.i1219.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %and1.i.i.i.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %p.addr.3.i1119.i = phi ptr [ %p.addr.3.i.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %p.addr.3.i1159.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD1.sroa.0.8.i = phi i32 [ %bitD1.sroa.0.7.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %142, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD1.sroa.19.6.i = phi i32 [ %bitD1.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %and.i.i44.sink.i.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %bitD1.sroa.44.8.i = phi ptr [ %bitD1.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.while.body39.lr.ph.i.i_crit_edge ], [ %bitD1.sroa.44.7.i, %while.cond36.preheader.i.i.while.body39.lr.ph.i.i_crit_edge ]
  %p.addr.3.lcssa83.i.i = ptrtoint ptr %p.addr.3.i1119.i to i32
  %143 = sub i32 %pEnd82.i.i, %p.addr.3.lcssa83.i.i
  %uglygep.i.i = getelementptr i8, ptr %p.addr.3.i1119.i, i32 %143
  br label %while.body39.i.i

while.body31.i.i:                                 ; preds = %BIT_reloadDStream.exit67.i.i
  %and.i.i14.i.i = and i32 %and.i.i44.sink.i.i, 31
  %shl.i.i15.i.i = shl i32 %142, %and.i.i14.i.i
  %shr.i.i18.i.i = lshr i32 %shl.i.i15.i.i, %and1.i.i.i.i
  %arrayidx.i19.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i.i
  %144 = ptrtoint ptr %arrayidx.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i19.i.i, align 1
  %nbBits.i20.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i.i, i32 1
  %146 = ptrtoint ptr %nbBits.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %nbBits.i20.i.i, align 1
  %conv.i21.i.i = zext i8 %147 to i32
  %add.i.i22.i.i = add i32 %and.i.i44.sink.i.i, %conv.i21.i.i
  %incdec.ptr33.i.i = getelementptr i8, ptr %p.addr.3.i1159.i, i32 1
  %148 = ptrtoint ptr %p.addr.3.i1159.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %145, ptr %p.addr.3.i1159.i, align 1
  %cmp.i36.i.i = icmp ugt i32 %add.i.i22.i.i, 32
  br i1 %cmp.i36.i.i, label %while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge, label %while.body31.i.i.if.end.i40.i.i_crit_edge

while.body31.i.i.if.end.i40.i.i_crit_edge:        ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i.i

while.body31.i.i.BIT_reloadDStream.exit67.thread.i.i_crit_edge: ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i.i

while.body39.i.i:                                 ; preds = %while.body39.i.i.while.body39.i.i_crit_edge, %while.body39.lr.ph.i.i
  %bitD1.sroa.19.7.i = phi i32 [ %bitD1.sroa.19.6.i, %while.body39.lr.ph.i.i ], [ %add.i.i32.i.i, %while.body39.i.i.while.body39.i.i_crit_edge ]
  %p.addr.581.i.i = phi ptr [ %p.addr.3.i1119.i, %while.body39.lr.ph.i.i ], [ %incdec.ptr41.i.i, %while.body39.i.i.while.body39.i.i_crit_edge ]
  %and.i.i24.i.i = and i32 %bitD1.sroa.19.7.i, 31
  %shl.i.i25.i.i = shl i32 %bitD1.sroa.0.8.i, %and.i.i24.i.i
  %shr.i.i28.i.i = lshr i32 %shl.i.i25.i.i, %and1.i.i17.pre-phi.i1218.i
  %arrayidx.i29.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i.i
  %149 = ptrtoint ptr %arrayidx.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i29.i.i, align 1
  %nbBits.i30.i.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i.i, i32 1
  %151 = ptrtoint ptr %nbBits.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %nbBits.i30.i.i, align 1
  %conv.i31.i.i = zext i8 %152 to i32
  %add.i.i32.i.i = add i32 %bitD1.sroa.19.7.i, %conv.i31.i.i
  %incdec.ptr41.i.i = getelementptr i8, ptr %p.addr.581.i.i, i32 1
  %153 = ptrtoint ptr %p.addr.581.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %150, ptr %p.addr.581.i.i, align 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr41.i.i, %uglygep.i.i
  br i1 %exitcond.not.i.i, label %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge, label %while.body39.i.i.while.body39.i.i_crit_edge

while.body39.i.i.while.body39.i.i_crit_edge:      ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.i.i

while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge: ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit.i

HUF_decodeStreamX1.exit.i:                        ; preds = %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge
  %bitD1.sroa.19.8.i = phi i32 [ %bitD1.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %and.i.i44.sink.i.i, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %add.i.i32.i.i, %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge ]
  %bitD1.sroa.44.9.i = phi ptr [ %bitD1.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %bitD1.sroa.44.7.i, %while.cond36.preheader.i.i.HUF_decodeStreamX1.exit.i_crit_edge ], [ %bitD1.sroa.44.8.i, %while.body39.i.i.HUF_decodeStreamX1.exit.i_crit_edge ]
  %pEnd82.i394.i = ptrtoint ptr %add.ptr17.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD2.sroa.19.1.lcssa.i)
  %cmp.i73.i397.i = icmp ugt i32 %bitD2.sroa.19.1.lcssa.i, 32
  br i1 %cmp.i73.i397.i, label %entry.while.end_crit_edge.i400.i, label %if.end.i.lr.ph.i406.i

entry.while.end_crit_edge.i400.i:                 ; preds = %HUF_decodeStreamX1.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i398.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre84.i399.i = and i32 %.pre.i398.i, 31
  br label %BIT_reloadDStream.exit67.thread.i488.i

if.end.i.lr.ph.i406.i:                            ; preds = %HUF_decodeStreamX1.exit.i
  %add.ptr.i403.i = getelementptr i8, ptr %add.ptr17.i, i32 -3
  %sub.i.i.i404.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i405.i = and i32 %sub.i.i.i404.i, 31
  %sub.ptr.rhs.cast.i.i422.i = ptrtoint ptr %add.ptr12.i to i32
  br label %if.end.i.i409.i

if.end.i.i409.i:                                  ; preds = %while.body.i455.i.if.end.i.i409.i_crit_edge, %if.end.i.lr.ph.i406.i
  %bitD2.sroa.0.5.i = phi i32 [ %bitD2.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i406.i ], [ %156, %while.body.i455.i.if.end.i.i409.i_crit_edge ]
  %bitD2.sroa.19.3.i = phi i32 [ %bitD2.sroa.19.1.lcssa.i, %if.end.i.lr.ph.i406.i ], [ %add.i.i12.i452.i, %while.body.i455.i.if.end.i.i409.i_crit_edge ]
  %bitD2.sroa.44.3.i = phi ptr [ %bitD2.sroa.44.1.lcssa.i, %if.end.i.lr.ph.i406.i ], [ %bitD2.sroa.44.4.i, %while.body.i455.i.if.end.i.i409.i_crit_edge ]
  %p.addr.074.i407.i = phi ptr [ %op2.0.lcssa.i, %if.end.i.lr.ph.i406.i ], [ %incdec.ptr19.i453.i, %while.body.i455.i.if.end.i.i409.i_crit_edge ]
  %cmp1.not.i.i408.i = icmp ult ptr %bitD2.sroa.44.3.i, %add.ptr.i784.i
  br i1 %cmp1.not.i.i408.i, label %if.end3.i.i416.i, label %BIT_reloadDStreamFast.exit.i.i414.i

BIT_reloadDStreamFast.exit.i.i414.i:              ; preds = %if.end.i.i409.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i33.i410.i = lshr i32 %bitD2.sroa.19.3.i, 3
  %and.i.i34.i413.i = and i32 %bitD2.sroa.19.3.i, 7
  br label %BIT_reloadDStream.exit.i437.i

if.end3.i.i416.i:                                 ; preds = %if.end.i.i409.i
  %cmp5.i.i415.i = icmp eq ptr %bitD2.sroa.44.3.i, %add.ptr12.i
  br i1 %cmp5.i.i415.i, label %if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge, label %if.end11.i.i430.i

if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge: ; preds = %if.end3.i.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i465.i.preheader

if.end11.i.i430.i:                                ; preds = %if.end3.i.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i417.i = lshr i32 %bitD2.sroa.19.3.i, 3
  %idx.neg.i.i418.i = sub nsw i32 0, %shr.i.i417.i
  %add.ptr.i.i419.i = getelementptr i8, ptr %bitD2.sroa.44.3.i, i32 %idx.neg.i.i418.i
  %cmp15.i.i420.i = icmp ult ptr %add.ptr.i.i419.i, %add.ptr12.i
  %sub.ptr.lhs.cast.i.i421.i = ptrtoint ptr %bitD2.sroa.44.3.i to i32
  %sub.ptr.sub.i.i423.i = sub i32 %sub.ptr.lhs.cast.i.i421.i, %sub.ptr.rhs.cast.i.i422.i
  %nbBytes.0.i.i424.i = select i1 %cmp15.i.i420.i, i32 %sub.ptr.sub.i.i423.i, i32 %shr.i.i417.i
  %result.0.i.i425.i = zext i1 %cmp15.i.i420.i to i32
  %mul.neg.i.i428.i = mul i32 %nbBytes.0.i.i424.i, -8
  %sub.i.i429.i = add i32 %mul.neg.i.i428.i, %bitD2.sroa.19.3.i
  br label %BIT_reloadDStream.exit.i437.i

BIT_reloadDStream.exit.i437.i:                    ; preds = %if.end11.i.i430.i, %BIT_reloadDStreamFast.exit.i.i414.i
  %nbBytes.0.i.i424.pn.i = phi i32 [ %nbBytes.0.i.i424.i, %if.end11.i.i430.i ], [ %shr.i.i33.i410.i, %BIT_reloadDStreamFast.exit.i.i414.i ]
  %and.i.i34.sink.i431.i = phi i32 [ %sub.i.i429.i, %if.end11.i.i430.i ], [ %and.i.i34.i413.i, %BIT_reloadDStreamFast.exit.i.i414.i ]
  %retval.0.i.i433.i = phi i32 [ %result.0.i.i425.i, %if.end11.i.i430.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i414.i ]
  %idx.neg21.i.i426.pn.i = sub i32 0, %nbBytes.0.i.i424.pn.i
  %bitD2.sroa.44.4.i = getelementptr i8, ptr %bitD2.sroa.44.3.i, i32 %idx.neg21.i.i426.pn.i
  %154 = ptrtoint ptr %bitD2.sroa.44.4.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %bitD2.sroa.44.4.i, align 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i433.i)
  %cmp.i434.i = icmp eq i32 %retval.0.i.i433.i, 0
  %cmp1.i435.i = icmp ult ptr %p.addr.074.i407.i, %add.ptr.i403.i
  %and1.i436.i = and i1 %cmp1.i435.i, %cmp.i434.i
  br i1 %and1.i436.i, label %while.body.i455.i, label %while.end.i460.i

while.body.i455.i:                                ; preds = %BIT_reloadDStream.exit.i437.i
  %and.i.i.i438.i = and i32 %and.i.i34.sink.i431.i, 31
  %shl.i.i.i439.i = shl i32 %156, %and.i.i.i438.i
  %shr.i.i.i440.i = lshr i32 %shl.i.i.i439.i, %and1.i.i.i405.i
  %arrayidx.i.i441.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i440.i
  %157 = ptrtoint ptr %arrayidx.i.i441.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i.i441.i, align 1
  %nbBits.i.i442.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i440.i, i32 1
  %159 = ptrtoint ptr %nbBits.i.i442.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %nbBits.i.i442.i, align 1
  %conv.i.i443.i = zext i8 %160 to i32
  %add.i.i.i444.i = add i32 %and.i.i34.sink.i431.i, %conv.i.i443.i
  %161 = ptrtoint ptr %p.addr.074.i407.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %158, ptr %p.addr.074.i407.i, align 1
  %incdec.ptr10.i445.i = getelementptr i8, ptr %p.addr.074.i407.i, i32 1
  %and.i.i4.i446.i = and i32 %add.i.i.i444.i, 31
  %shl.i.i5.i447.i = shl i32 %156, %and.i.i4.i446.i
  %shr.i.i8.i448.i = lshr i32 %shl.i.i5.i447.i, %and1.i.i.i405.i
  %arrayidx.i9.i449.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i448.i
  %162 = ptrtoint ptr %arrayidx.i9.i449.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.i9.i449.i, align 1
  %nbBits.i10.i450.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i448.i, i32 1
  %164 = ptrtoint ptr %nbBits.i10.i450.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %nbBits.i10.i450.i, align 1
  %conv.i11.i451.i = zext i8 %165 to i32
  %add.i.i12.i452.i = add i32 %add.i.i.i444.i, %conv.i11.i451.i
  %incdec.ptr19.i453.i = getelementptr i8, ptr %p.addr.074.i407.i, i32 2
  %166 = ptrtoint ptr %incdec.ptr10.i445.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %163, ptr %incdec.ptr10.i445.i, align 1
  %cmp.i.i454.i = icmp ugt i32 %add.i.i12.i452.i, 32
  br i1 %cmp.i.i454.i, label %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, label %while.body.i455.i.if.end.i.i409.i_crit_edge

while.body.i455.i.if.end.i.i409.i_crit_edge:      ; preds = %while.body.i455.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i409.i

while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge: ; preds = %while.body.i455.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i488.i

while.end.i460.i:                                 ; preds = %BIT_reloadDStream.exit.i437.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i34.sink.i431.i)
  %cmp.i36.i4621169.i = icmp ugt i32 %and.i.i34.sink.i431.i, 32
  br i1 %cmp.i36.i4621169.i, label %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, label %while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge

while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge: ; preds = %while.end.i460.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i465.i.preheader

while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge: ; preds = %while.end.i460.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i488.i

if.end.i40.i465.i.preheader:                      ; preds = %while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge, %if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge
  %bitD2.sroa.44.61172.i.ph = phi ptr [ %bitD2.sroa.44.4.i, %while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge ], [ %add.ptr12.i, %if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge ]
  %bitD2.sroa.19.51171.i.ph = phi i32 [ %and.i.i34.sink.i431.i, %while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge ], [ %bitD2.sroa.19.3.i, %if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge ]
  %bitD2.sroa.0.71170.i.ph = phi i32 [ %156, %while.end.i460.i.if.end.i40.i465.i.preheader_crit_edge ], [ %bitD2.sroa.0.5.i, %if.end3.i.i416.i.if.end.i40.i465.i.preheader_crit_edge ]
  br label %if.end.i40.i465.i

if.end.i40.i465.i:                                ; preds = %while.body31.i508.i.if.end.i40.i465.i_crit_edge, %if.end.i40.i465.i.preheader
  %p.addr.3.i4611174.i = phi ptr [ %incdec.ptr33.i507.i, %while.body31.i508.i.if.end.i40.i465.i_crit_edge ], [ %p.addr.074.i407.i, %if.end.i40.i465.i.preheader ]
  %bitD2.sroa.44.61172.i = phi ptr [ %bitD2.sroa.44.7.i, %while.body31.i508.i.if.end.i40.i465.i_crit_edge ], [ %bitD2.sroa.44.61172.i.ph, %if.end.i40.i465.i.preheader ]
  %bitD2.sroa.19.51171.i = phi i32 [ %add.i.i22.i506.i, %while.body31.i508.i.if.end.i40.i465.i_crit_edge ], [ %bitD2.sroa.19.51171.i.ph, %if.end.i40.i465.i.preheader ]
  %bitD2.sroa.0.71170.i = phi i32 [ %169, %while.body31.i508.i.if.end.i40.i465.i_crit_edge ], [ %bitD2.sroa.0.71170.i.ph, %if.end.i40.i465.i.preheader ]
  %cmp1.not.i39.i464.i = icmp ult ptr %bitD2.sroa.44.61172.i, %add.ptr.i784.i
  br i1 %cmp1.not.i39.i464.i, label %if.end3.i48.i472.i, label %BIT_reloadDStreamFast.exit.i45.i470.i

BIT_reloadDStreamFast.exit.i45.i470.i:            ; preds = %if.end.i40.i465.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i41.i466.i = lshr i32 %bitD2.sroa.19.51171.i, 3
  %and.i.i44.i469.i = and i32 %bitD2.sroa.19.51171.i, 7
  br label %BIT_reloadDStream.exit67.i495.i

if.end3.i48.i472.i:                               ; preds = %if.end.i40.i465.i
  %cmp5.i47.i471.i = icmp eq ptr %bitD2.sroa.44.61172.i, %add.ptr12.i
  br i1 %cmp5.i47.i471.i, label %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, label %if.end11.i65.i486.i

if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge: ; preds = %if.end3.i48.i472.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i488.i

if.end11.i65.i486.i:                              ; preds = %if.end3.i48.i472.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i52.i473.i = lshr i32 %bitD2.sroa.19.51171.i, 3
  %idx.neg.i53.i474.i = sub nsw i32 0, %shr.i52.i473.i
  %add.ptr.i54.i475.i = getelementptr i8, ptr %bitD2.sroa.44.61172.i, i32 %idx.neg.i53.i474.i
  %cmp15.i55.i476.i = icmp ult ptr %add.ptr.i54.i475.i, %add.ptr12.i
  %sub.ptr.lhs.cast.i56.i477.i = ptrtoint ptr %bitD2.sroa.44.61172.i to i32
  %sub.ptr.sub.i58.i479.i = sub i32 %sub.ptr.lhs.cast.i56.i477.i, %sub.ptr.rhs.cast.i.i422.i
  %nbBytes.0.i59.i480.i = select i1 %cmp15.i55.i476.i, i32 %sub.ptr.sub.i58.i479.i, i32 %shr.i52.i473.i
  %result.0.i60.i481.i = zext i1 %cmp15.i55.i476.i to i32
  %mul.neg.i63.i484.i = mul i32 %nbBytes.0.i59.i480.i, -8
  %sub.i64.i485.i = add i32 %mul.neg.i63.i484.i, %bitD2.sroa.19.51171.i
  br label %BIT_reloadDStream.exit67.i495.i

BIT_reloadDStream.exit67.thread.i488.i:           ; preds = %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, %entry.while.end_crit_edge.i400.i
  %and1.i.i17.pre-phi.i4561239.i = phi i32 [ %and1.i.i.i405.i, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %.pre84.i399.i, %entry.while.end_crit_edge.i400.i ], [ %and1.i.i.i405.i, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %and1.i.i.i405.i, %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %and1.i.i.i405.i, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ]
  %bitD2.sroa.0.7.lcssa.i = phi i32 [ %156, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.0.3.lcssa.i, %entry.while.end_crit_edge.i400.i ], [ %169, %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.0.71170.i, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %156, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ]
  %bitD2.sroa.19.5.lcssa.i = phi i32 [ %and.i.i34.sink.i431.i, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.19.1.lcssa.i, %entry.while.end_crit_edge.i400.i ], [ %add.i.i22.i506.i, %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.19.51171.i, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %add.i.i12.i452.i, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ]
  %bitD2.sroa.44.6.lcssa.i = phi ptr [ %bitD2.sroa.44.4.i, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.44.1.lcssa.i, %entry.while.end_crit_edge.i400.i ], [ %bitD2.sroa.44.7.i, %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %add.ptr12.i, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %bitD2.sroa.44.4.i, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ]
  %p.addr.3.i461.lcssa.i = phi ptr [ %p.addr.074.i407.i, %while.end.i460.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %op2.0.lcssa.i, %entry.while.end_crit_edge.i400.i ], [ %incdec.ptr33.i507.i, %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %p.addr.3.i4611174.i, %if.end3.i48.i472.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ], [ %incdec.ptr19.i453.i, %while.body.i455.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge ]
  %cmp2787.i487.i = icmp ult ptr %p.addr.3.i461.lcssa.i, %add.ptr17.i
  br i1 %cmp2787.i487.i, label %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge, label %BIT_reloadDStream.exit67.thread.i488.i.HUF_decodeStreamX1.exit520.i_crit_edge

BIT_reloadDStream.exit67.thread.i488.i.HUF_decodeStreamX1.exit520.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit520.i

BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i499.i

BIT_reloadDStream.exit67.i495.i:                  ; preds = %if.end11.i65.i486.i, %BIT_reloadDStreamFast.exit.i45.i470.i
  %nbBytes.0.i59.i480.pn.i = phi i32 [ %nbBytes.0.i59.i480.i, %if.end11.i65.i486.i ], [ %shr.i.i41.i466.i, %BIT_reloadDStreamFast.exit.i45.i470.i ]
  %and.i.i44.sink.i489.i = phi i32 [ %sub.i64.i485.i, %if.end11.i65.i486.i ], [ %and.i.i44.i469.i, %BIT_reloadDStreamFast.exit.i45.i470.i ]
  %retval.0.i66.i491.i = phi i32 [ %result.0.i60.i481.i, %if.end11.i65.i486.i ], [ 0, %BIT_reloadDStreamFast.exit.i45.i470.i ]
  %idx.neg21.i61.i482.pn.i = sub i32 0, %nbBytes.0.i59.i480.pn.i
  %bitD2.sroa.44.7.i = getelementptr i8, ptr %bitD2.sroa.44.61172.i, i32 %idx.neg21.i61.i482.pn.i
  %167 = ptrtoint ptr %bitD2.sroa.44.7.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %bitD2.sroa.44.7.i, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66.i491.i)
  %cmp25.i492.i = icmp eq i32 %retval.0.i66.i491.i, 0
  %cmp27.i493.i = icmp ult ptr %p.addr.3.i4611174.i, %add.ptr17.i
  %and292.i494.i = and i1 %cmp27.i493.i, %cmp25.i492.i
  br i1 %and292.i494.i, label %while.body31.i508.i, label %while.cond36.preheader.i496.i

while.cond36.preheader.i496.i:                    ; preds = %BIT_reloadDStream.exit67.i495.i
  br i1 %cmp27.i493.i, label %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge, label %while.cond36.preheader.i496.i.HUF_decodeStreamX1.exit520.i_crit_edge

while.cond36.preheader.i496.i.HUF_decodeStreamX1.exit520.i_crit_edge: ; preds = %while.cond36.preheader.i496.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit520.i

while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge: ; preds = %while.cond36.preheader.i496.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i499.i

while.body39.lr.ph.i499.i:                        ; preds = %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge
  %and1.i.i17.pre-phi.i4561238.i = phi i32 [ %and1.i.i17.pre-phi.i4561239.i, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge ], [ %and1.i.i.i405.i, %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge ]
  %p.addr.3.i4611113.i = phi ptr [ %p.addr.3.i461.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge ], [ %p.addr.3.i4611174.i, %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge ]
  %bitD2.sroa.0.8.i = phi i32 [ %bitD2.sroa.0.7.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge ], [ %169, %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge ]
  %bitD2.sroa.19.6.i = phi i32 [ %bitD2.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge ], [ %and.i.i44.sink.i489.i, %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge ]
  %bitD2.sroa.44.8.i = phi ptr [ %bitD2.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.while.body39.lr.ph.i499.i_crit_edge ], [ %bitD2.sroa.44.7.i, %while.cond36.preheader.i496.i.while.body39.lr.ph.i499.i_crit_edge ]
  %p.addr.3.lcssa83.i497.i = ptrtoint ptr %p.addr.3.i4611113.i to i32
  %170 = sub i32 %pEnd82.i394.i, %p.addr.3.lcssa83.i497.i
  %uglygep.i498.i = getelementptr i8, ptr %p.addr.3.i4611113.i, i32 %170
  br label %while.body39.i519.i

while.body31.i508.i:                              ; preds = %BIT_reloadDStream.exit67.i495.i
  %and.i.i14.i500.i = and i32 %and.i.i44.sink.i489.i, 31
  %shl.i.i15.i501.i = shl i32 %169, %and.i.i14.i500.i
  %shr.i.i18.i502.i = lshr i32 %shl.i.i15.i501.i, %and1.i.i.i405.i
  %arrayidx.i19.i503.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i502.i
  %171 = ptrtoint ptr %arrayidx.i19.i503.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i19.i503.i, align 1
  %nbBits.i20.i504.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i502.i, i32 1
  %173 = ptrtoint ptr %nbBits.i20.i504.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nbBits.i20.i504.i, align 1
  %conv.i21.i505.i = zext i8 %174 to i32
  %add.i.i22.i506.i = add i32 %and.i.i44.sink.i489.i, %conv.i21.i505.i
  %incdec.ptr33.i507.i = getelementptr i8, ptr %p.addr.3.i4611174.i, i32 1
  %175 = ptrtoint ptr %p.addr.3.i4611174.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %172, ptr %p.addr.3.i4611174.i, align 1
  %cmp.i36.i462.i = icmp ugt i32 %add.i.i22.i506.i, 32
  br i1 %cmp.i36.i462.i, label %while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge, label %while.body31.i508.i.if.end.i40.i465.i_crit_edge

while.body31.i508.i.if.end.i40.i465.i_crit_edge:  ; preds = %while.body31.i508.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i465.i

while.body31.i508.i.BIT_reloadDStream.exit67.thread.i488.i_crit_edge: ; preds = %while.body31.i508.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i488.i

while.body39.i519.i:                              ; preds = %while.body39.i519.i.while.body39.i519.i_crit_edge, %while.body39.lr.ph.i499.i
  %bitD2.sroa.19.7.i = phi i32 [ %bitD2.sroa.19.6.i, %while.body39.lr.ph.i499.i ], [ %add.i.i32.i516.i, %while.body39.i519.i.while.body39.i519.i_crit_edge ]
  %p.addr.581.i509.i = phi ptr [ %p.addr.3.i4611113.i, %while.body39.lr.ph.i499.i ], [ %incdec.ptr41.i517.i, %while.body39.i519.i.while.body39.i519.i_crit_edge ]
  %and.i.i24.i510.i = and i32 %bitD2.sroa.19.7.i, 31
  %shl.i.i25.i511.i = shl i32 %bitD2.sroa.0.8.i, %and.i.i24.i510.i
  %shr.i.i28.i512.i = lshr i32 %shl.i.i25.i511.i, %and1.i.i17.pre-phi.i4561238.i
  %arrayidx.i29.i513.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i512.i
  %176 = ptrtoint ptr %arrayidx.i29.i513.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i29.i513.i, align 1
  %nbBits.i30.i514.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i512.i, i32 1
  %178 = ptrtoint ptr %nbBits.i30.i514.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %nbBits.i30.i514.i, align 1
  %conv.i31.i515.i = zext i8 %179 to i32
  %add.i.i32.i516.i = add i32 %bitD2.sroa.19.7.i, %conv.i31.i515.i
  %incdec.ptr41.i517.i = getelementptr i8, ptr %p.addr.581.i509.i, i32 1
  %180 = ptrtoint ptr %p.addr.581.i509.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %177, ptr %p.addr.581.i509.i, align 1
  %exitcond.not.i518.i = icmp eq ptr %incdec.ptr41.i517.i, %uglygep.i498.i
  br i1 %exitcond.not.i518.i, label %while.body39.i519.i.HUF_decodeStreamX1.exit520.i_crit_edge, label %while.body39.i519.i.while.body39.i519.i_crit_edge

while.body39.i519.i.while.body39.i519.i_crit_edge: ; preds = %while.body39.i519.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.i519.i

while.body39.i519.i.HUF_decodeStreamX1.exit520.i_crit_edge: ; preds = %while.body39.i519.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit520.i

HUF_decodeStreamX1.exit520.i:                     ; preds = %while.body39.i519.i.HUF_decodeStreamX1.exit520.i_crit_edge, %while.cond36.preheader.i496.i.HUF_decodeStreamX1.exit520.i_crit_edge, %BIT_reloadDStream.exit67.thread.i488.i.HUF_decodeStreamX1.exit520.i_crit_edge
  %bitD2.sroa.19.8.i = phi i32 [ %bitD2.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.HUF_decodeStreamX1.exit520.i_crit_edge ], [ %and.i.i44.sink.i489.i, %while.cond36.preheader.i496.i.HUF_decodeStreamX1.exit520.i_crit_edge ], [ %add.i.i32.i516.i, %while.body39.i519.i.HUF_decodeStreamX1.exit520.i_crit_edge ]
  %bitD2.sroa.44.9.i = phi ptr [ %bitD2.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i488.i.HUF_decodeStreamX1.exit520.i_crit_edge ], [ %bitD2.sroa.44.7.i, %while.cond36.preheader.i496.i.HUF_decodeStreamX1.exit520.i_crit_edge ], [ %bitD2.sroa.44.8.i, %while.body39.i519.i.HUF_decodeStreamX1.exit520.i_crit_edge ]
  %pEnd82.i521.i = ptrtoint ptr %add.ptr18.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD3.sroa.19.1.lcssa.i)
  %cmp.i73.i524.i = icmp ugt i32 %bitD3.sroa.19.1.lcssa.i, 32
  br i1 %cmp.i73.i524.i, label %entry.while.end_crit_edge.i527.i, label %if.end.i.lr.ph.i533.i

entry.while.end_crit_edge.i527.i:                 ; preds = %HUF_decodeStreamX1.exit520.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i525.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre84.i526.i = and i32 %.pre.i525.i, 31
  br label %BIT_reloadDStream.exit67.thread.i615.i

if.end.i.lr.ph.i533.i:                            ; preds = %HUF_decodeStreamX1.exit520.i
  %add.ptr.i530.i = getelementptr i8, ptr %add.ptr18.i, i32 -3
  %sub.i.i.i531.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i532.i = and i32 %sub.i.i.i531.i, 31
  %sub.ptr.rhs.cast.i.i549.i = ptrtoint ptr %add.ptr13.i to i32
  br label %if.end.i.i536.i

if.end.i.i536.i:                                  ; preds = %while.body.i582.i.if.end.i.i536.i_crit_edge, %if.end.i.lr.ph.i533.i
  %bitD3.sroa.0.5.i = phi i32 [ %bitD3.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i533.i ], [ %183, %while.body.i582.i.if.end.i.i536.i_crit_edge ]
  %bitD3.sroa.19.3.i = phi i32 [ %bitD3.sroa.19.1.lcssa.i, %if.end.i.lr.ph.i533.i ], [ %add.i.i12.i579.i, %while.body.i582.i.if.end.i.i536.i_crit_edge ]
  %bitD3.sroa.44.3.i = phi ptr [ %bitD3.sroa.44.1.lcssa.i, %if.end.i.lr.ph.i533.i ], [ %bitD3.sroa.44.4.i, %while.body.i582.i.if.end.i.i536.i_crit_edge ]
  %p.addr.074.i534.i = phi ptr [ %op3.0.lcssa.i, %if.end.i.lr.ph.i533.i ], [ %incdec.ptr19.i580.i, %while.body.i582.i.if.end.i.i536.i_crit_edge ]
  %cmp1.not.i.i535.i = icmp ult ptr %bitD3.sroa.44.3.i, %add.ptr.i833.i
  br i1 %cmp1.not.i.i535.i, label %if.end3.i.i543.i, label %BIT_reloadDStreamFast.exit.i.i541.i

BIT_reloadDStreamFast.exit.i.i541.i:              ; preds = %if.end.i.i536.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i33.i537.i = lshr i32 %bitD3.sroa.19.3.i, 3
  %and.i.i34.i540.i = and i32 %bitD3.sroa.19.3.i, 7
  br label %BIT_reloadDStream.exit.i564.i

if.end3.i.i543.i:                                 ; preds = %if.end.i.i536.i
  %cmp5.i.i542.i = icmp eq ptr %bitD3.sroa.44.3.i, %add.ptr13.i
  br i1 %cmp5.i.i542.i, label %if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge, label %if.end11.i.i557.i

if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge: ; preds = %if.end3.i.i543.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i592.i.preheader

if.end11.i.i557.i:                                ; preds = %if.end3.i.i543.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i544.i = lshr i32 %bitD3.sroa.19.3.i, 3
  %idx.neg.i.i545.i = sub nsw i32 0, %shr.i.i544.i
  %add.ptr.i.i546.i = getelementptr i8, ptr %bitD3.sroa.44.3.i, i32 %idx.neg.i.i545.i
  %cmp15.i.i547.i = icmp ult ptr %add.ptr.i.i546.i, %add.ptr13.i
  %sub.ptr.lhs.cast.i.i548.i = ptrtoint ptr %bitD3.sroa.44.3.i to i32
  %sub.ptr.sub.i.i550.i = sub i32 %sub.ptr.lhs.cast.i.i548.i, %sub.ptr.rhs.cast.i.i549.i
  %nbBytes.0.i.i551.i = select i1 %cmp15.i.i547.i, i32 %sub.ptr.sub.i.i550.i, i32 %shr.i.i544.i
  %result.0.i.i552.i = zext i1 %cmp15.i.i547.i to i32
  %mul.neg.i.i555.i = mul i32 %nbBytes.0.i.i551.i, -8
  %sub.i.i556.i = add i32 %mul.neg.i.i555.i, %bitD3.sroa.19.3.i
  br label %BIT_reloadDStream.exit.i564.i

BIT_reloadDStream.exit.i564.i:                    ; preds = %if.end11.i.i557.i, %BIT_reloadDStreamFast.exit.i.i541.i
  %nbBytes.0.i.i551.pn.i = phi i32 [ %nbBytes.0.i.i551.i, %if.end11.i.i557.i ], [ %shr.i.i33.i537.i, %BIT_reloadDStreamFast.exit.i.i541.i ]
  %and.i.i34.sink.i558.i = phi i32 [ %sub.i.i556.i, %if.end11.i.i557.i ], [ %and.i.i34.i540.i, %BIT_reloadDStreamFast.exit.i.i541.i ]
  %retval.0.i.i560.i = phi i32 [ %result.0.i.i552.i, %if.end11.i.i557.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i541.i ]
  %idx.neg21.i.i553.pn.i = sub i32 0, %nbBytes.0.i.i551.pn.i
  %bitD3.sroa.44.4.i = getelementptr i8, ptr %bitD3.sroa.44.3.i, i32 %idx.neg21.i.i553.pn.i
  %181 = ptrtoint ptr %bitD3.sroa.44.4.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %bitD3.sroa.44.4.i, align 1
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i560.i)
  %cmp.i561.i = icmp eq i32 %retval.0.i.i560.i, 0
  %cmp1.i562.i = icmp ult ptr %p.addr.074.i534.i, %add.ptr.i530.i
  %and1.i563.i = and i1 %cmp1.i562.i, %cmp.i561.i
  br i1 %and1.i563.i, label %while.body.i582.i, label %while.end.i587.i

while.body.i582.i:                                ; preds = %BIT_reloadDStream.exit.i564.i
  %and.i.i.i565.i = and i32 %and.i.i34.sink.i558.i, 31
  %shl.i.i.i566.i = shl i32 %183, %and.i.i.i565.i
  %shr.i.i.i567.i = lshr i32 %shl.i.i.i566.i, %and1.i.i.i532.i
  %arrayidx.i.i568.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i567.i
  %184 = ptrtoint ptr %arrayidx.i.i568.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i.i568.i, align 1
  %nbBits.i.i569.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i567.i, i32 1
  %186 = ptrtoint ptr %nbBits.i.i569.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %nbBits.i.i569.i, align 1
  %conv.i.i570.i = zext i8 %187 to i32
  %add.i.i.i571.i = add i32 %and.i.i34.sink.i558.i, %conv.i.i570.i
  %188 = ptrtoint ptr %p.addr.074.i534.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %185, ptr %p.addr.074.i534.i, align 1
  %incdec.ptr10.i572.i = getelementptr i8, ptr %p.addr.074.i534.i, i32 1
  %and.i.i4.i573.i = and i32 %add.i.i.i571.i, 31
  %shl.i.i5.i574.i = shl i32 %183, %and.i.i4.i573.i
  %shr.i.i8.i575.i = lshr i32 %shl.i.i5.i574.i, %and1.i.i.i532.i
  %arrayidx.i9.i576.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i575.i
  %189 = ptrtoint ptr %arrayidx.i9.i576.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i9.i576.i, align 1
  %nbBits.i10.i577.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i575.i, i32 1
  %191 = ptrtoint ptr %nbBits.i10.i577.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %nbBits.i10.i577.i, align 1
  %conv.i11.i578.i = zext i8 %192 to i32
  %add.i.i12.i579.i = add i32 %add.i.i.i571.i, %conv.i11.i578.i
  %incdec.ptr19.i580.i = getelementptr i8, ptr %p.addr.074.i534.i, i32 2
  %193 = ptrtoint ptr %incdec.ptr10.i572.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %190, ptr %incdec.ptr10.i572.i, align 1
  %cmp.i.i581.i = icmp ugt i32 %add.i.i12.i579.i, 32
  br i1 %cmp.i.i581.i, label %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, label %while.body.i582.i.if.end.i.i536.i_crit_edge

while.body.i582.i.if.end.i.i536.i_crit_edge:      ; preds = %while.body.i582.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i536.i

while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge: ; preds = %while.body.i582.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i615.i

while.end.i587.i:                                 ; preds = %BIT_reloadDStream.exit.i564.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i34.sink.i558.i)
  %cmp.i36.i5891184.i = icmp ugt i32 %and.i.i34.sink.i558.i, 32
  br i1 %cmp.i36.i5891184.i, label %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, label %while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge

while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge: ; preds = %while.end.i587.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i592.i.preheader

while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge: ; preds = %while.end.i587.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i615.i

if.end.i40.i592.i.preheader:                      ; preds = %while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge, %if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge
  %bitD3.sroa.44.61187.i.ph = phi ptr [ %bitD3.sroa.44.4.i, %while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge ], [ %add.ptr13.i, %if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge ]
  %bitD3.sroa.19.51186.i.ph = phi i32 [ %and.i.i34.sink.i558.i, %while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge ], [ %bitD3.sroa.19.3.i, %if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge ]
  %bitD3.sroa.0.71185.i.ph = phi i32 [ %183, %while.end.i587.i.if.end.i40.i592.i.preheader_crit_edge ], [ %bitD3.sroa.0.5.i, %if.end3.i.i543.i.if.end.i40.i592.i.preheader_crit_edge ]
  br label %if.end.i40.i592.i

if.end.i40.i592.i:                                ; preds = %while.body31.i635.i.if.end.i40.i592.i_crit_edge, %if.end.i40.i592.i.preheader
  %p.addr.3.i5881189.i = phi ptr [ %incdec.ptr33.i634.i, %while.body31.i635.i.if.end.i40.i592.i_crit_edge ], [ %p.addr.074.i534.i, %if.end.i40.i592.i.preheader ]
  %bitD3.sroa.44.61187.i = phi ptr [ %bitD3.sroa.44.7.i, %while.body31.i635.i.if.end.i40.i592.i_crit_edge ], [ %bitD3.sroa.44.61187.i.ph, %if.end.i40.i592.i.preheader ]
  %bitD3.sroa.19.51186.i = phi i32 [ %add.i.i22.i633.i, %while.body31.i635.i.if.end.i40.i592.i_crit_edge ], [ %bitD3.sroa.19.51186.i.ph, %if.end.i40.i592.i.preheader ]
  %bitD3.sroa.0.71185.i = phi i32 [ %196, %while.body31.i635.i.if.end.i40.i592.i_crit_edge ], [ %bitD3.sroa.0.71185.i.ph, %if.end.i40.i592.i.preheader ]
  %cmp1.not.i39.i591.i = icmp ult ptr %bitD3.sroa.44.61187.i, %add.ptr.i833.i
  br i1 %cmp1.not.i39.i591.i, label %if.end3.i48.i599.i, label %BIT_reloadDStreamFast.exit.i45.i597.i

BIT_reloadDStreamFast.exit.i45.i597.i:            ; preds = %if.end.i40.i592.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i41.i593.i = lshr i32 %bitD3.sroa.19.51186.i, 3
  %and.i.i44.i596.i = and i32 %bitD3.sroa.19.51186.i, 7
  br label %BIT_reloadDStream.exit67.i622.i

if.end3.i48.i599.i:                               ; preds = %if.end.i40.i592.i
  %cmp5.i47.i598.i = icmp eq ptr %bitD3.sroa.44.61187.i, %add.ptr13.i
  br i1 %cmp5.i47.i598.i, label %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, label %if.end11.i65.i613.i

if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge: ; preds = %if.end3.i48.i599.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i615.i

if.end11.i65.i613.i:                              ; preds = %if.end3.i48.i599.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i52.i600.i = lshr i32 %bitD3.sroa.19.51186.i, 3
  %idx.neg.i53.i601.i = sub nsw i32 0, %shr.i52.i600.i
  %add.ptr.i54.i602.i = getelementptr i8, ptr %bitD3.sroa.44.61187.i, i32 %idx.neg.i53.i601.i
  %cmp15.i55.i603.i = icmp ult ptr %add.ptr.i54.i602.i, %add.ptr13.i
  %sub.ptr.lhs.cast.i56.i604.i = ptrtoint ptr %bitD3.sroa.44.61187.i to i32
  %sub.ptr.sub.i58.i606.i = sub i32 %sub.ptr.lhs.cast.i56.i604.i, %sub.ptr.rhs.cast.i.i549.i
  %nbBytes.0.i59.i607.i = select i1 %cmp15.i55.i603.i, i32 %sub.ptr.sub.i58.i606.i, i32 %shr.i52.i600.i
  %result.0.i60.i608.i = zext i1 %cmp15.i55.i603.i to i32
  %mul.neg.i63.i611.i = mul i32 %nbBytes.0.i59.i607.i, -8
  %sub.i64.i612.i = add i32 %mul.neg.i63.i611.i, %bitD3.sroa.19.51186.i
  br label %BIT_reloadDStream.exit67.i622.i

BIT_reloadDStream.exit67.thread.i615.i:           ; preds = %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, %entry.while.end_crit_edge.i527.i
  %and1.i.i17.pre-phi.i5831259.i = phi i32 [ %and1.i.i.i532.i, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %.pre84.i526.i, %entry.while.end_crit_edge.i527.i ], [ %and1.i.i.i532.i, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %and1.i.i.i532.i, %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %and1.i.i.i532.i, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ]
  %bitD3.sroa.0.7.lcssa.i = phi i32 [ %183, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.0.3.lcssa.i, %entry.while.end_crit_edge.i527.i ], [ %196, %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.0.71185.i, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %183, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ]
  %bitD3.sroa.19.5.lcssa.i = phi i32 [ %and.i.i34.sink.i558.i, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.19.1.lcssa.i, %entry.while.end_crit_edge.i527.i ], [ %add.i.i22.i633.i, %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.19.51186.i, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %add.i.i12.i579.i, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ]
  %bitD3.sroa.44.6.lcssa.i = phi ptr [ %bitD3.sroa.44.4.i, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.44.1.lcssa.i, %entry.while.end_crit_edge.i527.i ], [ %bitD3.sroa.44.7.i, %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %add.ptr13.i, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %bitD3.sroa.44.4.i, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ]
  %p.addr.3.i588.lcssa.i = phi ptr [ %p.addr.074.i534.i, %while.end.i587.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %op3.0.lcssa.i, %entry.while.end_crit_edge.i527.i ], [ %incdec.ptr33.i634.i, %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %p.addr.3.i5881189.i, %if.end3.i48.i599.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ], [ %incdec.ptr19.i580.i, %while.body.i582.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge ]
  %cmp2787.i614.i = icmp ult ptr %p.addr.3.i588.lcssa.i, %add.ptr18.i
  br i1 %cmp2787.i614.i, label %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge, label %BIT_reloadDStream.exit67.thread.i615.i.HUF_decodeStreamX1.exit647.i_crit_edge

BIT_reloadDStream.exit67.thread.i615.i.HUF_decodeStreamX1.exit647.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i615.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit647.i

BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i615.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i626.i

BIT_reloadDStream.exit67.i622.i:                  ; preds = %if.end11.i65.i613.i, %BIT_reloadDStreamFast.exit.i45.i597.i
  %nbBytes.0.i59.i607.pn.i = phi i32 [ %nbBytes.0.i59.i607.i, %if.end11.i65.i613.i ], [ %shr.i.i41.i593.i, %BIT_reloadDStreamFast.exit.i45.i597.i ]
  %and.i.i44.sink.i616.i = phi i32 [ %sub.i64.i612.i, %if.end11.i65.i613.i ], [ %and.i.i44.i596.i, %BIT_reloadDStreamFast.exit.i45.i597.i ]
  %retval.0.i66.i618.i = phi i32 [ %result.0.i60.i608.i, %if.end11.i65.i613.i ], [ 0, %BIT_reloadDStreamFast.exit.i45.i597.i ]
  %idx.neg21.i61.i609.pn.i = sub i32 0, %nbBytes.0.i59.i607.pn.i
  %bitD3.sroa.44.7.i = getelementptr i8, ptr %bitD3.sroa.44.61187.i, i32 %idx.neg21.i61.i609.pn.i
  %194 = ptrtoint ptr %bitD3.sroa.44.7.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %bitD3.sroa.44.7.i, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66.i618.i)
  %cmp25.i619.i = icmp eq i32 %retval.0.i66.i618.i, 0
  %cmp27.i620.i = icmp ult ptr %p.addr.3.i5881189.i, %add.ptr18.i
  %and292.i621.i = and i1 %cmp27.i620.i, %cmp25.i619.i
  br i1 %and292.i621.i, label %while.body31.i635.i, label %while.cond36.preheader.i623.i

while.cond36.preheader.i623.i:                    ; preds = %BIT_reloadDStream.exit67.i622.i
  br i1 %cmp27.i620.i, label %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge, label %while.cond36.preheader.i623.i.HUF_decodeStreamX1.exit647.i_crit_edge

while.cond36.preheader.i623.i.HUF_decodeStreamX1.exit647.i_crit_edge: ; preds = %while.cond36.preheader.i623.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit647.i

while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge: ; preds = %while.cond36.preheader.i623.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i626.i

while.body39.lr.ph.i626.i:                        ; preds = %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge
  %and1.i.i17.pre-phi.i5831258.i = phi i32 [ %and1.i.i17.pre-phi.i5831259.i, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge ], [ %and1.i.i.i532.i, %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge ]
  %p.addr.3.i5881108.i = phi ptr [ %p.addr.3.i588.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge ], [ %p.addr.3.i5881189.i, %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge ]
  %bitD3.sroa.0.8.i = phi i32 [ %bitD3.sroa.0.7.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge ], [ %196, %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge ]
  %bitD3.sroa.19.6.i = phi i32 [ %bitD3.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge ], [ %and.i.i44.sink.i616.i, %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge ]
  %bitD3.sroa.44.8.i = phi ptr [ %bitD3.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.while.body39.lr.ph.i626.i_crit_edge ], [ %bitD3.sroa.44.7.i, %while.cond36.preheader.i623.i.while.body39.lr.ph.i626.i_crit_edge ]
  %p.addr.3.lcssa83.i624.i = ptrtoint ptr %p.addr.3.i5881108.i to i32
  %197 = sub i32 %pEnd82.i521.i, %p.addr.3.lcssa83.i624.i
  %uglygep.i625.i = getelementptr i8, ptr %p.addr.3.i5881108.i, i32 %197
  br label %while.body39.i646.i

while.body31.i635.i:                              ; preds = %BIT_reloadDStream.exit67.i622.i
  %and.i.i14.i627.i = and i32 %and.i.i44.sink.i616.i, 31
  %shl.i.i15.i628.i = shl i32 %196, %and.i.i14.i627.i
  %shr.i.i18.i629.i = lshr i32 %shl.i.i15.i628.i, %and1.i.i.i532.i
  %arrayidx.i19.i630.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i629.i
  %198 = ptrtoint ptr %arrayidx.i19.i630.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i19.i630.i, align 1
  %nbBits.i20.i631.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i629.i, i32 1
  %200 = ptrtoint ptr %nbBits.i20.i631.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %nbBits.i20.i631.i, align 1
  %conv.i21.i632.i = zext i8 %201 to i32
  %add.i.i22.i633.i = add i32 %and.i.i44.sink.i616.i, %conv.i21.i632.i
  %incdec.ptr33.i634.i = getelementptr i8, ptr %p.addr.3.i5881189.i, i32 1
  %202 = ptrtoint ptr %p.addr.3.i5881189.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %199, ptr %p.addr.3.i5881189.i, align 1
  %cmp.i36.i589.i = icmp ugt i32 %add.i.i22.i633.i, 32
  br i1 %cmp.i36.i589.i, label %while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge, label %while.body31.i635.i.if.end.i40.i592.i_crit_edge

while.body31.i635.i.if.end.i40.i592.i_crit_edge:  ; preds = %while.body31.i635.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i592.i

while.body31.i635.i.BIT_reloadDStream.exit67.thread.i615.i_crit_edge: ; preds = %while.body31.i635.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i615.i

while.body39.i646.i:                              ; preds = %while.body39.i646.i.while.body39.i646.i_crit_edge, %while.body39.lr.ph.i626.i
  %bitD3.sroa.19.7.i = phi i32 [ %bitD3.sroa.19.6.i, %while.body39.lr.ph.i626.i ], [ %add.i.i32.i643.i, %while.body39.i646.i.while.body39.i646.i_crit_edge ]
  %p.addr.581.i636.i = phi ptr [ %p.addr.3.i5881108.i, %while.body39.lr.ph.i626.i ], [ %incdec.ptr41.i644.i, %while.body39.i646.i.while.body39.i646.i_crit_edge ]
  %and.i.i24.i637.i = and i32 %bitD3.sroa.19.7.i, 31
  %shl.i.i25.i638.i = shl i32 %bitD3.sroa.0.8.i, %and.i.i24.i637.i
  %shr.i.i28.i639.i = lshr i32 %shl.i.i25.i638.i, %and1.i.i17.pre-phi.i5831258.i
  %arrayidx.i29.i640.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i639.i
  %203 = ptrtoint ptr %arrayidx.i29.i640.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i29.i640.i, align 1
  %nbBits.i30.i641.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i639.i, i32 1
  %205 = ptrtoint ptr %nbBits.i30.i641.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %nbBits.i30.i641.i, align 1
  %conv.i31.i642.i = zext i8 %206 to i32
  %add.i.i32.i643.i = add i32 %bitD3.sroa.19.7.i, %conv.i31.i642.i
  %incdec.ptr41.i644.i = getelementptr i8, ptr %p.addr.581.i636.i, i32 1
  %207 = ptrtoint ptr %p.addr.581.i636.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %204, ptr %p.addr.581.i636.i, align 1
  %exitcond.not.i645.i = icmp eq ptr %incdec.ptr41.i644.i, %uglygep.i625.i
  br i1 %exitcond.not.i645.i, label %while.body39.i646.i.HUF_decodeStreamX1.exit647.i_crit_edge, label %while.body39.i646.i.while.body39.i646.i_crit_edge

while.body39.i646.i.while.body39.i646.i_crit_edge: ; preds = %while.body39.i646.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.i646.i

while.body39.i646.i.HUF_decodeStreamX1.exit647.i_crit_edge: ; preds = %while.body39.i646.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit647.i

HUF_decodeStreamX1.exit647.i:                     ; preds = %while.body39.i646.i.HUF_decodeStreamX1.exit647.i_crit_edge, %while.cond36.preheader.i623.i.HUF_decodeStreamX1.exit647.i_crit_edge, %BIT_reloadDStream.exit67.thread.i615.i.HUF_decodeStreamX1.exit647.i_crit_edge
  %bitD3.sroa.19.8.i = phi i32 [ %bitD3.sroa.19.5.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.HUF_decodeStreamX1.exit647.i_crit_edge ], [ %and.i.i44.sink.i616.i, %while.cond36.preheader.i623.i.HUF_decodeStreamX1.exit647.i_crit_edge ], [ %add.i.i32.i643.i, %while.body39.i646.i.HUF_decodeStreamX1.exit647.i_crit_edge ]
  %bitD3.sroa.44.9.i = phi ptr [ %bitD3.sroa.44.6.lcssa.i, %BIT_reloadDStream.exit67.thread.i615.i.HUF_decodeStreamX1.exit647.i_crit_edge ], [ %bitD3.sroa.44.7.i, %while.cond36.preheader.i623.i.HUF_decodeStreamX1.exit647.i_crit_edge ], [ %bitD3.sroa.44.8.i, %while.body39.i646.i.HUF_decodeStreamX1.exit647.i_crit_edge ]
  %pEnd82.i648.i = ptrtoint ptr %add.ptr.i to i32
  %208 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %209)
  %cmp.i73.i651.i = icmp ugt i32 %209, 32
  %.pre.i652.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre84.i653.i = and i32 %.pre.i652.i, 31
  br i1 %cmp.i73.i651.i, label %HUF_decodeStreamX1.exit647.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, label %if.end.i.lr.ph.i660.i

HUF_decodeStreamX1.exit647.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge: ; preds = %HUF_decodeStreamX1.exit647.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i742.i

if.end.i.lr.ph.i660.i:                            ; preds = %HUF_decodeStreamX1.exit647.i
  %210 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %3, align 4
  br label %if.end.i.i663.i

if.end.i.i663.i:                                  ; preds = %while.body.i709.i.if.end.i.i663.i_crit_edge, %if.end.i.lr.ph.i660.i
  %212 = phi i32 [ %209, %if.end.i.lr.ph.i660.i ], [ %add.i.i12.i706.i, %while.body.i709.i.if.end.i.i663.i_crit_edge ]
  %p.addr.074.i661.i = phi ptr [ %op4.0.lcssa.i, %if.end.i.lr.ph.i660.i ], [ %incdec.ptr19.i707.i, %while.body.i709.i.if.end.i.i663.i_crit_edge ]
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %cmp1.not.i.i662.i = icmp ult ptr %214, %211
  br i1 %cmp1.not.i.i662.i, label %if.end3.i.i670.i, label %BIT_reloadDStreamFast.exit.i.i668.i

BIT_reloadDStreamFast.exit.i.i668.i:              ; preds = %if.end.i.i663.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i33.i664.i = lshr i32 %212, 3
  %idx.neg.i.i.i665.i = sub nsw i32 0, %shr.i.i33.i664.i
  %add.ptr.i.i.i666.i = getelementptr i8, ptr %214, i32 %idx.neg.i.i.i665.i
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %add.ptr.i.i.i666.i, ptr %1, align 4
  %and.i.i34.i667.i = and i32 %212, 7
  br label %BIT_reloadDStream.exit.i691.i

if.end3.i.i670.i:                                 ; preds = %if.end.i.i663.i
  %216 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %2, align 4
  %cmp5.i.i669.i = icmp eq ptr %214, %217
  br i1 %cmp5.i.i669.i, label %if.end3.i.i670.i.while.end.i714.i_crit_edge, label %if.end11.i.i684.i

if.end3.i.i670.i.while.end.i714.i_crit_edge:      ; preds = %if.end3.i.i670.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i714.i

if.end11.i.i684.i:                                ; preds = %if.end3.i.i670.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i671.i = lshr i32 %212, 3
  %idx.neg.i.i672.i = sub nsw i32 0, %shr.i.i671.i
  %add.ptr.i.i673.i = getelementptr i8, ptr %214, i32 %idx.neg.i.i672.i
  %cmp15.i.i674.i = icmp ult ptr %add.ptr.i.i673.i, %217
  %sub.ptr.lhs.cast.i.i675.i = ptrtoint ptr %214 to i32
  %sub.ptr.rhs.cast.i.i676.i = ptrtoint ptr %217 to i32
  %sub.ptr.sub.i.i677.i = sub i32 %sub.ptr.lhs.cast.i.i675.i, %sub.ptr.rhs.cast.i.i676.i
  %nbBytes.0.i.i678.i = select i1 %cmp15.i.i674.i, i32 %sub.ptr.sub.i.i677.i, i32 %shr.i.i671.i
  %result.0.i.i679.i = zext i1 %cmp15.i.i674.i to i32
  %idx.neg21.i.i680.i = sub i32 0, %nbBytes.0.i.i678.i
  %add.ptr22.i.i681.i = getelementptr i8, ptr %214, i32 %idx.neg21.i.i680.i
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %add.ptr22.i.i681.i, ptr %1, align 4
  %mul.neg.i.i682.i = mul i32 %nbBytes.0.i.i678.i, -8
  %sub.i.i683.i = add i32 %mul.neg.i.i682.i, %212
  br label %BIT_reloadDStream.exit.i691.i

BIT_reloadDStream.exit.i691.i:                    ; preds = %if.end11.i.i684.i, %BIT_reloadDStreamFast.exit.i.i668.i
  %and.i.i34.sink.i685.i = phi i32 [ %and.i.i34.i667.i, %BIT_reloadDStreamFast.exit.i.i668.i ], [ %sub.i.i683.i, %if.end11.i.i684.i ]
  %add.ptr.i.i.sink.i686.i = phi ptr [ %add.ptr.i.i.i666.i, %BIT_reloadDStreamFast.exit.i.i668.i ], [ %add.ptr22.i.i681.i, %if.end11.i.i684.i ]
  %retval.0.i.i687.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i668.i ], [ %result.0.i.i679.i, %if.end11.i.i684.i ]
  %219 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %and.i.i34.sink.i685.i, ptr %0, align 4
  %220 = ptrtoint ptr %add.ptr.i.i.sink.i686.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %add.ptr.i.i.sink.i686.i, align 1
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #7
  %223 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %bitD4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i687.i)
  %cmp.i688.i = icmp eq i32 %retval.0.i.i687.i, 0
  %cmp1.i689.i = icmp ult ptr %p.addr.074.i661.i, %add.ptr1.i
  %and1.i690.i = and i1 %cmp1.i689.i, %cmp.i688.i
  br i1 %and1.i690.i, label %while.body.i709.i, label %BIT_reloadDStream.exit.i691.i.while.end.i714.i_crit_edge

BIT_reloadDStream.exit.i691.i.while.end.i714.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i691.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i714.i

while.body.i709.i:                                ; preds = %BIT_reloadDStream.exit.i691.i
  %and.i.i.i692.i = and i32 %and.i.i34.sink.i685.i, 31
  %shl.i.i.i693.i = shl i32 %222, %and.i.i.i692.i
  %shr.i.i.i694.i = lshr i32 %shl.i.i.i693.i, %.pre84.i653.i
  %arrayidx.i.i695.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i694.i
  %224 = ptrtoint ptr %arrayidx.i.i695.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i.i695.i, align 1
  %nbBits.i.i696.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i.i694.i, i32 1
  %226 = ptrtoint ptr %nbBits.i.i696.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %nbBits.i.i696.i, align 1
  %conv.i.i697.i = zext i8 %227 to i32
  %add.i.i.i698.i = add i32 %and.i.i34.sink.i685.i, %conv.i.i697.i
  %228 = ptrtoint ptr %p.addr.074.i661.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %225, ptr %p.addr.074.i661.i, align 1
  %incdec.ptr10.i699.i = getelementptr i8, ptr %p.addr.074.i661.i, i32 1
  %and.i.i4.i700.i = and i32 %add.i.i.i698.i, 31
  %shl.i.i5.i701.i = shl i32 %222, %and.i.i4.i700.i
  %shr.i.i8.i702.i = lshr i32 %shl.i.i5.i701.i, %.pre84.i653.i
  %arrayidx.i9.i703.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i702.i
  %229 = ptrtoint ptr %arrayidx.i9.i703.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx.i9.i703.i, align 1
  %nbBits.i10.i704.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i8.i702.i, i32 1
  %231 = ptrtoint ptr %nbBits.i10.i704.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %nbBits.i10.i704.i, align 1
  %conv.i11.i705.i = zext i8 %232 to i32
  %add.i.i12.i706.i = add i32 %add.i.i.i698.i, %conv.i11.i705.i
  %233 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add.i.i12.i706.i, ptr %0, align 4
  %incdec.ptr19.i707.i = getelementptr i8, ptr %p.addr.074.i661.i, i32 2
  %234 = ptrtoint ptr %incdec.ptr10.i699.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %230, ptr %incdec.ptr10.i699.i, align 1
  %cmp.i.i708.i = icmp ugt i32 %add.i.i12.i706.i, 32
  br i1 %cmp.i.i708.i, label %while.body.i709.i.while.end.i714.i_crit_edge, label %while.body.i709.i.if.end.i.i663.i_crit_edge

while.body.i709.i.if.end.i.i663.i_crit_edge:      ; preds = %while.body.i709.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i663.i

while.body.i709.i.while.end.i714.i_crit_edge:     ; preds = %while.body.i709.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i714.i

while.end.i714.i:                                 ; preds = %while.body.i709.i.while.end.i714.i_crit_edge, %BIT_reloadDStream.exit.i691.i.while.end.i714.i_crit_edge, %if.end3.i.i670.i.while.end.i714.i_crit_edge
  %p.addr.0.lcssa.i711.ph.i = phi ptr [ %p.addr.074.i661.i, %if.end3.i.i670.i.while.end.i714.i_crit_edge ], [ %p.addr.074.i661.i, %BIT_reloadDStream.exit.i691.i.while.end.i714.i_crit_edge ], [ %incdec.ptr19.i707.i, %while.body.i709.i.while.end.i714.i_crit_edge ]
  %235 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %235)
  %.pr.i = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr.i)
  %cmp.i36.i7161199.i = icmp ugt i32 %.pr.i, 32
  br i1 %cmp.i36.i7161199.i, label %while.end.i714.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, label %while.end.i714.i.if.end.i40.i719.i_crit_edge

while.end.i714.i.if.end.i40.i719.i_crit_edge:     ; preds = %while.end.i714.i
  br label %if.end.i40.i719.i

while.end.i714.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge: ; preds = %while.end.i714.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i742.i

if.end.i40.i719.i:                                ; preds = %while.body31.i762.i.if.end.i40.i719.i_crit_edge, %while.end.i714.i.if.end.i40.i719.i_crit_edge
  %236 = phi i32 [ %257, %while.body31.i762.i.if.end.i40.i719.i_crit_edge ], [ %.pr.i, %while.end.i714.i.if.end.i40.i719.i_crit_edge ]
  %p.addr.3.i7151200.i = phi ptr [ %incdec.ptr33.i761.i, %while.body31.i762.i.if.end.i40.i719.i_crit_edge ], [ %p.addr.0.lcssa.i711.ph.i, %while.end.i714.i.if.end.i40.i719.i_crit_edge ]
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %239 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %3, align 4
  %cmp1.not.i39.i718.i = icmp ult ptr %238, %240
  br i1 %cmp1.not.i39.i718.i, label %if.end3.i48.i726.i, label %BIT_reloadDStreamFast.exit.i45.i724.i

BIT_reloadDStreamFast.exit.i45.i724.i:            ; preds = %if.end.i40.i719.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i41.i720.i = lshr i32 %236, 3
  %idx.neg.i.i42.i721.i = sub nsw i32 0, %shr.i.i41.i720.i
  %add.ptr.i.i43.i722.i = getelementptr i8, ptr %238, i32 %idx.neg.i.i42.i721.i
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %add.ptr.i.i43.i722.i, ptr %1, align 4
  %and.i.i44.i723.i = and i32 %236, 7
  br label %BIT_reloadDStream.exit67.i749.i

if.end3.i48.i726.i:                               ; preds = %if.end.i40.i719.i
  %242 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %2, align 4
  %cmp5.i47.i725.i = icmp eq ptr %238, %243
  br i1 %cmp5.i47.i725.i, label %if.end3.i48.i726.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, label %if.end11.i65.i740.i

if.end3.i48.i726.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge: ; preds = %if.end3.i48.i726.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i742.i

if.end11.i65.i740.i:                              ; preds = %if.end3.i48.i726.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i52.i727.i = lshr i32 %236, 3
  %idx.neg.i53.i728.i = sub nsw i32 0, %shr.i52.i727.i
  %add.ptr.i54.i729.i = getelementptr i8, ptr %238, i32 %idx.neg.i53.i728.i
  %cmp15.i55.i730.i = icmp ult ptr %add.ptr.i54.i729.i, %243
  %sub.ptr.lhs.cast.i56.i731.i = ptrtoint ptr %238 to i32
  %sub.ptr.rhs.cast.i57.i732.i = ptrtoint ptr %243 to i32
  %sub.ptr.sub.i58.i733.i = sub i32 %sub.ptr.lhs.cast.i56.i731.i, %sub.ptr.rhs.cast.i57.i732.i
  %nbBytes.0.i59.i734.i = select i1 %cmp15.i55.i730.i, i32 %sub.ptr.sub.i58.i733.i, i32 %shr.i52.i727.i
  %result.0.i60.i735.i = zext i1 %cmp15.i55.i730.i to i32
  %idx.neg21.i61.i736.i = sub i32 0, %nbBytes.0.i59.i734.i
  %add.ptr22.i62.i737.i = getelementptr i8, ptr %238, i32 %idx.neg21.i61.i736.i
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %add.ptr22.i62.i737.i, ptr %1, align 4
  %mul.neg.i63.i738.i = mul i32 %nbBytes.0.i59.i734.i, -8
  %sub.i64.i739.i = add i32 %mul.neg.i63.i738.i, %236
  br label %BIT_reloadDStream.exit67.i749.i

BIT_reloadDStream.exit67.thread.i742.i:           ; preds = %while.body31.i762.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, %if.end3.i48.i726.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, %while.end.i714.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, %HUF_decodeStreamX1.exit647.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge
  %p.addr.3.i715.lcssa.i = phi ptr [ %p.addr.0.lcssa.i711.ph.i, %while.end.i714.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge ], [ %op4.0.lcssa.i, %HUF_decodeStreamX1.exit647.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge ], [ %incdec.ptr33.i761.i, %while.body31.i762.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge ], [ %p.addr.3.i7151200.i, %if.end3.i48.i726.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge ]
  %cmp2787.i741.i = icmp ult ptr %p.addr.3.i715.lcssa.i, %add.ptr.i
  br i1 %cmp2787.i741.i, label %BIT_reloadDStream.exit67.thread.i742.i.while.body39.lr.ph.i753.i_crit_edge, label %BIT_reloadDStream.exit67.thread.i742.i.HUF_decodeStreamX1.exit774.i_crit_edge

BIT_reloadDStream.exit67.thread.i742.i.HUF_decodeStreamX1.exit774.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i742.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit774.i

BIT_reloadDStream.exit67.thread.i742.i.while.body39.lr.ph.i753.i_crit_edge: ; preds = %BIT_reloadDStream.exit67.thread.i742.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i753.i

BIT_reloadDStream.exit67.i749.i:                  ; preds = %if.end11.i65.i740.i, %BIT_reloadDStreamFast.exit.i45.i724.i
  %and.i.i44.sink.i743.i = phi i32 [ %and.i.i44.i723.i, %BIT_reloadDStreamFast.exit.i45.i724.i ], [ %sub.i64.i739.i, %if.end11.i65.i740.i ]
  %add.ptr.i.i43.sink.i744.i = phi ptr [ %add.ptr.i.i43.i722.i, %BIT_reloadDStreamFast.exit.i45.i724.i ], [ %add.ptr22.i62.i737.i, %if.end11.i65.i740.i ]
  %retval.0.i66.i745.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i45.i724.i ], [ %result.0.i60.i735.i, %if.end11.i65.i740.i ]
  %245 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and.i.i44.sink.i743.i, ptr %0, align 4
  %246 = ptrtoint ptr %add.ptr.i.i43.sink.i744.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %add.ptr.i.i43.sink.i744.i, align 1
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #7
  %249 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %bitD4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66.i745.i)
  %cmp25.i746.i = icmp eq i32 %retval.0.i66.i745.i, 0
  %cmp27.i747.i = icmp ult ptr %p.addr.3.i7151200.i, %add.ptr.i
  %and292.i748.i = and i1 %cmp27.i747.i, %cmp25.i746.i
  br i1 %and292.i748.i, label %while.body31.i762.i, label %while.cond36.preheader.i750.i

while.cond36.preheader.i750.i:                    ; preds = %BIT_reloadDStream.exit67.i749.i
  br i1 %cmp27.i747.i, label %while.cond36.preheader.i750.i.while.body39.lr.ph.i753.i_crit_edge, label %while.cond36.preheader.i750.i.HUF_decodeStreamX1.exit774.i_crit_edge

while.cond36.preheader.i750.i.HUF_decodeStreamX1.exit774.i_crit_edge: ; preds = %while.cond36.preheader.i750.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit774.i

while.cond36.preheader.i750.i.while.body39.lr.ph.i753.i_crit_edge: ; preds = %while.cond36.preheader.i750.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.lr.ph.i753.i

while.body39.lr.ph.i753.i:                        ; preds = %while.cond36.preheader.i750.i.while.body39.lr.ph.i753.i_crit_edge, %BIT_reloadDStream.exit67.thread.i742.i.while.body39.lr.ph.i753.i_crit_edge
  %p.addr.3.i7151106.i = phi ptr [ %p.addr.3.i7151200.i, %while.cond36.preheader.i750.i.while.body39.lr.ph.i753.i_crit_edge ], [ %p.addr.3.i715.lcssa.i, %BIT_reloadDStream.exit67.thread.i742.i.while.body39.lr.ph.i753.i_crit_edge ]
  %p.addr.3.lcssa83.i751.i = ptrtoint ptr %p.addr.3.i7151106.i to i32
  %250 = sub i32 %pEnd82.i648.i, %p.addr.3.lcssa83.i751.i
  %uglygep.i752.i = getelementptr i8, ptr %p.addr.3.i7151106.i, i32 %250
  br label %while.body39.i773.i

while.body31.i762.i:                              ; preds = %BIT_reloadDStream.exit67.i749.i
  %and.i.i14.i754.i = and i32 %and.i.i44.sink.i743.i, 31
  %shl.i.i15.i755.i = shl i32 %248, %and.i.i14.i754.i
  %shr.i.i18.i756.i = lshr i32 %shl.i.i15.i755.i, %.pre84.i653.i
  %arrayidx.i19.i757.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i756.i
  %251 = ptrtoint ptr %arrayidx.i19.i757.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx.i19.i757.i, align 1
  %nbBits.i20.i758.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i18.i756.i, i32 1
  %253 = ptrtoint ptr %nbBits.i20.i758.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %nbBits.i20.i758.i, align 1
  %conv.i21.i759.i = zext i8 %254 to i32
  %add.i.i22.i760.i = add i32 %and.i.i44.sink.i743.i, %conv.i21.i759.i
  %255 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %add.i.i22.i760.i, ptr %0, align 4
  %incdec.ptr33.i761.i = getelementptr i8, ptr %p.addr.3.i7151200.i, i32 1
  %256 = ptrtoint ptr %p.addr.3.i7151200.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %252, ptr %p.addr.3.i7151200.i, align 1
  %257 = load i32, ptr %0, align 4
  %cmp.i36.i716.i = icmp ugt i32 %257, 32
  br i1 %cmp.i36.i716.i, label %while.body31.i762.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge, label %while.body31.i762.i.if.end.i40.i719.i_crit_edge

while.body31.i762.i.if.end.i40.i719.i_crit_edge:  ; preds = %while.body31.i762.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i40.i719.i

while.body31.i762.i.BIT_reloadDStream.exit67.thread.i742.i_crit_edge: ; preds = %while.body31.i762.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStream.exit67.thread.i742.i

while.body39.i773.i:                              ; preds = %while.body39.i773.i.while.body39.i773.i_crit_edge, %while.body39.lr.ph.i753.i
  %p.addr.581.i763.i = phi ptr [ %p.addr.3.i7151106.i, %while.body39.lr.ph.i753.i ], [ %incdec.ptr41.i771.i, %while.body39.i773.i.while.body39.i773.i_crit_edge ]
  %258 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %bitD4.i, align 4
  %260 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %0, align 4
  %and.i.i24.i764.i = and i32 %261, 31
  %shl.i.i25.i765.i = shl i32 %259, %and.i.i24.i764.i
  %shr.i.i28.i766.i = lshr i32 %shl.i.i25.i765.i, %.pre84.i653.i
  %arrayidx.i29.i767.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i766.i
  %262 = ptrtoint ptr %arrayidx.i29.i767.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx.i29.i767.i, align 1
  %nbBits.i30.i768.i = getelementptr %struct.HUF_DEltX1, ptr %add.ptr2.i, i32 %shr.i.i28.i766.i, i32 1
  %264 = ptrtoint ptr %nbBits.i30.i768.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %nbBits.i30.i768.i, align 1
  %conv.i31.i769.i = zext i8 %265 to i32
  %add.i.i32.i770.i = add i32 %261, %conv.i31.i769.i
  store i32 %add.i.i32.i770.i, ptr %0, align 4
  %incdec.ptr41.i771.i = getelementptr i8, ptr %p.addr.581.i763.i, i32 1
  %266 = ptrtoint ptr %p.addr.581.i763.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %263, ptr %p.addr.581.i763.i, align 1
  %exitcond.not.i772.i = icmp eq ptr %incdec.ptr41.i771.i, %uglygep.i752.i
  br i1 %exitcond.not.i772.i, label %while.body39.i773.i.HUF_decodeStreamX1.exit774.i_crit_edge, label %while.body39.i773.i.while.body39.i773.i_crit_edge

while.body39.i773.i.while.body39.i773.i_crit_edge: ; preds = %while.body39.i773.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body39.i773.i

while.body39.i773.i.HUF_decodeStreamX1.exit774.i_crit_edge: ; preds = %while.body39.i773.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX1.exit774.i

HUF_decodeStreamX1.exit774.i:                     ; preds = %while.body39.i773.i.HUF_decodeStreamX1.exit774.i_crit_edge, %while.cond36.preheader.i750.i.HUF_decodeStreamX1.exit774.i_crit_edge, %BIT_reloadDStream.exit67.thread.i742.i.HUF_decodeStreamX1.exit774.i_crit_edge
  %cmp.i922.i = icmp eq ptr %bitD1.sroa.44.9.i, %add.ptr11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD1.sroa.19.8.i)
  %cmp1.i924.i = icmp eq i32 %bitD1.sroa.19.8.i, 32
  %narrow.i = select i1 %cmp.i922.i, i1 %cmp1.i924.i, i1 false
  %cmp.i927.i = icmp eq ptr %bitD2.sroa.44.9.i, %add.ptr12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD2.sroa.19.8.i)
  %cmp1.i929.i = icmp eq i32 %bitD2.sroa.19.8.i, 32
  %narrow1101.i = select i1 %cmp.i927.i, i1 %cmp1.i929.i, i1 false
  %and1751102.i = and i1 %narrow.i, %narrow1101.i
  %cmp.i935.i = icmp eq ptr %bitD3.sroa.44.9.i, %add.ptr13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD3.sroa.19.8.i)
  %cmp1.i937.i = icmp eq i32 %bitD3.sroa.19.8.i, 32
  %narrow1103.i = select i1 %cmp.i935.i, i1 %cmp1.i937.i, i1 false
  %and1771104.i = and i1 %and1751102.i, %narrow1103.i
  %and177.i = zext i1 %and1771104.i to i32
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %1, align 4
  %269 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %2, align 4
  %cmp.i943.i = icmp eq ptr %268, %270
  br i1 %cmp.i943.i, label %land.rhs.i947.i, label %HUF_decodeStreamX1.exit774.i.BIT_endOfDStream.exit948.i_crit_edge

HUF_decodeStreamX1.exit774.i.BIT_endOfDStream.exit948.i_crit_edge: ; preds = %HUF_decodeStreamX1.exit774.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_endOfDStream.exit948.i

land.rhs.i947.i:                                  ; preds = %HUF_decodeStreamX1.exit774.i
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %272)
  %cmp1.i945.i = icmp eq i32 %272, 32
  %phi.cast.i946.i = zext i1 %cmp1.i945.i to i32
  br label %BIT_endOfDStream.exit948.i

BIT_endOfDStream.exit948.i:                       ; preds = %land.rhs.i947.i, %HUF_decodeStreamX1.exit774.i.BIT_endOfDStream.exit948.i_crit_edge
  %273 = phi i32 [ 0, %HUF_decodeStreamX1.exit774.i.BIT_endOfDStream.exit948.i_crit_edge ], [ %phi.cast.i946.i, %land.rhs.i947.i ]
  %and179.i = and i32 %273, %and177.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  %spec.select.i = select i1 %tobool180.not.i, i32 -20, i32 %dstSize
  br label %cleanup186.i

cleanup186.i:                                     ; preds = %BIT_endOfDStream.exit948.i, %for.end.i.cleanup186.i_crit_edge, %cleanup.cont46.i.cleanup186.i_crit_edge, %sw.epilog.i866.i.cleanup186.i_crit_edge, %if.then3.i843.i.cleanup186.i_crit_edge, %cleanup.cont37.i.cleanup186.i_crit_edge, %sw.epilog.i817.i.cleanup186.i_crit_edge, %if.then3.i794.i.cleanup186.i_crit_edge, %cleanup.cont.i.cleanup186.i_crit_edge, %sw.epilog.i.i.cleanup186.i_crit_edge, %if.then3.i.i.cleanup186.i_crit_edge, %if.end24.i.cleanup186.i_crit_edge, %if.end.i.cleanup186.i_crit_edge
  %retval.5.i = phi i32 [ %call48.i, %cleanup.cont46.i.cleanup186.i_crit_edge ], [ -20, %if.end.i.cleanup186.i_crit_edge ], [ -20, %for.end.i.cleanup186.i_crit_edge ], [ %spec.select.i, %BIT_endOfDStream.exit948.i ], [ -20, %sw.epilog.i.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i.i.cleanup186.i_crit_edge ], [ -72, %if.end24.i.cleanup186.i_crit_edge ], [ -20, %sw.epilog.i817.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i794.i.cleanup186.i_crit_edge ], [ -72, %cleanup.cont.i.cleanup186.i_crit_edge ], [ -20, %sw.epilog.i866.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i843.i.cleanup186.i_crit_edge ], [ -72, %cleanup.cont37.i.cleanup186.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bitD4.i) #7
  br label %HUF_decompress4X1_usingDTable_internal_body.exit

HUF_decompress4X1_usingDTable_internal_body.exit: ; preds = %cleanup186.i, %entry.HUF_decompress4X1_usingDTable_internal_body.exit_crit_edge
  %retval.6.i = phi i32 [ %retval.5.i, %cleanup186.i ], [ -20, %entry.HUF_decompress4X1_usingDTable_internal_body.exit_crit_edge ]
  ret i32 %retval.6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X1_DCtx_wksp(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i.i, label %if.end.i, label %entry.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge

entry.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X1_DCtx_wksp_bmi2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %cSrcSize)
  %cmp.not.i = icmp ult i32 %call.i, %cSrcSize
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge

if.end.i.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X1_DCtx_wksp_bmi2.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %cSrc, i32 %call.i
  %sub.i = sub i32 %cSrcSize, %call.i
  %call4.i = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %dctx) #7
  br label %HUF_decompress4X1_DCtx_wksp_bmi2.exit

HUF_decompress4X1_DCtx_wksp_bmi2.exit:            ; preds = %if.end3.i, %if.end.i.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge, %entry.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %call.i, %entry.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge ], [ -72, %if.end.i.HUF_decompress4X1_DCtx_wksp_bmi2.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readDTableX2_wksp(ptr nocapture noundef %DTable, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  %tableLog = alloca i32, align 4
  %nbSymbols = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tableLog) #7
  %0 = ptrtoint ptr %tableLog to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tableLog, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbSymbols) #7
  %1 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nbSymbols, align 4, !annotation !13
  %2 = ptrtoint ptr %DTable to i32
  call void @__asan_load1_noabort(i32 %2)
  %retval.sroa.0.0.copyload.i = load i8, ptr %DTable, align 4
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %retval.sroa.4.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %retval.sroa.5.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 3
  %3 = ptrtoint ptr %retval.sroa.5.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %retval.sroa.5.0.copyload.i = load i8, ptr %retval.sroa.5.0.table.addr.0..sroa_idx.i, align 1
  %retval.sroa.0.0.insert.ext.i = zext i8 %retval.sroa.0.0.copyload.i to i32
  %add.ptr = getelementptr i32, ptr %DTable, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2372, i32 %wkspSize)
  %cmp = icmp ult i32 %wkspSize, 2372
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rankStart0 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 2
  %add.ptr3 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 2, i32 1
  %rankStats = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %retval.sroa.0.0.copyload.i)
  %cmp7 = icmp ugt i8 %retval.sroa.0.0.copyload.i, 12
  %4 = call ptr @memset(ptr %rankStats, i32 0, i32 108)
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %weightList = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 4
  %calleeWksp = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 5
  %call15 = call i32 @HUF_readStats_wksp(ptr noundef %weightList, i32 noundef 256, ptr noundef %rankStats, ptr noundef nonnull %nbSymbols, ptr noundef nonnull %tableLog, ptr noundef %src, i32 noundef %srcSize, ptr noundef %calleeWksp, i32 noundef 872, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call15)
  %cmp.i = icmp ult i32 %call15, -119
  br i1 %cmp.i, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %tableLog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tableLog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %retval.sroa.0.0.insert.ext.i)
  %cmp19 = icmp ugt i32 %6, %retval.sroa.0.0.insert.ext.i
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end18.for.cond_crit_edge

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  br label %for.cond

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end18.for.cond_crit_edge
  %maxW.0 = phi i32 [ %dec, %for.cond.for.cond_crit_edge ], [ %6, %if.end18.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 1, i32 %maxW.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %cmp24 = icmp eq i32 %8, 0
  %dec = add i32 %maxW.0, -1
  br i1 %cmp24, label %for.cond.for.cond_crit_edge, label %for.cond26.preheader

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.cond26.preheader:                             ; preds = %for.cond
  %9 = add i32 %maxW.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp27181 = icmp ult i32 %9, -2
  br i1 %cmp27181, label %for.cond26.preheader.for.body29_crit_edge, label %for.cond26.preheader.for.end35_crit_edge

for.cond26.preheader.for.end35_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %nextRankStart.0183 = phi i32 [ %add32, %for.body29.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  %w.0182 = phi i32 [ %inc, %for.body29.for.body29_crit_edge ], [ 1, %for.cond26.preheader.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 1, i32 %w.0182
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %11, %nextRankStart.0183
  %arrayidx33 = getelementptr i32, ptr %add.ptr3, i32 %w.0182
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nextRankStart.0183, ptr %arrayidx33, align 4
  %inc = add nuw i32 %w.0182, 1
  %exitcond.not = icmp eq i32 %w.0182, %maxW.0
  br i1 %exitcond.not, label %for.body29.for.end35_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29

for.body29.for.end35_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.end35:                                        ; preds = %for.body29.for.end35_crit_edge, %for.cond26.preheader.for.end35_crit_edge
  %nextRankStart.0.lcssa = phi i32 [ 0, %for.cond26.preheader.for.end35_crit_edge ], [ %add32, %for.body29.for.end35_crit_edge ]
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nextRankStart.0.lcssa, ptr %add.ptr3, align 4
  %14 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbSymbols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp38185.not = icmp eq i32 %15, 0
  br i1 %cmp38185.not, label %for.end35.for.end54_crit_edge, label %for.end35.for.body40_crit_edge

for.end35.for.body40_crit_edge:                   ; preds = %for.end35
  br label %for.body40

for.end35.for.end54_crit_edge:                    ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end35.for.body40_crit_edge
  %s.0186 = phi i32 [ %inc53, %for.body40.for.body40_crit_edge ], [ 0, %for.end35.for.body40_crit_edge ]
  %arrayidx43 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 4, i32 %s.0186
  %16 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %17 to i32
  %arrayidx45 = getelementptr i32, ptr %add.ptr3, i32 %conv44
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx45, align 4
  %inc46 = add i32 %19, 1
  store i32 %inc46, ptr %arrayidx45, align 4
  %conv47 = trunc i32 %s.0186 to i8
  %arrayidx48 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv47, ptr %arrayidx48, align 2
  %weight = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 3, i32 %19, i32 1
  %21 = ptrtoint ptr %weight to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %weight, align 1
  %inc53 = add nuw i32 %s.0186, 1
  %exitcond196.not = icmp eq i32 %inc53, %15
  br i1 %exitcond196.not, label %for.body40.for.end54_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40

for.body40.for.end54_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.end54:                                        ; preds = %for.body40.for.end54_crit_edge, %for.end35.for.end54_crit_edge
  %22 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %add.ptr3, align 4
  %23 = xor i32 %6, -1
  %sub58 = add i32 %23, %retval.sroa.0.0.insert.ext.i
  br i1 %cmp27181, label %for.end54.for.body64_crit_edge, label %for.end54.for.end73_crit_edge

for.end54.for.end73_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.end54.for.body64_crit_edge:                   ; preds = %for.end54
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.end54.for.body64_crit_edge
  %w59.0189 = phi i32 [ %inc72, %for.body64.for.body64_crit_edge ], [ 1, %for.end54.for.body64_crit_edge ]
  %nextRankVal.0188 = phi i32 [ %add69, %for.body64.for.body64_crit_edge ], [ 0, %for.end54.for.body64_crit_edge ]
  %arrayidx67 = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 1, i32 %w59.0189
  %24 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx67, align 4
  %add68 = add i32 %sub58, %w59.0189
  %shl = shl i32 %25, %add68
  %add69 = add i32 %shl, %nextRankVal.0188
  %arrayidx70 = getelementptr i32, ptr %workSpace, i32 %w59.0189
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %nextRankVal.0188, ptr %arrayidx70, align 4
  %inc72 = add nuw i32 %w59.0189, 1
  %exitcond197.not = icmp eq i32 %w59.0189, %maxW.0
  br i1 %exitcond197.not, label %for.body64.for.end73_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64

for.body64.for.end73_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.end73:                                        ; preds = %for.body64.for.end73_crit_edge, %for.end54.for.end73_crit_edge
  %add74 = add i32 %6, 1
  %sub75 = sub i32 %add74, %maxW.0
  %sub77 = add nuw nsw i32 %retval.sroa.0.0.insert.ext.i, 1
  %add78 = sub i32 %sub77, %sub75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %add78)
  %cmp79192 = icmp ult i32 %sub75, %add78
  br i1 %cmp79192, label %for.end73.for.body81_crit_edge, label %for.end73.for.end98_crit_edge

for.end73.for.end98_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end98

for.end73.for.body81_crit_edge:                   ; preds = %for.end73
  br label %for.body81

for.body81:                                       ; preds = %for.end95.for.body81_crit_edge, %for.end73.for.body81_crit_edge
  %consumed.0193 = phi i32 [ %inc97, %for.end95.for.body81_crit_edge ], [ %sub75, %for.end73.for.body81_crit_edge ]
  %arrayidx83 = getelementptr [12 x [13 x i32]], ptr %workSpace, i32 0, i32 %consumed.0193
  br i1 %cmp27181, label %for.body81.for.body90_crit_edge, label %for.body81.for.end95_crit_edge

for.body81.for.end95_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end95

for.body81.for.body90_crit_edge:                  ; preds = %for.body81
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.body81.for.body90_crit_edge
  %w85.0191 = phi i32 [ %inc94, %for.body90.for.body90_crit_edge ], [ 1, %for.body81.for.body90_crit_edge ]
  %arrayidx91 = getelementptr i32, ptr %workSpace, i32 %w85.0191
  %27 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx91, align 4
  %shr = lshr i32 %28, %consumed.0193
  %arrayidx92 = getelementptr i32, ptr %arrayidx83, i32 %w85.0191
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %arrayidx92, align 4
  %inc94 = add nuw i32 %w85.0191, 1
  %exitcond198.not = icmp eq i32 %w85.0191, %maxW.0
  br i1 %exitcond198.not, label %for.body90.for.end95_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

for.body90.for.end95_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end95

for.end95:                                        ; preds = %for.body90.for.end95_crit_edge, %for.body81.for.end95_crit_edge
  %inc97 = add i32 %consumed.0193, 1
  %cmp79 = icmp ult i32 %inc97, %add78
  br i1 %cmp79, label %for.end95.for.body81_crit_edge, label %for.end95.for.end98_crit_edge

for.end95.for.end98_crit_edge:                    ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end98

for.end95.for.body81_crit_edge:                   ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body81

for.end98:                                        ; preds = %for.end95.for.end98_crit_edge, %for.end73.for.end98_crit_edge
  %sortedSymbol99 = getelementptr inbounds %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 3
  %sub.i = sub i32 %add74, %retval.sroa.0.0.insert.ext.i
  %add.ptr.i = getelementptr %struct.HUF_ReadDTableX2_Workspace, ptr %workSpace, i32 0, i32 5, i32 13
  %30 = call ptr @memcpy(ptr %calleeWksp, ptr %workSpace, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nextRankStart.0.lcssa)
  %cmp4.not.i = icmp eq i32 %nextRankStart.0.lcssa, 0
  br i1 %cmp4.not.i, label %for.end98.HUF_fillDTableX2.exit_crit_edge, label %for.end98.for.body.i_crit_edge

for.end98.for.body.i_crit_edge:                   ; preds = %for.end98
  br label %for.body.i

for.end98.HUF_fillDTableX2.exit_crit_edge:        ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_fillDTableX2.exit

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.end98.for.body.i_crit_edge
  %s.05.i = phi i32 [ %inc35.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %for.end98.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sortedSymbol_t, ptr %sortedSymbol99, i32 %s.05.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %conv.i179 = zext i8 %32 to i16
  %weight5.i = getelementptr %struct.sortedSymbol_t, ptr %sortedSymbol99, i32 %s.05.i, i32 1
  %33 = ptrtoint ptr %weight5.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %weight5.i, align 1
  %conv6.i = zext i8 %34 to i32
  %sub7.i = sub i32 %add74, %conv6.i
  %arrayidx8.i = getelementptr i32, ptr %calleeWksp, i32 %conv6.i
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.i, align 4
  %sub9.i = sub i32 %retval.sroa.0.0.insert.ext.i, %sub7.i
  %shl.i = shl nuw i32 1, %sub9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %sub75)
  %cmp11.not.i = icmp ult i32 %sub9.i, %sub75
  br i1 %cmp11.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %add.i = add i32 %sub.i, %sub7.i
  %37 = call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %arrayidx16.i = getelementptr i32, ptr %rankStart0, i32 %37
  %38 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx16.i, align 4
  %add.ptr17.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr, i32 %36
  %arrayidx19.i = getelementptr [13 x i32], ptr %workSpace, i32 %sub7.i
  %add.ptr20.i = getelementptr %struct.sortedSymbol_t, ptr %sortedSymbol99, i32 %39
  %sub21.i = sub i32 %nextRankStart.0.lcssa, %39
  %40 = call ptr @memcpy(ptr %add.ptr.i, ptr %arrayidx19.i, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i = icmp ugt i32 %37, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr.i, i32 %37
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp115.not.i.i = icmp eq i32 %42, 0
  br i1 %cmp115.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i.i
  %43 = shl nuw i16 %conv.i179, 8
  %DElt.sroa.7.0.insert.ext7.i.i = shl i32 %sub7.i, 8
  %DElt.sroa.7.0.insert.shift8.i.i = and i32 %DElt.sroa.7.0.insert.ext7.i.i, 65280
  %DElt.sroa.0.0.insert.ext2.i.i = zext i16 %43 to i32
  %DElt.sroa.0.0.insert.shift3.i.i = shl nuw i32 %DElt.sroa.0.0.insert.ext2.i.i, 16
  %DElt.sroa.7.0.insert.insert10.i.i = or i32 %DElt.sroa.7.0.insert.shift8.i.i, %DElt.sroa.0.0.insert.shift3.i.i
  %DElt.sroa.0.0.insert.insert5.i.i = or i32 %DElt.sroa.7.0.insert.insert10.i.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr17.i, i32 %i.016.i.i
  %44 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %DElt.sroa.0.0.insert.insert5.i.i, ptr %arrayidx3.i.i, align 2
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %42
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nextRankStart.0.lcssa, i32 %39)
  %cmp517.not.i.i = icmp eq i32 %nextRankStart.0.lcssa, %39
  br i1 %cmp517.not.i.i, label %if.end.i.i.if.end31.i_crit_edge, label %if.end.i.i.for.body7.i.i_crit_edge

if.end.i.i.for.body7.i.i_crit_edge:               ; preds = %if.end.i.i
  br label %for.body7.i.i

if.end.i.i.if.end31.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

for.body7.i.i:                                    ; preds = %do.end.i.i.for.body7.i.i_crit_edge, %if.end.i.i.for.body7.i.i_crit_edge
  %s.018.i.i = phi i32 [ %inc35.i.i, %do.end.i.i.for.body7.i.i_crit_edge ], [ 0, %if.end.i.i.for.body7.i.i_crit_edge ]
  %arrayidx8.i.i = getelementptr %struct.sortedSymbol_t, ptr %add.ptr20.i, i32 %s.018.i.i
  %45 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.i.i, align 1
  %conv10.i.i = zext i8 %46 to i16
  %weight12.i.i = getelementptr %struct.sortedSymbol_t, ptr %add.ptr20.i, i32 %s.018.i.i, i32 1
  %47 = ptrtoint ptr %weight12.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %weight12.i.i, align 1
  %conv13.i.i = zext i8 %48 to i32
  %sub.i.i = sub i32 %add74, %conv13.i.i
  %sub16.i.i = sub i32 %sub9.i, %sub.i.i
  %shl.i.i = shl nuw i32 1, %sub16.i.i
  %arrayidx17.i.i = getelementptr i32, ptr %add.ptr.i, i32 %conv13.i.i
  %49 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx17.i.i, align 4
  %add.i.i = add i32 %shl.i.i, %50
  %shl21.i.i = shl nuw i16 %conv10.i.i, 8
  %add22.i.i = or i16 %shl21.i.i, %conv.i179
  %51 = call i16 @llvm.bswap.i16(i16 %add22.i.i) #7
  %add24.i.i = add i32 %sub.i.i, %sub7.i
  %DElt.sroa.7.0.insert.ext.i.i = shl i32 %add24.i.i, 8
  %DElt.sroa.7.0.insert.shift.i.i = and i32 %DElt.sroa.7.0.insert.ext.i.i, 65280
  %DElt.sroa.0.0.insert.ext.i.i = zext i16 %51 to i32
  %DElt.sroa.0.0.insert.shift.i.i = shl nuw i32 %DElt.sroa.0.0.insert.ext.i.i, 16
  %DElt.sroa.7.0.insert.insert.i.i = or i32 %DElt.sroa.7.0.insert.shift.i.i, %DElt.sroa.0.0.insert.shift.i.i
  %DElt.sroa.0.0.insert.insert.i.i = or i32 %DElt.sroa.7.0.insert.insert.i.i, 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.body7.i.i
  %i18.0.i.i = phi i32 [ %50, %for.body7.i.i ], [ %inc28.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %inc28.i.i = add i32 %i18.0.i.i, 1
  %arrayidx29.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr17.i, i32 %i18.0.i.i
  %52 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %DElt.sroa.0.0.insert.insert.i.i, ptr %arrayidx29.i.i, align 2
  %cmp30.i.i = icmp ult i32 %inc28.i.i, %add.i.i
  br i1 %cmp30.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %53 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx17.i.i, align 4
  %add33.i.i = add i32 %54, %shl.i.i
  store i32 %add33.i.i, ptr %arrayidx17.i.i, align 4
  %inc35.i.i = add nuw i32 %s.018.i.i, 1
  %exitcond19.not.i.i = icmp eq i32 %inc35.i.i, %sub21.i
  br i1 %exitcond19.not.i.i, label %do.end.i.i.if.end31.i_crit_edge, label %do.end.i.i.for.body7.i.i_crit_edge

do.end.i.i.for.body7.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.i

do.end.i.i.if.end31.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.else.i:                                        ; preds = %for.body.i
  %add25.i = add i32 %shl.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add25.i)
  %cmp272.i = icmp ult i32 %36, %add25.i
  br i1 %cmp272.i, label %for.body29.lr.ph.i, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

for.body29.lr.ph.i:                               ; preds = %if.else.i
  %55 = shl nuw i16 %conv.i179, 8
  %DElt.sroa.5.0.insert.ext.i = shl i32 %sub7.i, 8
  %DElt.sroa.5.0.insert.shift.i = and i32 %DElt.sroa.5.0.insert.ext.i, 65280
  %DElt.sroa.0.0.insert.ext.i = zext i16 %55 to i32
  %DElt.sroa.0.0.insert.shift.i = shl nuw i32 %DElt.sroa.0.0.insert.ext.i, 16
  %DElt.sroa.5.0.insert.insert.i = or i32 %DElt.sroa.5.0.insert.shift.i, %DElt.sroa.0.0.insert.shift.i
  %DElt.sroa.0.0.insert.insert.i = or i32 %DElt.sroa.5.0.insert.insert.i, 1
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %u.03.i = phi i32 [ %36, %for.body29.lr.ph.i ], [ %inc.i, %for.body29.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr, i32 %u.03.i
  %56 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %DElt.sroa.0.0.insert.insert.i, ptr %arrayidx30.i, align 2
  %inc.i = add nuw i32 %u.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add25.i
  br i1 %exitcond.not.i, label %for.body29.i.if.end31.i_crit_edge, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i

for.body29.i.if.end31.i_crit_edge:                ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.body29.i.if.end31.i_crit_edge, %if.else.i.if.end31.i_crit_edge, %do.end.i.i.if.end31.i_crit_edge, %if.end.i.i.if.end31.i_crit_edge
  %57 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx8.i, align 4
  %add33.i = add i32 %58, %shl.i
  store i32 %add33.i, ptr %arrayidx8.i, align 4
  %inc35.i = add nuw i32 %s.05.i, 1
  %exitcond7.not.i = icmp eq i32 %inc35.i, %nextRankStart.0.lcssa
  br i1 %exitcond7.not.i, label %if.end31.i.HUF_fillDTableX2.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end31.i.HUF_fillDTableX2.exit_crit_edge:       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_fillDTableX2.exit

HUF_fillDTableX2.exit:                            ; preds = %if.end31.i.HUF_fillDTableX2.exit_crit_edge, %for.end98.HUF_fillDTableX2.exit_crit_edge
  %59 = ptrtoint ptr %DTable to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %retval.sroa.0.0.copyload.i, ptr %DTable, align 4
  %60 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  %61 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %retval.sroa.0.0.copyload.i, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i, align 2
  %62 = ptrtoint ptr %retval.sroa.5.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %retval.sroa.5.0.copyload.i, ptr %retval.sroa.5.0.table.addr.0..sroa_idx.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %HUF_fillDTableX2.exit, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %HUF_fillDTableX2.exit ], [ -1, %entry.cleanup_crit_edge ], [ -44, %if.end.cleanup_crit_edge ], [ %call15, %if.end10.cleanup_crit_edge ], [ -44, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbSymbols) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tableLog) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X2_usingDTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.sroa.3.0.copyload.i)
  %cmp.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef writeonly %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cSrcSize)
  %cmp.i14.i = icmp eq i32 %cSrcSize, 0
  br i1 %cmp.i14.i, label %entry.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, label %if.end.i.i

entry.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i15.i = getelementptr i8, ptr %cSrc, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cSrcSize)
  %cmp2.i.i = icmp ugt i32 %cSrcSize, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add i32 %cSrcSize, -1
  %arrayidx.i.i = getelementptr i8, ptr %cSrc, i32 %sub.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, label %BIT_initDStream.exit.i

if.then3.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %2 = ptrtoint ptr %cSrc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cSrc, align 1
  %conv18.i.i = zext i8 %3 to i32
  %4 = zext i32 %cSrcSize to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %cSrcSize, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %if.else.i.i.sw.bb47.i.i_crit_edge
    i32 3, label %sw.bb41.i.i
  ]

if.else.i.i.sw.bb47.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i.i = getelementptr i8, ptr %cSrc, i32 2
  %5 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %6 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %add46.i.i = or i32 %shl44.i.i, %conv18.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb41.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge
  %bitD.sroa.0.0.i = phi i32 [ %add46.i.i, %sw.bb41.i.i ], [ %conv18.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %cSrc, i32 1
  %7 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %8 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 8
  %add52.i.i = add nuw nsw i32 %shl50.i.i, %bitD.sroa.0.0.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %bitD.sroa.0.1.i = phi i32 [ %conv18.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge ], [ %add52.i.i, %sw.bb47.i.i ]
  %sub54.i.i = add nsw i32 %cSrcSize, -1
  %arrayidx55.i.i = getelementptr i8, ptr %cSrc, i32 %sub54.i.i
  %9 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool57.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool57.not.i.i, label %sw.epilog.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, label %BIT_initDStream.exit.thread72.i

sw.epilog.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

BIT_initDStream.exit.thread72.i:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i.i = zext i8 %10 to i32
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i, i1 true) #7, !range !11
  %.neg.i.i = mul nsw i32 %cSrcSize, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 9
  %add76.i.i = add nsw i32 %mul.i.i, %11
  br label %cleanup.cont.i

BIT_initDStream.exit.i:                           ; preds = %if.then3.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 -4
  %12 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr5.i.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %conv.i.i = zext i8 %1 to i32
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #7, !range !11
  %sub9.i.i = add nsw i32 %15, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSrcSize)
  %cmp.i16.i = icmp ult i32 %cSrcSize, -119
  br i1 %cmp.i16.i, label %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, label %BIT_initDStream.exit.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge

BIT_initDStream.exit.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge: ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

BIT_initDStream.exit.i.cleanup.cont.i_crit_edge:  ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, %BIT_initDStream.exit.thread72.i
  %bitD.sroa.42.084.i = phi ptr [ %cSrc, %BIT_initDStream.exit.thread72.i ], [ %add.ptr5.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.17.083.i = phi i32 [ %add76.i.i, %BIT_initDStream.exit.thread72.i ], [ %sub9.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.0.282.i = phi i32 [ %bitD.sroa.0.1.i, %BIT_initDStream.exit.thread72.i ], [ %14, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr2.i = getelementptr i32, ptr %DTable, i32 1
  %retval.sroa.4.0.table.addr.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %16 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %retval.sroa.4.0.copyload.i.i = load i8, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i, align 2
  %retval.sroa.4.0.insert.ext.i.i = zext i8 %retval.sroa.4.0.copyload.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.17.083.i)
  %cmp.i4891.i.i = icmp ugt i32 %bitD.sroa.17.083.i, 32
  br i1 %cmp.i4891.i.i, label %entry.while.cond21thread-pre-split_crit_edge.i.i, label %if.end.i.lr.ph.i.i

entry.while.cond21thread-pre-split_crit_edge.i.i: ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre101.i.i = and i32 %.pre.i.i, 31
  br label %while.cond21thread-pre-split.i.i

if.end.i.lr.ph.i.i:                               ; preds = %cleanup.cont.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 -3
  %sub.i.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %cSrc to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %bitD.sroa.0.3.i = phi i32 [ %bitD.sroa.0.282.i, %if.end.i.lr.ph.i.i ], [ %19, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD.sroa.17.1.i = phi i32 [ %bitD.sroa.17.083.i, %if.end.i.lr.ph.i.i ], [ %add.i.i12.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD.sroa.42.1.i = phi ptr [ %bitD.sroa.42.084.i, %if.end.i.lr.ph.i.i ], [ %bitD.sroa.42.2.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %p.addr.092.i.i = phi ptr [ %dst, %if.end.i.lr.ph.i.i ], [ %add.ptr20.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %cmp1.not.i.i.i = icmp ult ptr %bitD.sroa.42.1.i, %add.ptr.i15.i
  br i1 %cmp1.not.i.i.i, label %if.end3.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i

BIT_reloadDStreamFast.exit.i.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i49.i.i = lshr i32 %bitD.sroa.17.1.i, 3
  %and.i.i50.i.i = and i32 %bitD.sroa.17.1.i, 7
  br label %BIT_reloadDStream.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp5.i.i.i = icmp eq ptr %bitD.sroa.42.1.i, %cSrc
  br i1 %cmp5.i.i.i, label %while.cond21thread-pre-split.i.thread117.i, label %if.end11.i.i.i

while.cond21thread-pre-split.i.thread117.i:       ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i123.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  br label %if.end.i58.i.lr.ph.i

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i.i = lshr i32 %bitD.sroa.17.1.i, 3
  %idx.neg.i.i.i = sub nsw i32 0, %shr.i.i.i
  %add.ptr.i52.i.i = getelementptr i8, ptr %bitD.sroa.42.1.i, i32 %idx.neg.i.i.i
  %cmp15.i.i.i = icmp ult ptr %add.ptr.i52.i.i, %cSrc
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bitD.sroa.42.1.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i.i.i = select i1 %cmp15.i.i.i, i32 %sub.ptr.sub.i.i.i, i32 %shr.i.i.i
  %result.0.i.i.i = zext i1 %cmp15.i.i.i to i32
  %mul.neg.i.i.i = mul i32 %nbBytes.0.i.i.i, -8
  %sub.i.i.i = add i32 %mul.neg.i.i.i, %bitD.sroa.17.1.i
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %if.end11.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i
  %nbBytes.0.i.i.pn.i = phi i32 [ %nbBytes.0.i.i.i, %if.end11.i.i.i ], [ %shr.i.i49.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %and.i.i50.sink.i.i = phi i32 [ %sub.i.i.i, %if.end11.i.i.i ], [ %and.i.i50.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %retval.0.i.i.i = phi i32 [ %result.0.i.i.i, %if.end11.i.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i.i ]
  %idx.neg21.i.i.pn.i = sub i32 0, %nbBytes.0.i.i.pn.i
  %bitD.sroa.42.2.i = getelementptr i8, ptr %bitD.sroa.42.1.i, i32 %idx.neg21.i.i.pn.i
  %17 = ptrtoint ptr %bitD.sroa.42.2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %bitD.sroa.42.2.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, 0
  %cmp1.i.i = icmp ult ptr %p.addr.092.i.i, %add.ptr.i.i
  %and1.i.i = and i1 %cmp1.i.i, %cmp.i.i
  br i1 %and1.i.i, label %while.body.i.i, label %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge

BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i.i

while.body.i.i:                                   ; preds = %BIT_reloadDStream.exit.i.i
  %and.i.i.i.i = and i32 %and.i.i50.sink.i.i, 31
  %shl.i.i.i.i = shl i32 %19, %and.i.i.i.i
  %shr.i.i.i.i = lshr i32 %shl.i.i.i.i, %and1.i.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i, align 2
  %22 = ptrtoint ptr %p.addr.092.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %p.addr.092.i.i, align 1
  %nbBits.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i, i32 1
  %23 = ptrtoint ptr %nbBits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nbBits.i.i.i, align 2
  %conv.i.i.i = zext i8 %24 to i32
  %add.i.i.i.i = add i32 %and.i.i50.sink.i.i, %conv.i.i.i
  %length.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i, i32 2
  %25 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %length.i.i.i, align 1
  %conv2.i.i.i = zext i8 %26 to i32
  %add.ptr11.i.i = getelementptr i8, ptr %p.addr.092.i.i, i32 %conv2.i.i.i
  %and.i.i4.i.i = and i32 %add.i.i.i.i, 31
  %shl.i.i5.i.i = shl i32 %19, %and.i.i4.i.i
  %shr.i.i8.i.i = lshr i32 %shl.i.i5.i.i, %and1.i.i.i.i
  %add.ptr.i9.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i
  %27 = ptrtoint ptr %add.ptr.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i9.i.i, align 2
  %29 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %add.ptr11.i.i, align 1
  %nbBits.i10.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i, i32 1
  %30 = ptrtoint ptr %nbBits.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nbBits.i10.i.i, align 2
  %conv.i11.i.i = zext i8 %31 to i32
  %add.i.i12.i.i = add i32 %add.i.i.i.i, %conv.i11.i.i
  %length.i13.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i, i32 2
  %32 = ptrtoint ptr %length.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %length.i13.i.i, align 1
  %conv2.i14.i.i = zext i8 %33 to i32
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 %conv2.i14.i.i
  %cmp.i48.i.i = icmp ugt i32 %add.i.i12.i.i, 32
  br i1 %cmp.i48.i.i, label %while.cond21thread-pre-split.i.thread.i, label %while.body.i.i.if.end.i.i.i_crit_edge

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.cond21thread-pre-split.i.thread.i:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i111.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  br label %while.cond34.preheader.i.i

while.cond21thread-pre-split.i.i:                 ; preds = %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge, %entry.while.cond21thread-pre-split_crit_edge.i.i
  %bitD.sroa.0.4.i = phi i32 [ %bitD.sroa.0.282.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %19, %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge ]
  %bitD.sroa.17.2.i = phi i32 [ %bitD.sroa.17.083.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %and.i.i50.sink.i.i, %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge ]
  %bitD.sroa.42.3.i = phi ptr [ %bitD.sroa.42.084.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %bitD.sroa.42.2.i, %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge ]
  %and1.i.i19.pre-phi.i.i = phi i32 [ %.pre101.i.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %and1.i.i.i.i, %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge ]
  %p.addr.0.lcssa.i.i = phi ptr [ %dst, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %p.addr.092.i.i, %BIT_reloadDStream.exit.i.i.while.cond21thread-pre-split.i.i_crit_edge ]
  %add.ptr25.i.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.17.2.i)
  %cmp.i54.i88.i = icmp ugt i32 %bitD.sroa.17.2.i, 32
  br i1 %cmp.i54.i88.i, label %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge, label %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge

while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %while.cond21thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge: ; preds = %while.cond21thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %cSrc to i32
  br label %if.end.i58.i.lr.ph.i

if.end.i58.i.lr.ph.i:                             ; preds = %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge, %while.cond21thread-pre-split.i.thread117.i
  %sub.ptr.rhs.cast.i75.i.i.pre-phi = phi i32 [ %.pre, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %sub.ptr.rhs.cast.i.i.i, %while.cond21thread-pre-split.i.thread117.i ]
  %add.ptr25.i130.i = phi ptr [ %add.ptr25.i.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %add.ptr25.i123.i, %while.cond21thread-pre-split.i.thread117.i ]
  %p.addr.0.lcssa.i129.i = phi ptr [ %p.addr.0.lcssa.i.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %p.addr.092.i.i, %while.cond21thread-pre-split.i.thread117.i ]
  %and1.i.i19.pre-phi.i128.i = phi i32 [ %and1.i.i19.pre-phi.i.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %and1.i.i.i.i, %while.cond21thread-pre-split.i.thread117.i ]
  %bitD.sroa.42.3127.i = phi ptr [ %bitD.sroa.42.3.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %cSrc, %while.cond21thread-pre-split.i.thread117.i ]
  %bitD.sroa.17.2126.i = phi i32 [ %bitD.sroa.17.2.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %bitD.sroa.17.1.i, %while.cond21thread-pre-split.i.thread117.i ]
  %bitD.sroa.0.4125.i = phi i32 [ %bitD.sroa.0.4.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ], [ %bitD.sroa.0.3.i, %while.cond21thread-pre-split.i.thread117.i ]
  br label %if.end.i58.i.i

if.end.i58.i.i:                                   ; preds = %while.body30.i.i.if.end.i58.i.i_crit_edge, %if.end.i58.i.lr.ph.i
  %p.addr.3.i93.i = phi ptr [ %p.addr.0.lcssa.i129.i, %if.end.i58.i.lr.ph.i ], [ %add.ptr32.i.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD.sroa.42.491.i = phi ptr [ %bitD.sroa.42.3127.i, %if.end.i58.i.lr.ph.i ], [ %bitD.sroa.42.5.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD.sroa.17.390.i = phi i32 [ %bitD.sroa.17.2126.i, %if.end.i58.i.lr.ph.i ], [ %add.i.i24.i.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD.sroa.0.589.i = phi i32 [ %bitD.sroa.0.4125.i, %if.end.i58.i.lr.ph.i ], [ %36, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %cmp1.not.i57.i.i = icmp ult ptr %bitD.sroa.42.491.i, %add.ptr.i15.i
  br i1 %cmp1.not.i57.i.i, label %if.end3.i66.i.i, label %BIT_reloadDStreamFast.exit.i63.i.i

BIT_reloadDStreamFast.exit.i63.i.i:               ; preds = %if.end.i58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i59.i.i = lshr i32 %bitD.sroa.17.390.i, 3
  %and.i.i62.i.i = and i32 %bitD.sroa.17.390.i, 7
  br label %BIT_reloadDStream.exit85.i.i

if.end3.i66.i.i:                                  ; preds = %if.end.i58.i.i
  %cmp5.i65.i.i = icmp eq ptr %bitD.sroa.42.491.i, %cSrc
  br i1 %cmp5.i65.i.i, label %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge, label %if.end11.i83.i.i

if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %if.end3.i66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

if.end11.i83.i.i:                                 ; preds = %if.end3.i66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i70.i.i = lshr i32 %bitD.sroa.17.390.i, 3
  %idx.neg.i71.i.i = sub nsw i32 0, %shr.i70.i.i
  %add.ptr.i72.i.i = getelementptr i8, ptr %bitD.sroa.42.491.i, i32 %idx.neg.i71.i.i
  %cmp15.i73.i.i = icmp ult ptr %add.ptr.i72.i.i, %cSrc
  %sub.ptr.lhs.cast.i74.i.i = ptrtoint ptr %bitD.sroa.42.491.i to i32
  %sub.ptr.sub.i76.i.i = sub i32 %sub.ptr.lhs.cast.i74.i.i, %sub.ptr.rhs.cast.i75.i.i.pre-phi
  %nbBytes.0.i77.i.i = select i1 %cmp15.i73.i.i, i32 %sub.ptr.sub.i76.i.i, i32 %shr.i70.i.i
  %result.0.i78.i.i = zext i1 %cmp15.i73.i.i to i32
  %mul.neg.i81.i.i = mul i32 %nbBytes.0.i77.i.i, -8
  %sub.i82.i.i = add i32 %mul.neg.i81.i.i, %bitD.sroa.17.390.i
  br label %BIT_reloadDStream.exit85.i.i

BIT_reloadDStream.exit85.i.i:                     ; preds = %if.end11.i83.i.i, %BIT_reloadDStreamFast.exit.i63.i.i
  %nbBytes.0.i77.i.pn.i = phi i32 [ %nbBytes.0.i77.i.i, %if.end11.i83.i.i ], [ %shr.i.i59.i.i, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %and.i.i62.sink.i.i = phi i32 [ %sub.i82.i.i, %if.end11.i83.i.i ], [ %and.i.i62.i.i, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %retval.0.i84.i.i = phi i32 [ %result.0.i78.i.i, %if.end11.i83.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %idx.neg21.i79.i.pn.i = sub i32 0, %nbBytes.0.i77.i.pn.i
  %bitD.sroa.42.5.i = getelementptr i8, ptr %bitD.sroa.42.491.i, i32 %idx.neg21.i79.i.pn.i
  %34 = ptrtoint ptr %bitD.sroa.42.5.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %bitD.sroa.42.5.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84.i.i)
  %cmp23.i.i = icmp eq i32 %retval.0.i84.i.i, 0
  %cmp26.i.i = icmp ule ptr %p.addr.3.i93.i, %add.ptr25.i130.i
  %and282.i.i = and i1 %cmp26.i.i, %cmp23.i.i
  br i1 %and282.i.i, label %while.body30.i.i, label %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge

BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

while.cond34.preheader.i.i:                       ; preds = %while.body30.i.i.while.cond34.preheader.i.i_crit_edge, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge, %while.cond21thread-pre-split.i.thread.i
  %add.ptr25.i115.i = phi ptr [ %add.ptr25.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i111.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.ptr25.i130.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i130.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i130.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ]
  %and1.i.i19.pre-phi.i113.i = phi i32 [ %and1.i.i19.pre-phi.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i.i.i, %while.cond21thread-pre-split.i.thread.i ], [ %and1.i.i19.pre-phi.i128.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i19.pre-phi.i128.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i19.pre-phi.i128.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ]
  %p.addr.3.i.lcssa.i = phi ptr [ %p.addr.0.lcssa.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr20.i.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.ptr32.i.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %p.addr.3.i93.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %p.addr.3.i93.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD.sroa.0.6.i = phi i32 [ %bitD.sroa.0.4.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %19, %while.cond21thread-pre-split.i.thread.i ], [ %36, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %36, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD.sroa.0.589.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD.sroa.17.4.i = phi i32 [ %bitD.sroa.17.2.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.i.i12.i.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.i.i24.i.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and.i.i62.sink.i.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD.sroa.17.390.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD.sroa.42.6.i = phi ptr [ %bitD.sroa.42.3.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD.sroa.42.2.i, %while.cond21thread-pre-split.i.thread.i ], [ %bitD.sroa.42.5.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD.sroa.42.5.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %cSrc, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %cmp36.not98.i.i = icmp ugt ptr %p.addr.3.i.lcssa.i, %add.ptr25.i115.i
  br i1 %cmp36.not98.i.i, label %while.cond34.preheader.i.i.while.end41.i.i_crit_edge, label %while.cond34.preheader.i.i.while.body38.i.i_crit_edge

while.cond34.preheader.i.i.while.body38.i.i_crit_edge: ; preds = %while.cond34.preheader.i.i
  br label %while.body38.i.i

while.cond34.preheader.i.i.while.end41.i.i_crit_edge: ; preds = %while.cond34.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i.i

while.body30.i.i:                                 ; preds = %BIT_reloadDStream.exit85.i.i
  %and.i.i16.i.i = and i32 %and.i.i62.sink.i.i, 31
  %shl.i.i17.i.i = shl i32 %36, %and.i.i16.i.i
  %shr.i.i20.i.i = lshr i32 %shl.i.i17.i.i, %and1.i.i19.pre-phi.i128.i
  %add.ptr.i21.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i
  %37 = ptrtoint ptr %add.ptr.i21.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i21.i.i, align 2
  %39 = ptrtoint ptr %p.addr.3.i93.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %p.addr.3.i93.i, align 1
  %nbBits.i22.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i, i32 1
  %40 = ptrtoint ptr %nbBits.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nbBits.i22.i.i, align 2
  %conv.i23.i.i = zext i8 %41 to i32
  %add.i.i24.i.i = add i32 %and.i.i62.sink.i.i, %conv.i23.i.i
  %length.i25.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i, i32 2
  %42 = ptrtoint ptr %length.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %length.i25.i.i, align 1
  %conv2.i26.i.i = zext i8 %43 to i32
  %add.ptr32.i.i = getelementptr i8, ptr %p.addr.3.i93.i, i32 %conv2.i26.i.i
  %cmp.i54.i.i = icmp ugt i32 %add.i.i24.i.i, 32
  br i1 %cmp.i54.i.i, label %while.body30.i.i.while.cond34.preheader.i.i_crit_edge, label %while.body30.i.i.if.end.i58.i.i_crit_edge

while.body30.i.i.if.end.i58.i.i_crit_edge:        ; preds = %while.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i.i

while.body30.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %while.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

while.body38.i.i:                                 ; preds = %while.body38.i.i.while.body38.i.i_crit_edge, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge
  %bitD.sroa.17.5.i = phi i32 [ %add.i.i36.i.i, %while.body38.i.i.while.body38.i.i_crit_edge ], [ %bitD.sroa.17.4.i, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge ]
  %p.addr.499.i.i = phi ptr [ %add.ptr40.i.i, %while.body38.i.i.while.body38.i.i_crit_edge ], [ %p.addr.3.i.lcssa.i, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge ]
  %and.i.i28.i.i = and i32 %bitD.sroa.17.5.i, 31
  %shl.i.i29.i.i = shl i32 %bitD.sroa.0.6.i, %and.i.i28.i.i
  %shr.i.i32.i.i = lshr i32 %shl.i.i29.i.i, %and1.i.i19.pre-phi.i113.i
  %add.ptr.i33.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i
  %44 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i33.i.i, align 2
  %46 = ptrtoint ptr %p.addr.499.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %p.addr.499.i.i, align 1
  %nbBits.i34.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i, i32 1
  %47 = ptrtoint ptr %nbBits.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nbBits.i34.i.i, align 2
  %conv.i35.i.i = zext i8 %48 to i32
  %add.i.i36.i.i = add i32 %bitD.sroa.17.5.i, %conv.i35.i.i
  %length.i37.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i, i32 2
  %49 = ptrtoint ptr %length.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %length.i37.i.i, align 1
  %conv2.i38.i.i = zext i8 %50 to i32
  %add.ptr40.i.i = getelementptr i8, ptr %p.addr.499.i.i, i32 %conv2.i38.i.i
  %cmp36.not.i.i = icmp ugt ptr %add.ptr40.i.i, %add.ptr25.i115.i
  br i1 %cmp36.not.i.i, label %while.body38.i.i.while.end41.i.i_crit_edge, label %while.body38.i.i.while.body38.i.i_crit_edge

while.body38.i.i.while.body38.i.i_crit_edge:      ; preds = %while.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38.i.i

while.body38.i.i.while.end41.i.i_crit_edge:       ; preds = %while.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i.i

while.end41.i.i:                                  ; preds = %while.body38.i.i.while.end41.i.i_crit_edge, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge
  %bitD.sroa.17.6.i = phi i32 [ %bitD.sroa.17.4.i, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge ], [ %add.i.i36.i.i, %while.body38.i.i.while.end41.i.i_crit_edge ]
  %p.addr.4.lcssa.i.i = phi ptr [ %p.addr.3.i.lcssa.i, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge ], [ %add.ptr40.i.i, %while.body38.i.i.while.end41.i.i_crit_edge ]
  %cmp42.i.i = icmp ult ptr %p.addr.4.lcssa.i.i, %add.ptr.i
  br i1 %cmp42.i.i, label %if.then44.i.i, label %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge

while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge: ; preds = %while.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit.i

if.then44.i.i:                                    ; preds = %while.end41.i.i
  %and.i.i39.i.i = and i32 %bitD.sroa.17.6.i, 31
  %shl.i.i40.i.i = shl i32 %bitD.sroa.0.6.i, %and.i.i39.i.i
  %shr.i.i43.i.i = lshr i32 %shl.i.i40.i.i, %and1.i.i19.pre-phi.i113.i
  %add.ptr.i44.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i
  %51 = ptrtoint ptr %add.ptr.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i44.i.i, align 2
  %53 = ptrtoint ptr %p.addr.4.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %p.addr.4.lcssa.i.i, align 1
  %length.i45.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 2
  %54 = ptrtoint ptr %length.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %length.i45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.i.i.i = icmp eq i8 %55, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits.i46.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 1
  %56 = ptrtoint ptr %nbBits.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nbBits.i46.i.i, align 2
  %conv3.i.i.i = zext i8 %57 to i32
  %add.i.i47.i.i = add i32 %bitD.sroa.17.6.i, %conv3.i.i.i
  br label %HUF_decodeStreamX2.exit.i

if.else.i.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.17.6.i)
  %cmp4.i.i.i = icmp ult i32 %bitD.sroa.17.6.i, 32
  br i1 %cmp4.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge

if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit.i

if.then6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits8.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 1
  %58 = ptrtoint ptr %nbBits8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nbBits8.i.i.i, align 2
  %conv9.i.i.i = zext i8 %59 to i32
  %add.i2.i.i.i = add nuw nsw i32 %bitD.sroa.17.6.i, %conv9.i.i.i
  %60 = tail call i32 @llvm.umin.i32(i32 %add.i2.i.i.i, i32 32) #7
  br label %HUF_decodeStreamX2.exit.i

HUF_decodeStreamX2.exit.i:                        ; preds = %if.then6.i.i.i, %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge, %if.then.i.i.i, %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge
  %bitD.sroa.17.7.i = phi i32 [ %bitD.sroa.17.6.i, %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge ], [ %bitD.sroa.17.6.i, %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge ], [ %60, %if.then6.i.i.i ], [ %add.i.i47.i.i, %if.then.i.i.i ]
  %cmp.i20.i = icmp eq ptr %bitD.sroa.42.6.i, %cSrc
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD.sroa.17.7.i)
  %cmp1.i22.not.i = icmp eq i32 %bitD.sroa.17.7.i, 32
  %or.cond.i = select i1 %cmp.i20.i, i1 %cmp1.i22.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %dstSize, i32 -20
  br label %HUF_decompress1X2_usingDTable_internal_body.exit

HUF_decompress1X2_usingDTable_internal_body.exit: ; preds = %HUF_decodeStreamX2.exit.i, %BIT_initDStream.exit.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, %sw.epilog.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, %if.then3.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge, %entry.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge
  %retval.1.i = phi i32 [ %cSrcSize, %BIT_initDStream.exit.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge ], [ -20, %sw.epilog.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge ], [ -1, %if.then3.i.i.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge ], [ -72, %entry.HUF_decompress1X2_usingDTable_internal_body.exit_crit_edge ], [ %spec.select.i, %HUF_decodeStreamX2.exit.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X2_DCtx_wksp(ptr nocapture noundef %DCtx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %DCtx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %cSrcSize)
  %cmp.not = icmp ult i32 %call, %cSrcSize
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %cSrc, i32 %call
  %sub = sub i32 %cSrcSize, %call
  %call4 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %DCtx)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X2_usingDTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.sroa.3.0.copyload.i)
  %cmp.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef writeonly %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef readonly %DTable) unnamed_addr #3 align 64 {
entry:
  %bitD4.i = alloca %struct.BIT_DStream_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cSrcSize)
  %cmp.i = icmp ult i32 %cSrcSize, 10
  br i1 %cmp.i, label %entry.HUF_decompress4X2_usingDTable_internal_body.exit_crit_edge, label %if.end.i

entry.HUF_decompress4X2_usingDTable_internal_body.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X2_usingDTable_internal_body.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -3
  %add.ptr2.i = getelementptr i32, ptr %DTable, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bitD4.i) #7
  %0 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD4.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %bitD4.i, i32 255, i32 20)
  %5 = ptrtoint ptr %cSrc to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %cSrc, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  %conv.i = zext i16 %7 to i32
  %add.ptr3.i = getelementptr i8, ptr %cSrc, i32 2
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr3.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  %conv5.i = zext i16 %10 to i32
  %add.ptr6.i = getelementptr i8, ptr %cSrc, i32 4
  %11 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr6.i, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #7
  %conv8.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 6
  %add9.i = add nuw nsw i32 %add.i, %conv5.i
  %add10.i = add nuw nsw i32 %add9.i, %conv8.i
  %sub.i = sub i32 %cSrcSize, %add10.i
  %add.ptr11.i = getelementptr i8, ptr %cSrc, i32 6
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 %conv.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i, i32 %conv5.i
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %conv8.i
  %add15.i = add i32 %dstSize, 3
  %div332.i = lshr i32 %add15.i, 2
  %add.ptr16.i = getelementptr i8, ptr %dst, i32 %div332.i
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %div332.i
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 %div332.i
  %retval.sroa.4.0.table.addr.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %DTable, i32 2
  %14 = ptrtoint ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %retval.sroa.4.0.copyload.i.i = load i8, ptr %retval.sroa.4.0.table.addr.0..sroa_idx.i.i, align 2
  %retval.sroa.4.0.insert.ext.i.i = zext i8 %retval.sroa.4.0.copyload.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %cSrcSize)
  %cmp21.i = icmp ugt i32 %add10.i, %cSrcSize
  br i1 %cmp21.i, label %if.end.i.cleanup186.i_crit_edge, label %if.end24.i

if.end.i.cleanup186.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i886.i = icmp eq i16 %6, 0
  br i1 %cmp.i886.i, label %if.end24.i.cleanup186.i_crit_edge, label %if.end.i.i

if.end24.i.cleanup186.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i.i:                                       ; preds = %if.end24.i
  %add.ptr.i887.i = getelementptr i8, ptr %cSrc, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp2.i.i = icmp ugt i16 %7, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %conv.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr11.i, i32 %sub.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.cleanup186.i_crit_edge, label %cond.end.thread.i.i

if.then3.i.i.cleanup186.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i.i:                              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr12.i, i32 -4
  %17 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr5.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %conv.i888.i = zext i8 %16 to i32
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv.i888.i, i1 true) #7, !range !11
  %sub9.i.i = add nsw i32 %20, -23
  br label %cleanup.cont.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr11.i, align 1
  %conv18.i.i = zext i8 %22 to i32
  %23 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %7, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i16 2, label %if.else.i.i.sw.bb47.i.i_crit_edge
    i16 3, label %sw.bb41.i.i
  ]

if.else.i.i.sw.bb47.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i.i = getelementptr i8, ptr %cSrc, i32 8
  %24 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %25 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %add46.i.i = or i32 %shl44.i.i, %conv18.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb41.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge
  %bitD1.sroa.0.0.i = phi i32 [ %add46.i.i, %sw.bb41.i.i ], [ %conv18.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %cSrc, i32 7
  %26 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %27 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 8
  %add52.i.i = add nuw nsw i32 %shl50.i.i, %bitD1.sroa.0.0.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %bitD1.sroa.0.1.i = phi i32 [ %conv18.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge ], [ %add52.i.i, %sw.bb47.i.i ]
  %sub54.i.i = add nsw i32 %conv.i, -1
  %arrayidx55.i.i = getelementptr i8, ptr %add.ptr11.i, i32 %sub54.i.i
  %28 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool57.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool57.not.i.i, label %sw.epilog.i.i.cleanup186.i_crit_edge, label %cleanup.cont73.i.i

sw.epilog.i.i.cleanup186.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i.i:                               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i.i = zext i8 %29 to i32
  %30 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i, i1 true) #7, !range !11
  %.neg.i.i = mul nsw i32 %conv.i, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 9
  %add76.i.i = add nsw i32 %mul.i.i, %30
  br label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %cleanup.cont73.i.i, %cond.end.thread.i.i
  %bitD1.sroa.0.2.i = phi i32 [ %19, %cond.end.thread.i.i ], [ %bitD1.sroa.0.1.i, %cleanup.cont73.i.i ]
  %bitD1.sroa.20.0.i = phi i32 [ %sub9.i.i, %cond.end.thread.i.i ], [ %add76.i.i, %cleanup.cont73.i.i ]
  %bitD1.sroa.53.0.i = phi ptr [ %add.ptr5.i.i, %cond.end.thread.i.i ], [ %add.ptr11.i, %cleanup.cont73.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i891.i = icmp eq i16 %9, 0
  br i1 %cmp.i891.i, label %cleanup.cont.i.cleanup186.i_crit_edge, label %if.end.i897.i

cleanup.cont.i.cleanup186.i_crit_edge:            ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i897.i:                                    ; preds = %cleanup.cont.i
  %add.ptr.i894.i = getelementptr i8, ptr %add.ptr12.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp2.i896.i = icmp ugt i16 %10, 3
  br i1 %cmp2.i896.i, label %if.then3.i904.i, label %if.else.i913.i

if.then3.i904.i:                                  ; preds = %if.end.i897.i
  %sub.i901.i = add nsw i32 %conv5.i, -1
  %arrayidx.i902.i = getelementptr i8, ptr %add.ptr12.i, i32 %sub.i901.i
  %31 = ptrtoint ptr %arrayidx.i902.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i902.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i903.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i903.i, label %if.then3.i904.i.cleanup186.i_crit_edge, label %cond.end.thread.i908.i

if.then3.i904.i.cleanup186.i_crit_edge:           ; preds = %if.then3.i904.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i908.i:                           ; preds = %if.then3.i904.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i899.i = getelementptr i8, ptr %add.ptr13.i, i32 -4
  %33 = ptrtoint ptr %add.ptr5.i899.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr5.i899.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %conv.i905.i = zext i8 %32 to i32
  %36 = tail call i32 @llvm.ctlz.i32(i32 %conv.i905.i, i1 true) #7, !range !11
  %sub9.i906.i = add nsw i32 %36, -23
  br label %cleanup.cont37.i

if.else.i913.i:                                   ; preds = %if.end.i897.i
  %37 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr12.i, align 1
  %conv18.i912.i = zext i8 %38 to i32
  %39 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %10, label %if.else.i913.i.sw.epilog.i927.i_crit_edge [
    i16 2, label %if.else.i913.i.sw.bb47.i923.i_crit_edge
    i16 3, label %sw.bb41.i918.i
  ]

if.else.i913.i.sw.bb47.i923.i_crit_edge:          ; preds = %if.else.i913.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i923.i

if.else.i913.i.sw.epilog.i927.i_crit_edge:        ; preds = %if.else.i913.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i927.i

sw.bb41.i918.i:                                   ; preds = %if.else.i913.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i914.i = getelementptr i8, ptr %add.ptr12.i, i32 2
  %40 = ptrtoint ptr %arrayidx42.i914.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx42.i914.i, align 1
  %conv43.i915.i = zext i8 %41 to i32
  %shl44.i916.i = shl nuw nsw i32 %conv43.i915.i, 16
  %add46.i917.i = or i32 %shl44.i916.i, %conv18.i912.i
  br label %sw.bb47.i923.i

sw.bb47.i923.i:                                   ; preds = %sw.bb41.i918.i, %if.else.i913.i.sw.bb47.i923.i_crit_edge
  %bitD2.sroa.0.0.i = phi i32 [ %add46.i917.i, %sw.bb41.i918.i ], [ %conv18.i912.i, %if.else.i913.i.sw.bb47.i923.i_crit_edge ]
  %arrayidx48.i919.i = getelementptr i8, ptr %add.ptr12.i, i32 1
  %42 = ptrtoint ptr %arrayidx48.i919.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx48.i919.i, align 1
  %conv49.i920.i = zext i8 %43 to i32
  %shl50.i921.i = shl nuw nsw i32 %conv49.i920.i, 8
  %add52.i922.i = add nuw nsw i32 %shl50.i921.i, %bitD2.sroa.0.0.i
  br label %sw.epilog.i927.i

sw.epilog.i927.i:                                 ; preds = %sw.bb47.i923.i, %if.else.i913.i.sw.epilog.i927.i_crit_edge
  %bitD2.sroa.0.1.i = phi i32 [ %conv18.i912.i, %if.else.i913.i.sw.epilog.i927.i_crit_edge ], [ %add52.i922.i, %sw.bb47.i923.i ]
  %sub54.i924.i = add nsw i32 %conv5.i, -1
  %arrayidx55.i925.i = getelementptr i8, ptr %add.ptr12.i, i32 %sub54.i924.i
  %44 = ptrtoint ptr %arrayidx55.i925.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx55.i925.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not.i926.i = icmp eq i8 %45, 0
  br i1 %tobool57.not.i926.i, label %sw.epilog.i927.i.cleanup186.i_crit_edge, label %cleanup.cont73.i935.i

sw.epilog.i927.i.cleanup186.i_crit_edge:          ; preds = %sw.epilog.i927.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i935.i:                            ; preds = %sw.epilog.i927.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i930.i = zext i8 %45 to i32
  %46 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i930.i, i1 true) #7, !range !11
  %.neg.i932.i = mul nsw i32 %conv5.i, -8
  %mul.i933.i = add nsw i32 %.neg.i932.i, 9
  %add76.i934.i = add nsw i32 %mul.i933.i, %46
  br label %cleanup.cont37.i

cleanup.cont37.i:                                 ; preds = %cleanup.cont73.i935.i, %cond.end.thread.i908.i
  %bitD2.sroa.0.2.i = phi i32 [ %35, %cond.end.thread.i908.i ], [ %bitD2.sroa.0.1.i, %cleanup.cont73.i935.i ]
  %bitD2.sroa.20.0.i = phi i32 [ %sub9.i906.i, %cond.end.thread.i908.i ], [ %add76.i934.i, %cleanup.cont73.i935.i ]
  %bitD2.sroa.53.0.i = phi ptr [ %add.ptr5.i899.i, %cond.end.thread.i908.i ], [ %add.ptr12.i, %cleanup.cont73.i935.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i940.i = icmp eq i16 %12, 0
  br i1 %cmp.i940.i, label %cleanup.cont37.i.cleanup186.i_crit_edge, label %if.end.i946.i

cleanup.cont37.i.cleanup186.i_crit_edge:          ; preds = %cleanup.cont37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end.i946.i:                                    ; preds = %cleanup.cont37.i
  %add.ptr.i943.i = getelementptr i8, ptr %add.ptr13.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp2.i945.i = icmp ugt i16 %13, 3
  br i1 %cmp2.i945.i, label %if.then3.i953.i, label %if.else.i962.i

if.then3.i953.i:                                  ; preds = %if.end.i946.i
  %sub.i950.i = add nsw i32 %conv8.i, -1
  %arrayidx.i951.i = getelementptr i8, ptr %add.ptr13.i, i32 %sub.i950.i
  %47 = ptrtoint ptr %arrayidx.i951.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i951.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i952.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i952.i, label %if.then3.i953.i.cleanup186.i_crit_edge, label %cond.end.thread.i957.i

if.then3.i953.i.cleanup186.i_crit_edge:           ; preds = %if.then3.i953.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cond.end.thread.i957.i:                           ; preds = %if.then3.i953.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.i948.i = getelementptr i8, ptr %add.ptr14.i, i32 -4
  %49 = ptrtoint ptr %add.ptr5.i948.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %add.ptr5.i948.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %conv.i954.i = zext i8 %48 to i32
  %52 = tail call i32 @llvm.ctlz.i32(i32 %conv.i954.i, i1 true) #7, !range !11
  %sub9.i955.i = add nsw i32 %52, -23
  br label %cleanup.cont46.i

if.else.i962.i:                                   ; preds = %if.end.i946.i
  %53 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr13.i, align 1
  %conv18.i961.i = zext i8 %54 to i32
  %55 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %13, label %if.else.i962.i.sw.epilog.i976.i_crit_edge [
    i16 2, label %if.else.i962.i.sw.bb47.i972.i_crit_edge
    i16 3, label %sw.bb41.i967.i
  ]

if.else.i962.i.sw.bb47.i972.i_crit_edge:          ; preds = %if.else.i962.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i972.i

if.else.i962.i.sw.epilog.i976.i_crit_edge:        ; preds = %if.else.i962.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i976.i

sw.bb41.i967.i:                                   ; preds = %if.else.i962.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42.i963.i = getelementptr i8, ptr %add.ptr13.i, i32 2
  %56 = ptrtoint ptr %arrayidx42.i963.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx42.i963.i, align 1
  %conv43.i964.i = zext i8 %57 to i32
  %shl44.i965.i = shl nuw nsw i32 %conv43.i964.i, 16
  %add46.i966.i = or i32 %shl44.i965.i, %conv18.i961.i
  br label %sw.bb47.i972.i

sw.bb47.i972.i:                                   ; preds = %sw.bb41.i967.i, %if.else.i962.i.sw.bb47.i972.i_crit_edge
  %bitD3.sroa.0.0.i = phi i32 [ %add46.i966.i, %sw.bb41.i967.i ], [ %conv18.i961.i, %if.else.i962.i.sw.bb47.i972.i_crit_edge ]
  %arrayidx48.i968.i = getelementptr i8, ptr %add.ptr13.i, i32 1
  %58 = ptrtoint ptr %arrayidx48.i968.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx48.i968.i, align 1
  %conv49.i969.i = zext i8 %59 to i32
  %shl50.i970.i = shl nuw nsw i32 %conv49.i969.i, 8
  %add52.i971.i = add nuw nsw i32 %shl50.i970.i, %bitD3.sroa.0.0.i
  br label %sw.epilog.i976.i

sw.epilog.i976.i:                                 ; preds = %sw.bb47.i972.i, %if.else.i962.i.sw.epilog.i976.i_crit_edge
  %bitD3.sroa.0.1.i = phi i32 [ %conv18.i961.i, %if.else.i962.i.sw.epilog.i976.i_crit_edge ], [ %add52.i971.i, %sw.bb47.i972.i ]
  %sub54.i973.i = add nsw i32 %conv8.i, -1
  %arrayidx55.i974.i = getelementptr i8, ptr %add.ptr13.i, i32 %sub54.i973.i
  %60 = ptrtoint ptr %arrayidx55.i974.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx55.i974.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool57.not.i975.i = icmp eq i8 %61, 0
  br i1 %tobool57.not.i975.i, label %sw.epilog.i976.i.cleanup186.i_crit_edge, label %cleanup.cont73.i984.i

sw.epilog.i976.i.cleanup186.i_crit_edge:          ; preds = %sw.epilog.i976.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

cleanup.cont73.i984.i:                            ; preds = %sw.epilog.i976.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i979.i = zext i8 %61 to i32
  %62 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i979.i, i1 true) #7, !range !11
  %.neg.i981.i = mul nsw i32 %conv8.i, -8
  %mul.i982.i = add nsw i32 %.neg.i981.i, 9
  %add76.i983.i = add nsw i32 %mul.i982.i, %62
  br label %cleanup.cont46.i

cleanup.cont46.i:                                 ; preds = %cleanup.cont73.i984.i, %cond.end.thread.i957.i
  %bitD3.sroa.0.2.i = phi i32 [ %51, %cond.end.thread.i957.i ], [ %bitD3.sroa.0.1.i, %cleanup.cont73.i984.i ]
  %bitD3.sroa.20.0.i = phi i32 [ %sub9.i955.i, %cond.end.thread.i957.i ], [ %add76.i983.i, %cleanup.cont73.i984.i ]
  %bitD3.sroa.53.0.i = phi ptr [ %add.ptr5.i948.i, %cond.end.thread.i957.i ], [ %add.ptr13.i, %cleanup.cont73.i984.i ]
  %call48.i = call fastcc i32 @BIT_initDStream(ptr noundef nonnull %bitD4.i, ptr noundef %add.ptr14.i, i32 noundef %sub.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call48.i)
  %cmp.i989.i = icmp ult i32 %call48.i, -119
  br i1 %cmp.i989.i, label %for.cond.preheader.i, label %cleanup.cont46.i.cleanup186.i_crit_edge

cleanup.cont46.i.cleanup186.i_crit_edge:          ; preds = %cleanup.cont46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

for.cond.preheader.i:                             ; preds = %cleanup.cont46.i
  %cmp561260.not.i = icmp ult ptr %add.ptr18.i, %add.ptr1.i
  br i1 %cmp561260.not.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i = and i32 %sub.i.i.i, 31
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %op4.01276.i = phi ptr [ %add.ptr18.i, %for.body.lr.ph.i ], [ %add.ptr141.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %op3.01275.i = phi ptr [ %add.ptr17.i, %for.body.lr.ph.i ], [ %add.ptr139.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %op2.01274.i = phi ptr [ %add.ptr16.i, %for.body.lr.ph.i ], [ %add.ptr137.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %op1.01273.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr135.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD3.sroa.53.11272.i = phi ptr [ %bitD3.sroa.53.0.i, %for.body.lr.ph.i ], [ %bitD3.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD3.sroa.20.11271.i = phi i32 [ %bitD3.sroa.20.0.i, %for.body.lr.ph.i ], [ %bitD3.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD3.sroa.0.31270.i = phi i32 [ %bitD3.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD3.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD2.sroa.53.11269.i = phi ptr [ %bitD2.sroa.53.0.i, %for.body.lr.ph.i ], [ %bitD2.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD2.sroa.20.11268.i = phi i32 [ %bitD2.sroa.20.0.i, %for.body.lr.ph.i ], [ %bitD2.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD2.sroa.0.31267.i = phi i32 [ %bitD2.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD2.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD1.sroa.53.11266.i = phi ptr [ %bitD1.sroa.53.0.i, %for.body.lr.ph.i ], [ %bitD1.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD1.sroa.20.11265.i = phi i32 [ %bitD1.sroa.20.0.i, %for.body.lr.ph.i ], [ %bitD1.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %bitD1.sroa.0.31264.i = phi i32 [ %bitD1.sroa.0.2.i, %for.body.lr.ph.i ], [ %bitD1.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge ]
  %and.i.i.i = and i32 %bitD1.sroa.20.11265.i, 31
  %shl.i.i.i = shl i32 %bitD1.sroa.0.31264.i, %and.i.i.i
  %shr.i.i.i = lshr i32 %shl.i.i.i, %and1.i.i.i
  %add.ptr.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i.i, align 2
  %67 = ptrtoint ptr %op1.01273.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %op1.01273.i, align 1
  %nbBits.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i, i32 1
  %68 = ptrtoint ptr %nbBits.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nbBits.i.i, align 2
  %conv.i.i = zext i8 %69 to i32
  %add.i.i.i = add i32 %bitD1.sroa.20.11265.i, %conv.i.i
  %length.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i, i32 2
  %70 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %length.i.i, align 1
  %conv2.i.i = zext i8 %71 to i32
  %add.ptr87.i = getelementptr i8, ptr %op1.01273.i, i32 %conv2.i.i
  %and.i.i338.i = and i32 %bitD2.sroa.20.11268.i, 31
  %shl.i.i339.i = shl i32 %bitD2.sroa.0.31267.i, %and.i.i338.i
  %shr.i.i342.i = lshr i32 %shl.i.i339.i, %and1.i.i.i
  %add.ptr.i343.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i342.i
  %72 = ptrtoint ptr %add.ptr.i343.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i343.i, align 2
  %74 = ptrtoint ptr %op2.01274.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %op2.01274.i, align 1
  %nbBits.i344.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i342.i, i32 1
  %75 = ptrtoint ptr %nbBits.i344.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nbBits.i344.i, align 2
  %conv.i345.i = zext i8 %76 to i32
  %add.i.i346.i = add i32 %bitD2.sroa.20.11268.i, %conv.i345.i
  %length.i347.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i342.i, i32 2
  %77 = ptrtoint ptr %length.i347.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %length.i347.i, align 1
  %conv2.i348.i = zext i8 %78 to i32
  %add.ptr94.i = getelementptr i8, ptr %op2.01274.i, i32 %conv2.i348.i
  %and.i.i350.i = and i32 %bitD3.sroa.20.11271.i, 31
  %shl.i.i351.i = shl i32 %bitD3.sroa.0.31270.i, %and.i.i350.i
  %shr.i.i354.i = lshr i32 %shl.i.i351.i, %and1.i.i.i
  %add.ptr.i355.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i354.i
  %79 = ptrtoint ptr %add.ptr.i355.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr.i355.i, align 2
  %81 = ptrtoint ptr %op3.01275.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %op3.01275.i, align 1
  %nbBits.i356.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i354.i, i32 1
  %82 = ptrtoint ptr %nbBits.i356.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nbBits.i356.i, align 2
  %conv.i357.i = zext i8 %83 to i32
  %add.i.i358.i = add i32 %bitD3.sroa.20.11271.i, %conv.i357.i
  %length.i359.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i354.i, i32 2
  %84 = ptrtoint ptr %length.i359.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %length.i359.i, align 1
  %conv2.i360.i = zext i8 %85 to i32
  %add.ptr101.i = getelementptr i8, ptr %op3.01275.i, i32 %conv2.i360.i
  %86 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bitD4.i, align 4
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %0, align 4
  %and.i.i362.i = and i32 %89, 31
  %shl.i.i363.i = shl i32 %87, %and.i.i362.i
  %shr.i.i366.i = lshr i32 %shl.i.i363.i, %and1.i.i.i
  %add.ptr.i367.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i366.i
  %90 = ptrtoint ptr %add.ptr.i367.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i367.i, align 2
  %92 = ptrtoint ptr %op4.01276.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %op4.01276.i, align 1
  %nbBits.i368.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i366.i, i32 1
  %93 = ptrtoint ptr %nbBits.i368.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nbBits.i368.i, align 2
  %conv.i369.i = zext i8 %94 to i32
  %add.i.i370.i = add i32 %89, %conv.i369.i
  %length.i371.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i366.i, i32 2
  %95 = ptrtoint ptr %length.i371.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %length.i371.i, align 1
  %conv2.i372.i = zext i8 %96 to i32
  %add.ptr108.i = getelementptr i8, ptr %op4.01276.i, i32 %conv2.i372.i
  %and.i.i374.i = and i32 %add.i.i.i, 31
  %shl.i.i375.i = shl i32 %bitD1.sroa.0.31264.i, %and.i.i374.i
  %shr.i.i378.i = lshr i32 %shl.i.i375.i, %and1.i.i.i
  %add.ptr.i379.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i378.i
  %97 = ptrtoint ptr %add.ptr.i379.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %add.ptr.i379.i, align 2
  %99 = ptrtoint ptr %add.ptr87.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %98, ptr %add.ptr87.i, align 1
  %nbBits.i380.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i378.i, i32 1
  %100 = ptrtoint ptr %nbBits.i380.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nbBits.i380.i, align 2
  %conv.i381.i = zext i8 %101 to i32
  %add.i.i382.i = add i32 %add.i.i.i, %conv.i381.i
  %length.i383.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i378.i, i32 2
  %102 = ptrtoint ptr %length.i383.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %length.i383.i, align 1
  %conv2.i384.i = zext i8 %103 to i32
  %add.ptr135.i = getelementptr i8, ptr %add.ptr87.i, i32 %conv2.i384.i
  %and.i.i386.i = and i32 %add.i.i346.i, 31
  %shl.i.i387.i = shl i32 %bitD2.sroa.0.31267.i, %and.i.i386.i
  %shr.i.i390.i = lshr i32 %shl.i.i387.i, %and1.i.i.i
  %add.ptr.i391.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i390.i
  %104 = ptrtoint ptr %add.ptr.i391.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i391.i, align 2
  %106 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %add.ptr94.i, align 1
  %nbBits.i392.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i390.i, i32 1
  %107 = ptrtoint ptr %nbBits.i392.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nbBits.i392.i, align 2
  %conv.i393.i = zext i8 %108 to i32
  %add.i.i394.i = add i32 %add.i.i346.i, %conv.i393.i
  %length.i395.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i390.i, i32 2
  %109 = ptrtoint ptr %length.i395.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %length.i395.i, align 1
  %conv2.i396.i = zext i8 %110 to i32
  %add.ptr137.i = getelementptr i8, ptr %add.ptr94.i, i32 %conv2.i396.i
  %and.i.i398.i = and i32 %add.i.i358.i, 31
  %shl.i.i399.i = shl i32 %bitD3.sroa.0.31270.i, %and.i.i398.i
  %shr.i.i402.i = lshr i32 %shl.i.i399.i, %and1.i.i.i
  %add.ptr.i403.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i402.i
  %111 = ptrtoint ptr %add.ptr.i403.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i403.i, align 2
  %113 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %add.ptr101.i, align 1
  %nbBits.i404.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i402.i, i32 1
  %114 = ptrtoint ptr %nbBits.i404.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nbBits.i404.i, align 2
  %conv.i405.i = zext i8 %115 to i32
  %add.i.i406.i = add i32 %add.i.i358.i, %conv.i405.i
  %length.i407.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i402.i, i32 2
  %116 = ptrtoint ptr %length.i407.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %length.i407.i, align 1
  %conv2.i408.i = zext i8 %117 to i32
  %add.ptr139.i = getelementptr i8, ptr %add.ptr101.i, i32 %conv2.i408.i
  %and.i.i410.i = and i32 %add.i.i370.i, 31
  %shl.i.i411.i = shl i32 %87, %and.i.i410.i
  %shr.i.i414.i = lshr i32 %shl.i.i411.i, %and1.i.i.i
  %add.ptr.i415.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i414.i
  %118 = ptrtoint ptr %add.ptr.i415.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i415.i, align 2
  %120 = ptrtoint ptr %add.ptr108.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %add.ptr108.i, align 1
  %nbBits.i416.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i414.i, i32 1
  %121 = ptrtoint ptr %nbBits.i416.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nbBits.i416.i, align 2
  %conv.i417.i = zext i8 %122 to i32
  %add.i.i418.i = add i32 %add.i.i370.i, %conv.i417.i
  store i32 %add.i.i418.i, ptr %0, align 4
  %length.i419.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i414.i, i32 2
  %123 = ptrtoint ptr %length.i419.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %length.i419.i, align 1
  %conv2.i420.i = zext i8 %124 to i32
  %add.ptr141.i = getelementptr i8, ptr %add.ptr108.i, i32 %conv2.i420.i
  %cmp.i993.i = icmp ult ptr %bitD1.sroa.53.11266.i, %add.ptr.i887.i
  br i1 %cmp.i993.i, label %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge, label %if.end.i996.i, !prof !12

for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit.i

if.end.i996.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i32 %add.i.i382.i, 3
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %add.ptr.i995.i = getelementptr i8, ptr %bitD1.sroa.53.11266.i, i32 %idx.neg.i.i
  %and.i.i = and i32 %add.i.i382.i, 7
  %125 = ptrtoint ptr %add.ptr.i995.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %add.ptr.i995.i, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %if.end.i996.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge
  %bitD1.sroa.0.4.i = phi i32 [ %bitD1.sroa.0.31264.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %127, %if.end.i996.i ]
  %bitD1.sroa.20.2.i = phi i32 [ %add.i.i382.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %and.i.i, %if.end.i996.i ]
  %bitD1.sroa.53.2.i = phi ptr [ %bitD1.sroa.53.11266.i, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ %add.ptr.i995.i, %if.end.i996.i ]
  %retval.0.i.i = phi i32 [ 3, %for.body.i.BIT_reloadDStreamFast.exit.i_crit_edge ], [ 0, %if.end.i996.i ]
  %cmp.i999.i = icmp ult ptr %bitD2.sroa.53.11269.i, %add.ptr.i894.i
  br i1 %cmp.i999.i, label %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge, label %if.end.i1005.i, !prof !12

BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit1007.i

if.end.i1005.i:                                   ; preds = %BIT_reloadDStreamFast.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i1001.i = lshr i32 %add.i.i394.i, 3
  %idx.neg.i1002.i = sub nsw i32 0, %shr.i1001.i
  %add.ptr.i1003.i = getelementptr i8, ptr %bitD2.sroa.53.11269.i, i32 %idx.neg.i1002.i
  %and.i1004.i = and i32 %add.i.i394.i, 7
  %128 = ptrtoint ptr %add.ptr.i1003.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %add.ptr.i1003.i, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #7
  br label %BIT_reloadDStreamFast.exit1007.i

BIT_reloadDStreamFast.exit1007.i:                 ; preds = %if.end.i1005.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge
  %bitD2.sroa.0.4.i = phi i32 [ %bitD2.sroa.0.31267.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge ], [ %130, %if.end.i1005.i ]
  %bitD2.sroa.20.2.i = phi i32 [ %add.i.i394.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge ], [ %and.i1004.i, %if.end.i1005.i ]
  %bitD2.sroa.53.2.i = phi ptr [ %bitD2.sroa.53.11269.i, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge ], [ %add.ptr.i1003.i, %if.end.i1005.i ]
  %retval.0.i1006.i = phi i32 [ 3, %BIT_reloadDStreamFast.exit.i.BIT_reloadDStreamFast.exit1007.i_crit_edge ], [ 0, %if.end.i1005.i ]
  %131 = or i32 %retval.0.i1006.i, %retval.0.i.i
  %cmp.i1010.i = icmp ult ptr %bitD3.sroa.53.11272.i, %add.ptr.i943.i
  br i1 %cmp.i1010.i, label %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge, label %if.end.i1016.i, !prof !12

BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit1007.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit1018.i

if.end.i1016.i:                                   ; preds = %BIT_reloadDStreamFast.exit1007.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i1012.i = lshr i32 %add.i.i406.i, 3
  %idx.neg.i1013.i = sub nsw i32 0, %shr.i1012.i
  %add.ptr.i1014.i = getelementptr i8, ptr %bitD3.sroa.53.11272.i, i32 %idx.neg.i1013.i
  %and.i1015.i = and i32 %add.i.i406.i, 7
  %132 = ptrtoint ptr %add.ptr.i1014.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %add.ptr.i1014.i, align 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  br label %BIT_reloadDStreamFast.exit1018.i

BIT_reloadDStreamFast.exit1018.i:                 ; preds = %if.end.i1016.i, %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge
  %bitD3.sroa.0.4.i = phi i32 [ %bitD3.sroa.0.31270.i, %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge ], [ %134, %if.end.i1016.i ]
  %bitD3.sroa.20.2.i = phi i32 [ %add.i.i406.i, %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge ], [ %and.i1015.i, %if.end.i1016.i ]
  %bitD3.sroa.53.2.i = phi ptr [ %bitD3.sroa.53.11272.i, %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge ], [ %add.ptr.i1014.i, %if.end.i1016.i ]
  %retval.0.i1017.i = phi i32 [ 3, %BIT_reloadDStreamFast.exit1007.i.BIT_reloadDStreamFast.exit1018.i_crit_edge ], [ 0, %if.end.i1016.i ]
  %135 = or i32 %131, %retval.0.i1017.i
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %cmp.i1021.i = icmp ult ptr %137, %64
  br i1 %cmp.i1021.i, label %BIT_reloadDStreamFast.exit1018.i.BIT_reloadDStreamFast.exit1029.i_crit_edge, label %if.end.i1027.i, !prof !12

BIT_reloadDStreamFast.exit1018.i.BIT_reloadDStreamFast.exit1029.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit1018.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_reloadDStreamFast.exit1029.i

if.end.i1027.i:                                   ; preds = %BIT_reloadDStreamFast.exit1018.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i1023.i = lshr i32 %add.i.i418.i, 3
  %idx.neg.i1024.i = sub nsw i32 0, %shr.i1023.i
  %add.ptr.i1025.i = getelementptr i8, ptr %137, i32 %idx.neg.i1024.i
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %add.ptr.i1025.i, ptr %1, align 4
  %and.i1026.i = and i32 %add.i.i418.i, 7
  %139 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and.i1026.i, ptr %0, align 4
  %140 = ptrtoint ptr %add.ptr.i1025.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %add.ptr.i1025.i, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #7
  %143 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %bitD4.i, align 4
  br label %BIT_reloadDStreamFast.exit1029.i

BIT_reloadDStreamFast.exit1029.i:                 ; preds = %if.end.i1027.i, %BIT_reloadDStreamFast.exit1018.i.BIT_reloadDStreamFast.exit1029.i_crit_edge
  %retval.0.i1028.i = phi i32 [ 0, %if.end.i1027.i ], [ 3, %BIT_reloadDStreamFast.exit1018.i.BIT_reloadDStreamFast.exit1029.i_crit_edge ]
  %144 = or i32 %135, %retval.0.i1028.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %145 = icmp ne i32 %144, 0
  %cmp56.i = icmp uge ptr %add.ptr141.i, %add.ptr1.i
  %tobool58.not.i = or i1 %cmp56.i, %145
  br i1 %tobool58.not.i, label %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge, label %BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge

BIT_reloadDStreamFast.exit1029.i.for.body.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit1029.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge: ; preds = %BIT_reloadDStreamFast.exit1029.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bitD1.sroa.0.3.lcssa.i = phi i32 [ %bitD1.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD1.sroa.20.1.lcssa.i = phi i32 [ %bitD1.sroa.20.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD1.sroa.53.1.lcssa.i = phi ptr [ %bitD1.sroa.53.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD1.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD2.sroa.0.3.lcssa.i = phi i32 [ %bitD2.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD2.sroa.20.1.lcssa.i = phi i32 [ %bitD2.sroa.20.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD2.sroa.53.1.lcssa.i = phi ptr [ %bitD2.sroa.53.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD2.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD3.sroa.0.3.lcssa.i = phi i32 [ %bitD3.sroa.0.2.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.0.4.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD3.sroa.20.1.lcssa.i = phi i32 [ %bitD3.sroa.20.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.20.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %bitD3.sroa.53.1.lcssa.i = phi ptr [ %bitD3.sroa.53.0.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %bitD3.sroa.53.2.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %op1.0.lcssa.i = phi ptr [ %dst, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr135.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %op2.0.lcssa.i = phi ptr [ %add.ptr16.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr137.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %op3.0.lcssa.i = phi ptr [ %add.ptr17.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr139.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %op4.0.lcssa.i = phi ptr [ %add.ptr18.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.ptr141.i, %BIT_reloadDStreamFast.exit1029.i.for.end.i_crit_edge ]
  %cmp157.i = icmp ugt ptr %op1.0.lcssa.i, %add.ptr16.i
  %cmp161.i = icmp ugt ptr %op2.0.lcssa.i, %add.ptr17.i
  %or.cond.i = select i1 %cmp157.i, i1 true, i1 %cmp161.i
  %cmp165.i = icmp ugt ptr %op3.0.lcssa.i, %add.ptr18.i
  %or.cond336.i = select i1 %or.cond.i, i1 true, i1 %cmp165.i
  br i1 %or.cond336.i, label %for.end.i.cleanup186.i_crit_edge, label %if.end168.i

for.end.i.cleanup186.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186.i

if.end168.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD1.sroa.20.1.lcssa.i)
  %cmp.i4891.i.i = icmp ugt i32 %bitD1.sroa.20.1.lcssa.i, 32
  br i1 %cmp.i4891.i.i, label %entry.while.cond21thread-pre-split_crit_edge.i.i, label %if.end.i.lr.ph.i.i

entry.while.cond21thread-pre-split_crit_edge.i.i: ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre101.i.i = and i32 %.pre.i.i, 31
  br label %while.cond21thread-pre-split.i.thread.i

if.end.i.lr.ph.i.i:                               ; preds = %if.end168.i
  %add.ptr.i421.i = getelementptr i8, ptr %add.ptr16.i, i32 -3
  %sub.i.i.i.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr11.i to i32
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %bitD1.sroa.0.5.i = phi i32 [ %bitD1.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i.i ], [ %148, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD1.sroa.20.3.i = phi i32 [ %bitD1.sroa.20.1.lcssa.i, %if.end.i.lr.ph.i.i ], [ %add.i.i12.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %bitD1.sroa.53.3.i = phi ptr [ %bitD1.sroa.53.1.lcssa.i, %if.end.i.lr.ph.i.i ], [ %bitD1.sroa.53.4.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %p.addr.092.i.i = phi ptr [ %op1.0.lcssa.i, %if.end.i.lr.ph.i.i ], [ %add.ptr20.i.i, %while.body.i.i.if.end.i.i.i_crit_edge ]
  %cmp1.not.i.i.i = icmp ult ptr %bitD1.sroa.53.3.i, %add.ptr.i887.i
  br i1 %cmp1.not.i.i.i, label %if.end3.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i

BIT_reloadDStreamFast.exit.i.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i49.i.i = lshr i32 %bitD1.sroa.20.3.i, 3
  %and.i.i50.i.i = and i32 %bitD1.sroa.20.3.i, 7
  br label %BIT_reloadDStream.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp5.i.i.i = icmp eq ptr %bitD1.sroa.53.3.i, %add.ptr11.i
  br i1 %cmp5.i.i.i, label %while.cond21thread-pre-split.i.thread1364.i, label %if.end11.i.i.i

while.cond21thread-pre-split.i.thread1364.i:      ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i1370.i = getelementptr i8, ptr %add.ptr16.i, i32 -2
  br label %if.end.i58.i.lr.ph.i

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i422.i = lshr i32 %bitD1.sroa.20.3.i, 3
  %idx.neg.i.i.i = sub nsw i32 0, %shr.i.i422.i
  %add.ptr.i52.i.i = getelementptr i8, ptr %bitD1.sroa.53.3.i, i32 %idx.neg.i.i.i
  %cmp15.i.i.i = icmp ult ptr %add.ptr.i52.i.i, %add.ptr11.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bitD1.sroa.53.3.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i.i.i = select i1 %cmp15.i.i.i, i32 %sub.ptr.sub.i.i.i, i32 %shr.i.i422.i
  %result.0.i.i.i = zext i1 %cmp15.i.i.i to i32
  %mul.neg.i.i.i = mul i32 %nbBytes.0.i.i.i, -8
  %sub.i.i423.i = add i32 %mul.neg.i.i.i, %bitD1.sroa.20.3.i
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %if.end11.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i
  %nbBytes.0.i.i.pn.i = phi i32 [ %nbBytes.0.i.i.i, %if.end11.i.i.i ], [ %shr.i.i49.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %and.i.i50.sink.i.i = phi i32 [ %sub.i.i423.i, %if.end11.i.i.i ], [ %and.i.i50.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %retval.0.i.i.i = phi i32 [ %result.0.i.i.i, %if.end11.i.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i.i ]
  %idx.neg21.i.i.pn.i = sub i32 0, %nbBytes.0.i.i.pn.i
  %bitD1.sroa.53.4.i = getelementptr i8, ptr %bitD1.sroa.53.3.i, i32 %idx.neg21.i.i.pn.i
  %146 = ptrtoint ptr %bitD1.sroa.53.4.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %bitD1.sroa.53.4.i, align 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, 0
  %cmp1.i.i = icmp ult ptr %p.addr.092.i.i, %add.ptr.i421.i
  %and1.i.i = and i1 %cmp1.i.i, %cmp.i.i
  br i1 %and1.i.i, label %while.body.i.i, label %while.cond21thread-pre-split.i.i

while.body.i.i:                                   ; preds = %BIT_reloadDStream.exit.i.i
  %and.i.i.i.i = and i32 %and.i.i50.sink.i.i, 31
  %shl.i.i.i.i = shl i32 %148, %and.i.i.i.i
  %shr.i.i.i.i = lshr i32 %shl.i.i.i.i, %and1.i.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i
  %149 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %add.ptr.i.i.i, align 2
  %151 = ptrtoint ptr %p.addr.092.i.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %150, ptr %p.addr.092.i.i, align 1
  %nbBits.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i, i32 1
  %152 = ptrtoint ptr %nbBits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nbBits.i.i.i, align 2
  %conv.i.i.i = zext i8 %153 to i32
  %add.i.i.i.i = add i32 %and.i.i50.sink.i.i, %conv.i.i.i
  %length.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i.i, i32 2
  %154 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %length.i.i.i, align 1
  %conv2.i.i.i = zext i8 %155 to i32
  %add.ptr11.i.i = getelementptr i8, ptr %p.addr.092.i.i, i32 %conv2.i.i.i
  %and.i.i4.i.i = and i32 %add.i.i.i.i, 31
  %shl.i.i5.i.i = shl i32 %148, %and.i.i4.i.i
  %shr.i.i8.i.i = lshr i32 %shl.i.i5.i.i, %and1.i.i.i.i
  %add.ptr.i9.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i
  %156 = ptrtoint ptr %add.ptr.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr.i9.i.i, align 2
  %158 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %157, ptr %add.ptr11.i.i, align 1
  %nbBits.i10.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i, i32 1
  %159 = ptrtoint ptr %nbBits.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %nbBits.i10.i.i, align 2
  %conv.i11.i.i = zext i8 %160 to i32
  %add.i.i12.i.i = add i32 %add.i.i.i.i, %conv.i11.i.i
  %length.i13.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i.i, i32 2
  %161 = ptrtoint ptr %length.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %length.i13.i.i, align 1
  %conv2.i14.i.i = zext i8 %162 to i32
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 %conv2.i14.i.i
  %cmp.i48.i.i = icmp ugt i32 %add.i.i12.i.i, 32
  br i1 %cmp.i48.i.i, label %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge, label %while.body.i.i.if.end.i.i.i_crit_edge

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i.thread.i

while.cond21thread-pre-split.i.thread.i:          ; preds = %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge, %entry.while.cond21thread-pre-split_crit_edge.i.i
  %bitD1.sroa.0.6.ph.i = phi i32 [ %bitD1.sroa.0.3.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %148, %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge ]
  %bitD1.sroa.20.4.ph.i = phi i32 [ %bitD1.sroa.20.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %add.i.i12.i.i, %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge ]
  %bitD1.sroa.53.5.ph.i = phi ptr [ %bitD1.sroa.53.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %bitD1.sroa.53.4.i, %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge ]
  %and1.i.i19.pre-phi.i.ph.i = phi i32 [ %.pre101.i.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %and1.i.i.i.i, %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge ]
  %p.addr.0.lcssa.i.ph.i = phi ptr [ %op1.0.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i.i ], [ %add.ptr20.i.i, %while.body.i.i.while.cond21thread-pre-split.i.thread.i_crit_edge ]
  %add.ptr25.i1358.i = getelementptr i8, ptr %add.ptr16.i, i32 -2
  br label %while.cond34.preheader.i.i

while.cond21thread-pre-split.i.i:                 ; preds = %BIT_reloadDStream.exit.i.i
  %add.ptr25.i.i = getelementptr i8, ptr %add.ptr16.i, i32 -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i50.sink.i.i)
  %cmp.i54.i1289.i = icmp ugt i32 %and.i.i50.sink.i.i, 32
  br i1 %cmp.i54.i1289.i, label %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge, label %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge

while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge: ; preds = %while.cond21thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i.lr.ph.i

while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %while.cond21thread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

if.end.i58.i.lr.ph.i:                             ; preds = %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge, %while.cond21thread-pre-split.i.thread1364.i
  %add.ptr25.i1377.i = phi ptr [ %add.ptr25.i1370.i, %while.cond21thread-pre-split.i.thread1364.i ], [ %add.ptr25.i.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ]
  %bitD1.sroa.53.51374.i = phi ptr [ %add.ptr11.i, %while.cond21thread-pre-split.i.thread1364.i ], [ %bitD1.sroa.53.4.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ]
  %bitD1.sroa.20.41373.i = phi i32 [ %bitD1.sroa.20.3.i, %while.cond21thread-pre-split.i.thread1364.i ], [ %and.i.i50.sink.i.i, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ]
  %bitD1.sroa.0.61372.i = phi i32 [ %bitD1.sroa.0.5.i, %while.cond21thread-pre-split.i.thread1364.i ], [ %148, %while.cond21thread-pre-split.i.i.if.end.i58.i.lr.ph.i_crit_edge ]
  br label %if.end.i58.i.i

if.end.i58.i.i:                                   ; preds = %while.body30.i.i.if.end.i58.i.i_crit_edge, %if.end.i58.i.lr.ph.i
  %p.addr.3.i1294.i = phi ptr [ %p.addr.092.i.i, %if.end.i58.i.lr.ph.i ], [ %add.ptr32.i.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD1.sroa.53.61292.i = phi ptr [ %bitD1.sroa.53.51374.i, %if.end.i58.i.lr.ph.i ], [ %bitD1.sroa.53.7.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD1.sroa.20.51291.i = phi i32 [ %bitD1.sroa.20.41373.i, %if.end.i58.i.lr.ph.i ], [ %add.i.i24.i.i, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %bitD1.sroa.0.71290.i = phi i32 [ %bitD1.sroa.0.61372.i, %if.end.i58.i.lr.ph.i ], [ %165, %while.body30.i.i.if.end.i58.i.i_crit_edge ]
  %cmp1.not.i57.i.i = icmp ult ptr %bitD1.sroa.53.61292.i, %add.ptr.i887.i
  br i1 %cmp1.not.i57.i.i, label %if.end3.i66.i.i, label %BIT_reloadDStreamFast.exit.i63.i.i

BIT_reloadDStreamFast.exit.i63.i.i:               ; preds = %if.end.i58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i59.i.i = lshr i32 %bitD1.sroa.20.51291.i, 3
  %and.i.i62.i.i = and i32 %bitD1.sroa.20.51291.i, 7
  br label %BIT_reloadDStream.exit85.i.i

if.end3.i66.i.i:                                  ; preds = %if.end.i58.i.i
  %cmp5.i65.i.i = icmp eq ptr %bitD1.sroa.53.61292.i, %add.ptr11.i
  br i1 %cmp5.i65.i.i, label %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge, label %if.end11.i83.i.i

if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %if.end3.i66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

if.end11.i83.i.i:                                 ; preds = %if.end3.i66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i70.i.i = lshr i32 %bitD1.sroa.20.51291.i, 3
  %idx.neg.i71.i.i = sub nsw i32 0, %shr.i70.i.i
  %add.ptr.i72.i.i = getelementptr i8, ptr %bitD1.sroa.53.61292.i, i32 %idx.neg.i71.i.i
  %cmp15.i73.i.i = icmp ult ptr %add.ptr.i72.i.i, %add.ptr11.i
  %sub.ptr.lhs.cast.i74.i.i = ptrtoint ptr %bitD1.sroa.53.61292.i to i32
  %sub.ptr.sub.i76.i.i = sub i32 %sub.ptr.lhs.cast.i74.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i77.i.i = select i1 %cmp15.i73.i.i, i32 %sub.ptr.sub.i76.i.i, i32 %shr.i70.i.i
  %result.0.i78.i.i = zext i1 %cmp15.i73.i.i to i32
  %mul.neg.i81.i.i = mul i32 %nbBytes.0.i77.i.i, -8
  %sub.i82.i.i = add i32 %mul.neg.i81.i.i, %bitD1.sroa.20.51291.i
  br label %BIT_reloadDStream.exit85.i.i

BIT_reloadDStream.exit85.i.i:                     ; preds = %if.end11.i83.i.i, %BIT_reloadDStreamFast.exit.i63.i.i
  %nbBytes.0.i77.i.pn.i = phi i32 [ %nbBytes.0.i77.i.i, %if.end11.i83.i.i ], [ %shr.i.i59.i.i, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %and.i.i62.sink.i.i = phi i32 [ %sub.i82.i.i, %if.end11.i83.i.i ], [ %and.i.i62.i.i, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %retval.0.i84.i.i = phi i32 [ %result.0.i78.i.i, %if.end11.i83.i.i ], [ 0, %BIT_reloadDStreamFast.exit.i63.i.i ]
  %idx.neg21.i79.i.pn.i = sub i32 0, %nbBytes.0.i77.i.pn.i
  %bitD1.sroa.53.7.i = getelementptr i8, ptr %bitD1.sroa.53.61292.i, i32 %idx.neg21.i79.i.pn.i
  %163 = ptrtoint ptr %bitD1.sroa.53.7.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %bitD1.sroa.53.7.i, align 1
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84.i.i)
  %cmp23.i.i = icmp eq i32 %retval.0.i84.i.i, 0
  %cmp26.i.i = icmp ule ptr %p.addr.3.i1294.i, %add.ptr25.i1377.i
  %and282.i.i = and i1 %cmp26.i.i, %cmp23.i.i
  br i1 %and282.i.i, label %while.body30.i.i, label %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge

BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

while.cond34.preheader.i.i:                       ; preds = %while.body30.i.i.while.cond34.preheader.i.i_crit_edge, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge, %while.cond21thread-pre-split.i.thread.i
  %add.ptr25.i1362.i = phi ptr [ %add.ptr25.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i1358.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.ptr25.i1377.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i1377.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr25.i1377.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ]
  %and1.i.i19.pre-phi.i1360.i = phi i32 [ %and1.i.i.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i19.pre-phi.i.ph.i, %while.cond21thread-pre-split.i.thread.i ], [ %and1.i.i.i.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i.i.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and1.i.i.i.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ]
  %p.addr.3.i.lcssa.i = phi ptr [ %p.addr.092.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %p.addr.0.lcssa.i.ph.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.ptr32.i.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %p.addr.3.i1294.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %p.addr.3.i1294.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD1.sroa.0.8.i = phi i32 [ %148, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.0.6.ph.i, %while.cond21thread-pre-split.i.thread.i ], [ %165, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %165, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.0.71290.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD1.sroa.20.6.i = phi i32 [ %and.i.i50.sink.i.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.20.4.ph.i, %while.cond21thread-pre-split.i.thread.i ], [ %add.i.i24.i.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %and.i.i62.sink.i.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.20.51291.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %bitD1.sroa.53.8.i = phi ptr [ %bitD1.sroa.53.4.i, %while.cond21thread-pre-split.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.53.5.ph.i, %while.cond21thread-pre-split.i.thread.i ], [ %bitD1.sroa.53.7.i, %while.body30.i.i.while.cond34.preheader.i.i_crit_edge ], [ %bitD1.sroa.53.7.i, %BIT_reloadDStream.exit85.i.i.while.cond34.preheader.i.i_crit_edge ], [ %add.ptr11.i, %if.end3.i66.i.i.while.cond34.preheader.i.i_crit_edge ]
  %cmp36.not98.i.i = icmp ugt ptr %p.addr.3.i.lcssa.i, %add.ptr25.i1362.i
  br i1 %cmp36.not98.i.i, label %while.cond34.preheader.i.i.while.end41.i.i_crit_edge, label %while.cond34.preheader.i.i.while.body38.i.i_crit_edge

while.cond34.preheader.i.i.while.body38.i.i_crit_edge: ; preds = %while.cond34.preheader.i.i
  br label %while.body38.i.i

while.cond34.preheader.i.i.while.end41.i.i_crit_edge: ; preds = %while.cond34.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i.i

while.body30.i.i:                                 ; preds = %BIT_reloadDStream.exit85.i.i
  %and.i.i16.i.i = and i32 %and.i.i62.sink.i.i, 31
  %shl.i.i17.i.i = shl i32 %165, %and.i.i16.i.i
  %shr.i.i20.i.i = lshr i32 %shl.i.i17.i.i, %and1.i.i.i.i
  %add.ptr.i21.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i
  %166 = ptrtoint ptr %add.ptr.i21.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %add.ptr.i21.i.i, align 2
  %168 = ptrtoint ptr %p.addr.3.i1294.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %167, ptr %p.addr.3.i1294.i, align 1
  %nbBits.i22.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i, i32 1
  %169 = ptrtoint ptr %nbBits.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %nbBits.i22.i.i, align 2
  %conv.i23.i.i = zext i8 %170 to i32
  %add.i.i24.i.i = add i32 %and.i.i62.sink.i.i, %conv.i23.i.i
  %length.i25.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i.i, i32 2
  %171 = ptrtoint ptr %length.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %length.i25.i.i, align 1
  %conv2.i26.i.i = zext i8 %172 to i32
  %add.ptr32.i.i = getelementptr i8, ptr %p.addr.3.i1294.i, i32 %conv2.i26.i.i
  %cmp.i54.i.i = icmp ugt i32 %add.i.i24.i.i, 32
  br i1 %cmp.i54.i.i, label %while.body30.i.i.while.cond34.preheader.i.i_crit_edge, label %while.body30.i.i.if.end.i58.i.i_crit_edge

while.body30.i.i.if.end.i58.i.i_crit_edge:        ; preds = %while.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i.i

while.body30.i.i.while.cond34.preheader.i.i_crit_edge: ; preds = %while.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i.i

while.body38.i.i:                                 ; preds = %while.body38.i.i.while.body38.i.i_crit_edge, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge
  %bitD1.sroa.20.7.i = phi i32 [ %add.i.i36.i.i, %while.body38.i.i.while.body38.i.i_crit_edge ], [ %bitD1.sroa.20.6.i, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge ]
  %p.addr.499.i.i = phi ptr [ %add.ptr40.i.i, %while.body38.i.i.while.body38.i.i_crit_edge ], [ %p.addr.3.i.lcssa.i, %while.cond34.preheader.i.i.while.body38.i.i_crit_edge ]
  %and.i.i28.i.i = and i32 %bitD1.sroa.20.7.i, 31
  %shl.i.i29.i.i = shl i32 %bitD1.sroa.0.8.i, %and.i.i28.i.i
  %shr.i.i32.i.i = lshr i32 %shl.i.i29.i.i, %and1.i.i19.pre-phi.i1360.i
  %add.ptr.i33.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i
  %173 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr.i33.i.i, align 2
  %175 = ptrtoint ptr %p.addr.499.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %p.addr.499.i.i, align 1
  %nbBits.i34.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i, i32 1
  %176 = ptrtoint ptr %nbBits.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %nbBits.i34.i.i, align 2
  %conv.i35.i.i = zext i8 %177 to i32
  %add.i.i36.i.i = add i32 %bitD1.sroa.20.7.i, %conv.i35.i.i
  %length.i37.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i.i, i32 2
  %178 = ptrtoint ptr %length.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %length.i37.i.i, align 1
  %conv2.i38.i.i = zext i8 %179 to i32
  %add.ptr40.i.i = getelementptr i8, ptr %p.addr.499.i.i, i32 %conv2.i38.i.i
  %cmp36.not.i.i = icmp ugt ptr %add.ptr40.i.i, %add.ptr25.i1362.i
  br i1 %cmp36.not.i.i, label %while.body38.i.i.while.end41.i.i_crit_edge, label %while.body38.i.i.while.body38.i.i_crit_edge

while.body38.i.i.while.body38.i.i_crit_edge:      ; preds = %while.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38.i.i

while.body38.i.i.while.end41.i.i_crit_edge:       ; preds = %while.body38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i.i

while.end41.i.i:                                  ; preds = %while.body38.i.i.while.end41.i.i_crit_edge, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge
  %bitD1.sroa.20.8.i = phi i32 [ %bitD1.sroa.20.6.i, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge ], [ %add.i.i36.i.i, %while.body38.i.i.while.end41.i.i_crit_edge ]
  %p.addr.4.lcssa.i.i = phi ptr [ %p.addr.3.i.lcssa.i, %while.cond34.preheader.i.i.while.end41.i.i_crit_edge ], [ %add.ptr40.i.i, %while.body38.i.i.while.end41.i.i_crit_edge ]
  %cmp42.i.i = icmp ult ptr %p.addr.4.lcssa.i.i, %add.ptr16.i
  br i1 %cmp42.i.i, label %if.then44.i.i, label %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge

while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge: ; preds = %while.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit.i

if.then44.i.i:                                    ; preds = %while.end41.i.i
  %and.i.i39.i.i = and i32 %bitD1.sroa.20.8.i, 31
  %shl.i.i40.i.i = shl i32 %bitD1.sroa.0.8.i, %and.i.i39.i.i
  %shr.i.i43.i.i = lshr i32 %shl.i.i40.i.i, %and1.i.i19.pre-phi.i1360.i
  %add.ptr.i44.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i
  %180 = ptrtoint ptr %add.ptr.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr.i44.i.i, align 2
  %182 = ptrtoint ptr %p.addr.4.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %p.addr.4.lcssa.i.i, align 1
  %length.i45.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 2
  %183 = ptrtoint ptr %length.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %length.i45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %184)
  %cmp.i.i.i = icmp eq i8 %184, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits.i46.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 1
  %185 = ptrtoint ptr %nbBits.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %nbBits.i46.i.i, align 2
  %conv3.i.i.i = zext i8 %186 to i32
  %add.i.i47.i.i = add i32 %bitD1.sroa.20.8.i, %conv3.i.i.i
  br label %HUF_decodeStreamX2.exit.i

if.else.i.i.i:                                    ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD1.sroa.20.8.i)
  %cmp4.i.i.i = icmp ult i32 %bitD1.sroa.20.8.i, 32
  br i1 %cmp4.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge

if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit.i

if.then6.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits8.i.i.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i.i, i32 1
  %187 = ptrtoint ptr %nbBits8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %nbBits8.i.i.i, align 2
  %conv9.i.i.i = zext i8 %188 to i32
  %add.i2.i.i.i = add nuw nsw i32 %bitD1.sroa.20.8.i, %conv9.i.i.i
  %189 = tail call i32 @llvm.umin.i32(i32 %add.i2.i.i.i, i32 32) #7
  br label %HUF_decodeStreamX2.exit.i

HUF_decodeStreamX2.exit.i:                        ; preds = %if.then6.i.i.i, %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge, %if.then.i.i.i, %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge
  %bitD1.sroa.20.9.i = phi i32 [ %bitD1.sroa.20.8.i, %if.else.i.i.i.HUF_decodeStreamX2.exit.i_crit_edge ], [ %bitD1.sroa.20.8.i, %while.end41.i.i.HUF_decodeStreamX2.exit.i_crit_edge ], [ %189, %if.then6.i.i.i ], [ %add.i.i47.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD2.sroa.20.1.lcssa.i)
  %cmp.i4891.i426.i = icmp ugt i32 %bitD2.sroa.20.1.lcssa.i, 32
  br i1 %cmp.i4891.i426.i, label %entry.while.cond21thread-pre-split_crit_edge.i429.i, label %if.end.i.lr.ph.i435.i

entry.while.cond21thread-pre-split_crit_edge.i429.i: ; preds = %HUF_decodeStreamX2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i427.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre101.i428.i = and i32 %.pre.i427.i, 31
  br label %while.cond21thread-pre-split.i495.thread.i

if.end.i.lr.ph.i435.i:                            ; preds = %HUF_decodeStreamX2.exit.i
  %add.ptr.i432.i = getelementptr i8, ptr %add.ptr17.i, i32 -3
  %sub.i.i.i433.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i434.i = and i32 %sub.i.i.i433.i, 31
  %sub.ptr.rhs.cast.i.i451.i = ptrtoint ptr %add.ptr12.i to i32
  br label %if.end.i.i438.i

if.end.i.i438.i:                                  ; preds = %while.body.i488.i.if.end.i.i438.i_crit_edge, %if.end.i.lr.ph.i435.i
  %bitD2.sroa.0.5.i = phi i32 [ %bitD2.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i435.i ], [ %192, %while.body.i488.i.if.end.i.i438.i_crit_edge ]
  %bitD2.sroa.20.3.i = phi i32 [ %bitD2.sroa.20.1.lcssa.i, %if.end.i.lr.ph.i435.i ], [ %add.i.i12.i483.i, %while.body.i488.i.if.end.i.i438.i_crit_edge ]
  %bitD2.sroa.53.3.i = phi ptr [ %bitD2.sroa.53.1.lcssa.i, %if.end.i.lr.ph.i435.i ], [ %bitD2.sroa.53.4.i, %while.body.i488.i.if.end.i.i438.i_crit_edge ]
  %p.addr.092.i436.i = phi ptr [ %op2.0.lcssa.i, %if.end.i.lr.ph.i435.i ], [ %add.ptr20.i486.i, %while.body.i488.i.if.end.i.i438.i_crit_edge ]
  %cmp1.not.i.i437.i = icmp ult ptr %bitD2.sroa.53.3.i, %add.ptr.i894.i
  br i1 %cmp1.not.i.i437.i, label %if.end3.i.i445.i, label %BIT_reloadDStreamFast.exit.i.i443.i

BIT_reloadDStreamFast.exit.i.i443.i:              ; preds = %if.end.i.i438.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i49.i439.i = lshr i32 %bitD2.sroa.20.3.i, 3
  %and.i.i50.i442.i = and i32 %bitD2.sroa.20.3.i, 7
  br label %BIT_reloadDStream.exit.i466.i

if.end3.i.i445.i:                                 ; preds = %if.end.i.i438.i
  %cmp5.i.i444.i = icmp eq ptr %bitD2.sroa.53.3.i, %add.ptr12.i
  br i1 %cmp5.i.i444.i, label %while.cond21thread-pre-split.i495.thread1389.i, label %if.end11.i.i459.i

while.cond21thread-pre-split.i495.thread1389.i:   ; preds = %if.end3.i.i445.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i4921395.i = getelementptr i8, ptr %add.ptr17.i, i32 -2
  br label %if.end.i58.i500.lr.ph.i

if.end11.i.i459.i:                                ; preds = %if.end3.i.i445.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i446.i = lshr i32 %bitD2.sroa.20.3.i, 3
  %idx.neg.i.i447.i = sub nsw i32 0, %shr.i.i446.i
  %add.ptr.i52.i448.i = getelementptr i8, ptr %bitD2.sroa.53.3.i, i32 %idx.neg.i.i447.i
  %cmp15.i.i449.i = icmp ult ptr %add.ptr.i52.i448.i, %add.ptr12.i
  %sub.ptr.lhs.cast.i.i450.i = ptrtoint ptr %bitD2.sroa.53.3.i to i32
  %sub.ptr.sub.i.i452.i = sub i32 %sub.ptr.lhs.cast.i.i450.i, %sub.ptr.rhs.cast.i.i451.i
  %nbBytes.0.i.i453.i = select i1 %cmp15.i.i449.i, i32 %sub.ptr.sub.i.i452.i, i32 %shr.i.i446.i
  %result.0.i.i454.i = zext i1 %cmp15.i.i449.i to i32
  %mul.neg.i.i457.i = mul i32 %nbBytes.0.i.i453.i, -8
  %sub.i.i458.i = add i32 %mul.neg.i.i457.i, %bitD2.sroa.20.3.i
  br label %BIT_reloadDStream.exit.i466.i

BIT_reloadDStream.exit.i466.i:                    ; preds = %if.end11.i.i459.i, %BIT_reloadDStreamFast.exit.i.i443.i
  %nbBytes.0.i.i453.pn.i = phi i32 [ %nbBytes.0.i.i453.i, %if.end11.i.i459.i ], [ %shr.i.i49.i439.i, %BIT_reloadDStreamFast.exit.i.i443.i ]
  %and.i.i50.sink.i460.i = phi i32 [ %sub.i.i458.i, %if.end11.i.i459.i ], [ %and.i.i50.i442.i, %BIT_reloadDStreamFast.exit.i.i443.i ]
  %retval.0.i.i462.i = phi i32 [ %result.0.i.i454.i, %if.end11.i.i459.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i443.i ]
  %idx.neg21.i.i455.pn.i = sub i32 0, %nbBytes.0.i.i453.pn.i
  %bitD2.sroa.53.4.i = getelementptr i8, ptr %bitD2.sroa.53.3.i, i32 %idx.neg21.i.i455.pn.i
  %190 = ptrtoint ptr %bitD2.sroa.53.4.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %bitD2.sroa.53.4.i, align 1
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i462.i)
  %cmp.i463.i = icmp eq i32 %retval.0.i.i462.i, 0
  %cmp1.i464.i = icmp ult ptr %p.addr.092.i436.i, %add.ptr.i432.i
  %and1.i465.i = and i1 %cmp1.i464.i, %cmp.i463.i
  br i1 %and1.i465.i, label %while.body.i488.i, label %while.cond21thread-pre-split.i495.i

while.body.i488.i:                                ; preds = %BIT_reloadDStream.exit.i466.i
  %and.i.i.i467.i = and i32 %and.i.i50.sink.i460.i, 31
  %shl.i.i.i468.i = shl i32 %192, %and.i.i.i467.i
  %shr.i.i.i469.i = lshr i32 %shl.i.i.i468.i, %and1.i.i.i434.i
  %add.ptr.i.i470.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i469.i
  %193 = ptrtoint ptr %add.ptr.i.i470.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %add.ptr.i.i470.i, align 2
  %195 = ptrtoint ptr %p.addr.092.i436.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %194, ptr %p.addr.092.i436.i, align 1
  %nbBits.i.i471.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i469.i, i32 1
  %196 = ptrtoint ptr %nbBits.i.i471.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %nbBits.i.i471.i, align 2
  %conv.i.i472.i = zext i8 %197 to i32
  %add.i.i.i473.i = add i32 %and.i.i50.sink.i460.i, %conv.i.i472.i
  %length.i.i474.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i469.i, i32 2
  %198 = ptrtoint ptr %length.i.i474.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %length.i.i474.i, align 1
  %conv2.i.i475.i = zext i8 %199 to i32
  %add.ptr11.i476.i = getelementptr i8, ptr %p.addr.092.i436.i, i32 %conv2.i.i475.i
  %and.i.i4.i477.i = and i32 %add.i.i.i473.i, 31
  %shl.i.i5.i478.i = shl i32 %192, %and.i.i4.i477.i
  %shr.i.i8.i479.i = lshr i32 %shl.i.i5.i478.i, %and1.i.i.i434.i
  %add.ptr.i9.i480.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i479.i
  %200 = ptrtoint ptr %add.ptr.i9.i480.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %add.ptr.i9.i480.i, align 2
  %202 = ptrtoint ptr %add.ptr11.i476.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 2)
  store i16 %201, ptr %add.ptr11.i476.i, align 1
  %nbBits.i10.i481.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i479.i, i32 1
  %203 = ptrtoint ptr %nbBits.i10.i481.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %nbBits.i10.i481.i, align 2
  %conv.i11.i482.i = zext i8 %204 to i32
  %add.i.i12.i483.i = add i32 %add.i.i.i473.i, %conv.i11.i482.i
  %length.i13.i484.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i479.i, i32 2
  %205 = ptrtoint ptr %length.i13.i484.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %length.i13.i484.i, align 1
  %conv2.i14.i485.i = zext i8 %206 to i32
  %add.ptr20.i486.i = getelementptr i8, ptr %add.ptr11.i476.i, i32 %conv2.i14.i485.i
  %cmp.i48.i487.i = icmp ugt i32 %add.i.i12.i483.i, 32
  br i1 %cmp.i48.i487.i, label %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge, label %while.body.i488.i.if.end.i.i438.i_crit_edge

while.body.i488.i.if.end.i.i438.i_crit_edge:      ; preds = %while.body.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i438.i

while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge: ; preds = %while.body.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i495.thread.i

while.cond21thread-pre-split.i495.thread.i:       ; preds = %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge, %entry.while.cond21thread-pre-split_crit_edge.i429.i
  %bitD2.sroa.0.6.ph.i = phi i32 [ %bitD2.sroa.0.3.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i429.i ], [ %192, %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge ]
  %bitD2.sroa.20.4.ph.i = phi i32 [ %bitD2.sroa.20.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i429.i ], [ %add.i.i12.i483.i, %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge ]
  %bitD2.sroa.53.5.ph.i = phi ptr [ %bitD2.sroa.53.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i429.i ], [ %bitD2.sroa.53.4.i, %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge ]
  %and1.i.i19.pre-phi.i489.ph.i = phi i32 [ %.pre101.i428.i, %entry.while.cond21thread-pre-split_crit_edge.i429.i ], [ %and1.i.i.i434.i, %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge ]
  %p.addr.0.lcssa.i490.ph.i = phi ptr [ %op2.0.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i429.i ], [ %add.ptr20.i486.i, %while.body.i488.i.while.cond21thread-pre-split.i495.thread.i_crit_edge ]
  %add.ptr25.i4921383.i = getelementptr i8, ptr %add.ptr17.i, i32 -2
  br label %while.cond34.preheader.i530.i

while.cond21thread-pre-split.i495.i:              ; preds = %BIT_reloadDStream.exit.i466.i
  %add.ptr25.i492.i = getelementptr i8, ptr %add.ptr17.i, i32 -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i50.sink.i460.i)
  %cmp.i54.i4971308.i = icmp ugt i32 %and.i.i50.sink.i460.i, 32
  br i1 %cmp.i54.i4971308.i, label %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge, label %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge

while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge: ; preds = %while.cond21thread-pre-split.i495.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i500.lr.ph.i

while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge: ; preds = %while.cond21thread-pre-split.i495.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i530.i

if.end.i58.i500.lr.ph.i:                          ; preds = %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge, %while.cond21thread-pre-split.i495.thread1389.i
  %add.ptr25.i4921402.i = phi ptr [ %add.ptr25.i4921395.i, %while.cond21thread-pre-split.i495.thread1389.i ], [ %add.ptr25.i492.i, %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge ]
  %bitD2.sroa.53.51399.i = phi ptr [ %add.ptr12.i, %while.cond21thread-pre-split.i495.thread1389.i ], [ %bitD2.sroa.53.4.i, %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge ]
  %bitD2.sroa.20.41398.i = phi i32 [ %bitD2.sroa.20.3.i, %while.cond21thread-pre-split.i495.thread1389.i ], [ %and.i.i50.sink.i460.i, %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge ]
  %bitD2.sroa.0.61397.i = phi i32 [ %bitD2.sroa.0.5.i, %while.cond21thread-pre-split.i495.thread1389.i ], [ %192, %while.cond21thread-pre-split.i495.i.if.end.i58.i500.lr.ph.i_crit_edge ]
  br label %if.end.i58.i500.i

if.end.i58.i500.i:                                ; preds = %while.body30.i541.i.if.end.i58.i500.i_crit_edge, %if.end.i58.i500.lr.ph.i
  %p.addr.3.i4961313.i = phi ptr [ %p.addr.092.i436.i, %if.end.i58.i500.lr.ph.i ], [ %add.ptr32.i540.i, %while.body30.i541.i.if.end.i58.i500.i_crit_edge ]
  %bitD2.sroa.53.61311.i = phi ptr [ %bitD2.sroa.53.51399.i, %if.end.i58.i500.lr.ph.i ], [ %bitD2.sroa.53.7.i, %while.body30.i541.i.if.end.i58.i500.i_crit_edge ]
  %bitD2.sroa.20.51310.i = phi i32 [ %bitD2.sroa.20.41398.i, %if.end.i58.i500.lr.ph.i ], [ %add.i.i24.i537.i, %while.body30.i541.i.if.end.i58.i500.i_crit_edge ]
  %bitD2.sroa.0.71309.i = phi i32 [ %bitD2.sroa.0.61397.i, %if.end.i58.i500.lr.ph.i ], [ %209, %while.body30.i541.i.if.end.i58.i500.i_crit_edge ]
  %cmp1.not.i57.i499.i = icmp ult ptr %bitD2.sroa.53.61311.i, %add.ptr.i894.i
  br i1 %cmp1.not.i57.i499.i, label %if.end3.i66.i507.i, label %BIT_reloadDStreamFast.exit.i63.i505.i

BIT_reloadDStreamFast.exit.i63.i505.i:            ; preds = %if.end.i58.i500.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i59.i501.i = lshr i32 %bitD2.sroa.20.51310.i, 3
  %and.i.i62.i504.i = and i32 %bitD2.sroa.20.51310.i, 7
  br label %BIT_reloadDStream.exit85.i528.i

if.end3.i66.i507.i:                               ; preds = %if.end.i58.i500.i
  %cmp5.i65.i506.i = icmp eq ptr %bitD2.sroa.53.61311.i, %add.ptr12.i
  br i1 %cmp5.i65.i506.i, label %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge, label %if.end11.i83.i521.i

if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge: ; preds = %if.end3.i66.i507.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i530.i

if.end11.i83.i521.i:                              ; preds = %if.end3.i66.i507.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i70.i508.i = lshr i32 %bitD2.sroa.20.51310.i, 3
  %idx.neg.i71.i509.i = sub nsw i32 0, %shr.i70.i508.i
  %add.ptr.i72.i510.i = getelementptr i8, ptr %bitD2.sroa.53.61311.i, i32 %idx.neg.i71.i509.i
  %cmp15.i73.i511.i = icmp ult ptr %add.ptr.i72.i510.i, %add.ptr12.i
  %sub.ptr.lhs.cast.i74.i512.i = ptrtoint ptr %bitD2.sroa.53.61311.i to i32
  %sub.ptr.sub.i76.i514.i = sub i32 %sub.ptr.lhs.cast.i74.i512.i, %sub.ptr.rhs.cast.i.i451.i
  %nbBytes.0.i77.i515.i = select i1 %cmp15.i73.i511.i, i32 %sub.ptr.sub.i76.i514.i, i32 %shr.i70.i508.i
  %result.0.i78.i516.i = zext i1 %cmp15.i73.i511.i to i32
  %mul.neg.i81.i519.i = mul i32 %nbBytes.0.i77.i515.i, -8
  %sub.i82.i520.i = add i32 %mul.neg.i81.i519.i, %bitD2.sroa.20.51310.i
  br label %BIT_reloadDStream.exit85.i528.i

BIT_reloadDStream.exit85.i528.i:                  ; preds = %if.end11.i83.i521.i, %BIT_reloadDStreamFast.exit.i63.i505.i
  %nbBytes.0.i77.i515.pn.i = phi i32 [ %nbBytes.0.i77.i515.i, %if.end11.i83.i521.i ], [ %shr.i.i59.i501.i, %BIT_reloadDStreamFast.exit.i63.i505.i ]
  %and.i.i62.sink.i522.i = phi i32 [ %sub.i82.i520.i, %if.end11.i83.i521.i ], [ %and.i.i62.i504.i, %BIT_reloadDStreamFast.exit.i63.i505.i ]
  %retval.0.i84.i524.i = phi i32 [ %result.0.i78.i516.i, %if.end11.i83.i521.i ], [ 0, %BIT_reloadDStreamFast.exit.i63.i505.i ]
  %idx.neg21.i79.i517.pn.i = sub i32 0, %nbBytes.0.i77.i515.pn.i
  %bitD2.sroa.53.7.i = getelementptr i8, ptr %bitD2.sroa.53.61311.i, i32 %idx.neg21.i79.i517.pn.i
  %207 = ptrtoint ptr %bitD2.sroa.53.7.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %bitD2.sroa.53.7.i, align 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84.i524.i)
  %cmp23.i525.i = icmp eq i32 %retval.0.i84.i524.i, 0
  %cmp26.i526.i = icmp ule ptr %p.addr.3.i4961313.i, %add.ptr25.i4921402.i
  %and282.i527.i = and i1 %cmp26.i526.i, %cmp23.i525.i
  br i1 %and282.i527.i, label %while.body30.i541.i, label %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge

BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge: ; preds = %BIT_reloadDStream.exit85.i528.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i530.i

while.cond34.preheader.i530.i:                    ; preds = %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge, %while.cond21thread-pre-split.i495.thread.i
  %add.ptr25.i4921387.i = phi ptr [ %add.ptr25.i492.i, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %add.ptr25.i4921383.i, %while.cond21thread-pre-split.i495.thread.i ], [ %add.ptr25.i4921402.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ], [ %add.ptr25.i4921402.i, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %add.ptr25.i4921402.i, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ]
  %and1.i.i19.pre-phi.i4891385.i = phi i32 [ %and1.i.i.i434.i, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %and1.i.i19.pre-phi.i489.ph.i, %while.cond21thread-pre-split.i495.thread.i ], [ %and1.i.i.i434.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ], [ %and1.i.i.i434.i, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %and1.i.i.i434.i, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ]
  %p.addr.3.i496.lcssa.i = phi ptr [ %p.addr.092.i436.i, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %p.addr.0.lcssa.i490.ph.i, %while.cond21thread-pre-split.i495.thread.i ], [ %add.ptr32.i540.i, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ], [ %p.addr.3.i4961313.i, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %p.addr.3.i4961313.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ]
  %bitD2.sroa.0.8.i = phi i32 [ %192, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.0.6.ph.i, %while.cond21thread-pre-split.i495.thread.i ], [ %209, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ], [ %209, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.0.71309.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ]
  %bitD2.sroa.20.6.i = phi i32 [ %and.i.i50.sink.i460.i, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.20.4.ph.i, %while.cond21thread-pre-split.i495.thread.i ], [ %add.i.i24.i537.i, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ], [ %and.i.i62.sink.i522.i, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.20.51310.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ]
  %bitD2.sroa.53.8.i = phi ptr [ %bitD2.sroa.53.4.i, %while.cond21thread-pre-split.i495.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.53.5.ph.i, %while.cond21thread-pre-split.i495.thread.i ], [ %bitD2.sroa.53.7.i, %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge ], [ %bitD2.sroa.53.7.i, %BIT_reloadDStream.exit85.i528.i.while.cond34.preheader.i530.i_crit_edge ], [ %add.ptr12.i, %if.end3.i66.i507.i.while.cond34.preheader.i530.i_crit_edge ]
  %cmp36.not98.i529.i = icmp ugt ptr %p.addr.3.i496.lcssa.i, %add.ptr25.i4921387.i
  br i1 %cmp36.not98.i529.i, label %while.cond34.preheader.i530.i.while.end41.i557.i_crit_edge, label %while.cond34.preheader.i530.i.while.body38.i554.i_crit_edge

while.cond34.preheader.i530.i.while.body38.i554.i_crit_edge: ; preds = %while.cond34.preheader.i530.i
  br label %while.body38.i554.i

while.cond34.preheader.i530.i.while.end41.i557.i_crit_edge: ; preds = %while.cond34.preheader.i530.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i557.i

while.body30.i541.i:                              ; preds = %BIT_reloadDStream.exit85.i528.i
  %and.i.i16.i531.i = and i32 %and.i.i62.sink.i522.i, 31
  %shl.i.i17.i532.i = shl i32 %209, %and.i.i16.i531.i
  %shr.i.i20.i533.i = lshr i32 %shl.i.i17.i532.i, %and1.i.i.i434.i
  %add.ptr.i21.i534.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i533.i
  %210 = ptrtoint ptr %add.ptr.i21.i534.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %add.ptr.i21.i534.i, align 2
  %212 = ptrtoint ptr %p.addr.3.i4961313.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 2)
  store i16 %211, ptr %p.addr.3.i4961313.i, align 1
  %nbBits.i22.i535.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i533.i, i32 1
  %213 = ptrtoint ptr %nbBits.i22.i535.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %nbBits.i22.i535.i, align 2
  %conv.i23.i536.i = zext i8 %214 to i32
  %add.i.i24.i537.i = add i32 %and.i.i62.sink.i522.i, %conv.i23.i536.i
  %length.i25.i538.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i533.i, i32 2
  %215 = ptrtoint ptr %length.i25.i538.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %length.i25.i538.i, align 1
  %conv2.i26.i539.i = zext i8 %216 to i32
  %add.ptr32.i540.i = getelementptr i8, ptr %p.addr.3.i4961313.i, i32 %conv2.i26.i539.i
  %cmp.i54.i497.i = icmp ugt i32 %add.i.i24.i537.i, 32
  br i1 %cmp.i54.i497.i, label %while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge, label %while.body30.i541.i.if.end.i58.i500.i_crit_edge

while.body30.i541.i.if.end.i58.i500.i_crit_edge:  ; preds = %while.body30.i541.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i500.i

while.body30.i541.i.while.cond34.preheader.i530.i_crit_edge: ; preds = %while.body30.i541.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i530.i

while.body38.i554.i:                              ; preds = %while.body38.i554.i.while.body38.i554.i_crit_edge, %while.cond34.preheader.i530.i.while.body38.i554.i_crit_edge
  %bitD2.sroa.20.7.i = phi i32 [ %add.i.i36.i549.i, %while.body38.i554.i.while.body38.i554.i_crit_edge ], [ %bitD2.sroa.20.6.i, %while.cond34.preheader.i530.i.while.body38.i554.i_crit_edge ]
  %p.addr.499.i542.i = phi ptr [ %add.ptr40.i552.i, %while.body38.i554.i.while.body38.i554.i_crit_edge ], [ %p.addr.3.i496.lcssa.i, %while.cond34.preheader.i530.i.while.body38.i554.i_crit_edge ]
  %and.i.i28.i543.i = and i32 %bitD2.sroa.20.7.i, 31
  %shl.i.i29.i544.i = shl i32 %bitD2.sroa.0.8.i, %and.i.i28.i543.i
  %shr.i.i32.i545.i = lshr i32 %shl.i.i29.i544.i, %and1.i.i19.pre-phi.i4891385.i
  %add.ptr.i33.i546.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i545.i
  %217 = ptrtoint ptr %add.ptr.i33.i546.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %add.ptr.i33.i546.i, align 2
  %219 = ptrtoint ptr %p.addr.499.i542.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 %218, ptr %p.addr.499.i542.i, align 1
  %nbBits.i34.i547.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i545.i, i32 1
  %220 = ptrtoint ptr %nbBits.i34.i547.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %nbBits.i34.i547.i, align 2
  %conv.i35.i548.i = zext i8 %221 to i32
  %add.i.i36.i549.i = add i32 %bitD2.sroa.20.7.i, %conv.i35.i548.i
  %length.i37.i550.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i545.i, i32 2
  %222 = ptrtoint ptr %length.i37.i550.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %length.i37.i550.i, align 1
  %conv2.i38.i551.i = zext i8 %223 to i32
  %add.ptr40.i552.i = getelementptr i8, ptr %p.addr.499.i542.i, i32 %conv2.i38.i551.i
  %cmp36.not.i553.i = icmp ugt ptr %add.ptr40.i552.i, %add.ptr25.i4921387.i
  br i1 %cmp36.not.i553.i, label %while.body38.i554.i.while.end41.i557.i_crit_edge, label %while.body38.i554.i.while.body38.i554.i_crit_edge

while.body38.i554.i.while.body38.i554.i_crit_edge: ; preds = %while.body38.i554.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38.i554.i

while.body38.i554.i.while.end41.i557.i_crit_edge: ; preds = %while.body38.i554.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i557.i

while.end41.i557.i:                               ; preds = %while.body38.i554.i.while.end41.i557.i_crit_edge, %while.cond34.preheader.i530.i.while.end41.i557.i_crit_edge
  %bitD2.sroa.20.8.i = phi i32 [ %bitD2.sroa.20.6.i, %while.cond34.preheader.i530.i.while.end41.i557.i_crit_edge ], [ %add.i.i36.i549.i, %while.body38.i554.i.while.end41.i557.i_crit_edge ]
  %p.addr.4.lcssa.i555.i = phi ptr [ %p.addr.3.i496.lcssa.i, %while.cond34.preheader.i530.i.while.end41.i557.i_crit_edge ], [ %add.ptr40.i552.i, %while.body38.i554.i.while.end41.i557.i_crit_edge ]
  %cmp42.i556.i = icmp ult ptr %p.addr.4.lcssa.i555.i, %add.ptr17.i
  br i1 %cmp42.i556.i, label %if.then44.i564.i, label %while.end41.i557.i.HUF_decodeStreamX2.exit577.i_crit_edge

while.end41.i557.i.HUF_decodeStreamX2.exit577.i_crit_edge: ; preds = %while.end41.i557.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit577.i

if.then44.i564.i:                                 ; preds = %while.end41.i557.i
  %and.i.i39.i558.i = and i32 %bitD2.sroa.20.8.i, 31
  %shl.i.i40.i559.i = shl i32 %bitD2.sroa.0.8.i, %and.i.i39.i558.i
  %shr.i.i43.i560.i = lshr i32 %shl.i.i40.i559.i, %and1.i.i19.pre-phi.i4891385.i
  %add.ptr.i44.i561.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i560.i
  %224 = ptrtoint ptr %add.ptr.i44.i561.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %add.ptr.i44.i561.i, align 2
  %226 = ptrtoint ptr %p.addr.4.lcssa.i555.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %p.addr.4.lcssa.i555.i, align 1
  %length.i45.i562.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i560.i, i32 2
  %227 = ptrtoint ptr %length.i45.i562.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %length.i45.i562.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %228)
  %cmp.i.i563.i = icmp eq i8 %228, 1
  br i1 %cmp.i.i563.i, label %if.then.i.i568.i, label %if.else.i.i570.i

if.then.i.i568.i:                                 ; preds = %if.then44.i564.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits.i46.i565.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i560.i, i32 1
  %229 = ptrtoint ptr %nbBits.i46.i565.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %nbBits.i46.i565.i, align 2
  %conv3.i.i566.i = zext i8 %230 to i32
  %add.i.i47.i567.i = add i32 %bitD2.sroa.20.8.i, %conv3.i.i566.i
  br label %HUF_decodeStreamX2.exit577.i

if.else.i.i570.i:                                 ; preds = %if.then44.i564.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD2.sroa.20.8.i)
  %cmp4.i.i569.i = icmp ult i32 %bitD2.sroa.20.8.i, 32
  br i1 %cmp4.i.i569.i, label %if.then6.i.i574.i, label %if.else.i.i570.i.HUF_decodeStreamX2.exit577.i_crit_edge

if.else.i.i570.i.HUF_decodeStreamX2.exit577.i_crit_edge: ; preds = %if.else.i.i570.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit577.i

if.then6.i.i574.i:                                ; preds = %if.else.i.i570.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits8.i.i571.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i560.i, i32 1
  %231 = ptrtoint ptr %nbBits8.i.i571.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %nbBits8.i.i571.i, align 2
  %conv9.i.i572.i = zext i8 %232 to i32
  %add.i2.i.i573.i = add nuw nsw i32 %bitD2.sroa.20.8.i, %conv9.i.i572.i
  %233 = tail call i32 @llvm.umin.i32(i32 %add.i2.i.i573.i, i32 32) #7
  br label %HUF_decodeStreamX2.exit577.i

HUF_decodeStreamX2.exit577.i:                     ; preds = %if.then6.i.i574.i, %if.else.i.i570.i.HUF_decodeStreamX2.exit577.i_crit_edge, %if.then.i.i568.i, %while.end41.i557.i.HUF_decodeStreamX2.exit577.i_crit_edge
  %bitD2.sroa.20.9.i = phi i32 [ %bitD2.sroa.20.8.i, %if.else.i.i570.i.HUF_decodeStreamX2.exit577.i_crit_edge ], [ %bitD2.sroa.20.8.i, %while.end41.i557.i.HUF_decodeStreamX2.exit577.i_crit_edge ], [ %233, %if.then6.i.i574.i ], [ %add.i.i47.i567.i, %if.then.i.i568.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD3.sroa.20.1.lcssa.i)
  %cmp.i4891.i580.i = icmp ugt i32 %bitD3.sroa.20.1.lcssa.i, 32
  br i1 %cmp.i4891.i580.i, label %entry.while.cond21thread-pre-split_crit_edge.i583.i, label %if.end.i.lr.ph.i589.i

entry.while.cond21thread-pre-split_crit_edge.i583.i: ; preds = %HUF_decodeStreamX2.exit577.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i581.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre101.i582.i = and i32 %.pre.i581.i, 31
  br label %while.cond21thread-pre-split.i649.thread.i

if.end.i.lr.ph.i589.i:                            ; preds = %HUF_decodeStreamX2.exit577.i
  %add.ptr.i586.i = getelementptr i8, ptr %add.ptr18.i, i32 -3
  %sub.i.i.i587.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %and1.i.i.i588.i = and i32 %sub.i.i.i587.i, 31
  %sub.ptr.rhs.cast.i.i605.i = ptrtoint ptr %add.ptr13.i to i32
  br label %if.end.i.i592.i

if.end.i.i592.i:                                  ; preds = %while.body.i642.i.if.end.i.i592.i_crit_edge, %if.end.i.lr.ph.i589.i
  %bitD3.sroa.0.5.i = phi i32 [ %bitD3.sroa.0.3.lcssa.i, %if.end.i.lr.ph.i589.i ], [ %236, %while.body.i642.i.if.end.i.i592.i_crit_edge ]
  %bitD3.sroa.20.3.i = phi i32 [ %bitD3.sroa.20.1.lcssa.i, %if.end.i.lr.ph.i589.i ], [ %add.i.i12.i637.i, %while.body.i642.i.if.end.i.i592.i_crit_edge ]
  %bitD3.sroa.53.3.i = phi ptr [ %bitD3.sroa.53.1.lcssa.i, %if.end.i.lr.ph.i589.i ], [ %bitD3.sroa.53.4.i, %while.body.i642.i.if.end.i.i592.i_crit_edge ]
  %p.addr.092.i590.i = phi ptr [ %op3.0.lcssa.i, %if.end.i.lr.ph.i589.i ], [ %add.ptr20.i640.i, %while.body.i642.i.if.end.i.i592.i_crit_edge ]
  %cmp1.not.i.i591.i = icmp ult ptr %bitD3.sroa.53.3.i, %add.ptr.i943.i
  br i1 %cmp1.not.i.i591.i, label %if.end3.i.i599.i, label %BIT_reloadDStreamFast.exit.i.i597.i

BIT_reloadDStreamFast.exit.i.i597.i:              ; preds = %if.end.i.i592.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i49.i593.i = lshr i32 %bitD3.sroa.20.3.i, 3
  %and.i.i50.i596.i = and i32 %bitD3.sroa.20.3.i, 7
  br label %BIT_reloadDStream.exit.i620.i

if.end3.i.i599.i:                                 ; preds = %if.end.i.i592.i
  %cmp5.i.i598.i = icmp eq ptr %bitD3.sroa.53.3.i, %add.ptr13.i
  br i1 %cmp5.i.i598.i, label %while.cond21thread-pre-split.i649.thread1414.i, label %if.end11.i.i613.i

while.cond21thread-pre-split.i649.thread1414.i:   ; preds = %if.end3.i.i599.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i6461420.i = getelementptr i8, ptr %add.ptr18.i, i32 -2
  br label %if.end.i58.i654.lr.ph.i

if.end11.i.i613.i:                                ; preds = %if.end3.i.i599.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i600.i = lshr i32 %bitD3.sroa.20.3.i, 3
  %idx.neg.i.i601.i = sub nsw i32 0, %shr.i.i600.i
  %add.ptr.i52.i602.i = getelementptr i8, ptr %bitD3.sroa.53.3.i, i32 %idx.neg.i.i601.i
  %cmp15.i.i603.i = icmp ult ptr %add.ptr.i52.i602.i, %add.ptr13.i
  %sub.ptr.lhs.cast.i.i604.i = ptrtoint ptr %bitD3.sroa.53.3.i to i32
  %sub.ptr.sub.i.i606.i = sub i32 %sub.ptr.lhs.cast.i.i604.i, %sub.ptr.rhs.cast.i.i605.i
  %nbBytes.0.i.i607.i = select i1 %cmp15.i.i603.i, i32 %sub.ptr.sub.i.i606.i, i32 %shr.i.i600.i
  %result.0.i.i608.i = zext i1 %cmp15.i.i603.i to i32
  %mul.neg.i.i611.i = mul i32 %nbBytes.0.i.i607.i, -8
  %sub.i.i612.i = add i32 %mul.neg.i.i611.i, %bitD3.sroa.20.3.i
  br label %BIT_reloadDStream.exit.i620.i

BIT_reloadDStream.exit.i620.i:                    ; preds = %if.end11.i.i613.i, %BIT_reloadDStreamFast.exit.i.i597.i
  %nbBytes.0.i.i607.pn.i = phi i32 [ %nbBytes.0.i.i607.i, %if.end11.i.i613.i ], [ %shr.i.i49.i593.i, %BIT_reloadDStreamFast.exit.i.i597.i ]
  %and.i.i50.sink.i614.i = phi i32 [ %sub.i.i612.i, %if.end11.i.i613.i ], [ %and.i.i50.i596.i, %BIT_reloadDStreamFast.exit.i.i597.i ]
  %retval.0.i.i616.i = phi i32 [ %result.0.i.i608.i, %if.end11.i.i613.i ], [ 0, %BIT_reloadDStreamFast.exit.i.i597.i ]
  %idx.neg21.i.i609.pn.i = sub i32 0, %nbBytes.0.i.i607.pn.i
  %bitD3.sroa.53.4.i = getelementptr i8, ptr %bitD3.sroa.53.3.i, i32 %idx.neg21.i.i609.pn.i
  %234 = ptrtoint ptr %bitD3.sroa.53.4.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %bitD3.sroa.53.4.i, align 1
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i616.i)
  %cmp.i617.i = icmp eq i32 %retval.0.i.i616.i, 0
  %cmp1.i618.i = icmp ult ptr %p.addr.092.i590.i, %add.ptr.i586.i
  %and1.i619.i = and i1 %cmp1.i618.i, %cmp.i617.i
  br i1 %and1.i619.i, label %while.body.i642.i, label %while.cond21thread-pre-split.i649.i

while.body.i642.i:                                ; preds = %BIT_reloadDStream.exit.i620.i
  %and.i.i.i621.i = and i32 %and.i.i50.sink.i614.i, 31
  %shl.i.i.i622.i = shl i32 %236, %and.i.i.i621.i
  %shr.i.i.i623.i = lshr i32 %shl.i.i.i622.i, %and1.i.i.i588.i
  %add.ptr.i.i624.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i623.i
  %237 = ptrtoint ptr %add.ptr.i.i624.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %add.ptr.i.i624.i, align 2
  %239 = ptrtoint ptr %p.addr.092.i590.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 %238, ptr %p.addr.092.i590.i, align 1
  %nbBits.i.i625.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i623.i, i32 1
  %240 = ptrtoint ptr %nbBits.i.i625.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %nbBits.i.i625.i, align 2
  %conv.i.i626.i = zext i8 %241 to i32
  %add.i.i.i627.i = add i32 %and.i.i50.sink.i614.i, %conv.i.i626.i
  %length.i.i628.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i623.i, i32 2
  %242 = ptrtoint ptr %length.i.i628.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %length.i.i628.i, align 1
  %conv2.i.i629.i = zext i8 %243 to i32
  %add.ptr11.i630.i = getelementptr i8, ptr %p.addr.092.i590.i, i32 %conv2.i.i629.i
  %and.i.i4.i631.i = and i32 %add.i.i.i627.i, 31
  %shl.i.i5.i632.i = shl i32 %236, %and.i.i4.i631.i
  %shr.i.i8.i633.i = lshr i32 %shl.i.i5.i632.i, %and1.i.i.i588.i
  %add.ptr.i9.i634.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i633.i
  %244 = ptrtoint ptr %add.ptr.i9.i634.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %add.ptr.i9.i634.i, align 2
  %246 = ptrtoint ptr %add.ptr11.i630.i to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 %245, ptr %add.ptr11.i630.i, align 1
  %nbBits.i10.i635.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i633.i, i32 1
  %247 = ptrtoint ptr %nbBits.i10.i635.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %nbBits.i10.i635.i, align 2
  %conv.i11.i636.i = zext i8 %248 to i32
  %add.i.i12.i637.i = add i32 %add.i.i.i627.i, %conv.i11.i636.i
  %length.i13.i638.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i633.i, i32 2
  %249 = ptrtoint ptr %length.i13.i638.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %length.i13.i638.i, align 1
  %conv2.i14.i639.i = zext i8 %250 to i32
  %add.ptr20.i640.i = getelementptr i8, ptr %add.ptr11.i630.i, i32 %conv2.i14.i639.i
  %cmp.i48.i641.i = icmp ugt i32 %add.i.i12.i637.i, 32
  br i1 %cmp.i48.i641.i, label %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge, label %while.body.i642.i.if.end.i.i592.i_crit_edge

while.body.i642.i.if.end.i.i592.i_crit_edge:      ; preds = %while.body.i642.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i592.i

while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge: ; preds = %while.body.i642.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i649.thread.i

while.cond21thread-pre-split.i649.thread.i:       ; preds = %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge, %entry.while.cond21thread-pre-split_crit_edge.i583.i
  %bitD3.sroa.0.6.ph.i = phi i32 [ %bitD3.sroa.0.3.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i583.i ], [ %236, %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge ]
  %bitD3.sroa.20.4.ph.i = phi i32 [ %bitD3.sroa.20.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i583.i ], [ %add.i.i12.i637.i, %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge ]
  %bitD3.sroa.53.5.ph.i = phi ptr [ %bitD3.sroa.53.1.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i583.i ], [ %bitD3.sroa.53.4.i, %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge ]
  %and1.i.i19.pre-phi.i643.ph.i = phi i32 [ %.pre101.i582.i, %entry.while.cond21thread-pre-split_crit_edge.i583.i ], [ %and1.i.i.i588.i, %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge ]
  %p.addr.0.lcssa.i644.ph.i = phi ptr [ %op3.0.lcssa.i, %entry.while.cond21thread-pre-split_crit_edge.i583.i ], [ %add.ptr20.i640.i, %while.body.i642.i.while.cond21thread-pre-split.i649.thread.i_crit_edge ]
  %add.ptr25.i6461408.i = getelementptr i8, ptr %add.ptr18.i, i32 -2
  br label %while.cond34.preheader.i684.i

while.cond21thread-pre-split.i649.i:              ; preds = %BIT_reloadDStream.exit.i620.i
  %add.ptr25.i646.i = getelementptr i8, ptr %add.ptr18.i, i32 -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i50.sink.i614.i)
  %cmp.i54.i6511327.i = icmp ugt i32 %and.i.i50.sink.i614.i, 32
  br i1 %cmp.i54.i6511327.i, label %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge, label %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge

while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge: ; preds = %while.cond21thread-pre-split.i649.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i654.lr.ph.i

while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge: ; preds = %while.cond21thread-pre-split.i649.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i684.i

if.end.i58.i654.lr.ph.i:                          ; preds = %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge, %while.cond21thread-pre-split.i649.thread1414.i
  %add.ptr25.i6461427.i = phi ptr [ %add.ptr25.i6461420.i, %while.cond21thread-pre-split.i649.thread1414.i ], [ %add.ptr25.i646.i, %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge ]
  %bitD3.sroa.53.51424.i = phi ptr [ %add.ptr13.i, %while.cond21thread-pre-split.i649.thread1414.i ], [ %bitD3.sroa.53.4.i, %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge ]
  %bitD3.sroa.20.41423.i = phi i32 [ %bitD3.sroa.20.3.i, %while.cond21thread-pre-split.i649.thread1414.i ], [ %and.i.i50.sink.i614.i, %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge ]
  %bitD3.sroa.0.61422.i = phi i32 [ %bitD3.sroa.0.5.i, %while.cond21thread-pre-split.i649.thread1414.i ], [ %236, %while.cond21thread-pre-split.i649.i.if.end.i58.i654.lr.ph.i_crit_edge ]
  br label %if.end.i58.i654.i

if.end.i58.i654.i:                                ; preds = %while.body30.i695.i.if.end.i58.i654.i_crit_edge, %if.end.i58.i654.lr.ph.i
  %p.addr.3.i6501332.i = phi ptr [ %p.addr.092.i590.i, %if.end.i58.i654.lr.ph.i ], [ %add.ptr32.i694.i, %while.body30.i695.i.if.end.i58.i654.i_crit_edge ]
  %bitD3.sroa.53.61330.i = phi ptr [ %bitD3.sroa.53.51424.i, %if.end.i58.i654.lr.ph.i ], [ %bitD3.sroa.53.7.i, %while.body30.i695.i.if.end.i58.i654.i_crit_edge ]
  %bitD3.sroa.20.51329.i = phi i32 [ %bitD3.sroa.20.41423.i, %if.end.i58.i654.lr.ph.i ], [ %add.i.i24.i691.i, %while.body30.i695.i.if.end.i58.i654.i_crit_edge ]
  %bitD3.sroa.0.71328.i = phi i32 [ %bitD3.sroa.0.61422.i, %if.end.i58.i654.lr.ph.i ], [ %253, %while.body30.i695.i.if.end.i58.i654.i_crit_edge ]
  %cmp1.not.i57.i653.i = icmp ult ptr %bitD3.sroa.53.61330.i, %add.ptr.i943.i
  br i1 %cmp1.not.i57.i653.i, label %if.end3.i66.i661.i, label %BIT_reloadDStreamFast.exit.i63.i659.i

BIT_reloadDStreamFast.exit.i63.i659.i:            ; preds = %if.end.i58.i654.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i59.i655.i = lshr i32 %bitD3.sroa.20.51329.i, 3
  %and.i.i62.i658.i = and i32 %bitD3.sroa.20.51329.i, 7
  br label %BIT_reloadDStream.exit85.i682.i

if.end3.i66.i661.i:                               ; preds = %if.end.i58.i654.i
  %cmp5.i65.i660.i = icmp eq ptr %bitD3.sroa.53.61330.i, %add.ptr13.i
  br i1 %cmp5.i65.i660.i, label %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge, label %if.end11.i83.i675.i

if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge: ; preds = %if.end3.i66.i661.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i684.i

if.end11.i83.i675.i:                              ; preds = %if.end3.i66.i661.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i70.i662.i = lshr i32 %bitD3.sroa.20.51329.i, 3
  %idx.neg.i71.i663.i = sub nsw i32 0, %shr.i70.i662.i
  %add.ptr.i72.i664.i = getelementptr i8, ptr %bitD3.sroa.53.61330.i, i32 %idx.neg.i71.i663.i
  %cmp15.i73.i665.i = icmp ult ptr %add.ptr.i72.i664.i, %add.ptr13.i
  %sub.ptr.lhs.cast.i74.i666.i = ptrtoint ptr %bitD3.sroa.53.61330.i to i32
  %sub.ptr.sub.i76.i668.i = sub i32 %sub.ptr.lhs.cast.i74.i666.i, %sub.ptr.rhs.cast.i.i605.i
  %nbBytes.0.i77.i669.i = select i1 %cmp15.i73.i665.i, i32 %sub.ptr.sub.i76.i668.i, i32 %shr.i70.i662.i
  %result.0.i78.i670.i = zext i1 %cmp15.i73.i665.i to i32
  %mul.neg.i81.i673.i = mul i32 %nbBytes.0.i77.i669.i, -8
  %sub.i82.i674.i = add i32 %mul.neg.i81.i673.i, %bitD3.sroa.20.51329.i
  br label %BIT_reloadDStream.exit85.i682.i

BIT_reloadDStream.exit85.i682.i:                  ; preds = %if.end11.i83.i675.i, %BIT_reloadDStreamFast.exit.i63.i659.i
  %nbBytes.0.i77.i669.pn.i = phi i32 [ %nbBytes.0.i77.i669.i, %if.end11.i83.i675.i ], [ %shr.i.i59.i655.i, %BIT_reloadDStreamFast.exit.i63.i659.i ]
  %and.i.i62.sink.i676.i = phi i32 [ %sub.i82.i674.i, %if.end11.i83.i675.i ], [ %and.i.i62.i658.i, %BIT_reloadDStreamFast.exit.i63.i659.i ]
  %retval.0.i84.i678.i = phi i32 [ %result.0.i78.i670.i, %if.end11.i83.i675.i ], [ 0, %BIT_reloadDStreamFast.exit.i63.i659.i ]
  %idx.neg21.i79.i671.pn.i = sub i32 0, %nbBytes.0.i77.i669.pn.i
  %bitD3.sroa.53.7.i = getelementptr i8, ptr %bitD3.sroa.53.61330.i, i32 %idx.neg21.i79.i671.pn.i
  %251 = ptrtoint ptr %bitD3.sroa.53.7.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %bitD3.sroa.53.7.i, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84.i678.i)
  %cmp23.i679.i = icmp eq i32 %retval.0.i84.i678.i, 0
  %cmp26.i680.i = icmp ule ptr %p.addr.3.i6501332.i, %add.ptr25.i6461427.i
  %and282.i681.i = and i1 %cmp26.i680.i, %cmp23.i679.i
  br i1 %and282.i681.i, label %while.body30.i695.i, label %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge

BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge: ; preds = %BIT_reloadDStream.exit85.i682.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i684.i

while.cond34.preheader.i684.i:                    ; preds = %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge, %while.cond21thread-pre-split.i649.thread.i
  %add.ptr25.i6461412.i = phi ptr [ %add.ptr25.i646.i, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %add.ptr25.i6461408.i, %while.cond21thread-pre-split.i649.thread.i ], [ %add.ptr25.i6461427.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ], [ %add.ptr25.i6461427.i, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %add.ptr25.i6461427.i, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ]
  %and1.i.i19.pre-phi.i6431410.i = phi i32 [ %and1.i.i.i588.i, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %and1.i.i19.pre-phi.i643.ph.i, %while.cond21thread-pre-split.i649.thread.i ], [ %and1.i.i.i588.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ], [ %and1.i.i.i588.i, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %and1.i.i.i588.i, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ]
  %p.addr.3.i650.lcssa.i = phi ptr [ %p.addr.092.i590.i, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %p.addr.0.lcssa.i644.ph.i, %while.cond21thread-pre-split.i649.thread.i ], [ %add.ptr32.i694.i, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ], [ %p.addr.3.i6501332.i, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %p.addr.3.i6501332.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ]
  %bitD3.sroa.0.8.i = phi i32 [ %236, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.0.6.ph.i, %while.cond21thread-pre-split.i649.thread.i ], [ %253, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ], [ %253, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.0.71328.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ]
  %bitD3.sroa.20.6.i = phi i32 [ %and.i.i50.sink.i614.i, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.20.4.ph.i, %while.cond21thread-pre-split.i649.thread.i ], [ %add.i.i24.i691.i, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ], [ %and.i.i62.sink.i676.i, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.20.51329.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ]
  %bitD3.sroa.53.8.i = phi ptr [ %bitD3.sroa.53.4.i, %while.cond21thread-pre-split.i649.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.53.5.ph.i, %while.cond21thread-pre-split.i649.thread.i ], [ %bitD3.sroa.53.7.i, %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge ], [ %bitD3.sroa.53.7.i, %BIT_reloadDStream.exit85.i682.i.while.cond34.preheader.i684.i_crit_edge ], [ %add.ptr13.i, %if.end3.i66.i661.i.while.cond34.preheader.i684.i_crit_edge ]
  %cmp36.not98.i683.i = icmp ugt ptr %p.addr.3.i650.lcssa.i, %add.ptr25.i6461412.i
  br i1 %cmp36.not98.i683.i, label %while.cond34.preheader.i684.i.while.end41.i711.i_crit_edge, label %while.cond34.preheader.i684.i.while.body38.i708.i_crit_edge

while.cond34.preheader.i684.i.while.body38.i708.i_crit_edge: ; preds = %while.cond34.preheader.i684.i
  br label %while.body38.i708.i

while.cond34.preheader.i684.i.while.end41.i711.i_crit_edge: ; preds = %while.cond34.preheader.i684.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i711.i

while.body30.i695.i:                              ; preds = %BIT_reloadDStream.exit85.i682.i
  %and.i.i16.i685.i = and i32 %and.i.i62.sink.i676.i, 31
  %shl.i.i17.i686.i = shl i32 %253, %and.i.i16.i685.i
  %shr.i.i20.i687.i = lshr i32 %shl.i.i17.i686.i, %and1.i.i.i588.i
  %add.ptr.i21.i688.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i687.i
  %254 = ptrtoint ptr %add.ptr.i21.i688.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %add.ptr.i21.i688.i, align 2
  %256 = ptrtoint ptr %p.addr.3.i6501332.i to i32
  call void @__asan_storeN_noabort(i32 %256, i32 2)
  store i16 %255, ptr %p.addr.3.i6501332.i, align 1
  %nbBits.i22.i689.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i687.i, i32 1
  %257 = ptrtoint ptr %nbBits.i22.i689.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %nbBits.i22.i689.i, align 2
  %conv.i23.i690.i = zext i8 %258 to i32
  %add.i.i24.i691.i = add i32 %and.i.i62.sink.i676.i, %conv.i23.i690.i
  %length.i25.i692.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i687.i, i32 2
  %259 = ptrtoint ptr %length.i25.i692.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %length.i25.i692.i, align 1
  %conv2.i26.i693.i = zext i8 %260 to i32
  %add.ptr32.i694.i = getelementptr i8, ptr %p.addr.3.i6501332.i, i32 %conv2.i26.i693.i
  %cmp.i54.i651.i = icmp ugt i32 %add.i.i24.i691.i, 32
  br i1 %cmp.i54.i651.i, label %while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge, label %while.body30.i695.i.if.end.i58.i654.i_crit_edge

while.body30.i695.i.if.end.i58.i654.i_crit_edge:  ; preds = %while.body30.i695.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i654.i

while.body30.i695.i.while.cond34.preheader.i684.i_crit_edge: ; preds = %while.body30.i695.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i684.i

while.body38.i708.i:                              ; preds = %while.body38.i708.i.while.body38.i708.i_crit_edge, %while.cond34.preheader.i684.i.while.body38.i708.i_crit_edge
  %bitD3.sroa.20.7.i = phi i32 [ %add.i.i36.i703.i, %while.body38.i708.i.while.body38.i708.i_crit_edge ], [ %bitD3.sroa.20.6.i, %while.cond34.preheader.i684.i.while.body38.i708.i_crit_edge ]
  %p.addr.499.i696.i = phi ptr [ %add.ptr40.i706.i, %while.body38.i708.i.while.body38.i708.i_crit_edge ], [ %p.addr.3.i650.lcssa.i, %while.cond34.preheader.i684.i.while.body38.i708.i_crit_edge ]
  %and.i.i28.i697.i = and i32 %bitD3.sroa.20.7.i, 31
  %shl.i.i29.i698.i = shl i32 %bitD3.sroa.0.8.i, %and.i.i28.i697.i
  %shr.i.i32.i699.i = lshr i32 %shl.i.i29.i698.i, %and1.i.i19.pre-phi.i6431410.i
  %add.ptr.i33.i700.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i699.i
  %261 = ptrtoint ptr %add.ptr.i33.i700.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %add.ptr.i33.i700.i, align 2
  %263 = ptrtoint ptr %p.addr.499.i696.i to i32
  call void @__asan_storeN_noabort(i32 %263, i32 2)
  store i16 %262, ptr %p.addr.499.i696.i, align 1
  %nbBits.i34.i701.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i699.i, i32 1
  %264 = ptrtoint ptr %nbBits.i34.i701.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %nbBits.i34.i701.i, align 2
  %conv.i35.i702.i = zext i8 %265 to i32
  %add.i.i36.i703.i = add i32 %bitD3.sroa.20.7.i, %conv.i35.i702.i
  %length.i37.i704.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i699.i, i32 2
  %266 = ptrtoint ptr %length.i37.i704.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %length.i37.i704.i, align 1
  %conv2.i38.i705.i = zext i8 %267 to i32
  %add.ptr40.i706.i = getelementptr i8, ptr %p.addr.499.i696.i, i32 %conv2.i38.i705.i
  %cmp36.not.i707.i = icmp ugt ptr %add.ptr40.i706.i, %add.ptr25.i6461412.i
  br i1 %cmp36.not.i707.i, label %while.body38.i708.i.while.end41.i711.i_crit_edge, label %while.body38.i708.i.while.body38.i708.i_crit_edge

while.body38.i708.i.while.body38.i708.i_crit_edge: ; preds = %while.body38.i708.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38.i708.i

while.body38.i708.i.while.end41.i711.i_crit_edge: ; preds = %while.body38.i708.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i711.i

while.end41.i711.i:                               ; preds = %while.body38.i708.i.while.end41.i711.i_crit_edge, %while.cond34.preheader.i684.i.while.end41.i711.i_crit_edge
  %bitD3.sroa.20.8.i = phi i32 [ %bitD3.sroa.20.6.i, %while.cond34.preheader.i684.i.while.end41.i711.i_crit_edge ], [ %add.i.i36.i703.i, %while.body38.i708.i.while.end41.i711.i_crit_edge ]
  %p.addr.4.lcssa.i709.i = phi ptr [ %p.addr.3.i650.lcssa.i, %while.cond34.preheader.i684.i.while.end41.i711.i_crit_edge ], [ %add.ptr40.i706.i, %while.body38.i708.i.while.end41.i711.i_crit_edge ]
  %cmp42.i710.i = icmp ult ptr %p.addr.4.lcssa.i709.i, %add.ptr18.i
  br i1 %cmp42.i710.i, label %if.then44.i718.i, label %while.end41.i711.i.HUF_decodeStreamX2.exit731.i_crit_edge

while.end41.i711.i.HUF_decodeStreamX2.exit731.i_crit_edge: ; preds = %while.end41.i711.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit731.i

if.then44.i718.i:                                 ; preds = %while.end41.i711.i
  %and.i.i39.i712.i = and i32 %bitD3.sroa.20.8.i, 31
  %shl.i.i40.i713.i = shl i32 %bitD3.sroa.0.8.i, %and.i.i39.i712.i
  %shr.i.i43.i714.i = lshr i32 %shl.i.i40.i713.i, %and1.i.i19.pre-phi.i6431410.i
  %add.ptr.i44.i715.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i714.i
  %268 = ptrtoint ptr %add.ptr.i44.i715.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %add.ptr.i44.i715.i, align 2
  %270 = ptrtoint ptr %p.addr.4.lcssa.i709.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %p.addr.4.lcssa.i709.i, align 1
  %length.i45.i716.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i714.i, i32 2
  %271 = ptrtoint ptr %length.i45.i716.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %length.i45.i716.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %272)
  %cmp.i.i717.i = icmp eq i8 %272, 1
  br i1 %cmp.i.i717.i, label %if.then.i.i722.i, label %if.else.i.i724.i

if.then.i.i722.i:                                 ; preds = %if.then44.i718.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits.i46.i719.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i714.i, i32 1
  %273 = ptrtoint ptr %nbBits.i46.i719.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %nbBits.i46.i719.i, align 2
  %conv3.i.i720.i = zext i8 %274 to i32
  %add.i.i47.i721.i = add i32 %bitD3.sroa.20.8.i, %conv3.i.i720.i
  br label %HUF_decodeStreamX2.exit731.i

if.else.i.i724.i:                                 ; preds = %if.then44.i718.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD3.sroa.20.8.i)
  %cmp4.i.i723.i = icmp ult i32 %bitD3.sroa.20.8.i, 32
  br i1 %cmp4.i.i723.i, label %if.then6.i.i728.i, label %if.else.i.i724.i.HUF_decodeStreamX2.exit731.i_crit_edge

if.else.i.i724.i.HUF_decodeStreamX2.exit731.i_crit_edge: ; preds = %if.else.i.i724.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit731.i

if.then6.i.i728.i:                                ; preds = %if.else.i.i724.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits8.i.i725.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i714.i, i32 1
  %275 = ptrtoint ptr %nbBits8.i.i725.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %nbBits8.i.i725.i, align 2
  %conv9.i.i726.i = zext i8 %276 to i32
  %add.i2.i.i727.i = add nuw nsw i32 %bitD3.sroa.20.8.i, %conv9.i.i726.i
  %277 = tail call i32 @llvm.umin.i32(i32 %add.i2.i.i727.i, i32 32) #7
  br label %HUF_decodeStreamX2.exit731.i

HUF_decodeStreamX2.exit731.i:                     ; preds = %if.then6.i.i728.i, %if.else.i.i724.i.HUF_decodeStreamX2.exit731.i_crit_edge, %if.then.i.i722.i, %while.end41.i711.i.HUF_decodeStreamX2.exit731.i_crit_edge
  %bitD3.sroa.20.9.i = phi i32 [ %bitD3.sroa.20.8.i, %if.else.i.i724.i.HUF_decodeStreamX2.exit731.i_crit_edge ], [ %bitD3.sroa.20.8.i, %while.end41.i711.i.HUF_decodeStreamX2.exit731.i_crit_edge ], [ %277, %if.then6.i.i728.i ], [ %add.i.i47.i721.i, %if.then.i.i722.i ]
  %278 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %279)
  %cmp.i4891.i734.i = icmp ugt i32 %279, 32
  %.pre.i735.i = sub nsw i32 0, %retval.sroa.4.0.insert.ext.i.i
  %.pre101.i736.i = and i32 %.pre.i735.i, 31
  br i1 %cmp.i4891.i734.i, label %while.cond21thread-pre-split.i803.thread.i, label %if.end.i.lr.ph.i743.i

while.cond21thread-pre-split.i803.thread.i:       ; preds = %HUF_decodeStreamX2.exit731.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i8001431.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  br label %while.cond34.preheader.i838.i

if.end.i.lr.ph.i743.i:                            ; preds = %HUF_decodeStreamX2.exit731.i
  %280 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %3, align 4
  br label %if.end.i.i746.i

if.end.i.i746.i:                                  ; preds = %while.body.i796.i.if.end.i.i746.i_crit_edge, %if.end.i.lr.ph.i743.i
  %282 = phi i32 [ %279, %if.end.i.lr.ph.i743.i ], [ %add.i.i12.i791.i, %while.body.i796.i.if.end.i.i746.i_crit_edge ]
  %p.addr.092.i744.i = phi ptr [ %op4.0.lcssa.i, %if.end.i.lr.ph.i743.i ], [ %add.ptr20.i794.i, %while.body.i796.i.if.end.i.i746.i_crit_edge ]
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %1, align 4
  %cmp1.not.i.i745.i = icmp ult ptr %284, %281
  br i1 %cmp1.not.i.i745.i, label %if.end3.i.i753.i, label %BIT_reloadDStreamFast.exit.i.i751.i

BIT_reloadDStreamFast.exit.i.i751.i:              ; preds = %if.end.i.i746.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i49.i747.i = lshr i32 %282, 3
  %idx.neg.i.i.i748.i = sub nsw i32 0, %shr.i.i49.i747.i
  %add.ptr.i.i.i749.i = getelementptr i8, ptr %284, i32 %idx.neg.i.i.i748.i
  %285 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %add.ptr.i.i.i749.i, ptr %1, align 4
  %and.i.i50.i750.i = and i32 %282, 7
  br label %BIT_reloadDStream.exit.i774.i

if.end3.i.i753.i:                                 ; preds = %if.end.i.i746.i
  %286 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %2, align 4
  %cmp5.i.i752.i = icmp eq ptr %284, %287
  br i1 %cmp5.i.i752.i, label %if.end3.i.i753.i.while.cond21thread-pre-split.i803.i_crit_edge, label %if.end11.i.i767.i

if.end3.i.i753.i.while.cond21thread-pre-split.i803.i_crit_edge: ; preds = %if.end3.i.i753.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i803.i

if.end11.i.i767.i:                                ; preds = %if.end3.i.i753.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i754.i = lshr i32 %282, 3
  %idx.neg.i.i755.i = sub nsw i32 0, %shr.i.i754.i
  %add.ptr.i52.i756.i = getelementptr i8, ptr %284, i32 %idx.neg.i.i755.i
  %cmp15.i.i757.i = icmp ult ptr %add.ptr.i52.i756.i, %287
  %sub.ptr.lhs.cast.i.i758.i = ptrtoint ptr %284 to i32
  %sub.ptr.rhs.cast.i.i759.i = ptrtoint ptr %287 to i32
  %sub.ptr.sub.i.i760.i = sub i32 %sub.ptr.lhs.cast.i.i758.i, %sub.ptr.rhs.cast.i.i759.i
  %nbBytes.0.i.i761.i = select i1 %cmp15.i.i757.i, i32 %sub.ptr.sub.i.i760.i, i32 %shr.i.i754.i
  %result.0.i.i762.i = zext i1 %cmp15.i.i757.i to i32
  %idx.neg21.i.i763.i = sub i32 0, %nbBytes.0.i.i761.i
  %add.ptr22.i.i764.i = getelementptr i8, ptr %284, i32 %idx.neg21.i.i763.i
  %288 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %add.ptr22.i.i764.i, ptr %1, align 4
  %mul.neg.i.i765.i = mul i32 %nbBytes.0.i.i761.i, -8
  %sub.i.i766.i = add i32 %mul.neg.i.i765.i, %282
  br label %BIT_reloadDStream.exit.i774.i

BIT_reloadDStream.exit.i774.i:                    ; preds = %if.end11.i.i767.i, %BIT_reloadDStreamFast.exit.i.i751.i
  %and.i.i50.sink.i768.i = phi i32 [ %and.i.i50.i750.i, %BIT_reloadDStreamFast.exit.i.i751.i ], [ %sub.i.i766.i, %if.end11.i.i767.i ]
  %add.ptr.i.i.sink.i769.i = phi ptr [ %add.ptr.i.i.i749.i, %BIT_reloadDStreamFast.exit.i.i751.i ], [ %add.ptr22.i.i764.i, %if.end11.i.i767.i ]
  %retval.0.i.i770.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i751.i ], [ %result.0.i.i762.i, %if.end11.i.i767.i ]
  %289 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %and.i.i50.sink.i768.i, ptr %0, align 4
  %290 = ptrtoint ptr %add.ptr.i.i.sink.i769.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %add.ptr.i.i.sink.i769.i, align 1
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #7
  %293 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %bitD4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i770.i)
  %cmp.i771.i = icmp eq i32 %retval.0.i.i770.i, 0
  %cmp1.i772.i = icmp ult ptr %p.addr.092.i744.i, %add.ptr1.i
  %and1.i773.i = and i1 %cmp1.i772.i, %cmp.i771.i
  br i1 %and1.i773.i, label %while.body.i796.i, label %BIT_reloadDStream.exit.i774.i.while.cond21thread-pre-split.i803.i_crit_edge

BIT_reloadDStream.exit.i774.i.while.cond21thread-pre-split.i803.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i774.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i803.i

while.body.i796.i:                                ; preds = %BIT_reloadDStream.exit.i774.i
  %and.i.i.i775.i = and i32 %and.i.i50.sink.i768.i, 31
  %shl.i.i.i776.i = shl i32 %292, %and.i.i.i775.i
  %shr.i.i.i777.i = lshr i32 %shl.i.i.i776.i, %.pre101.i736.i
  %add.ptr.i.i778.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i777.i
  %294 = ptrtoint ptr %add.ptr.i.i778.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %add.ptr.i.i778.i, align 2
  %296 = ptrtoint ptr %p.addr.092.i744.i to i32
  call void @__asan_storeN_noabort(i32 %296, i32 2)
  store i16 %295, ptr %p.addr.092.i744.i, align 1
  %nbBits.i.i779.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i777.i, i32 1
  %297 = ptrtoint ptr %nbBits.i.i779.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %nbBits.i.i779.i, align 2
  %conv.i.i780.i = zext i8 %298 to i32
  %add.i.i.i781.i = add i32 %and.i.i50.sink.i768.i, %conv.i.i780.i
  %length.i.i782.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i.i777.i, i32 2
  %299 = ptrtoint ptr %length.i.i782.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %length.i.i782.i, align 1
  %conv2.i.i783.i = zext i8 %300 to i32
  %add.ptr11.i784.i = getelementptr i8, ptr %p.addr.092.i744.i, i32 %conv2.i.i783.i
  %and.i.i4.i785.i = and i32 %add.i.i.i781.i, 31
  %shl.i.i5.i786.i = shl i32 %292, %and.i.i4.i785.i
  %shr.i.i8.i787.i = lshr i32 %shl.i.i5.i786.i, %.pre101.i736.i
  %add.ptr.i9.i788.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i787.i
  %301 = ptrtoint ptr %add.ptr.i9.i788.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %add.ptr.i9.i788.i, align 2
  %303 = ptrtoint ptr %add.ptr11.i784.i to i32
  call void @__asan_storeN_noabort(i32 %303, i32 2)
  store i16 %302, ptr %add.ptr11.i784.i, align 1
  %nbBits.i10.i789.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i787.i, i32 1
  %304 = ptrtoint ptr %nbBits.i10.i789.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %nbBits.i10.i789.i, align 2
  %conv.i11.i790.i = zext i8 %305 to i32
  %add.i.i12.i791.i = add i32 %add.i.i.i781.i, %conv.i11.i790.i
  %306 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %add.i.i12.i791.i, ptr %0, align 4
  %length.i13.i792.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i8.i787.i, i32 2
  %307 = ptrtoint ptr %length.i13.i792.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %length.i13.i792.i, align 1
  %conv2.i14.i793.i = zext i8 %308 to i32
  %add.ptr20.i794.i = getelementptr i8, ptr %add.ptr11.i784.i, i32 %conv2.i14.i793.i
  %cmp.i48.i795.i = icmp ugt i32 %add.i.i12.i791.i, 32
  br i1 %cmp.i48.i795.i, label %while.body.i796.i.while.cond21thread-pre-split.i803.i_crit_edge, label %while.body.i796.i.if.end.i.i746.i_crit_edge

while.body.i796.i.if.end.i.i746.i_crit_edge:      ; preds = %while.body.i796.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i746.i

while.body.i796.i.while.cond21thread-pre-split.i803.i_crit_edge: ; preds = %while.body.i796.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond21thread-pre-split.i803.i

while.cond21thread-pre-split.i803.i:              ; preds = %while.body.i796.i.while.cond21thread-pre-split.i803.i_crit_edge, %BIT_reloadDStream.exit.i774.i.while.cond21thread-pre-split.i803.i_crit_edge, %if.end3.i.i753.i.while.cond21thread-pre-split.i803.i_crit_edge
  %p.addr.0.lcssa.i798.ph.i = phi ptr [ %p.addr.092.i744.i, %if.end3.i.i753.i.while.cond21thread-pre-split.i803.i_crit_edge ], [ %p.addr.092.i744.i, %BIT_reloadDStream.exit.i774.i.while.cond21thread-pre-split.i803.i_crit_edge ], [ %add.ptr20.i794.i, %while.body.i796.i.while.cond21thread-pre-split.i803.i_crit_edge ]
  %309 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %309)
  %.pr.i799.pr.i = load i32, ptr %0, align 4
  %add.ptr25.i800.i = getelementptr i8, ptr %add.ptr.i, i32 -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr.i799.pr.i)
  %cmp.i54.i8051346.i = icmp ugt i32 %.pr.i799.pr.i, 32
  br i1 %cmp.i54.i8051346.i, label %while.cond21thread-pre-split.i803.i.while.cond34.preheader.i838.i_crit_edge, label %while.cond21thread-pre-split.i803.i.if.end.i58.i808.i_crit_edge

while.cond21thread-pre-split.i803.i.if.end.i58.i808.i_crit_edge: ; preds = %while.cond21thread-pre-split.i803.i
  br label %if.end.i58.i808.i

while.cond21thread-pre-split.i803.i.while.cond34.preheader.i838.i_crit_edge: ; preds = %while.cond21thread-pre-split.i803.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i838.i

if.end.i58.i808.i:                                ; preds = %while.body30.i849.i.if.end.i58.i808.i_crit_edge, %while.cond21thread-pre-split.i803.i.if.end.i58.i808.i_crit_edge
  %p.addr.3.i8041347.i = phi ptr [ %add.ptr32.i848.i, %while.body30.i849.i.if.end.i58.i808.i_crit_edge ], [ %p.addr.0.lcssa.i798.ph.i, %while.cond21thread-pre-split.i803.i.if.end.i58.i808.i_crit_edge ]
  %310 = phi i32 [ %add.i.i24.i845.i, %while.body30.i849.i.if.end.i58.i808.i_crit_edge ], [ %.pr.i799.pr.i, %while.cond21thread-pre-split.i803.i.if.end.i58.i808.i_crit_edge ]
  %311 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %1, align 4
  %313 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %3, align 4
  %cmp1.not.i57.i807.i = icmp ult ptr %312, %314
  br i1 %cmp1.not.i57.i807.i, label %if.end3.i66.i815.i, label %BIT_reloadDStreamFast.exit.i63.i813.i

BIT_reloadDStreamFast.exit.i63.i813.i:            ; preds = %if.end.i58.i808.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i59.i809.i = lshr i32 %310, 3
  %idx.neg.i.i60.i810.i = sub nsw i32 0, %shr.i.i59.i809.i
  %add.ptr.i.i61.i811.i = getelementptr i8, ptr %312, i32 %idx.neg.i.i60.i810.i
  %315 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %add.ptr.i.i61.i811.i, ptr %1, align 4
  %and.i.i62.i812.i = and i32 %310, 7
  br label %BIT_reloadDStream.exit85.i836.i

if.end3.i66.i815.i:                               ; preds = %if.end.i58.i808.i
  %316 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %2, align 4
  %cmp5.i65.i814.i = icmp eq ptr %312, %317
  br i1 %cmp5.i65.i814.i, label %if.end3.i66.i815.i.while.cond34.preheader.i838.i_crit_edge, label %if.end11.i83.i829.i

if.end3.i66.i815.i.while.cond34.preheader.i838.i_crit_edge: ; preds = %if.end3.i66.i815.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i838.i

if.end11.i83.i829.i:                              ; preds = %if.end3.i66.i815.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i70.i816.i = lshr i32 %310, 3
  %idx.neg.i71.i817.i = sub nsw i32 0, %shr.i70.i816.i
  %add.ptr.i72.i818.i = getelementptr i8, ptr %312, i32 %idx.neg.i71.i817.i
  %cmp15.i73.i819.i = icmp ult ptr %add.ptr.i72.i818.i, %317
  %sub.ptr.lhs.cast.i74.i820.i = ptrtoint ptr %312 to i32
  %sub.ptr.rhs.cast.i75.i821.i = ptrtoint ptr %317 to i32
  %sub.ptr.sub.i76.i822.i = sub i32 %sub.ptr.lhs.cast.i74.i820.i, %sub.ptr.rhs.cast.i75.i821.i
  %nbBytes.0.i77.i823.i = select i1 %cmp15.i73.i819.i, i32 %sub.ptr.sub.i76.i822.i, i32 %shr.i70.i816.i
  %result.0.i78.i824.i = zext i1 %cmp15.i73.i819.i to i32
  %idx.neg21.i79.i825.i = sub i32 0, %nbBytes.0.i77.i823.i
  %add.ptr22.i80.i826.i = getelementptr i8, ptr %312, i32 %idx.neg21.i79.i825.i
  %318 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %add.ptr22.i80.i826.i, ptr %1, align 4
  %mul.neg.i81.i827.i = mul i32 %nbBytes.0.i77.i823.i, -8
  %sub.i82.i828.i = add i32 %mul.neg.i81.i827.i, %310
  br label %BIT_reloadDStream.exit85.i836.i

BIT_reloadDStream.exit85.i836.i:                  ; preds = %if.end11.i83.i829.i, %BIT_reloadDStreamFast.exit.i63.i813.i
  %and.i.i62.sink.i830.i = phi i32 [ %and.i.i62.i812.i, %BIT_reloadDStreamFast.exit.i63.i813.i ], [ %sub.i82.i828.i, %if.end11.i83.i829.i ]
  %add.ptr.i.i61.sink.i831.i = phi ptr [ %add.ptr.i.i61.i811.i, %BIT_reloadDStreamFast.exit.i63.i813.i ], [ %add.ptr22.i80.i826.i, %if.end11.i83.i829.i ]
  %retval.0.i84.i832.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i63.i813.i ], [ %result.0.i78.i824.i, %if.end11.i83.i829.i ]
  %319 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %and.i.i62.sink.i830.i, ptr %0, align 4
  %320 = ptrtoint ptr %add.ptr.i.i61.sink.i831.i to i32
  call void @__asan_loadN_noabort(i32 %320, i32 4)
  %321 = load i32, ptr %add.ptr.i.i61.sink.i831.i, align 1
  %322 = tail call i32 @llvm.bswap.i32(i32 %321) #7
  %323 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %bitD4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i84.i832.i)
  %cmp23.i833.i = icmp eq i32 %retval.0.i84.i832.i, 0
  %cmp26.i834.i = icmp ule ptr %p.addr.3.i8041347.i, %add.ptr25.i800.i
  %and282.i835.i = and i1 %cmp26.i834.i, %cmp23.i833.i
  br i1 %and282.i835.i, label %while.body30.i849.i, label %BIT_reloadDStream.exit85.i836.i.while.cond34.preheader.i838.i_crit_edge

BIT_reloadDStream.exit85.i836.i.while.cond34.preheader.i838.i_crit_edge: ; preds = %BIT_reloadDStream.exit85.i836.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i838.i

while.cond34.preheader.i838.i:                    ; preds = %while.body30.i849.i.while.cond34.preheader.i838.i_crit_edge, %BIT_reloadDStream.exit85.i836.i.while.cond34.preheader.i838.i_crit_edge, %if.end3.i66.i815.i.while.cond34.preheader.i838.i_crit_edge, %while.cond21thread-pre-split.i803.i.while.cond34.preheader.i838.i_crit_edge, %while.cond21thread-pre-split.i803.thread.i
  %add.ptr25.i8001435.i = phi ptr [ %add.ptr25.i800.i, %while.cond21thread-pre-split.i803.i.while.cond34.preheader.i838.i_crit_edge ], [ %add.ptr25.i8001431.i, %while.cond21thread-pre-split.i803.thread.i ], [ %add.ptr25.i800.i, %if.end3.i66.i815.i.while.cond34.preheader.i838.i_crit_edge ], [ %add.ptr25.i800.i, %BIT_reloadDStream.exit85.i836.i.while.cond34.preheader.i838.i_crit_edge ], [ %add.ptr25.i800.i, %while.body30.i849.i.while.cond34.preheader.i838.i_crit_edge ]
  %p.addr.3.i804.lcssa.i = phi ptr [ %p.addr.0.lcssa.i798.ph.i, %while.cond21thread-pre-split.i803.i.while.cond34.preheader.i838.i_crit_edge ], [ %op4.0.lcssa.i, %while.cond21thread-pre-split.i803.thread.i ], [ %add.ptr32.i848.i, %while.body30.i849.i.while.cond34.preheader.i838.i_crit_edge ], [ %p.addr.3.i8041347.i, %BIT_reloadDStream.exit85.i836.i.while.cond34.preheader.i838.i_crit_edge ], [ %p.addr.3.i8041347.i, %if.end3.i66.i815.i.while.cond34.preheader.i838.i_crit_edge ]
  %cmp36.not98.i837.i = icmp ugt ptr %p.addr.3.i804.lcssa.i, %add.ptr25.i8001435.i
  br i1 %cmp36.not98.i837.i, label %while.cond34.preheader.i838.i.while.end41.i865.i_crit_edge, label %while.cond34.preheader.i838.i.while.body38.i862.i_crit_edge

while.cond34.preheader.i838.i.while.body38.i862.i_crit_edge: ; preds = %while.cond34.preheader.i838.i
  br label %while.body38.i862.i

while.cond34.preheader.i838.i.while.end41.i865.i_crit_edge: ; preds = %while.cond34.preheader.i838.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i865.i

while.body30.i849.i:                              ; preds = %BIT_reloadDStream.exit85.i836.i
  %and.i.i16.i839.i = and i32 %and.i.i62.sink.i830.i, 31
  %shl.i.i17.i840.i = shl i32 %322, %and.i.i16.i839.i
  %shr.i.i20.i841.i = lshr i32 %shl.i.i17.i840.i, %.pre101.i736.i
  %add.ptr.i21.i842.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i841.i
  %324 = ptrtoint ptr %add.ptr.i21.i842.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %add.ptr.i21.i842.i, align 2
  %326 = ptrtoint ptr %p.addr.3.i8041347.i to i32
  call void @__asan_storeN_noabort(i32 %326, i32 2)
  store i16 %325, ptr %p.addr.3.i8041347.i, align 1
  %nbBits.i22.i843.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i841.i, i32 1
  %327 = ptrtoint ptr %nbBits.i22.i843.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %nbBits.i22.i843.i, align 2
  %conv.i23.i844.i = zext i8 %328 to i32
  %329 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %0, align 4
  %add.i.i24.i845.i = add i32 %330, %conv.i23.i844.i
  store i32 %add.i.i24.i845.i, ptr %0, align 4
  %length.i25.i846.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i20.i841.i, i32 2
  %331 = ptrtoint ptr %length.i25.i846.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %length.i25.i846.i, align 1
  %conv2.i26.i847.i = zext i8 %332 to i32
  %add.ptr32.i848.i = getelementptr i8, ptr %p.addr.3.i8041347.i, i32 %conv2.i26.i847.i
  %cmp.i54.i805.i = icmp ugt i32 %add.i.i24.i845.i, 32
  br i1 %cmp.i54.i805.i, label %while.body30.i849.i.while.cond34.preheader.i838.i_crit_edge, label %while.body30.i849.i.if.end.i58.i808.i_crit_edge

while.body30.i849.i.if.end.i58.i808.i_crit_edge:  ; preds = %while.body30.i849.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i58.i808.i

while.body30.i849.i.while.cond34.preheader.i838.i_crit_edge: ; preds = %while.body30.i849.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond34.preheader.i838.i

while.body38.i862.i:                              ; preds = %while.body38.i862.i.while.body38.i862.i_crit_edge, %while.cond34.preheader.i838.i.while.body38.i862.i_crit_edge
  %p.addr.499.i850.i = phi ptr [ %add.ptr40.i860.i, %while.body38.i862.i.while.body38.i862.i_crit_edge ], [ %p.addr.3.i804.lcssa.i, %while.cond34.preheader.i838.i.while.body38.i862.i_crit_edge ]
  %333 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %bitD4.i, align 4
  %335 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %0, align 4
  %and.i.i28.i851.i = and i32 %336, 31
  %shl.i.i29.i852.i = shl i32 %334, %and.i.i28.i851.i
  %shr.i.i32.i853.i = lshr i32 %shl.i.i29.i852.i, %.pre101.i736.i
  %add.ptr.i33.i854.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i853.i
  %337 = ptrtoint ptr %add.ptr.i33.i854.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %add.ptr.i33.i854.i, align 2
  %339 = ptrtoint ptr %p.addr.499.i850.i to i32
  call void @__asan_storeN_noabort(i32 %339, i32 2)
  store i16 %338, ptr %p.addr.499.i850.i, align 1
  %nbBits.i34.i855.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i853.i, i32 1
  %340 = ptrtoint ptr %nbBits.i34.i855.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %nbBits.i34.i855.i, align 2
  %conv.i35.i856.i = zext i8 %341 to i32
  %342 = load i32, ptr %0, align 4
  %add.i.i36.i857.i = add i32 %342, %conv.i35.i856.i
  store i32 %add.i.i36.i857.i, ptr %0, align 4
  %length.i37.i858.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i32.i853.i, i32 2
  %343 = ptrtoint ptr %length.i37.i858.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %length.i37.i858.i, align 1
  %conv2.i38.i859.i = zext i8 %344 to i32
  %add.ptr40.i860.i = getelementptr i8, ptr %p.addr.499.i850.i, i32 %conv2.i38.i859.i
  %cmp36.not.i861.i = icmp ugt ptr %add.ptr40.i860.i, %add.ptr25.i8001435.i
  br i1 %cmp36.not.i861.i, label %while.body38.i862.i.while.end41.i865.i_crit_edge, label %while.body38.i862.i.while.body38.i862.i_crit_edge

while.body38.i862.i.while.body38.i862.i_crit_edge: ; preds = %while.body38.i862.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body38.i862.i

while.body38.i862.i.while.end41.i865.i_crit_edge: ; preds = %while.body38.i862.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end41.i865.i

while.end41.i865.i:                               ; preds = %while.body38.i862.i.while.end41.i865.i_crit_edge, %while.cond34.preheader.i838.i.while.end41.i865.i_crit_edge
  %p.addr.4.lcssa.i863.i = phi ptr [ %p.addr.3.i804.lcssa.i, %while.cond34.preheader.i838.i.while.end41.i865.i_crit_edge ], [ %add.ptr40.i860.i, %while.body38.i862.i.while.end41.i865.i_crit_edge ]
  %cmp42.i864.i = icmp ult ptr %p.addr.4.lcssa.i863.i, %add.ptr.i
  br i1 %cmp42.i864.i, label %if.then44.i872.i, label %while.end41.i865.i.HUF_decodeStreamX2.exit885.i_crit_edge

while.end41.i865.i.HUF_decodeStreamX2.exit885.i_crit_edge: ; preds = %while.end41.i865.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit885.i

if.then44.i872.i:                                 ; preds = %while.end41.i865.i
  %345 = ptrtoint ptr %bitD4.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %bitD4.i, align 4
  %347 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %0, align 4
  %and.i.i39.i866.i = and i32 %348, 31
  %shl.i.i40.i867.i = shl i32 %346, %and.i.i39.i866.i
  %shr.i.i43.i868.i = lshr i32 %shl.i.i40.i867.i, %.pre101.i736.i
  %add.ptr.i44.i869.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i868.i
  %349 = ptrtoint ptr %add.ptr.i44.i869.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %add.ptr.i44.i869.i, align 2
  %351 = ptrtoint ptr %p.addr.4.lcssa.i863.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %p.addr.4.lcssa.i863.i, align 1
  %length.i45.i870.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i868.i, i32 2
  %352 = ptrtoint ptr %length.i45.i870.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %length.i45.i870.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %353)
  %cmp.i.i871.i = icmp eq i8 %353, 1
  br i1 %cmp.i.i871.i, label %if.then.i.i876.i, label %if.else.i.i878.i

if.then.i.i876.i:                                 ; preds = %if.then44.i872.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits.i46.i873.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i868.i, i32 1
  %354 = ptrtoint ptr %nbBits.i46.i873.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %nbBits.i46.i873.i, align 2
  %conv3.i.i874.i = zext i8 %355 to i32
  %356 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %0, align 4
  %add.i.i47.i875.i = add i32 %357, %conv3.i.i874.i
  br label %if.end16.sink.split.i.i884.i

if.else.i.i878.i:                                 ; preds = %if.then44.i872.i
  %358 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %359)
  %cmp4.i.i877.i = icmp ult i32 %359, 32
  br i1 %cmp4.i.i877.i, label %if.then6.i.i882.i, label %if.else.i.i878.i.HUF_decodeStreamX2.exit885.i_crit_edge

if.else.i.i878.i.HUF_decodeStreamX2.exit885.i_crit_edge: ; preds = %if.else.i.i878.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decodeStreamX2.exit885.i

if.then6.i.i882.i:                                ; preds = %if.else.i.i878.i
  call void @__sanitizer_cov_trace_pc() #9
  %nbBits8.i.i879.i = getelementptr %struct.HUF_DEltX2, ptr %add.ptr2.i, i32 %shr.i.i43.i868.i, i32 1
  %360 = ptrtoint ptr %nbBits8.i.i879.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %nbBits8.i.i879.i, align 2
  %conv9.i.i880.i = zext i8 %361 to i32
  %add.i2.i.i881.i = add nuw nsw i32 %359, %conv9.i.i880.i
  %362 = tail call i32 @llvm.umin.i32(i32 %add.i2.i.i881.i, i32 32) #7
  br label %if.end16.sink.split.i.i884.i

if.end16.sink.split.i.i884.i:                     ; preds = %if.then6.i.i882.i, %if.then.i.i876.i
  %.sink.i.i883.i = phi i32 [ %362, %if.then6.i.i882.i ], [ %add.i.i47.i875.i, %if.then.i.i876.i ]
  %363 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %.sink.i.i883.i, ptr %0, align 4
  br label %HUF_decodeStreamX2.exit885.i

HUF_decodeStreamX2.exit885.i:                     ; preds = %if.end16.sink.split.i.i884.i, %if.else.i.i878.i.HUF_decodeStreamX2.exit885.i_crit_edge, %while.end41.i865.i.HUF_decodeStreamX2.exit885.i_crit_edge
  %cmp.i1032.i = icmp eq ptr %bitD1.sroa.53.8.i, %add.ptr11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD1.sroa.20.9.i)
  %cmp1.i1034.i = icmp eq i32 %bitD1.sroa.20.9.i, 32
  %narrow.i = select i1 %cmp.i1032.i, i1 %cmp1.i1034.i, i1 false
  %cmp.i1037.i = icmp eq ptr %bitD2.sroa.53.8.i, %add.ptr12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD2.sroa.20.9.i)
  %cmp1.i1039.i = icmp eq i32 %bitD2.sroa.20.9.i, 32
  %narrow1256.i = select i1 %cmp.i1037.i, i1 %cmp1.i1039.i, i1 false
  %and1751257.i = and i1 %narrow.i, %narrow1256.i
  %cmp.i1045.i = icmp eq ptr %bitD3.sroa.53.8.i, %add.ptr13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitD3.sroa.20.9.i)
  %cmp1.i1047.i = icmp eq i32 %bitD3.sroa.20.9.i, 32
  %narrow1258.i = select i1 %cmp.i1045.i, i1 %cmp1.i1047.i, i1 false
  %and1771259.i = and i1 %and1751257.i, %narrow1258.i
  %and177.i = zext i1 %and1771259.i to i32
  %364 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %1, align 4
  %366 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %2, align 4
  %cmp.i1053.i = icmp eq ptr %365, %367
  br i1 %cmp.i1053.i, label %land.rhs.i1057.i, label %HUF_decodeStreamX2.exit885.i.BIT_endOfDStream.exit1058.i_crit_edge

HUF_decodeStreamX2.exit885.i.BIT_endOfDStream.exit1058.i_crit_edge: ; preds = %HUF_decodeStreamX2.exit885.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BIT_endOfDStream.exit1058.i

land.rhs.i1057.i:                                 ; preds = %HUF_decodeStreamX2.exit885.i
  call void @__sanitizer_cov_trace_pc() #9
  %368 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %369)
  %cmp1.i1055.i = icmp eq i32 %369, 32
  %phi.cast.i1056.i = zext i1 %cmp1.i1055.i to i32
  br label %BIT_endOfDStream.exit1058.i

BIT_endOfDStream.exit1058.i:                      ; preds = %land.rhs.i1057.i, %HUF_decodeStreamX2.exit885.i.BIT_endOfDStream.exit1058.i_crit_edge
  %370 = phi i32 [ 0, %HUF_decodeStreamX2.exit885.i.BIT_endOfDStream.exit1058.i_crit_edge ], [ %phi.cast.i1056.i, %land.rhs.i1057.i ]
  %and179.i = and i32 %370, %and177.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  %spec.select.i = select i1 %tobool180.not.i, i32 -20, i32 %dstSize
  br label %cleanup186.i

cleanup186.i:                                     ; preds = %BIT_endOfDStream.exit1058.i, %for.end.i.cleanup186.i_crit_edge, %cleanup.cont46.i.cleanup186.i_crit_edge, %sw.epilog.i976.i.cleanup186.i_crit_edge, %if.then3.i953.i.cleanup186.i_crit_edge, %cleanup.cont37.i.cleanup186.i_crit_edge, %sw.epilog.i927.i.cleanup186.i_crit_edge, %if.then3.i904.i.cleanup186.i_crit_edge, %cleanup.cont.i.cleanup186.i_crit_edge, %sw.epilog.i.i.cleanup186.i_crit_edge, %if.then3.i.i.cleanup186.i_crit_edge, %if.end24.i.cleanup186.i_crit_edge, %if.end.i.cleanup186.i_crit_edge
  %retval.5.i = phi i32 [ %call48.i, %cleanup.cont46.i.cleanup186.i_crit_edge ], [ -20, %if.end.i.cleanup186.i_crit_edge ], [ -20, %for.end.i.cleanup186.i_crit_edge ], [ %spec.select.i, %BIT_endOfDStream.exit1058.i ], [ -20, %sw.epilog.i.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i.i.cleanup186.i_crit_edge ], [ -72, %if.end24.i.cleanup186.i_crit_edge ], [ -20, %sw.epilog.i927.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i904.i.cleanup186.i_crit_edge ], [ -72, %cleanup.cont.i.cleanup186.i_crit_edge ], [ -20, %sw.epilog.i976.i.cleanup186.i_crit_edge ], [ -1, %if.then3.i953.i.cleanup186.i_crit_edge ], [ -72, %cleanup.cont37.i.cleanup186.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bitD4.i) #7
  br label %HUF_decompress4X2_usingDTable_internal_body.exit

HUF_decompress4X2_usingDTable_internal_body.exit: ; preds = %cleanup186.i, %entry.HUF_decompress4X2_usingDTable_internal_body.exit_crit_edge
  %retval.6.i = phi i32 [ %retval.5.i, %cleanup186.i ], [ -20, %entry.HUF_decompress4X2_usingDTable_internal_body.exit_crit_edge ]
  ret i32 %retval.6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X2_DCtx_wksp(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i.i, label %if.end.i, label %entry.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge

entry.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X2_DCtx_wksp_bmi2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %cSrcSize)
  %cmp.not.i = icmp ult i32 %call.i, %cSrcSize
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge

if.end.i.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_decompress4X2_DCtx_wksp_bmi2.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %cSrc, i32 %call.i
  %sub.i = sub i32 %cSrcSize, %call.i
  %call4.i = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %dctx) #7
  br label %HUF_decompress4X2_DCtx_wksp_bmi2.exit

HUF_decompress4X2_DCtx_wksp_bmi2.exit:            ; preds = %if.end3.i, %if.end.i.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge, %entry.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %call.i, %entry.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge ], [ -72, %if.end.i.HUF_decompress4X2_DCtx_wksp_bmi2.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_usingDTable(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %tobool.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_usingDTable(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %tobool.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_selectDecoder(i32 noundef %dstSize, i32 noundef %cSrcSize) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp.not = icmp ult i32 %cSrcSize, %dstSize
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %cSrcSize, 4
  %div = udiv i32 %mul, %dstSize
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 15, %entry.cond.end_crit_edge ]
  %shr = lshr i32 %dstSize, 8
  %arrayidx = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %decode256Time = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %decode256Time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decode256Time, align 4
  %mul4 = mul i32 %3, %shr
  %add = add i32 %mul4, %1
  %arrayidx6 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %decode256Time10 = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond, i32 1, i32 1
  %6 = ptrtoint ptr %decode256Time10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %decode256Time10, align 4
  %mul11 = mul i32 %7, %shr
  %add12 = add i32 %mul11, %5
  %shr13 = lshr i32 %add12, 3
  %add14 = add i32 %shr13, %add12
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %add)
  %cmp15 = icmp ult i32 %add14, %add
  %conv = zext i1 %cmp15 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_hufOnly_wksp(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstSize)
  %cmp = icmp eq i32 %dstSize, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cSrcSize)
  %cmp1 = icmp eq i32 %cSrcSize, 0
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp.not.i = icmp ult i32 %cSrcSize, %dstSize
  br i1 %cmp.not.i, label %cond.false.i, label %if.end3.HUF_selectDecoder.exit_crit_edge

if.end3.HUF_selectDecoder.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_selectDecoder.exit

cond.false.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %cSrcSize, 4
  %div.i = udiv i32 %mul.i, %dstSize
  br label %HUF_selectDecoder.exit

HUF_selectDecoder.exit:                           ; preds = %cond.false.i, %if.end3.HUF_selectDecoder.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.false.i ], [ 15, %if.end3.HUF_selectDecoder.exit_crit_edge ]
  %shr.i = lshr i32 %dstSize, 8
  %arrayidx.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %decode256Time.i = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx.i, i32 0, i32 1
  %2 = ptrtoint ptr %decode256Time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decode256Time.i, align 4
  %mul4.i = mul i32 %3, %shr.i
  %add.i = add i32 %mul4.i, %1
  %arrayidx6.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  %decode256Time10.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1, i32 1
  %6 = ptrtoint ptr %decode256Time10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %decode256Time10.i, align 4
  %mul11.i = mul i32 %7, %shr.i
  %add12.i = add i32 %mul11.i, %5
  %shr13.i = lshr i32 %add12.i, 3
  %add14.i = add i32 %shr13.i, %add12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %add.i)
  %cmp15.i.not = icmp ult i32 %add14.i, %add.i
  br i1 %cmp15.i.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %HUF_selectDecoder.exit
  %call.i.i = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i, -119
  br i1 %cmp.i.i.i, label %if.end.i.i, label %cond.true.return_crit_edge

cond.true.return_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %cSrcSize)
  %cmp.not.i.i = icmp ult i32 %call.i.i, %cSrcSize
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %cSrc, i32 %call.i.i
  %sub.i.i = sub i32 %cSrcSize, %call.i.i
  %call4.i.i = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef %dctx) #7
  br label %return

cond.false:                                       ; preds = %HUF_selectDecoder.exit
  %call.i.i17 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i17)
  %cmp.i.i.i18 = icmp ult i32 %call.i.i17, -119
  br i1 %cmp.i.i.i18, label %if.end.i.i20, label %cond.false.return_crit_edge

cond.false.return_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i20:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i17, i32 %cSrcSize)
  %cmp.not.i.i19 = icmp ult i32 %call.i.i17, %cSrcSize
  br i1 %cmp.not.i.i19, label %if.end3.i.i24, label %if.end.i.i20.return_crit_edge

if.end.i.i20.return_crit_edge:                    ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i.i24:                                    ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i21 = getelementptr i8, ptr %cSrc, i32 %call.i.i17
  %sub.i.i22 = sub i32 %cSrcSize, %call.i.i17
  %call4.i.i23 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i.i21, i32 noundef %sub.i.i22, ptr noundef %dctx) #7
  br label %return

return:                                           ; preds = %if.end3.i.i24, %if.end.i.i20.return_crit_edge, %cond.false.return_crit_edge, %if.end3.i.i, %if.end.i.i.return_crit_edge, %cond.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -70, %entry.return_crit_edge ], [ -20, %if.end.return_crit_edge ], [ %call4.i.i, %if.end3.i.i ], [ %call.i.i, %cond.true.return_crit_edge ], [ -72, %if.end.i.i.return_crit_edge ], [ %call4.i.i23, %if.end3.i.i24 ], [ %call.i.i17, %cond.false.return_crit_edge ], [ -72, %if.end.i.i20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_DCtx_wksp(ptr nocapture noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstSize)
  %cmp = icmp eq i32 %dstSize, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp1 = icmp ugt i32 %cSrcSize, %dstSize
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp4 = icmp eq i32 %cSrcSize, %dstSize
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memcpy(ptr %dst, ptr %cSrc, i32 %dstSize)
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cSrcSize)
  %cmp7 = icmp eq i32 %cSrcSize, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %cSrc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cSrc, align 1
  %3 = zext i8 %2 to i32
  %4 = call ptr @memset(ptr %dst, i32 %3, i32 %dstSize)
  br label %return

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp.not.i = icmp ult i32 %cSrcSize, %dstSize
  br i1 %cmp.not.i, label %cond.false.i, label %if.end9.HUF_selectDecoder.exit_crit_edge

if.end9.HUF_selectDecoder.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_selectDecoder.exit

cond.false.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %cSrcSize, 4
  %div.i = udiv i32 %mul.i, %dstSize
  br label %HUF_selectDecoder.exit

HUF_selectDecoder.exit:                           ; preds = %cond.false.i, %if.end9.HUF_selectDecoder.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.false.i ], [ 15, %if.end9.HUF_selectDecoder.exit_crit_edge ]
  %shr.i = lshr i32 %dstSize, 8
  %arrayidx.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %decode256Time.i = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx.i, i32 0, i32 1
  %7 = ptrtoint ptr %decode256Time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %decode256Time.i, align 4
  %mul4.i = mul i32 %8, %shr.i
  %add.i = add i32 %mul4.i, %6
  %arrayidx6.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  %decode256Time10.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1, i32 1
  %11 = ptrtoint ptr %decode256Time10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %decode256Time10.i, align 4
  %mul11.i = mul i32 %12, %shr.i
  %add12.i = add i32 %mul11.i, %10
  %shr13.i = lshr i32 %add12.i, 3
  %add14.i = add i32 %shr13.i, %add12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %add.i)
  %cmp15.i.not = icmp ult i32 %add14.i, %add.i
  br i1 %cmp15.i.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %HUF_selectDecoder.exit
  %call.i = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i.i, label %if.end.i, label %cond.true.return_crit_edge

cond.true.return_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %cSrcSize)
  %cmp.not.i35 = icmp ult i32 %call.i, %cSrcSize
  br i1 %cmp.not.i35, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %cSrc, i32 %call.i
  %sub.i = sub i32 %cSrcSize, %call.i
  %call4.i = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %dctx) #7
  br label %return

cond.false:                                       ; preds = %HUF_selectDecoder.exit
  %call.i.i = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i.i36 = icmp ult i32 %call.i.i, -119
  br i1 %cmp.i.i36, label %if.end.i38, label %cond.false.return_crit_edge

cond.false.return_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i38:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %cSrcSize)
  %cmp.not.i37 = icmp ult i32 %call.i.i, %cSrcSize
  br i1 %cmp.not.i37, label %if.end3.i42, label %if.end.i38.return_crit_edge

if.end.i38.return_crit_edge:                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i42:                                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i39 = getelementptr i8, ptr %cSrc, i32 %call.i.i
  %sub.i40 = sub i32 %cSrcSize, %call.i.i
  %call4.i41 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i39, i32 noundef %sub.i40, ptr noundef %dctx) #7
  br label %return

return:                                           ; preds = %if.end3.i42, %if.end.i38.return_crit_edge, %cond.false.return_crit_edge, %if.end3.i, %if.end.i.return_crit_edge, %cond.true.return_crit_edge, %if.then8, %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %dstSize, %if.then5 ], [ %dstSize, %if.then8 ], [ -70, %entry.return_crit_edge ], [ -20, %if.end.return_crit_edge ], [ %call4.i, %if.end3.i ], [ %call.i, %cond.true.return_crit_edge ], [ -72, %if.end.i.return_crit_edge ], [ %call4.i41, %if.end3.i42 ], [ %call.i.i, %cond.false.return_crit_edge ], [ -72, %if.end.i38.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %DTable, i32 noundef %bmi2) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %tobool.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @HUF_decompress1X2_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr nocapture noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef %bmi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef %bmi2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %cSrcSize)
  %cmp.not = icmp ult i32 %call, %cSrcSize
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %cSrc, i32 %call
  %sub = sub i32 %cSrcSize, %call
  %call4 = tail call fastcc i32 @HUF_decompress1X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %dctx)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable, i32 noundef %bmi2) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %retval.sroa.3.0.table.addr.0..sroa_idx.i = getelementptr inbounds i8, ptr %DTable, i32 1
  %0 = ptrtoint ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %retval.sroa.3.0.copyload.i = load i8, ptr %retval.sroa.3.0.table.addr.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.sroa.3.0.copyload.i)
  %tobool.not = icmp eq i8 %retval.sroa.3.0.copyload.i, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %DTable)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef %bmi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstSize)
  %cmp = icmp eq i32 %dstSize, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cSrcSize)
  %cmp1 = icmp eq i32 %cSrcSize, 0
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cSrcSize, i32 %dstSize)
  %cmp.not.i = icmp ult i32 %cSrcSize, %dstSize
  br i1 %cmp.not.i, label %cond.false.i, label %if.end3.HUF_selectDecoder.exit_crit_edge

if.end3.HUF_selectDecoder.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %HUF_selectDecoder.exit

cond.false.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %cSrcSize, 4
  %div.i = udiv i32 %mul.i, %dstSize
  br label %HUF_selectDecoder.exit

HUF_selectDecoder.exit:                           ; preds = %cond.false.i, %if.end3.HUF_selectDecoder.exit_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.false.i ], [ 15, %if.end3.HUF_selectDecoder.exit_crit_edge ]
  %shr.i = lshr i32 %dstSize, 8
  %arrayidx.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %decode256Time.i = getelementptr inbounds %struct.algo_time_t, ptr %arrayidx.i, i32 0, i32 1
  %2 = ptrtoint ptr %decode256Time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decode256Time.i, align 4
  %mul4.i = mul i32 %3, %shr.i
  %add.i = add i32 %mul4.i, %1
  %arrayidx6.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  %decode256Time10.i = getelementptr [16 x [3 x %struct.algo_time_t]], ptr @algoTime, i32 0, i32 %cond.i, i32 1, i32 1
  %6 = ptrtoint ptr %decode256Time10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %decode256Time10.i, align 4
  %mul11.i = mul i32 %7, %shr.i
  %add12.i = add i32 %mul11.i, %5
  %shr13.i = lshr i32 %add12.i, 3
  %add14.i = add i32 %shr13.i, %add12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %add.i)
  %cmp15.i.not = icmp ult i32 %add14.i, %add.i
  br i1 %cmp15.i.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %HUF_selectDecoder.exit
  %call.i = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i.i, label %if.end.i, label %cond.true.return_crit_edge

cond.true.return_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %cSrcSize)
  %cmp.not.i18 = icmp ult i32 %call.i, %cSrcSize
  br i1 %cmp.not.i18, label %if.end3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %cSrc, i32 %call.i
  %sub.i = sub i32 %cSrcSize, %call.i
  %call4.i = tail call fastcc i32 @HUF_decompress4X2_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %dctx) #7
  br label %return

cond.false:                                       ; preds = %HUF_selectDecoder.exit
  %call.i19 = tail call i32 @HUF_readDTableX1_wksp_bmi2(ptr noundef %dctx, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef %bmi2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i19)
  %cmp.i.i20 = icmp ult i32 %call.i19, -119
  br i1 %cmp.i.i20, label %if.end.i22, label %cond.false.return_crit_edge

cond.false.return_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i22:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i19, i32 %cSrcSize)
  %cmp.not.i21 = icmp ult i32 %call.i19, %cSrcSize
  br i1 %cmp.not.i21, label %if.end3.i26, label %if.end.i22.return_crit_edge

if.end.i22.return_crit_edge:                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i26:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i23 = getelementptr i8, ptr %cSrc, i32 %call.i19
  %sub.i24 = sub i32 %cSrcSize, %call.i19
  %call4.i25 = tail call fastcc i32 @HUF_decompress4X1_usingDTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %add.ptr.i23, i32 noundef %sub.i24, ptr noundef %dctx) #7
  br label %return

return:                                           ; preds = %if.end3.i26, %if.end.i22.return_crit_edge, %cond.false.return_crit_edge, %if.end3.i, %if.end.i.return_crit_edge, %cond.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -70, %entry.return_crit_edge ], [ -20, %if.end.return_crit_edge ], [ %call4.i, %if.end3.i ], [ %call.i, %cond.true.return_crit_edge ], [ -72, %if.end.i.return_crit_edge ], [ %call4.i25, %if.end3.i26 ], [ %call.i19, %cond.false.return_crit_edge ], [ -72, %if.end.i22.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @BIT_initDStream(ptr nocapture noundef %bitD, ptr noundef %srcBuffer, i32 noundef %srcSize) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp = icmp eq i32 %srcSize, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memset(ptr %bitD, i32 0, i32 20)
  br label %return

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 3
  %1 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %srcBuffer, ptr %start, align 4
  %add.ptr = getelementptr i8, ptr %srcBuffer, i32 4
  %limitPtr = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 4
  %2 = ptrtoint ptr %limitPtr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %limitPtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %srcSize)
  %cmp2 = icmp ugt i32 %srcSize, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %add.ptr4 = getelementptr i8, ptr %srcBuffer, i32 %srcSize
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 -4
  %ptr = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 2
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr5, ptr %ptr, align 4
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %7 = ptrtoint ptr %bitD to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bitD, align 4
  %sub = add i32 %srcSize, -1
  %arrayidx = getelementptr i8, ptr %srcBuffer, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %9 to i32
  %10 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #7, !range !11
  %sub9 = add nsw i32 %10, -23
  %bitsConsumed121 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 1
  %11 = ptrtoint ptr %bitsConsumed121 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub9, ptr %bitsConsumed121, align 4
  br label %return

cond.end:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %bitsConsumed = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 1
  %12 = ptrtoint ptr %bitsConsumed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bitsConsumed, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %ptr16 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 2
  %13 = ptrtoint ptr %ptr16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %srcBuffer, ptr %ptr16, align 4
  %14 = ptrtoint ptr %srcBuffer to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %srcBuffer, align 1
  %conv18 = zext i8 %15 to i32
  %16 = ptrtoint ptr %bitD to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv18, ptr %bitD, align 4
  %17 = zext i32 %srcSize to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %srcSize, label %if.else.sw.epilog_crit_edge [
    i32 2, label %if.else.sw.bb47_crit_edge
    i32 3, label %sw.bb41
  ]

if.else.sw.bb47_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42 = getelementptr i8, ptr %srcBuffer, i32 2
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %19 to i32
  %shl44 = shl nuw nsw i32 %conv43, 16
  %20 = ptrtoint ptr %bitD to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitD, align 4
  %add46 = add i32 %shl44, %21
  store i32 %add46, ptr %bitD, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb41, %if.else.sw.bb47_crit_edge
  %arrayidx48 = getelementptr i8, ptr %srcBuffer, i32 1
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %23 to i32
  %shl50 = shl nuw nsw i32 %conv49, 8
  %24 = ptrtoint ptr %bitD to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bitD, align 4
  %add52 = add i32 %shl50, %25
  store i32 %add52, ptr %bitD, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %if.else.sw.epilog_crit_edge
  %sub54 = add nsw i32 %srcSize, -1
  %arrayidx55 = getelementptr i8, ptr %srcBuffer, i32 %sub54
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool57.not = icmp eq i8 %27, 0
  br i1 %tobool57.not, label %cond.end63, label %cleanup.cont73

cond.end63:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %bitsConsumed65 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 1
  %28 = ptrtoint ptr %bitsConsumed65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bitsConsumed65, align 4
  br label %return

cleanup.cont73:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv56 = zext i8 %27 to i32
  %29 = tail call i32 @llvm.ctlz.i32(i32 %conv56, i1 true) #7, !range !11
  %bitsConsumed65124 = getelementptr inbounds %struct.BIT_DStream_t, ptr %bitD, i32 0, i32 1
  %.neg = mul nsw i32 %srcSize, -8
  %mul = add nsw i32 %.neg, 9
  %add76 = add nsw i32 %mul, %29
  %30 = ptrtoint ptr %bitsConsumed65124 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add76, ptr %bitsConsumed65124, align 4
  br label %return

return:                                           ; preds = %cleanup.cont73, %cond.end63, %cond.end, %cond.end.thread, %if.then
  %retval.2 = phi i32 [ -72, %if.then ], [ -1, %cond.end ], [ -20, %cond.end63 ], [ %srcSize, %cond.end.thread ], [ %srcSize, %cleanup.cont73 ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @algoTime, !1, !"algoTime", i1 false, i1 false}
!1 = !{!"../lib/zstd/decompress/huf_decompress.c", i32 1028, i32 26}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
