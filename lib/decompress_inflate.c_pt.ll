; ModuleID = '/llk/IR_all_yes/lib/decompress_inflate.c_pt.bc'
source_filename = "../lib/decompress_inflate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.code = type { i8, i8, i16 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Out of memory while allocating output buffer\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Out of memory while allocating input buffer\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Out of memory while allocating z_stream\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Out of memory while allocating workspace\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not a gzip file\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"header error\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read error\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write error\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uncompression error\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 61, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 72, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 78, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 90, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 105, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 123, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 150, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 163, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [28 x i8] c"../lib/decompress_inflate.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 175, i32 10 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gunzip(ptr noundef %buf, i32 noundef %len, ptr noundef readonly %fill, ptr noundef readonly %flush, ptr noundef %out_buf, i32 noundef %out_len, ptr noundef writeonly %pos, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %tobool.not = icmp eq ptr %flush, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #7
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_len)
  %tobool1.not = icmp eq i32 %out_len, 0
  br i1 %tobool1.not, label %if.then2, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %out_buf to i32
  %sub = xor i32 %0, -1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.then
  %out_len.addr.0 = phi i32 [ 32768, %if.then ], [ %out_len, %if.else.if.end3_crit_edge ], [ %sub, %if.then2 ]
  %out_buf.addr.0 = phi ptr [ %call1.i.i, %if.then ], [ %out_buf, %if.else.if.end3_crit_edge ], [ %out_buf, %if.then2 ]
  %tobool4.not = icmp eq ptr %out_buf.addr.0, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %error(ptr noundef nonnull @.str) #8
  br label %gunzip_nomem1

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq ptr %buf, null
  br i1 %tobool7.not, label %if.end11, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end11:                                         ; preds = %if.end6
  %call1.i.i200 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #7
  %tobool12.not = icmp eq ptr %call1.i.i200, null
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %error(ptr noundef nonnull @.str.1) #8
  br label %gunzip_nomem2

if.end14:                                         ; preds = %if.end11.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %len.addr.0211 = phi i32 [ 0, %if.end11.if.end14_crit_edge ], [ %len, %if.end6.if.end14_crit_edge ]
  %zbuf.0206 = phi ptr [ %call1.i.i200, %if.end11.if.end14_crit_edge ], [ %buf, %if.end6.if.end14_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 48) #9
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %error(ptr noundef nonnull @.str.2) #8
  br label %gunzip_nomem3

if.end17:                                         ; preds = %if.end14
  br i1 %tobool.not, label %if.end17.if.end8.i_crit_edge, label %cond.true

if.end17.if.end8.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

cond.true:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @zlib_inflate_workspacesize() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.true, %if.end17.if.end8.i_crit_edge
  %cond = phi i32 [ %call19, %cond.true ], [ 9516, %if.end17.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #7
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 8
  %2 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %workspace, align 8
  %cmp22 = icmp eq ptr %call9.i, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %error(ptr noundef nonnull @.str.3) #8
  br label %gunzip_nomem4

if.end24:                                         ; preds = %if.end8.i
  %tobool25.not = icmp eq ptr %fill, null
  %spec.store.select = select i1 %tobool25.not, ptr @nofill, ptr %fill
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0211)
  %cmp28 = icmp eq i32 %len.addr.0211, 0
  br i1 %cmp28, label %if.then29, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call30 = tail call i32 %spec.store.select(ptr noundef nonnull %zbuf.0206, i32 noundef 16384) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24.if.end31_crit_edge
  %len.addr.1 = phi i32 [ %call30, %if.then29 ], [ %len.addr.0211, %if.end24.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len.addr.1)
  %cmp32 = icmp slt i32 %len.addr.1, 10
  br i1 %cmp32, label %if.end31.if.then45_crit_edge, label %lor.lhs.false

if.end31.if.then45_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end31
  %3 = ptrtoint ptr %zbuf.0206 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %zbuf.0206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %4)
  %cmp33.not = icmp eq i8 %4, 31
  br i1 %cmp33.not, label %lor.lhs.false35, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %arrayidx36 = getelementptr i8, ptr %zbuf.0206, i32 1
  %5 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -117, i8 %6)
  %cmp38.not = icmp eq i8 %6, -117
  br i1 %cmp38.not, label %lor.lhs.false40, label %lor.lhs.false35.if.then45_crit_edge

lor.lhs.false35.if.then45_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

lor.lhs.false40:                                  ; preds = %lor.lhs.false35
  %arrayidx41 = getelementptr i8, ptr %zbuf.0206, i32 2
  %7 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp43.not = icmp eq i8 %8, 8
  br i1 %cmp43.not, label %if.end49, label %lor.lhs.false40.if.then45_crit_edge

lor.lhs.false40.if.then45_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false40.if.then45_crit_edge, %lor.lhs.false35.if.then45_crit_edge, %lor.lhs.false.if.then45_crit_edge, %if.end31.if.then45_crit_edge
  %tobool46.not = icmp eq ptr %pos, null
  br i1 %tobool46.not, label %if.then45.if.end48_crit_edge, label %if.then47

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pos, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then45.if.end48_crit_edge
  tail call void %error(ptr noundef nonnull @.str.4) #8
  br label %gunzip_5

if.end49:                                         ; preds = %lor.lhs.false40
  %add.ptr = getelementptr i8, ptr %zbuf.0206, i32 10
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %call7.i, align 8
  %sub50 = add nsw i32 %len.addr.1, -10
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub50, ptr %avail_in, align 4
  %arrayidx51 = getelementptr i8, ptr %zbuf.0206, i32 3
  %12 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx51, align 1
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool53.not = icmp eq i8 %14, 0
  br i1 %tobool53.not, label %if.end49.if.end63_crit_edge, label %do.body.preheader

if.end49.if.end63_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

do.body.preheader:                                ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %cmp56219 = icmp eq i32 %sub50, 0
  br i1 %cmp56219, label %do.body.preheader.if.then58_crit_edge, label %do.body.preheader.if.end59_crit_edge

do.body.preheader.if.end59_crit_edge:             ; preds = %do.body.preheader
  br label %if.end59

do.body.preheader.if.then58_crit_edge:            ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

do.bodythread-pre-split:                          ; preds = %if.end59
  %cmp56 = icmp eq i32 %dec, 0
  br i1 %cmp56, label %do.bodythread-pre-split.if.then58_crit_edge, label %do.bodythread-pre-split.if.end59_crit_edge

do.bodythread-pre-split.if.end59_crit_edge:       ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

do.bodythread-pre-split.if.then58_crit_edge:      ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58

if.then58:                                        ; preds = %do.bodythread-pre-split.if.then58_crit_edge, %do.body.preheader.if.then58_crit_edge
  tail call void %error(ptr noundef nonnull @.str.5) #8
  br label %gunzip_5

if.end59:                                         ; preds = %do.bodythread-pre-split.if.end59_crit_edge, %do.body.preheader.if.end59_crit_edge
  %15 = phi i32 [ %dec, %do.bodythread-pre-split.if.end59_crit_edge ], [ %sub50, %do.body.preheader.if.end59_crit_edge ]
  %dec = add i32 %15, -1
  %16 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec, ptr %avail_in, align 4
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i, align 8
  %incdec.ptr = getelementptr i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %call7.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool62.not = icmp eq i8 %20, 0
  br i1 %tobool62.not, label %if.end59.if.end63_crit_edge, label %do.bodythread-pre-split

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.end63:                                         ; preds = %if.end59.if.end63_crit_edge, %if.end49.if.end63_crit_edge
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %out_buf.addr.0, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %call7.i, i32 0, i32 4
  %22 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %out_len.addr.0, ptr %avail_out, align 8
  %call64 = tail call i32 @zlib_inflateInit2(ptr noundef nonnull %call7.i, i32 noundef -15) #8
  br i1 %tobool.not, label %if.then66, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %workspace, align 8
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wsize, align 4
  %26 = load ptr, ptr %workspace, align 8
  %window = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %window to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %window, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end63.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp71220 = icmp eq i32 %call64, 0
  br i1 %cmp71220, label %while.body.lr.ph, label %if.end70.while.end_crit_edge

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end70
  %sub.ptr.rhs.cast = ptrtoint ptr %out_buf.addr.0 to i32
  br label %while.body

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.body.lr.ph
  %28 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp74 = icmp eq i32 %29, 0
  br i1 %cmp74, label %if.then76, label %while.body.if.end84_crit_edge

while.body.if.end84_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then76:                                        ; preds = %while.body
  %call77 = tail call i32 %spec.store.select(ptr noundef nonnull %zbuf.0206, i32 noundef 16384) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then76.while.end.sink.split_crit_edge, label %if.end81

if.then76.while.end.sink.split_crit_edge:         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end81:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %zbuf.0206, ptr %call7.i, align 8
  %31 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call77, ptr %avail_in, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end81, %while.body.if.end84_crit_edge
  %call85 = tail call i32 @zlib_inflate(ptr noundef nonnull %call7.i, i32 noundef 0) #8
  br i1 %tobool.not, label %if.end84.if.end99_crit_edge, label %land.lhs.true

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end84
  %32 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_out, align 4
  %cmp88 = icmp ugt ptr %33, %out_buf.addr.0
  br i1 %cmp88, label %if.then90, label %land.lhs.true.if.end99_crit_edge

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then90:                                        ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call92 = tail call i32 %flush(ptr noundef nonnull %out_buf.addr.0, i32 noundef %sub.ptr.sub) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %call92)
  %cmp93.not = icmp eq i32 %sub.ptr.sub, %call92
  br i1 %cmp93.not, label %cleanup.thread, label %if.then90.while.end.sink.split_crit_edge

if.then90.while.end.sink.split_crit_edge:         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

cleanup.thread:                                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %out_buf.addr.0, ptr %next_out, align 4
  %35 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %out_len.addr.0, ptr %avail_out, align 8
  br label %if.end99

if.end99:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end99_crit_edge, %if.end84.if.end99_crit_edge
  %36 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call85, label %if.end99.while.end.sink.split_crit_edge [
    i32 1, label %if.end99.while.end_crit_edge
    i32 0, label %if.end99.while.body_crit_edge
  ]

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end99.while.end_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end99.while.end.sink.split_crit_edge:          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

while.end.sink.split:                             ; preds = %if.end99.while.end.sink.split_crit_edge, %if.then90.while.end.sink.split_crit_edge, %if.then76.while.end.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.6, %if.then76.while.end.sink.split_crit_edge ], [ @.str.7, %if.then90.while.end.sink.split_crit_edge ], [ @.str.8, %if.end99.while.end.sink.split_crit_edge ]
  tail call void %error(ptr noundef nonnull %.str.8.sink) #8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end99.while.end_crit_edge, %if.end70.while.end_crit_edge
  %rc.4 = phi i32 [ %call64, %if.end70.while.end_crit_edge ], [ -1, %while.end.sink.split ], [ 0, %if.end99.while.end_crit_edge ]
  %call109 = tail call i32 @zlib_inflateEnd(ptr noundef nonnull %call7.i) #8
  %tobool110.not = icmp eq ptr %pos, null
  br i1 %tobool110.not, label %while.end.gunzip_5_crit_edge, label %if.then111

while.end.gunzip_5_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %gunzip_5

if.then111:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call7.i, align 8
  %sub.ptr.lhs.cast113 = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast114 = ptrtoint ptr %zbuf.0206 to i32
  %sub.ptr.sub115 = sub i32 8, %sub.ptr.rhs.cast114
  %add = add i32 %sub.ptr.sub115, %sub.ptr.lhs.cast113
  %39 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %pos, align 4
  br label %gunzip_5

gunzip_5:                                         ; preds = %if.then111, %while.end.gunzip_5_crit_edge, %if.then58, %if.end48
  %rc.5 = phi i32 [ -1, %if.end48 ], [ -1, %if.then58 ], [ %rc.4, %if.then111 ], [ %rc.4, %while.end.gunzip_5_crit_edge ]
  %40 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %workspace, align 8
  tail call void @kfree(ptr noundef %41) #8
  br label %gunzip_nomem4

gunzip_nomem4:                                    ; preds = %gunzip_5, %if.then23
  %rc.6 = phi i32 [ -1, %if.then23 ], [ %rc.5, %gunzip_5 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %gunzip_nomem3

gunzip_nomem3:                                    ; preds = %gunzip_nomem4, %if.then16
  %rc.7 = phi i32 [ -1, %if.then16 ], [ %rc.6, %gunzip_nomem4 ]
  br i1 %tobool7.not, label %if.then119, label %gunzip_nomem3.gunzip_nomem2_crit_edge

gunzip_nomem3.gunzip_nomem2_crit_edge:            ; preds = %gunzip_nomem3
  call void @__sanitizer_cov_trace_pc() #6
  br label %gunzip_nomem2

if.then119:                                       ; preds = %gunzip_nomem3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %zbuf.0206) #8
  br label %gunzip_nomem2

gunzip_nomem2:                                    ; preds = %if.then119, %gunzip_nomem3.gunzip_nomem2_crit_edge, %if.then13
  %rc.8 = phi i32 [ %rc.7, %gunzip_nomem3.gunzip_nomem2_crit_edge ], [ %rc.7, %if.then119 ], [ -1, %if.then13 ]
  br i1 %tobool.not, label %gunzip_nomem2.gunzip_nomem1_crit_edge, label %if.then122

gunzip_nomem2.gunzip_nomem1_crit_edge:            ; preds = %gunzip_nomem2
  call void @__sanitizer_cov_trace_pc() #6
  br label %gunzip_nomem1

if.then122:                                       ; preds = %gunzip_nomem2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %out_buf.addr.0) #8
  br label %gunzip_nomem1

gunzip_nomem1:                                    ; preds = %if.then122, %gunzip_nomem2.gunzip_nomem1_crit_edge, %if.then5
  %rc.9 = phi i32 [ %rc.8, %if.then122 ], [ %rc.8, %gunzip_nomem2.gunzip_nomem1_crit_edge ], [ -1, %if.then5 ]
  ret i32 %rc.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %buffer, i32 noundef %len) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gunzip(ptr noundef %buf, i32 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, ptr noundef %pos, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @__gunzip(ptr noundef %buf, i32 noundef %len, ptr noundef %fill, ptr noundef %flush, ptr noundef %out_buf, i32 noundef 0, ptr noundef %pos, ptr noundef %error) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_inflate.c", i32 61, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_inflate.c", i32 72, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_inflate.c", i32 78, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_inflate.c", i32 90, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/decompress_inflate.c", i32 105, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/decompress_inflate.c", i32 123, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/decompress_inflate.c", i32 150, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/decompress_inflate.c", i32 163, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/decompress_inflate.c", i32 175, i32 10}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
