; ModuleID = '/llk/IR_all_yes/lib/decompress_unzstd.c_pt.bc'
source_filename = "../lib/decompress_unzstd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Out of memory while allocating input buffer\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ZSTD-compressed data is truncated\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Out of memory while allocating output buffer\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ZSTD-compressed data has an incomplete frame header\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ZSTD-compressed data has too large a window size\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Out of memory while allocating ZSTD_DStream\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to flush()\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Out of memory while allocating zstd_dctx\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ZSTD decompressor ran out of memory\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Input is not in the ZSTD format (wrong magic bytes)\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ZSTD-compressed data is corrupt\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ZSTD-compressed data is probably corrupt\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 20, i64 22, i64 64, i64 70]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 205, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 216, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 228, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 252, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 257, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 270, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 308, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 134, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 101, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 9 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 109, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [27 x i8] c"../lib/decompress_unzstd.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 112, i32 9 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unzstd(ptr noundef %buf, i32 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, ptr noundef %pos, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @__unzstd(ptr noundef %buf, i32 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, ptr noundef %pos, ptr noundef %error) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__unzstd(ptr noundef %in_buf, i32 noundef %in_len, ptr noundef readonly %fill, ptr noundef readonly %flush, ptr noundef %out_buf, ptr noundef %in_pos, ptr nocapture noundef readonly %error) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %in = alloca %struct.ZSTD_inBuffer_s, align 4
  %out = alloca %struct.ZSTD_outBuffer_s, align 4
  %header = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %in) #7
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %in, align 4, !annotation !32
  %1 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !32
  %3 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %in, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out) #7
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %out, align 4, !annotation !32
  %6 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !32
  %8 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %out, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %header) #7
  %10 = call ptr @memset(ptr %header, i32 255, i32 40)
  %11 = ptrtoint ptr %out_buf to i32
  %sub = xor i32 %11, -1
  %cmp1 = icmp eq ptr %fill, null
  %cmp2 = icmp eq ptr %flush, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @decompress_single(ptr noundef %in_buf, i32 noundef %in_len, ptr noundef %out_buf, i32 noundef %sub, ptr noundef %in_pos, ptr noundef %error) #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq ptr %in_buf, null
  br i1 %cmp5, label %if.then6, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %call7 = tail call noalias ptr @vmalloc(i32 noundef 131072) #8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end111.thread, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.end111.thread:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %in_len.addr.0 = phi i32 [ %in_len, %if.end4.if.end11_crit_edge ], [ 0, %if.then6.if.end11_crit_edge ]
  %in_buf.addr.0 = phi ptr [ %in_buf, %if.end4.if.end11_crit_edge ], [ %call7, %if.then6.if.end11_crit_edge ]
  %in_allocated.0 = phi ptr [ null, %if.end4.if.end11_crit_edge ], [ %call7, %if.then6.if.end11_crit_edge ]
  br i1 %cmp1, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %call14 = tail call i32 %fill(ptr noundef nonnull %in_buf.addr.0, i32 noundef 131072) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %in_len.addr.1 = phi i32 [ %call14, %if.then13 ], [ %in_len.addr.0, %if.end11.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len.addr.1)
  %cmp16 = icmp slt i32 %in_len.addr.1, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.1) #7
  br label %out103

if.end18:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %in_buf.addr.0, ptr %in, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %3, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %in_len.addr.1, ptr %1, align 4
  br i1 %cmp2, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %call21 = tail call noalias ptr @vmalloc(i32 noundef 131072) #8
  %cmp22 = icmp eq ptr %call21, null
  br i1 %cmp22, label %if.then23, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.2) #7
  br label %out103

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %out_buf.addr.0 = phi ptr [ %out_buf, %if.end18.if.end25_crit_edge ], [ %call21, %if.then20.if.end25_crit_edge ]
  %out_len.addr.1 = phi i32 [ %sub, %if.end18.if.end25_crit_edge ], [ 131072, %if.then20.if.end25_crit_edge ]
  %out_allocated.0 = phi ptr [ null, %if.end18.if.end25_crit_edge ], [ %call21, %if.then20.if.end25_crit_edge ]
  %15 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_buf.addr.0, ptr %out, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %8, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %out_len.addr.1, ptr %6, align 4
  %18 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %call30 = call i32 @zstd_get_frame_header(ptr noundef nonnull %header, ptr noundef %19, i32 noundef %21) #7
  %call31 = call fastcc i32 @handle_zstd_error(i32 noundef %call30, ptr noundef %error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end33, label %if.end25.out103_crit_edge

if.end25.out103_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %out103

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp34.not = icmp eq i32 %call30, 0
  br i1 %cmp34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.3) #7
  br label %out103

if.end36:                                         ; preds = %if.end33
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %header, i32 0, i32 1
  %22 = ptrtoint ptr %windowSize to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %windowSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %23)
  %cmp37 = icmp ugt i64 %23, 1073741824
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.4) #7
  br label %out103

if.end39:                                         ; preds = %if.end36
  %conv = trunc i64 %23 to i32
  %call41 = call i32 @zstd_dstream_workspace_bound(i32 noundef %conv) #7
  %call42 = call noalias ptr @vmalloc(i32 noundef %call41) #8
  %24 = ptrtoint ptr %windowSize to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %windowSize, align 8
  %conv44 = trunc i64 %25 to i32
  %call45 = call ptr @zstd_init_dstream(i32 noundef %conv44, ptr noundef %call42, i32 noundef %call41) #7
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.5) #7
  br label %out103

if.end49:                                         ; preds = %if.end39
  %cmp50.not = icmp eq ptr %in_pos, null
  br i1 %cmp50.not, label %if.end49.do.body.preheader_crit_edge, label %if.then52

if.end49.do.body.preheader_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.preheader

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %in_pos, align 4
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then52, %if.end49.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp56 = icmp eq i32 %28, %30
  br i1 %cmp56, label %if.then58, label %do.body.if.end72_crit_edge

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.then58:                                        ; preds = %do.body
  br i1 %cmp50.not, label %if.then58.if.end63_crit_edge, label %if.then61

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_pos, align 4
  %add = add i32 %32, %28
  store i32 %add, ptr %in_pos, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then58.if.end63_crit_edge
  br i1 %cmp1, label %if.end63.if.then68_crit_edge, label %cond.end

if.end63.if.then68_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then68

cond.end:                                         ; preds = %if.end63
  %call65 = call i32 %fill(ptr noundef %in_buf.addr.0, i32 noundef 131072) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %cond.end.if.then68_crit_edge, label %if.end69

cond.end.if.then68_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then68

if.then68:                                        ; preds = %cond.end.if.then68_crit_edge, %if.end63.if.then68_crit_edge
  call void %error(ptr noundef nonnull @.str.1) #7
  br label %out103

if.end69:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %3, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call65, ptr %1, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %do.body.if.end72_crit_edge
  %call73 = call i32 @zstd_decompress_stream(ptr noundef nonnull %call45, ptr noundef nonnull %out, ptr noundef nonnull %in) #7
  %call74 = call fastcc i32 @handle_zstd_error(i32 noundef %call73, ptr noundef %error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.out103_crit_edge

if.end72.out103_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %out103

if.end77:                                         ; preds = %if.end72
  br i1 %cmp2, label %if.end77.do.cond_crit_edge, label %land.lhs.true80

if.end77.do.cond_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

land.lhs.true80:                                  ; preds = %if.end77
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp82.not = icmp eq i32 %36, 0
  br i1 %cmp82.not, label %land.lhs.true80.do.cond_crit_edge, label %if.then84

land.lhs.true80.do.cond_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

if.then84:                                        ; preds = %land.lhs.true80
  %37 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out, align 4
  %call88 = call i32 %flush(ptr noundef %38, i32 noundef %36) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %call88)
  %cmp89.not = icmp eq i32 %36, %call88
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.6) #7
  br label %out103

if.end92:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %8, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end92, %land.lhs.true80.do.cond_crit_edge, %if.end77.do.cond_crit_edge
  %cmp95.not = icmp eq i32 %call73, 0
  br i1 %cmp95.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.cond
  br i1 %cmp50.not, label %do.end.out103_crit_edge, label %if.then99

do.end.out103_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out103

if.then99:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %42 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_pos, align 4
  %add101 = add i32 %43, %41
  store i32 %add101, ptr %in_pos, align 4
  br label %out103

out103:                                           ; preds = %if.then99, %do.end.out103_crit_edge, %if.then91, %if.end72.out103_crit_edge, %if.then68, %if.then48, %if.then38, %if.then35, %if.end25.out103_crit_edge, %if.then23, %if.then17
  %out_allocated.1 = phi ptr [ null, %if.then17 ], [ null, %if.then23 ], [ %out_allocated.0, %if.end25.out103_crit_edge ], [ %out_allocated.0, %if.then35 ], [ %out_allocated.0, %if.then38 ], [ %out_allocated.0, %if.then48 ], [ %out_allocated.0, %if.then68 ], [ %out_allocated.0, %if.then91 ], [ %out_allocated.0, %if.then99 ], [ %out_allocated.0, %do.end.out103_crit_edge ], [ %out_allocated.0, %if.end72.out103_crit_edge ]
  %wksp.0 = phi ptr [ null, %if.then17 ], [ null, %if.then23 ], [ null, %if.end25.out103_crit_edge ], [ null, %if.then35 ], [ null, %if.then38 ], [ %call42, %if.then48 ], [ %call42, %if.then68 ], [ %call42, %if.then91 ], [ %call42, %if.then99 ], [ %call42, %do.end.out103_crit_edge ], [ %call42, %if.end72.out103_crit_edge ]
  %err.0 = phi i32 [ -1, %if.then17 ], [ -1, %if.then23 ], [ %call31, %if.end25.out103_crit_edge ], [ -1, %if.then35 ], [ -1, %if.then38 ], [ -1, %if.then48 ], [ -1, %if.then68 ], [ -1, %if.then91 ], [ 0, %if.then99 ], [ 0, %do.end.out103_crit_edge ], [ -1, %if.end72.out103_crit_edge ]
  %cmp104.not = icmp eq ptr %in_allocated.0, null
  br i1 %cmp104.not, label %out103.if.end107_crit_edge, label %if.then106

out103.if.end107_crit_edge:                       ; preds = %out103
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107

if.then106:                                       ; preds = %out103
  call void @__sanitizer_cov_trace_pc() #5
  call void @vfree(ptr noundef nonnull %in_allocated.0) #7
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %out103.if.end107_crit_edge
  %cmp108.not = icmp eq ptr %out_allocated.1, null
  br i1 %cmp108.not, label %if.end107.if.end111_crit_edge, label %if.then110

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end111

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  call void @vfree(ptr noundef nonnull %out_allocated.1) #7
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end107.if.end111_crit_edge
  %cmp112.not = icmp eq ptr %wksp.0, null
  br i1 %cmp112.not, label %if.end111.cleanup_crit_edge, label %if.then114

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #5
  call void @vfree(ptr noundef nonnull %wksp.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end111.cleanup_crit_edge, %if.end111.thread, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %err.0, %if.then114 ], [ %err.0, %if.end111.cleanup_crit_edge ], [ -1, %if.end111.thread ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %header) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %in) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decompress_single(ptr noundef %in_buf, i32 noundef %in_len, ptr noundef %out_buf, i32 noundef %out_len, ptr noundef writeonly %in_pos, ptr nocapture noundef readonly %error) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @zstd_dctx_workspace_bound() #7
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %call) #8
  %call2 = tail call ptr @zstd_init_dctx(ptr noundef %call1, i32 noundef %call) #7
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %error(ptr noundef nonnull @.str.7) #7
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @zstd_find_frame_compressed_size(ptr noundef %in_buf, i32 noundef %in_len) #7
  %call4 = tail call fastcc i32 @handle_zstd_error(i32 noundef %call3, ptr noundef %error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @zstd_decompress_dctx(ptr noundef nonnull %call2, ptr noundef %out_buf, i32 noundef %out_len, ptr noundef %in_buf, i32 noundef %call3) #7
  %call8 = tail call fastcc i32 @handle_zstd_error(i32 noundef %call7, ptr noundef %error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end11:                                         ; preds = %if.end6
  %cmp12.not = icmp eq ptr %in_pos, null
  br i1 %cmp12.not, label %if.end11.out_crit_edge, label %if.then13

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %in_pos, align 4
  br label %out

out:                                              ; preds = %if.then13, %if.end11.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %if.then
  %err.0 = phi i32 [ -1, %if.then ], [ -1, %if.end.out_crit_edge ], [ -1, %if.end6.out_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end11.out_crit_edge ]
  %cmp15.not = icmp eq ptr %call1, null
  br i1 %cmp15.not, label %out.if.end17_crit_edge, label %if.then16

out.if.end17_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vfree(ptr noundef nonnull %call1) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %out.if.end17_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_frame_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_zstd_error(i32 noundef %ret, ptr nocapture noundef readonly %error) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @zstd_get_error_code(i32 noundef %ret) #7
  %call1 = tail call i32 @zstd_is_error(i32 noundef %ret) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.default [
    i32 64, label %if.end.cleanup.sink.split_crit_edge
    i32 10, label %sw.bb2
    i32 70, label %if.end.sw.bb3_crit_edge
    i32 20, label %if.end.sw.bb3_crit_edge8
    i32 22, label %if.end.sw.bb3_crit_edge9
  ]

if.end.sw.bb3_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

if.end.sw.bb3_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge8, %if.end.sw.bb3_crit_edge9
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb3, %sw.bb2, %if.end.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.9, %sw.bb2 ], [ @.str.10, %sw.bb3 ], [ @.str.11, %sw.default ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ]
  tail call void %error(ptr noundef nonnull %.str.8.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dstream_workspace_bound(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dstream(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dctx_workspace_bound() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dctx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_find_frame_compressed_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_dctx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_error_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_unzstd.c", i32 205, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_unzstd.c", i32 216, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_unzstd.c", i32 228, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_unzstd.c", i32 252, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/decompress_unzstd.c", i32 257, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/decompress_unzstd.c", i32 270, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/decompress_unzstd.c", i32 308, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/decompress_unzstd.c", i32 134, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/decompress_unzstd.c", i32 101, i32 9}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/decompress_unzstd.c", i32 104, i32 9}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/decompress_unzstd.c", i32 109, i32 9}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/decompress_unzstd.c", i32 112, i32 9}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
