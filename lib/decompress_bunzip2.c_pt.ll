; ModuleID = '/llk/IR_all_yes/lib/decompress_bunzip2.c_pt.bc'
source_filename = "../lib/decompress_bunzip2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bunzip_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, [256 x i32], i32, i32, i32, ptr, i32, [32768 x i8], [6 x %struct.group_data], i32, [256 x i32], [256 x i8], [256 x i8] }
%struct.group_data = type { [21 x i32], [20 x i32], [258 x i32], i32, i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate output buffer\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not allocate input buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Data integrity error when decompressing.\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Compressed file ends unexpectedly\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967292, i64 4294967295]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 694, i32 9 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 702, i32 9 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 724, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [28 x i8] c"../lib/decompress_bunzip2.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 728, i32 9 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bunzip2(ptr noundef %buf, i32 noundef %len, ptr noundef %fill, ptr noundef readonly %flush, ptr noundef %outbuf, ptr noundef writeonly %pos, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd) #9
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bd, align 4, !annotation !16
  %tobool.not = icmp eq ptr %flush, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4096) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %outbuf.addr.0 = phi ptr [ %call7.i, %if.then ], [ %outbuf, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %outbuf.addr.0, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %error(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %buf, null
  br i1 %tobool4.not, label %if.end7, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4096) #10
  %tobool8.not = icmp eq ptr %call7.i78, null
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %error(ptr noundef nonnull @.str.1) #9
  br label %exit_0

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %inbuf.081 = phi ptr [ %call7.i78, %if.end7.if.end10_crit_edge ], [ %buf, %if.end3.if.end10_crit_edge ]
  %call11 = call fastcc i32 @start_bunzip(ptr noundef nonnull %bd, ptr noundef nonnull %inbuf.081, i32 noundef %len, ptr noundef %fill) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.cond.preheader:                               ; preds = %if.end10
  %3 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd, align 4
  %call1488 = tail call fastcc i32 @read_bunzip(ptr noundef %4, ptr noundef nonnull %outbuf.addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1488)
  %cmp89 = icmp slt i32 %call1488, 1
  br i1 %cmp89, label %for.cond.preheader.if.end25_crit_edge, label %for.cond.preheader.if.end16_crit_edge

for.cond.preheader.if.end16_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end16

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end16:                                         ; preds = %if.end24.if.end16_crit_edge, %for.cond.preheader.if.end16_crit_edge
  %call1491 = phi i32 [ %call14, %if.end24.if.end16_crit_edge ], [ %call1488, %for.cond.preheader.if.end16_crit_edge ]
  %outbuf.addr.190 = phi ptr [ %outbuf.addr.2, %if.end24.if.end16_crit_edge ], [ %outbuf.addr.0, %for.cond.preheader.if.end16_crit_edge ]
  br i1 %tobool.not, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %outbuf.addr.190, i32 %call1491
  br label %if.end24

if.else19:                                        ; preds = %if.end16
  %call20 = tail call i32 %flush(ptr noundef %outbuf.addr.190, i32 noundef %call1491) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call1491, i32 %call20)
  %cmp21.not = icmp eq i32 %call1491, %call20
  br i1 %cmp21.not, label %if.else19.if.end24_crit_edge, label %if.else19.if.end36.sink.split_crit_edge

if.else19.if.end36.sink.split_crit_edge:          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

if.else19.if.end24_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.else19.if.end24_crit_edge, %if.then18
  %outbuf.addr.2 = phi ptr [ %outbuf.addr.190, %if.else19.if.end24_crit_edge ], [ %add.ptr, %if.then18 ]
  %call14 = tail call fastcc i32 @read_bunzip(ptr noundef %4, ptr noundef %outbuf.addr.2) #11
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %if.end24.if.end25_crit_edge, label %if.end24.if.end16_crit_edge

if.end24.if.end16_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end24.if.end25_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %if.end24.if.end25_crit_edge, %for.cond.preheader.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %outbuf.addr.3 = phi ptr [ %outbuf.addr.0, %if.end10.if.end25_crit_edge ], [ %outbuf.addr.0, %for.cond.preheader.if.end25_crit_edge ], [ %outbuf.addr.2, %if.end24.if.end25_crit_edge ]
  %i.0 = phi i32 [ %call11, %if.end10.if.end25_crit_edge ], [ %call1488, %for.cond.preheader.if.end25_crit_edge ], [ %call14, %if.end24.if.end25_crit_edge ]
  %5 = zext i32 %i.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0, label %if.end25.if.end36_crit_edge [
    i32 -1, label %if.then27
    i32 -4, label %if.end25.if.end36.sink.split_crit_edge
  ]

if.end25.if.end36.sink.split_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then27:                                        ; preds = %if.end25
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %headerCRC to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %headerCRC, align 4
  %totalCRC = getelementptr inbounds %struct.bunzip_data, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %totalCRC to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %totalCRC, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp28.not = icmp eq i32 %9, %11
  br i1 %cmp28.not, label %if.then27.if.end36_crit_edge, label %if.then27.if.end36.sink.split_crit_edge

if.then27.if.end36.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36.sink.split:                              ; preds = %if.then27.if.end36.sink.split_crit_edge, %if.end25.if.end36.sink.split_crit_edge, %if.else19.if.end36.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.2, %if.then27.if.end36.sink.split_crit_edge ], [ @.str.3, %if.end25.if.end36.sink.split_crit_edge ], [ @.str.3, %if.else19.if.end36.sink.split_crit_edge ]
  %outbuf.addr.385.ph = phi ptr [ %outbuf.addr.3, %if.then27.if.end36.sink.split_crit_edge ], [ %outbuf.addr.3, %if.end25.if.end36.sink.split_crit_edge ], [ %outbuf.addr.190, %if.else19.if.end36.sink.split_crit_edge ]
  %i.1.ph = phi i32 [ -1, %if.then27.if.end36.sink.split_crit_edge ], [ %i.0, %if.end25.if.end36.sink.split_crit_edge ], [ -4, %if.else19.if.end36.sink.split_crit_edge ]
  tail call void %error(ptr noundef nonnull %.str.3.sink) #9
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.then27.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %outbuf.addr.385 = phi ptr [ %outbuf.addr.3, %if.then27.if.end36_crit_edge ], [ %outbuf.addr.3, %if.end25.if.end36_crit_edge ], [ %outbuf.addr.385.ph, %if.end36.sink.split ]
  %i.1 = phi i32 [ 0, %if.then27.if.end36_crit_edge ], [ %i.0, %if.end25.if.end36_crit_edge ], [ %i.1.ph, %if.end36.sink.split ]
  %12 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd, align 4
  %tobool37.not = icmp eq ptr %13, null
  br i1 %tobool37.not, label %if.end36.exit_1_crit_edge, label %if.end39

if.end36.exit_1_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_1

if.end39:                                         ; preds = %if.end36
  %dbuf = getelementptr inbounds %struct.bunzip_data, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbuf, align 4
  %tobool40.not = icmp eq ptr %15, null
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vfree(ptr noundef nonnull %15) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %pos, null
  br i1 %tobool44.not, label %if.end43.if.end46_crit_edge, label %if.then45

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %inbufPos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inbufPos, align 4
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pos, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  tail call void @kfree(ptr noundef nonnull %13) #9
  br label %exit_1

exit_1:                                           ; preds = %if.end46, %if.end36.exit_1_crit_edge
  br i1 %tobool4.not, label %if.then48, label %exit_1.exit_0_crit_edge

exit_1.exit_0_crit_edge:                          ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_0

if.then48:                                        ; preds = %exit_1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %inbuf.081) #9
  br label %exit_0

exit_0:                                           ; preds = %if.then48, %exit_1.exit_0_crit_edge, %if.then9
  %outbuf.addr.4 = phi ptr [ %outbuf.addr.385, %exit_1.exit_0_crit_edge ], [ %outbuf.addr.385, %if.then48 ], [ %outbuf.addr.0, %if.then9 ]
  %i.2 = phi i32 [ %i.1, %exit_1.exit_0_crit_edge ], [ %i.1, %if.then48 ], [ -6, %if.then9 ]
  br i1 %tobool.not, label %exit_0.cleanup_crit_edge, label %if.then51

exit_0.cleanup_crit_edge:                         ; preds = %exit_0
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %exit_0
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %outbuf.addr.4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %exit_0.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -6, %if.then2 ], [ %i.2, %if.then51 ], [ %i.2, %exit_0.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_bunzip(ptr nocapture noundef writeonly %bdp, ptr noundef %inbuf, i32 noundef %len, ptr noundef %fill) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 42620, i32 noundef 3264, i32 noundef 4) #12
  %0 = ptrtoint ptr %bdp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1.i.i, ptr %bdp, align 4
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %call1.i.i, i32 0, i32 42620)
  %inbuf1 = getelementptr inbounds %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %inbuf1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inbuf, ptr %inbuf1, align 32
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %inbufCount to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %inbufCount, align 8
  %cmp.not = icmp eq ptr %fill, null
  %spec.select = select i1 %cmp.not, ptr @nofill, ptr %fill
  %4 = getelementptr inbounds %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end
  %i.057 = phi i32 [ 0, %if.end ], [ %inc, %for.end.for.body_crit_edge ]
  %shl = shl nuw i32 %i.057, 24
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body
  %c.056 = phi i32 [ %shl, %for.body ], [ %cond, %for.body9.for.body9_crit_edge ]
  %j.055 = phi i32 [ 8, %for.body ], [ %dec, %for.body9.for.body9_crit_edge ]
  %shl11 = shl i32 %c.056, 1
  %xor = xor i32 %shl11, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.056)
  %tobool10.not54 = icmp slt i32 %c.056, 0
  %cond = select i1 %tobool10.not54, i32 %xor, i32 %shl11
  %dec = add nsw i32 %j.055, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %for.end, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.end:                                          ; preds = %for.body9
  %arrayidx = getelementptr %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 11, i32 %i.057
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end14, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end14:                                        ; preds = %for.end
  %call15 = tail call fastcc i32 @get_bits(ptr noundef nonnull %call1.i.i, i8 noundef zeroext 32) #11
  %7 = add i32 %call15, -1113221178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %7)
  %cmp17 = icmp ult i32 %7, -9
  br i1 %cmp17, label %for.end14.cleanup_crit_edge, label %if.end19

for.end14.cleanup_crit_edge:                      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #8
  %8 = mul i32 %call15, 100000
  %mul = add nsw i32 %8, -859454976
  %dbufSize = getelementptr inbounds %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %dbufSize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %dbufSize, align 4
  %mul22 = shl nuw nsw i32 %mul, 2
  %call23 = tail call noalias ptr @vmalloc(i32 noundef %mul22) #12
  %dbuf = getelementptr inbounds %struct.bunzip_data, ptr %call1.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %dbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %dbuf, align 8
  %tobool25.not = icmp eq ptr %call23, null
  %. = select i1 %tobool25.not, i32 -6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -2, %for.end14.cleanup_crit_edge ], [ %., %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_bunzip(ptr noundef %bd, ptr nocapture noundef writeonly %outbuf) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %writeCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 3
  %0 = ptrtoint ptr %writeCount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbuf2 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 15
  %2 = ptrtoint ptr %dbuf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbuf2, align 4
  %writePos = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 1
  %writeCurrent = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end61_crit_edge, label %for.cond.preheader.thread

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.cond.preheader.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %writeCurrent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writeCurrent, align 4
  %8 = ptrtoint ptr %writePos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writePos, align 4
  %dec = add i32 %5, -1
  %10 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %bd, align 4
  br label %if.end10.lr.ph

for.cond.preheader:                               ; preds = %if.end42, %if.then34, %if.then31.for.cond.preheader_crit_edge
  %xcurrent.0.ph = phi i32 [ %and, %if.then34 ], [ %xcurrent.1.ph, %if.then31.for.cond.preheader_crit_edge ], [ %xcurrent.1.ph, %if.end42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %gotcount.1.ph)
  %cmp55 = icmp sgt i32 %gotcount.1.ph, 4095
  br i1 %cmp55, label %for.cond.preheader.if.then6_crit_edge, label %for.cond.preheader.if.end10.lr.ph_crit_edge

for.cond.preheader.if.end10.lr.ph_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.lr.ph

for.cond.preheader.if.then6_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end10.lr.ph:                                   ; preds = %for.cond.preheader.if.end10.lr.ph_crit_edge, %for.cond.preheader.thread
  %gotcount.0.ph18 = phi i32 [ 0, %for.cond.preheader.thread ], [ %gotcount.1.ph, %for.cond.preheader.if.end10.lr.ph_crit_edge ]
  %xcurrent.0.ph16 = phi i32 [ %7, %for.cond.preheader.thread ], [ %xcurrent.0.ph, %for.cond.preheader.if.end10.lr.ph_crit_edge ]
  %pos.0.ph14 = phi i32 [ %9, %for.cond.preheader.thread ], [ %shr28, %for.cond.preheader.if.end10.lr.ph_crit_edge ]
  %conv = trunc i32 %xcurrent.0.ph16 to i8
  %writeCRC = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 14
  br label %if.end10

if.then6:                                         ; preds = %if.then18.if.then6_crit_edge, %for.cond.preheader.if.then6_crit_edge
  %xcurrent.0.ph17 = phi i32 [ %xcurrent.0.ph, %for.cond.preheader.if.then6_crit_edge ], [ %xcurrent.0.ph16, %if.then18.if.then6_crit_edge ]
  %pos.0.ph15 = phi i32 [ %shr28, %for.cond.preheader.if.then6_crit_edge ], [ %pos.0.ph14, %if.then18.if.then6_crit_edge ]
  %11 = ptrtoint ptr %writePos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pos.0.ph15, ptr %writePos, align 4
  %12 = ptrtoint ptr %writeCurrent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %xcurrent.0.ph17, ptr %writeCurrent, align 4
  %13 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %bd, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then18.if.end10_crit_edge, %if.end10.lr.ph
  %gotcount.06 = phi i32 [ %gotcount.0.ph18, %if.end10.lr.ph ], [ %inc11, %if.then18.if.end10_crit_edge ]
  %inc11 = add i32 %gotcount.06, 1
  %arrayidx = getelementptr i8, ptr %outbuf, i32 %gotcount.06
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %writeCRC to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writeCRC, align 4
  %shl = shl i32 %17, 8
  %shr = lshr i32 %17, 24
  %xor = xor i32 %shr, %xcurrent.0.ph16
  %arrayidx13 = getelementptr %struct.bunzip_data, ptr %bd, i32 0, i32 11, i32 %xor
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %xor14 = xor i32 %shl, %19
  store i32 %xor14, ptr %writeCRC, align 4
  %20 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.end10.decode_next_byte.preheader_crit_edge, label %if.then18

if.end10.decode_next_byte.preheader_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_next_byte.preheader

if.then18:                                        ; preds = %if.end10
  %dec20 = add i32 %21, -1
  %22 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec20, ptr %bd, align 4
  %exitcond = icmp eq i32 %inc11, 4096
  br i1 %exitcond, label %if.then18.if.then6_crit_edge, label %if.then18.if.end10_crit_edge

if.then18.if.end10_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then18.if.then6_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

decode_next_byte.preheader:                       ; preds = %if.end67, %if.end10.decode_next_byte.preheader_crit_edge
  %pos.1.ph = phi i32 [ %44, %if.end67 ], [ %pos.0.ph14, %if.end10.decode_next_byte.preheader_crit_edge ]
  %xcurrent.1.ph = phi i32 [ %46, %if.end67 ], [ %xcurrent.0.ph16, %if.end10.decode_next_byte.preheader_crit_edge ]
  %gotcount.1.ph = phi i32 [ %gotcount.2, %if.end67 ], [ %inc11, %if.end10.decode_next_byte.preheader_crit_edge ]
  %writeRunCountdown = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 2
  br label %decode_next_byte

decode_next_byte:                                 ; preds = %if.else.decode_next_byte_crit_edge, %decode_next_byte.preheader
  %pos.1 = phi i32 [ %shr28, %if.else.decode_next_byte_crit_edge ], [ %pos.1.ph, %decode_next_byte.preheader ]
  %23 = ptrtoint ptr %writeCount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writeCount, align 4
  %dec23 = add i32 %24, -1
  store i32 %dec23, ptr %writeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %for.end, label %if.end26

if.end26:                                         ; preds = %decode_next_byte
  %arrayidx27 = getelementptr i32, ptr %3, i32 %pos.1
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx27, align 4
  %and = and i32 %26, 255
  %shr28 = ashr i32 %26, 8
  %27 = ptrtoint ptr %writeRunCountdown to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writeRunCountdown, align 4
  %dec29 = add i32 %28, -1
  store i32 %dec29, ptr %writeRunCountdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec29)
  %tobool30.not = icmp eq i32 %dec29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %xcurrent.1.ph)
  %cmp32.not = icmp eq i32 %and, %xcurrent.1.ph
  br i1 %cmp32.not, label %if.then31.for.cond.preheader_crit_edge, label %if.then34

if.then31.for.cond.preheader_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %writeRunCountdown to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %writeRunCountdown, align 4
  br label %for.cond.preheader

if.else:                                          ; preds = %if.end26
  %30 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %bd, align 4
  %31 = ptrtoint ptr %writeRunCountdown to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %writeRunCountdown, align 4
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.else.decode_next_byte_crit_edge, label %if.end42

if.else.decode_next_byte_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %decode_next_byte

if.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dec44 = add nsw i32 %and, -1
  %32 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec44, ptr %bd, align 4
  br label %for.cond.preheader

for.end:                                          ; preds = %decode_next_byte
  %writeCRC46 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 14
  %33 = ptrtoint ptr %writeCRC46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writeCRC46, align 4
  %neg = xor i32 %34, -1
  store i32 %neg, ptr %writeCRC46, align 4
  %totalCRC = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 13
  %35 = ptrtoint ptr %totalCRC to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %totalCRC, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 1)
  %xor52 = xor i32 %or, %neg
  %37 = ptrtoint ptr %totalCRC to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %xor52, ptr %totalCRC, align 4
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 12
  %38 = ptrtoint ptr %headerCRC to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %headerCRC, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %neg)
  %cmp55.not = icmp eq i32 %39, %neg
  br i1 %cmp55.not, label %for.end.if.end61_crit_edge, label %if.then57

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %39, 1
  %40 = ptrtoint ptr %totalCRC to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %totalCRC, align 4
  br label %cleanup

if.end61:                                         ; preds = %for.end.if.end61_crit_edge, %if.end.if.end61_crit_edge
  %gotcount.2 = phi i32 [ %gotcount.1.ph, %for.end.if.end61_crit_edge ], [ 0, %if.end.if.end61_crit_edge ]
  %call = tail call fastcc i32 @get_next_block(ptr noundef %bd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool62.not = icmp eq i32 %call, 0
  br i1 %tobool62.not, label %if.end67, label %if.then63

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %writeCount to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call, ptr %writeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp65.not = icmp eq i32 %call, -1
  %gotcount.2.call = select i1 %cmp65.not, i32 %gotcount.2, i32 %call
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %writeCRC68 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 14
  %42 = ptrtoint ptr %writeCRC68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %writeCRC68, align 4
  %43 = ptrtoint ptr %writePos to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writePos, align 4
  %45 = ptrtoint ptr %writeCurrent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writeCurrent, align 4
  br label %decode_next_byte.preheader

cleanup:                                          ; preds = %if.then63, %if.then57, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %if.then6 ], [ -1, %if.then57 ], [ %gotcount.2.call, %if.then63 ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %buf, i32 noundef %len) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 -1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_bits(ptr nocapture noundef %bd, i8 noundef zeroext %bits_wanted) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %inbufBitCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 9
  %0 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inbufBitCount, align 4
  %conv83 = zext i8 %bits_wanted to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv83)
  %cmp84 = icmp ult i32 %1, %conv83
  br i1 %cmp84, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 7
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 6
  %io_error = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 19
  %fill = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 5
  %inbuf = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 8
  %inbufBits = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %bits.086 = phi i32 [ 0, %while.body.lr.ph ], [ %bits.1, %if.end26.while.body_crit_edge ]
  %bits_wanted.addr.085 = phi i8 [ %bits_wanted, %while.body.lr.ph ], [ %bits_wanted.addr.1, %if.end26.while.body_crit_edge ]
  %2 = ptrtoint ptr %inbufPos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inbufPos, align 4
  %4 = ptrtoint ptr %inbufCount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inbufCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2 = icmp eq i32 %3, %5
  br i1 %cmp2, label %if.then, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %while.body
  %6 = ptrtoint ptr %io_error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %fill to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fill, align 4
  %10 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inbuf, align 4
  %call = tail call i32 %9(ptr noundef %11, i32 noundef 4096) #9
  %12 = ptrtoint ptr %inbufCount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %inbufCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %io_error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -3, ptr %io_error, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %inbufPos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %inbufPos, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %while.body.if.end13_crit_edge
  %15 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inbufBitCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %16)
  %cmp15 = icmp ugt i32 %16, 23
  br i1 %cmp15, label %if.then17, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i8 %bits_wanted.addr.085 to i32
  br label %if.end26

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %inbufBits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inbufBits, align 4
  %notmask73 = shl nsw i32 -1, %16
  %sub = xor i32 %notmask73, -1
  %and = and i32 %18, %sub
  %19 = trunc i32 %16 to i8
  %conv22 = sub i8 %bits_wanted.addr.085, %19
  %conv23 = zext i8 %conv22 to i32
  %shl24 = shl i32 %and, %conv23
  %20 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %inbufBitCount, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.end13.if.end26_crit_edge
  %conv.pre-phi = phi i32 [ %.pre, %if.end13.if.end26_crit_edge ], [ %conv23, %if.then17 ]
  %bits_wanted.addr.1 = phi i8 [ %bits_wanted.addr.085, %if.end13.if.end26_crit_edge ], [ %conv22, %if.then17 ]
  %bits.1 = phi i32 [ %bits.086, %if.end13.if.end26_crit_edge ], [ %shl24, %if.then17 ]
  %21 = ptrtoint ptr %inbufBits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inbufBits, align 4
  %shl28 = shl i32 %22, 8
  %23 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inbuf, align 4
  %25 = ptrtoint ptr %inbufPos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inbufPos, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %inbufPos, align 4
  %arrayidx = getelementptr i8, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv31 = zext i8 %28 to i32
  %or = or i32 %shl28, %conv31
  store i32 %or, ptr %inbufBits, align 4
  %29 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inbufBitCount, align 4
  %add = add i32 %30, 8
  store i32 %add, ptr %inbufBitCount, align 4
  %cmp = icmp ult i32 %add, %conv.pre-phi
  br i1 %cmp, label %if.end26.while.body_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %entry.while.end_crit_edge
  %bits.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %bits.1, %if.end26.while.end_crit_edge ]
  %.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %add, %if.end26.while.end_crit_edge ]
  %conv.lcssa = phi i32 [ %conv83, %entry.while.end_crit_edge ], [ %conv.pre-phi, %if.end26.while.end_crit_edge ]
  %sub36 = sub i32 %.lcssa, %conv.lcssa
  %31 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub36, ptr %inbufBitCount, align 4
  %inbufBits37 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 10
  %32 = ptrtoint ptr %inbufBits37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inbufBits37, align 4
  %shr = lshr i32 %33, %sub36
  %notmask = shl nsw i32 -1, %conv.lcssa
  %sub41 = xor i32 %notmask, -1
  %and42 = and i32 %shr, %sub41
  %or43 = or i32 %and42, %bits.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %or43, %while.end ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_next_block(ptr noundef %bd) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %length = alloca [258 x i8], align 1
  %temp = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  %dbuf1 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 15
  %0 = ptrtoint ptr %dbuf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbuf1, align 4
  %dbufSize2 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 16
  %2 = ptrtoint ptr %dbufSize2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbufSize2, align 4
  %selectors3 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 17
  %byteCount4 = getelementptr %struct.bunzip_data, ptr %bd, i32 0, i32 20
  %symToByte6 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 21
  %mtfSymbol8 = getelementptr %struct.bunzip_data, ptr %bd, i32 0, i32 22
  %call = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 24) #11
  %call10 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 24) #11
  %call11 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 32) #11
  %headerCRC = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 12
  %4 = ptrtoint ptr %headerCRC to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call11, ptr %headerCRC, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536581, i32 %call)
  %cmp = icmp eq i32 %call, 1536581
  call void @__sanitizer_cov_trace_const_cmp4(i32 3690640, i32 %call10)
  %cmp12 = icmp eq i32 %call10, 3690640
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  br i1 %or.cond, label %entry.cleanup415_crit_edge, label %if.end

entry.cleanup415_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3227993, i32 %call)
  %cmp13.not = icmp eq i32 %call, 3227993
  call void @__sanitizer_cov_trace_const_cmp4(i32 2511705, i32 %call10)
  %cmp14.not = icmp eq i32 %call10, 2511705
  %or.cond676 = select i1 %cmp13.not, i1 %cmp14.not, i1 false
  br i1 %or.cond676, label %if.end16, label %if.end.cleanup415_crit_edge

if.end.cleanup415_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end16:                                         ; preds = %if.end
  %call17 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end19, label %if.end16.cleanup415_crit_edge

if.end16.cleanup415_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end19:                                         ; preds = %if.end16
  %call20 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 24) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %3)
  %cmp21.not = icmp ult i32 %call20, %3
  br i1 %cmp21.not, label %if.end23, label %if.end19.cleanup415_crit_edge

if.end19.cleanup415_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end23:                                         ; preds = %if.end19
  %call24 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 16) #11
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %if.end23
  %symTotal.0706 = phi i32 [ 0, %if.end23 ], [ %symTotal.3, %for.inc40.for.body_crit_edge ]
  %i.0704 = phi i32 [ 0, %if.end23 ], [ %inc41, %for.inc40.for.body_crit_edge ]
  %sub = sub nuw nsw i32 15, %i.0704
  %shl = shl nuw nsw i32 1, %sub
  %and = and i32 %shl, %call24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %for.body.for.inc40_crit_edge, label %if.then27

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

if.then27:                                        ; preds = %for.body
  %call28 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 16) #11
  %mul = shl i32 %i.0704, 4
  br label %for.body31

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %if.then27
  %symTotal.1703 = phi i32 [ %symTotal.0706, %if.then27 ], [ %symTotal.2, %for.inc.for.body31_crit_edge ]
  %j.0701 = phi i32 [ 0, %if.then27 ], [ %inc38, %for.inc.for.body31_crit_edge ]
  %sub32 = sub nuw nsw i32 15, %j.0701
  %shl33 = shl nuw nsw i32 1, %sub32
  %and34 = and i32 %shl33, %call28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.body31.for.inc_crit_edge, label %if.then36

for.body31.for.inc_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then36:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %j.0701, %mul
  %conv = trunc i32 %add to i8
  %inc = add i32 %symTotal.1703, 1
  %arrayidx = getelementptr i8, ptr %symToByte6, i32 %symTotal.1703
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body31.for.inc_crit_edge
  %symTotal.2 = phi i32 [ %inc, %if.then36 ], [ %symTotal.1703, %for.body31.for.inc_crit_edge ]
  %inc38 = add nuw nsw i32 %j.0701, 1
  %exitcond.not = icmp eq i32 %inc38, 16
  br i1 %exitcond.not, label %for.inc.for.inc40_crit_edge, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31

for.inc.for.inc40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

for.inc40:                                        ; preds = %for.inc.for.inc40_crit_edge, %for.body.for.inc40_crit_edge
  %symTotal.3 = phi i32 [ %symTotal.0706, %for.body.for.inc40_crit_edge ], [ %symTotal.2, %for.inc.for.inc40_crit_edge ]
  %inc41 = add nuw nsw i32 %i.0704, 1
  %exitcond797.not = icmp eq i32 %inc41, 16
  br i1 %exitcond797.not, label %for.end42, label %for.inc40.for.body_crit_edge

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end42:                                        ; preds = %for.inc40
  %call43 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 3) #11
  %6 = add i32 %call43, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %6)
  %7 = icmp ult i32 %6, -5
  br i1 %7, label %for.end42.cleanup415_crit_edge, label %if.end50

for.end42.cleanup415_crit_edge:                   ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end50:                                         ; preds = %for.end42
  %call51 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.cleanup415_crit_edge, label %if.end50.for.body58_crit_edge

if.end50.for.body58_crit_edge:                    ; preds = %if.end50
  br label %for.body58

if.end50.cleanup415_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

for.cond64.preheader:                             ; preds = %for.body58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp65714 = icmp sgt i32 %call51, 0
  br i1 %cmp65714, label %for.cond68.preheader.preheader, label %for.cond64.preheader.for.body97.lr.ph_crit_edge

for.cond64.preheader.for.body97.lr.ph_crit_edge:  ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body97.lr.ph

for.cond68.preheader.preheader:                   ; preds = %for.cond64.preheader
  %smax = call i32 @llvm.smax.i32(i32 %call43, i32 0)
  %uglygep = getelementptr i8, ptr %bd, i32 42365
  br label %for.cond68.preheader

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %if.end50.for.body58_crit_edge
  %i.1708 = phi i32 [ %inc62, %for.body58.for.body58_crit_edge ], [ 0, %if.end50.for.body58_crit_edge ]
  %conv59 = trunc i32 %i.1708 to i8
  %arrayidx60 = getelementptr i8, ptr %mtfSymbol8, i32 %i.1708
  %8 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv59, ptr %arrayidx60, align 1
  %inc62 = add nuw nsw i32 %i.1708, 1
  %exitcond798.not = icmp eq i32 %inc62, %call43
  br i1 %exitcond798.not, label %for.cond64.preheader, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

for.cond68.preheader:                             ; preds = %for.end87.for.cond68.preheader_crit_edge, %for.cond68.preheader.preheader
  %i.2715 = phi i32 [ %inc91, %for.end87.for.cond68.preheader_crit_edge ], [ 0, %for.cond68.preheader.preheader ]
  %call69709 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69709)
  %tobool70.not710 = icmp eq i32 %call69709, 0
  br i1 %tobool70.not710, label %for.end78.thread, label %for.cond68.preheader.for.body71_crit_edge

for.cond68.preheader.for.body71_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body71

for.end78.thread:                                 ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mtfSymbol8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mtfSymbol8, align 1
  br label %for.end87

for.body71:                                       ; preds = %for.inc76.for.body71_crit_edge, %for.cond68.preheader.for.body71_crit_edge
  %j.1711 = phi i32 [ %inc77, %for.inc76.for.body71_crit_edge ], [ 0, %for.cond68.preheader.for.body71_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1711, i32 %smax)
  %exitcond799.not = icmp eq i32 %j.1711, %smax
  br i1 %exitcond799.not, label %for.body71.cleanup415_crit_edge, label %for.inc76

for.body71.cleanup415_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

for.inc76:                                        ; preds = %for.body71
  %inc77 = add nuw i32 %j.1711, 1
  %call69 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 1) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %for.body82.preheader, label %for.inc76.for.body71_crit_edge

for.inc76.for.body71_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71

for.body82.preheader:                             ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx79 = getelementptr i8, ptr %mtfSymbol8, i32 %inc77
  %11 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx79, align 1
  %13 = call ptr @memmove(ptr %uglygep, ptr %mtfSymbol8, i32 %inc77)
  br label %for.end87

for.end87:                                        ; preds = %for.body82.preheader, %for.end78.thread
  %14 = phi i8 [ %10, %for.end78.thread ], [ %12, %for.body82.preheader ]
  %arrayidx88 = getelementptr i8, ptr %selectors3, i32 %i.2715
  %15 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx88, align 1
  %16 = ptrtoint ptr %mtfSymbol8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %mtfSymbol8, align 1
  %inc91 = add nuw nsw i32 %i.2715, 1
  %exitcond800.not = icmp eq i32 %inc91, %call51
  br i1 %exitcond800.not, label %for.end87.for.body97.lr.ph_crit_edge, label %for.end87.for.cond68.preheader_crit_edge

for.end87.for.cond68.preheader_crit_edge:         ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond68.preheader

for.end87.for.body97.lr.ph_crit_edge:             ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body97.lr.ph

for.body97.lr.ph:                                 ; preds = %for.end87.for.body97.lr.ph_crit_edge, %for.cond64.preheader.for.body97.lr.ph_crit_edge
  %add93 = add i32 %symTotal.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add93)
  %cmp101722 = icmp sgt i32 %add93, 0
  %inbufBitCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %symTotal.3)
  %cmp129727 = icmp ult i32 %symTotal.3, 2147483646
  %groups = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 18
  %smax802 = call i32 @llvm.smax.i32(i32 %add93, i32 2)
  br label %for.body97

for.cond94:                                       ; preds = %cleanup.for.cond94_crit_edge, %for.end214.for.cond94_crit_edge
  %t.5818 = phi i32 [ %t.4.lcssa, %for.end214.for.cond94_crit_edge ], [ %t.5, %cleanup.for.cond94_crit_edge ]
  %limit.1817 = phi ptr [ %add.ptr159, %for.end214.for.cond94_crit_edge ], [ %limit.0753, %cleanup.for.cond94_crit_edge ]
  %base.1816 = phi ptr [ %add.ptr156, %for.end214.for.cond94_crit_edge ], [ %base.0752, %cleanup.for.cond94_crit_edge ]
  %hufGroup.1815 = phi ptr [ %add.ptr, %for.end214.for.cond94_crit_edge ], [ %hufGroup.0751, %cleanup.for.cond94_crit_edge ]
  %inc228 = add nuw nsw i32 %j.3754, 1
  %exitcond807.not = icmp eq i32 %inc228, %call43
  br i1 %exitcond807.not, label %for.cond230.preheader, label %for.cond94.for.body97_crit_edge

for.cond94.for.body97_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body97

for.cond230.preheader:                            ; preds = %for.cond94
  %17 = call ptr @memset(ptr %byteCount4, i32 0, i32 1024)
  br label %for.body233

for.body97:                                       ; preds = %for.cond94.for.body97_crit_edge, %for.body97.lr.ph
  %j.3754 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc228, %for.cond94.for.body97_crit_edge ]
  %limit.0753 = phi ptr [ null, %for.body97.lr.ph ], [ %limit.1817, %for.cond94.for.body97_crit_edge ]
  %base.0752 = phi ptr [ null, %for.body97.lr.ph ], [ %base.1816, %for.cond94.for.body97_crit_edge ]
  %hufGroup.0751 = phi ptr [ null, %for.body97.lr.ph ], [ %hufGroup.1815, %for.cond94.for.body97_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 258, ptr nonnull %length) #9
  %18 = call ptr @memset(ptr %length, i32 255, i32 258)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %temp) #9
  %19 = call ptr @memset(ptr %temp, i32 255, i32 21)
  %call98 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 5) #11
  br i1 %cmp101722, label %for.cond104.preheader.preheader, label %for.body97.for.end125_crit_edge

for.body97.for.end125_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.cond104.preheader.preheader:                  ; preds = %for.body97
  %sub99 = add i32 %call98, -1
  br label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %if.then112.for.cond104.preheader_crit_edge, %for.cond104.preheader.preheader
  %cmp101725 = phi i1 [ %cmp101, %if.then112.for.cond104.preheader_crit_edge ], [ true, %for.cond104.preheader.preheader ]
  %t.1724 = phi i32 [ %t.2717, %if.then112.for.cond104.preheader_crit_edge ], [ %sub99, %for.cond104.preheader.preheader ]
  %i.3723 = phi i32 [ %inc124, %if.then112.for.cond104.preheader_crit_edge ], [ 0, %for.cond104.preheader.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %t.1724)
  %cmp105716 = icmp ugt i32 %t.1724, 19
  br i1 %cmp105716, label %for.cond104.preheader.cleanup_crit_edge, label %for.cond104.preheader.if.end108_crit_edge

for.cond104.preheader.if.end108_crit_edge:        ; preds = %for.cond104.preheader
  br label %if.end108

for.cond104.preheader.cleanup_crit_edge:          ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %if.end114.if.end108_crit_edge, %for.cond104.preheader.if.end108_crit_edge
  %t.2717 = phi i32 [ %add118, %if.end114.if.end108_crit_edge ], [ %t.1724, %for.cond104.preheader.if.end108_crit_edge ]
  %call109 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 2
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end108
  %20 = ptrtoint ptr %inbufBitCount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inbufBitCount, align 4
  %inc113 = add i32 %21, 1
  store i32 %inc113, ptr %inbufBitCount, align 4
  %22 = trunc i32 %t.2717 to i8
  %conv121 = add nuw nsw i8 %22, 1
  %arrayidx122 = getelementptr [258 x i8], ptr %length, i32 0, i32 %i.3723
  %23 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv121, ptr %arrayidx122, align 1
  %inc124 = add nuw nsw i32 %i.3723, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc124, i32 %add93)
  %cmp101 = icmp slt i32 %inc124, %add93
  %exitcond801.not = icmp eq i32 %inc124, %add93
  br i1 %exitcond801.not, label %if.then112.for.end125_crit_edge, label %if.then112.for.cond104.preheader_crit_edge

if.then112.for.cond104.preheader_crit_edge:       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader

if.then112.for.end125_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

if.end114:                                        ; preds = %if.end108
  %add115 = add nuw i32 %call109, 1
  %and116 = and i32 %add115, 2
  %sub117 = add i32 %t.2717, -1
  %add118 = add i32 %sub117, %and116
  %cmp105 = icmp ugt i32 %add118, 19
  br i1 %cmp105, label %if.end114.cleanup_crit_edge, label %if.end114.if.end108_crit_edge

if.end114.if.end108_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end125:                                       ; preds = %if.then112.for.end125_crit_edge, %for.body97.for.end125_crit_edge
  %cmp101.lcssa = phi i1 [ false, %for.body97.for.end125_crit_edge ], [ %cmp101, %if.then112.for.end125_crit_edge ]
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %length, align 1
  %conv127 = zext i8 %25 to i32
  br i1 %cmp129727, label %for.end125.for.body131_crit_edge, label %for.end125.for.end150_crit_edge

for.end125.for.end150_crit_edge:                  ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end150

for.end125.for.body131_crit_edge:                 ; preds = %for.end125
  br label %for.body131

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.end125.for.body131_crit_edge
  %maxLen.0730 = phi i32 [ %29, %for.body131.for.body131_crit_edge ], [ %conv127, %for.end125.for.body131_crit_edge ]
  %minLen.0729 = phi i32 [ %minLen.1, %for.body131.for.body131_crit_edge ], [ %conv127, %for.end125.for.body131_crit_edge ]
  %i.4728 = phi i32 [ %inc149, %for.body131.for.body131_crit_edge ], [ 1, %for.end125.for.body131_crit_edge ]
  %arrayidx132 = getelementptr [258 x i8], ptr %length, i32 0, i32 %i.4728
  %26 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %maxLen.0730, i32 %conv133)
  %cmp134 = icmp ult i32 %maxLen.0730, %conv133
  %28 = tail call i32 @llvm.smin.i32(i32 %minLen.0729, i32 %conv133)
  %minLen.1 = select i1 %cmp134, i32 %minLen.0729, i32 %28
  %29 = tail call i32 @llvm.smax.i32(i32 %maxLen.0730, i32 %conv133)
  %inc149 = add nuw nsw i32 %i.4728, 1
  %exitcond803.not = icmp eq i32 %inc149, %smax802
  br i1 %exitcond803.not, label %for.body131.for.end150_crit_edge, label %for.body131.for.body131_crit_edge

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131

for.body131.for.end150_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end150

for.end150:                                       ; preds = %for.body131.for.end150_crit_edge, %for.end125.for.end150_crit_edge
  %minLen.0.lcssa = phi i32 [ %conv127, %for.end125.for.end150_crit_edge ], [ %minLen.1, %for.body131.for.end150_crit_edge ]
  %maxLen.0.lcssa = phi i32 [ %conv127, %for.end125.for.end150_crit_edge ], [ %29, %for.body131.for.end150_crit_edge ]
  %add.ptr = getelementptr %struct.group_data, ptr %groups, i32 %j.3754
  %minLen152 = getelementptr %struct.group_data, ptr %groups, i32 %j.3754, i32 3
  %30 = ptrtoint ptr %minLen152 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %minLen.0.lcssa, ptr %minLen152, align 4
  %maxLen153 = getelementptr %struct.group_data, ptr %groups, i32 %j.3754, i32 4
  %31 = ptrtoint ptr %maxLen153 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %maxLen.0.lcssa, ptr %maxLen153, align 4
  %add.ptr156 = getelementptr %struct.group_data, ptr %groups, i32 %j.3754, i32 0, i32 20
  %add.ptr159 = getelementptr i32, ptr %add.ptr, i32 -1
  call void @__sanitizer_cov_trace_cmp4(i32 %minLen.0.lcssa, i32 %maxLen.0.lcssa)
  %cmp161.not738 = icmp sgt i32 %minLen.0.lcssa, %maxLen.0.lcssa
  br i1 %cmp161.not738, label %for.end150.for.cond184.preheader_crit_edge, label %for.end150.for.body163_crit_edge

for.end150.for.body163_crit_edge:                 ; preds = %for.end150
  br label %for.body163

for.end150.for.cond184.preheader_crit_edge:       ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %for.inc181.for.cond184.preheader_crit_edge, %for.end150.for.cond184.preheader_crit_edge
  br i1 %cmp101722, label %for.cond184.preheader.for.body187_crit_edge, label %for.cond184.preheader.for.cond194.preheader_crit_edge

for.cond184.preheader.for.cond194.preheader_crit_edge: ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond194.preheader

for.cond184.preheader.for.body187_crit_edge:      ; preds = %for.cond184.preheader
  br label %for.body187

for.body163:                                      ; preds = %for.inc181.for.body163_crit_edge, %for.end150.for.body163_crit_edge
  %pp.0741 = phi i32 [ %pp.1.lcssa, %for.inc181.for.body163_crit_edge ], [ 0, %for.end150.for.body163_crit_edge ]
  %i.5739 = phi i32 [ %inc182, %for.inc181.for.body163_crit_edge ], [ %minLen.0.lcssa, %for.end150.for.body163_crit_edge ]
  %arrayidx164 = getelementptr i32, ptr %add.ptr159, i32 %i.5739
  %32 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx164, align 4
  %arrayidx165 = getelementptr [21 x i8], ptr %temp, i32 0, i32 %i.5739
  %33 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx165, align 1
  br i1 %cmp101722, label %for.body163.for.body169_crit_edge, label %for.body163.for.inc181_crit_edge

for.body163.for.inc181_crit_edge:                 ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc181

for.body163.for.body169_crit_edge:                ; preds = %for.body163
  br label %for.body169

for.body169:                                      ; preds = %for.inc178.for.body169_crit_edge, %for.body163.for.body169_crit_edge
  %pp.1736 = phi i32 [ %pp.2, %for.inc178.for.body169_crit_edge ], [ %pp.0741, %for.body163.for.body169_crit_edge ]
  %t.3734 = phi i32 [ %inc179, %for.inc178.for.body169_crit_edge ], [ 0, %for.body163.for.body169_crit_edge ]
  %arrayidx170 = getelementptr [258 x i8], ptr %length, i32 0, i32 %t.3734
  %34 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5739, i32 %conv171)
  %cmp172 = icmp eq i32 %i.5739, %conv171
  br i1 %cmp172, label %if.then174, label %for.body169.for.inc178_crit_edge

for.body169.for.inc178_crit_edge:                 ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc178

if.then174:                                       ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #8
  %inc175 = add i32 %pp.1736, 1
  %arrayidx176 = getelementptr %struct.group_data, ptr %groups, i32 %j.3754, i32 2, i32 %pp.1736
  %36 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %t.3734, ptr %arrayidx176, align 4
  br label %for.inc178

for.inc178:                                       ; preds = %if.then174, %for.body169.for.inc178_crit_edge
  %pp.2 = phi i32 [ %inc175, %if.then174 ], [ %pp.1736, %for.body169.for.inc178_crit_edge ]
  %inc179 = add nuw nsw i32 %t.3734, 1
  %exitcond804.not = icmp eq i32 %inc179, %add93
  br i1 %exitcond804.not, label %for.inc178.for.inc181_crit_edge, label %for.inc178.for.body169_crit_edge

for.inc178.for.body169_crit_edge:                 ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body169

for.inc178.for.inc181_crit_edge:                  ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc181

for.inc181:                                       ; preds = %for.inc178.for.inc181_crit_edge, %for.body163.for.inc181_crit_edge
  %pp.1.lcssa = phi i32 [ %pp.0741, %for.body163.for.inc181_crit_edge ], [ %pp.2, %for.inc178.for.inc181_crit_edge ]
  %inc182 = add i32 %i.5739, 1
  %cmp161.not = icmp sgt i32 %inc182, %maxLen.0.lcssa
  br i1 %cmp161.not, label %for.inc181.for.cond184.preheader_crit_edge, label %for.inc181.for.body163_crit_edge

for.inc181.for.body163_crit_edge:                 ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body163

for.inc181.for.cond184.preheader_crit_edge:       ; preds = %for.inc181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond184.preheader

for.cond194.preheader:                            ; preds = %for.body187.for.cond194.preheader_crit_edge, %for.cond184.preheader.for.cond194.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %maxLen.0.lcssa, i32 %minLen.0.lcssa)
  %cmp195744 = icmp sgt i32 %maxLen.0.lcssa, %minLen.0.lcssa
  br i1 %cmp195744, label %for.cond194.preheader.for.body197_crit_edge, label %for.cond194.preheader.for.end214_crit_edge

for.cond194.preheader.for.end214_crit_edge:       ; preds = %for.cond194.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end214

for.cond194.preheader.for.body197_crit_edge:      ; preds = %for.cond194.preheader
  br label %for.body197

for.body187:                                      ; preds = %for.body187.for.body187_crit_edge, %for.cond184.preheader.for.body187_crit_edge
  %i.6743 = phi i32 [ %inc192, %for.body187.for.body187_crit_edge ], [ 0, %for.cond184.preheader.for.body187_crit_edge ]
  %arrayidx188 = getelementptr [258 x i8], ptr %length, i32 0, i32 %i.6743
  %37 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx188, align 1
  %idxprom = zext i8 %38 to i32
  %arrayidx189 = getelementptr [21 x i8], ptr %temp, i32 0, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx189, align 1
  %inc190 = add i8 %40, 1
  store i8 %inc190, ptr %arrayidx189, align 1
  %inc192 = add nuw nsw i32 %i.6743, 1
  %exitcond805.not = icmp eq i32 %inc192, %add93
  br i1 %exitcond805.not, label %for.body187.for.cond194.preheader_crit_edge, label %for.body187.for.body187_crit_edge

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body187

for.body187.for.cond194.preheader_crit_edge:      ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond194.preheader

for.body197:                                      ; preds = %for.body197.for.body197_crit_edge, %for.cond194.preheader.for.body197_crit_edge
  %pp.3747 = phi i32 [ %shl205, %for.body197.for.body197_crit_edge ], [ 0, %for.cond194.preheader.for.body197_crit_edge ]
  %t.4746 = phi i32 [ %add208, %for.body197.for.body197_crit_edge ], [ 0, %for.cond194.preheader.for.body197_crit_edge ]
  %i.7745 = phi i32 [ %add210, %for.body197.for.body197_crit_edge ], [ %minLen.0.lcssa, %for.cond194.preheader.for.body197_crit_edge ]
  %arrayidx198 = getelementptr [21 x i8], ptr %temp, i32 0, i32 %i.7745
  %41 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %42 to i32
  %add200 = add i32 %pp.3747, %conv199
  %sub201 = sub i32 %maxLen.0.lcssa, %i.7745
  %shl202 = shl i32 %add200, %sub201
  %sub203 = add i32 %shl202, -1
  %arrayidx204 = getelementptr i32, ptr %add.ptr159, i32 %i.7745
  %43 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub203, ptr %arrayidx204, align 4
  %shl205 = shl i32 %add200, 1
  %add208 = add i32 %t.4746, %conv199
  %sub209 = sub i32 %shl205, %add208
  %add210 = add nsw i32 %i.7745, 1
  %arrayidx211 = getelementptr i32, ptr %add.ptr156, i32 %add210
  %44 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub209, ptr %arrayidx211, align 4
  %exitcond806.not = icmp eq i32 %add210, %maxLen.0.lcssa
  br i1 %exitcond806.not, label %for.body197.for.end214_crit_edge, label %for.body197.for.body197_crit_edge

for.body197.for.body197_crit_edge:                ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body197

for.body197.for.end214_crit_edge:                 ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end214

for.end214:                                       ; preds = %for.body197.for.end214_crit_edge, %for.cond194.preheader.for.end214_crit_edge
  %t.4.lcssa = phi i32 [ 0, %for.cond194.preheader.for.end214_crit_edge ], [ %add208, %for.body197.for.end214_crit_edge ]
  %pp.3.lcssa = phi i32 [ 0, %for.cond194.preheader.for.end214_crit_edge ], [ %shl205, %for.body197.for.end214_crit_edge ]
  %add215 = add i32 %maxLen.0.lcssa, 1
  %arrayidx216 = getelementptr i32, ptr %add.ptr159, i32 %add215
  %45 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2147483647, ptr %arrayidx216, align 4
  %arrayidx217 = getelementptr [21 x i8], ptr %temp, i32 0, i32 %maxLen.0.lcssa
  %46 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx217, align 1
  %conv218 = zext i8 %47 to i32
  %add219 = add i32 %pp.3.lcssa, -1
  %sub220 = add i32 %add219, %conv218
  %arrayidx221 = getelementptr i32, ptr %add.ptr159, i32 %maxLen.0.lcssa
  %48 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub220, ptr %arrayidx221, align 4
  %arrayidx222 = getelementptr i32, ptr %add.ptr156, i32 %minLen.0.lcssa
  %49 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx222, align 4
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 258, ptr nonnull %length) #9
  br i1 %cmp101.lcssa, label %for.end214.cleanup415_crit_edge, label %for.end214.for.cond94_crit_edge

for.end214.for.cond94_crit_edge:                  ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond94

for.end214.cleanup415_crit_edge:                  ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

cleanup:                                          ; preds = %if.end114.cleanup_crit_edge, %for.cond104.preheader.cleanup_crit_edge
  %t.5 = phi i32 [ %add118, %if.end114.cleanup_crit_edge ], [ %t.1724, %for.cond104.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 258, ptr nonnull %length) #9
  br i1 %cmp101725, label %cleanup.cleanup415_crit_edge, label %cleanup.for.cond94_crit_edge

cleanup.for.cond94_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond94

cleanup.cleanup415_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

for.cond240.preheader:                            ; preds = %for.body233
  %groups248 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 18
  %inbufBitCount261 = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 9
  %inbufPos = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 7
  %inbufCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 6
  %inbufBits = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 10
  %inbuf = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 8
  %uglygep809 = getelementptr i8, ptr %bd, i32 42365
  br label %for.cond240.outer

for.body233:                                      ; preds = %for.body233.for.body233_crit_edge, %for.cond230.preheader
  %i.8762 = phi i32 [ 0, %for.cond230.preheader ], [ %inc238, %for.body233.for.body233_crit_edge ]
  %conv235 = trunc i32 %i.8762 to i8
  %arrayidx236 = getelementptr i8, ptr %mtfSymbol8, i32 %i.8762
  %50 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv235, ptr %arrayidx236, align 1
  %inc238 = add nuw nsw i32 %i.8762, 1
  %exitcond808.not = icmp eq i32 %inc238, 256
  br i1 %exitcond808.not, label %for.cond240.preheader, label %for.body233.for.body233_crit_edge

for.body233.for.body233_crit_edge:                ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body233

for.cond240:                                      ; preds = %for.cond240.outer, %if.then318
  %hufGroup.2 = phi ptr [ %hufGroup.3, %if.then318 ], [ %hufGroup.2.ph, %for.cond240.outer ]
  %base.2 = phi ptr [ %base.3, %if.then318 ], [ %base.2.ph, %for.cond240.outer ]
  %limit.2 = phi ptr [ %limit.3, %if.then318 ], [ %limit.2.ph, %for.cond240.outer ]
  %selector.0 = phi i32 [ %selector.1, %if.then318 ], [ %selector.0.ph, %for.cond240.outer ]
  %t.6 = phi i32 [ %add323, %if.then318 ], [ %t.6.ph, %for.cond240.outer ]
  %runPos.0 = phi i32 [ %shl324, %if.then318 ], [ 0, %for.cond240.outer ]
  %symCount.0 = phi i32 [ %symCount.1, %if.then318 ], [ %symCount.0.ph, %for.cond240.outer ]
  %dec241 = add i32 %symCount.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %symCount.0)
  %tobool242.not = icmp eq i32 %symCount.0, 0
  br i1 %tobool242.not, label %if.then243, label %for.cond240.if.end260_crit_edge

for.cond240.if.end260_crit_edge:                  ; preds = %for.cond240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

if.then243:                                       ; preds = %for.cond240
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.0, i32 %call51)
  %cmp244.not = icmp slt i32 %selector.0, %call51
  br i1 %cmp244.not, label %if.end247, label %if.then243.cleanup415_crit_edge

if.then243.cleanup415_crit_edge:                  ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end247:                                        ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #8
  %inc250 = add nsw i32 %selector.0, 1
  %arrayidx251 = getelementptr i8, ptr %selectors3, i32 %selector.0
  %51 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx251, align 1
  %conv252 = zext i8 %52 to i32
  %add.ptr253 = getelementptr %struct.group_data, ptr %groups248, i32 %conv252
  %add.ptr256 = getelementptr %struct.group_data, ptr %groups248, i32 %conv252, i32 0, i32 20
  %add.ptr259 = getelementptr i32, ptr %add.ptr253, i32 -1
  br label %if.end260

if.end260:                                        ; preds = %if.end247, %for.cond240.if.end260_crit_edge
  %hufGroup.3 = phi ptr [ %hufGroup.2, %for.cond240.if.end260_crit_edge ], [ %add.ptr253, %if.end247 ]
  %base.3 = phi ptr [ %base.2, %for.cond240.if.end260_crit_edge ], [ %add.ptr256, %if.end247 ]
  %limit.3 = phi ptr [ %limit.2, %for.cond240.if.end260_crit_edge ], [ %add.ptr259, %if.end247 ]
  %selector.1 = phi i32 [ %selector.0, %for.cond240.if.end260_crit_edge ], [ %inc250, %if.end247 ]
  %symCount.1 = phi i32 [ %dec241, %for.cond240.if.end260_crit_edge ], [ 49, %if.end247 ]
  %maxLen262 = getelementptr inbounds %struct.group_data, ptr %hufGroup.3, i32 0, i32 4
  %53 = ptrtoint ptr %inbufBitCount261 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inbufBitCount261, align 4
  %55 = ptrtoint ptr %maxLen262 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %maxLen262, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp263764 = icmp ult i32 %54, %56
  br i1 %cmp263764, label %while.body.lr.ph, label %if.end260.while.end_crit_edge

if.end260.while.end_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end260
  %57 = ptrtoint ptr %inbufCount to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inbufCount, align 4
  %59 = ptrtoint ptr %inbufPos to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inbufPos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp265855 = icmp eq i32 %60, %58
  br i1 %cmp265855, label %while.body.lr.ph.if.then267_crit_edge, label %if.end271.preheader

while.body.lr.ph.if.then267_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then267

if.end271.preheader:                              ; preds = %while.body.lr.ph
  %61 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inbuf, align 4
  br label %if.end271

while.body:                                       ; preds = %if.end271
  %63 = ptrtoint ptr %inbufPos to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inbufPos, align 4
  %cmp265 = icmp eq i32 %64, %58
  br i1 %cmp265, label %while.body.if.then267_crit_edge, label %while.body.if.end271_crit_edge

while.body.if.end271_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end271

while.body.if.then267_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then267

if.then267:                                       ; preds = %while.body.if.then267_crit_edge, %while.body.lr.ph.if.then267_crit_edge
  %.lcssa841 = phi i32 [ %56, %while.body.lr.ph.if.then267_crit_edge ], [ %74, %while.body.if.then267_crit_edge ]
  %conv269 = trunc i32 %.lcssa841 to i8
  %call270 = tail call fastcc i32 @get_bits(ptr noundef %bd, i8 noundef zeroext %conv269) #11
  br label %got_huff_bits

if.end271:                                        ; preds = %while.body.if.end271_crit_edge, %if.end271.preheader
  %65 = phi i32 [ %64, %while.body.if.end271_crit_edge ], [ %60, %if.end271.preheader ]
  %66 = phi i32 [ %add279, %while.body.if.end271_crit_edge ], [ %54, %if.end271.preheader ]
  %67 = ptrtoint ptr %inbufBits to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %inbufBits, align 4
  %shl272 = shl i32 %68, 8
  %inc274 = add i32 %65, 1
  %69 = ptrtoint ptr %inbufPos to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %inc274, ptr %inbufPos, align 4
  %arrayidx275 = getelementptr i8, ptr %62, i32 %65
  %70 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx275, align 1
  %conv276 = zext i8 %71 to i32
  %or = or i32 %shl272, %conv276
  store i32 %or, ptr %inbufBits, align 4
  %add279 = add i32 %66, 8
  %72 = ptrtoint ptr %inbufBitCount261 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add279, ptr %inbufBitCount261, align 4
  %73 = ptrtoint ptr %maxLen262 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %maxLen262, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add279, i32 %74)
  %cmp263 = icmp ult i32 %add279, %74
  br i1 %cmp263, label %while.body, label %if.end271.while.end_crit_edge

if.end271.while.end_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end271.while.end_crit_edge, %if.end260.while.end_crit_edge
  %.lcssa686 = phi i32 [ %54, %if.end260.while.end_crit_edge ], [ %add279, %if.end271.while.end_crit_edge ]
  %.lcssa = phi i32 [ %56, %if.end260.while.end_crit_edge ], [ %74, %if.end271.while.end_crit_edge ]
  %sub282 = sub i32 %.lcssa686, %.lcssa
  %75 = ptrtoint ptr %inbufBitCount261 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub282, ptr %inbufBitCount261, align 4
  %76 = ptrtoint ptr %inbufBits to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %inbufBits, align 4
  %shr = lshr i32 %77, %sub282
  %78 = ptrtoint ptr %maxLen262 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %maxLen262, align 4
  %notmask = shl nsw i32 -1, %79
  %sub287 = xor i32 %notmask, -1
  %and288 = and i32 %shr, %sub287
  br label %got_huff_bits

got_huff_bits:                                    ; preds = %while.end, %if.then267
  %j.4 = phi i32 [ %call270, %if.then267 ], [ %and288, %while.end ]
  %minLen289 = getelementptr inbounds %struct.group_data, ptr %hufGroup.3, i32 0, i32 3
  %80 = ptrtoint ptr %minLen289 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %minLen289, align 4
  br label %while.cond290

while.cond290:                                    ; preds = %while.cond290.while.cond290_crit_edge, %got_huff_bits
  %i.9 = phi i32 [ %81, %got_huff_bits ], [ %inc295, %while.cond290.while.cond290_crit_edge ]
  %arrayidx291 = getelementptr i32, ptr %limit.3, i32 %i.9
  %82 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx291, align 4
  %cmp292 = icmp sgt i32 %j.4, %83
  %inc295 = add i32 %i.9, 1
  br i1 %cmp292, label %while.cond290.while.cond290_crit_edge, label %while.end296

while.cond290.while.cond290_crit_edge:            ; preds = %while.cond290
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond290

while.end296:                                     ; preds = %while.cond290
  %84 = ptrtoint ptr %maxLen262 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %maxLen262, align 4
  %sub298 = sub i32 %85, %i.9
  %86 = ptrtoint ptr %inbufBitCount261 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %inbufBitCount261, align 4
  %add300 = add i32 %sub298, %87
  store i32 %add300, ptr %inbufBitCount261, align 4
  %88 = load i32, ptr %maxLen262, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %i.9)
  %cmp302 = icmp slt i32 %88, %i.9
  br i1 %cmp302, label %while.end296.cleanup415_crit_edge, label %lor.lhs.false304

while.end296.cleanup415_crit_edge:                ; preds = %while.end296
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

lor.lhs.false304:                                 ; preds = %while.end296
  %sub306 = sub i32 %88, %i.9
  %shr307 = ashr i32 %j.4, %sub306
  %arrayidx308 = getelementptr i32, ptr %base.3, i32 %i.9
  %89 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx308, align 4
  %sub309 = sub i32 %shr307, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %sub309)
  %cmp310 = icmp ugt i32 %sub309, 257
  br i1 %cmp310, label %lor.lhs.false304.cleanup415_crit_edge, label %if.end313

lor.lhs.false304.cleanup415_crit_edge:            ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end313:                                        ; preds = %lor.lhs.false304
  %arrayidx315 = getelementptr %struct.group_data, ptr %hufGroup.3, i32 0, i32 2, i32 %sub309
  %91 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx315, align 4
  %cmp316 = icmp ult i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %runPos.0)
  %tobool319.not = icmp eq i32 %runPos.0, 0
  br i1 %cmp316, label %if.then318, label %if.end325

if.then318:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select678 = select i1 %tobool319.not, i32 0, i32 %t.6
  %spec.select679 = select i1 %tobool319.not, i32 1, i32 %runPos.0
  %shl322 = shl i32 %spec.select679, %92
  %add323 = add i32 %shl322, %spec.select678
  %shl324 = shl i32 %spec.select679, 1
  br label %for.cond240

if.end325:                                        ; preds = %if.end313
  br i1 %tobool319.not, label %if.end325.if.end347_crit_edge, label %if.then327

if.end325.if.end347_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

if.then327:                                       ; preds = %if.end325
  %add328 = add i32 %t.6, %dbufCount.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %add328, i32 %3)
  %cmp329.not = icmp slt i32 %add328, %3
  br i1 %cmp329.not, label %if.end332, label %if.then327.cleanup415_crit_edge

if.then327.cleanup415_crit_edge:                  ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end332:                                        ; preds = %if.then327
  %93 = ptrtoint ptr %mtfSymbol8 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mtfSymbol8, align 1
  %idxprom334 = zext i8 %94 to i32
  %arrayidx335 = getelementptr i8, ptr %symToByte6, i32 %idxprom334
  %95 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx335, align 1
  %idxprom336 = zext i8 %96 to i32
  %arrayidx337 = getelementptr i32, ptr %byteCount4, i32 %idxprom336
  %97 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx337, align 4
  %add338 = add i32 %98, %t.6
  store i32 %add338, ptr %arrayidx337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.6)
  %tobool341.not768 = icmp eq i32 %t.6, 0
  br i1 %tobool341.not768, label %if.end332.if.end347_crit_edge, label %if.end332.while.body342_crit_edge

if.end332.while.body342_crit_edge:                ; preds = %if.end332
  br label %while.body342

if.end332.if.end347_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

while.body342:                                    ; preds = %while.body342.while.body342_crit_edge, %if.end332.while.body342_crit_edge
  %t.8770 = phi i32 [ %dec340, %while.body342.while.body342_crit_edge ], [ %t.6, %if.end332.while.body342_crit_edge ]
  %dbufCount.1769 = phi i32 [ %inc344, %while.body342.while.body342_crit_edge ], [ %dbufCount.0.ph, %if.end332.while.body342_crit_edge ]
  %dec340 = add i32 %t.8770, -1
  %inc344 = add i32 %dbufCount.1769, 1
  %arrayidx345 = getelementptr i32, ptr %1, i32 %dbufCount.1769
  %99 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %idxprom336, ptr %arrayidx345, align 4
  %tobool341.not = icmp eq i32 %dec340, 0
  br i1 %tobool341.not, label %while.body342.if.end347_crit_edge, label %while.body342.while.body342_crit_edge

while.body342.while.body342_crit_edge:            ; preds = %while.body342
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body342

while.body342.if.end347_crit_edge:                ; preds = %while.body342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

if.end347:                                        ; preds = %while.body342.if.end347_crit_edge, %if.end332.if.end347_crit_edge, %if.end325.if.end347_crit_edge
  %dbufCount.2 = phi i32 [ %dbufCount.0.ph, %if.end325.if.end347_crit_edge ], [ %dbufCount.0.ph, %if.end332.if.end347_crit_edge ], [ %inc344, %while.body342.if.end347_crit_edge ]
  %t.9 = phi i32 [ %t.6, %if.end325.if.end347_crit_edge ], [ -1, %if.end332.if.end347_crit_edge ], [ -1, %while.body342.if.end347_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %symTotal.3)
  %cmp348 = icmp sgt i32 %92, %symTotal.3
  br i1 %cmp348, label %if.end347.for.body376_crit_edge, label %if.end351

if.end347.for.body376_crit_edge:                  ; preds = %if.end347
  br label %for.body376

if.end351:                                        ; preds = %if.end347
  %cmp352.not = icmp slt i32 %dbufCount.2, %3
  br i1 %cmp352.not, label %if.end355, label %if.end351.cleanup415_crit_edge

if.end351.cleanup415_crit_edge:                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end355:                                        ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #8
  %sub356 = add i32 %92, -1
  %arrayidx357 = getelementptr i8, ptr %mtfSymbol8, i32 %sub356
  %100 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx357, align 1
  %102 = call ptr @memmove(ptr %uglygep809, ptr %mtfSymbol8, i32 %sub356)
  %103 = ptrtoint ptr %mtfSymbol8 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %101, ptr %mtfSymbol8, align 1
  %idxprom364 = zext i8 %101 to i32
  %arrayidx365 = getelementptr i8, ptr %symToByte6, i32 %idxprom364
  %104 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx365, align 1
  %idxprom366 = zext i8 %105 to i32
  %arrayidx367 = getelementptr i32, ptr %byteCount4, i32 %idxprom366
  %106 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx367, align 4
  %inc368 = add i32 %107, 1
  store i32 %inc368, ptr %arrayidx367, align 4
  %inc370 = add nsw i32 %dbufCount.2, 1
  %arrayidx371 = getelementptr i32, ptr %1, i32 %dbufCount.2
  %108 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %idxprom366, ptr %arrayidx371, align 4
  br label %for.cond240.outer

for.cond240.outer:                                ; preds = %if.end355, %for.cond240.preheader
  %hufGroup.2.ph = phi ptr [ %hufGroup.1815, %for.cond240.preheader ], [ %hufGroup.3, %if.end355 ]
  %base.2.ph = phi ptr [ %base.1816, %for.cond240.preheader ], [ %base.3, %if.end355 ]
  %limit.2.ph = phi ptr [ %limit.1817, %for.cond240.preheader ], [ %limit.3, %if.end355 ]
  %dbufCount.0.ph = phi i32 [ 0, %for.cond240.preheader ], [ %inc370, %if.end355 ]
  %selector.0.ph = phi i32 [ 0, %for.cond240.preheader ], [ %selector.1, %if.end355 ]
  %t.6.ph = phi i32 [ %t.5818, %for.cond240.preheader ], [ %t.9, %if.end355 ]
  %symCount.0.ph = phi i32 [ 0, %for.cond240.preheader ], [ %symCount.1, %if.end355 ]
  br label %for.cond240

for.cond383.preheader:                            ; preds = %for.body376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dbufCount.2)
  %cmp384774 = icmp sgt i32 %dbufCount.2, 0
  br i1 %cmp384774, label %for.cond383.preheader.for.body386_crit_edge, label %for.cond383.preheader.for.end400_crit_edge

for.cond383.preheader.for.end400_crit_edge:       ; preds = %for.cond383.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end400

for.cond383.preheader.for.body386_crit_edge:      ; preds = %for.cond383.preheader
  br label %for.body386

for.body376:                                      ; preds = %for.body376.for.body376_crit_edge, %if.end347.for.body376_crit_edge
  %j.5773 = phi i32 [ %add378, %for.body376.for.body376_crit_edge ], [ 0, %if.end347.for.body376_crit_edge ]
  %i.11772 = phi i32 [ %inc381, %for.body376.for.body376_crit_edge ], [ 0, %if.end347.for.body376_crit_edge ]
  %arrayidx377 = getelementptr i32, ptr %byteCount4, i32 %i.11772
  %109 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx377, align 4
  %add378 = add i32 %110, %j.5773
  store i32 %j.5773, ptr %arrayidx377, align 4
  %inc381 = add nuw nsw i32 %i.11772, 1
  %exitcond810.not = icmp eq i32 %inc381, 256
  br i1 %exitcond810.not, label %for.cond383.preheader, label %for.body376.for.body376_crit_edge

for.body376.for.body376_crit_edge:                ; preds = %for.body376
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body376

for.body386:                                      ; preds = %for.body386.for.body386_crit_edge, %for.cond383.preheader.for.body386_crit_edge
  %i.12775 = phi i32 [ %inc399, %for.body386.for.body386_crit_edge ], [ 0, %for.cond383.preheader.for.body386_crit_edge ]
  %arrayidx387 = getelementptr i32, ptr %1, i32 %i.12775
  %111 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx387, align 4
  %shl390 = shl i32 %i.12775, 8
  %idxprom391 = and i32 %112, 255
  %arrayidx392 = getelementptr i32, ptr %byteCount4, i32 %idxprom391
  %113 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx392, align 4
  %arrayidx393 = getelementptr i32, ptr %1, i32 %114
  %115 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx393, align 4
  %or394 = or i32 %116, %shl390
  store i32 %or394, ptr %arrayidx393, align 4
  %117 = load i32, ptr %arrayidx392, align 4
  %inc397 = add i32 %117, 1
  store i32 %inc397, ptr %arrayidx392, align 4
  %inc399 = add nuw nsw i32 %i.12775, 1
  %exitcond811.not = icmp eq i32 %inc399, %dbufCount.2
  br i1 %exitcond811.not, label %for.body386.for.end400_crit_edge, label %for.body386.for.body386_crit_edge

for.body386.for.body386_crit_edge:                ; preds = %for.body386
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body386

for.body386.for.end400_crit_edge:                 ; preds = %for.body386
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end400

for.end400:                                       ; preds = %for.body386.for.end400_crit_edge, %for.cond383.preheader.for.end400_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dbufCount.2)
  %tobool401.not = icmp eq i32 %dbufCount.2, 0
  br i1 %tobool401.not, label %for.end400.if.end414_crit_edge, label %if.then402

for.end400.if.end414_crit_edge:                   ; preds = %for.end400
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414

if.then402:                                       ; preds = %for.end400
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %dbufCount.2)
  %cmp403.not = icmp ult i32 %call20, %dbufCount.2
  br i1 %cmp403.not, label %if.end406, label %if.then402.cleanup415_crit_edge

if.then402.cleanup415_crit_edge:                  ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup415

if.end406:                                        ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx407 = getelementptr i32, ptr %1, i32 %call20
  %118 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx407, align 4
  %writePos = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 1
  %conv411 = and i32 %119, 255
  %writeCurrent = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 4
  %120 = ptrtoint ptr %writeCurrent to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv411, ptr %writeCurrent, align 4
  %shr413 = ashr i32 %119, 8
  %121 = ptrtoint ptr %writePos to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shr413, ptr %writePos, align 4
  %writeRunCountdown = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 2
  %122 = ptrtoint ptr %writeRunCountdown to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 5, ptr %writeRunCountdown, align 4
  br label %if.end414

if.end414:                                        ; preds = %if.end406, %for.end400.if.end414_crit_edge
  %writeCount = getelementptr inbounds %struct.bunzip_data, ptr %bd, i32 0, i32 3
  %123 = ptrtoint ptr %writeCount to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %dbufCount.2, ptr %writeCount, align 4
  br label %cleanup415

cleanup415:                                       ; preds = %if.end414, %if.then402.cleanup415_crit_edge, %if.end351.cleanup415_crit_edge, %if.then327.cleanup415_crit_edge, %lor.lhs.false304.cleanup415_crit_edge, %while.end296.cleanup415_crit_edge, %if.then243.cleanup415_crit_edge, %cleanup.cleanup415_crit_edge, %for.end214.cleanup415_crit_edge, %for.body71.cleanup415_crit_edge, %if.end50.cleanup415_crit_edge, %for.end42.cleanup415_crit_edge, %if.end19.cleanup415_crit_edge, %if.end16.cleanup415_crit_edge, %if.end.cleanup415_crit_edge, %entry.cleanup415_crit_edge
  %retval.2 = phi i32 [ 0, %if.end414 ], [ -1, %entry.cleanup415_crit_edge ], [ -2, %if.end.cleanup415_crit_edge ], [ -7, %if.end16.cleanup415_crit_edge ], [ -5, %if.end19.cleanup415_crit_edge ], [ -5, %for.end42.cleanup415_crit_edge ], [ -5, %if.end50.cleanup415_crit_edge ], [ -5, %if.then402.cleanup415_crit_edge ], [ -5, %if.then243.cleanup415_crit_edge ], [ -5, %lor.lhs.false304.cleanup415_crit_edge ], [ -5, %while.end296.cleanup415_crit_edge ], [ -5, %if.then327.cleanup415_crit_edge ], [ -5, %if.end351.cleanup415_crit_edge ], [ -5, %for.end214.cleanup415_crit_edge ], [ -5, %cleanup.cleanup415_crit_edge ], [ -5, %for.body71.cleanup415_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_bunzip2.c", i32 694, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_bunzip2.c", i32 702, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_bunzip2.c", i32 724, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_bunzip2.c", i32 728, i32 9}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
