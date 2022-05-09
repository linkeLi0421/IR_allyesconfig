; ModuleID = '/llk/IR_all_yes/lib/decompress_unxz.c_pt.bc'
source_filename = "../lib/decompress_unxz.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"XZ decompressor ran out of memory\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Input is not in the XZ format (wrong magic bytes)\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Input was encoded with settings that are not supported by this XZ decoder\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"XZ-compressed data is corrupt\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bug in the XZ decompressor\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 357, i32 9 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 361, i32 9 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 365, i32 9 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 371, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [25 x i8] c"../lib/decompress_unxz.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 375, i32 9 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unxz(ptr noundef %in, i32 noundef %in_size, ptr noundef readonly %fill, ptr noundef readonly %flush, ptr noundef %out, ptr noundef %in_used, ptr nocapture noundef readonly %error) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %b = alloca %struct.xz_buf, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %b) #6
  %0 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %cmp.not = icmp eq ptr %in_used, null
  %5 = call ptr @memset(ptr %b, i32 255, i32 24)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %in_used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %in_used, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp1 = icmp eq ptr %fill, null
  %cmp2 = icmp eq ptr %flush, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @xz_dec_init(i32 noundef 0, i32 noundef 0) #6
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call ptr @xz_dec_init(i32 noundef 2, i32 noundef -1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %s.0 = phi ptr [ %call, %if.then3 ], [ %call4, %if.else ]
  %cmp6 = icmp eq ptr %s.0, null
  br i1 %cmp6, label %if.end5.error_alloc_state_crit_edge, label %if.end8

if.end5.error_alloc_state_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_alloc_state

if.end8:                                          ; preds = %if.end5
  br i1 %cmp2, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %out, ptr %2, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %4, align 4
  br label %if.end20

if.else12:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 4096) #7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %2, align 4
  %cmp17 = icmp eq ptr %call7.i, null
  br i1 %cmp17, label %if.else12.error_alloc_out_crit_edge, label %if.else12.if.end20_crit_edge

if.else12.if.end20_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.else12.error_alloc_out_crit_edge:              ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_alloc_out

if.end20:                                         ; preds = %if.else12.if.end20_crit_edge, %if.then10
  %cmp21 = icmp eq ptr %in, null
  br i1 %cmp21, label %if.then22, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4096) #7
  %cmp24 = icmp eq ptr %call7.i130, null
  br i1 %cmp24, label %error_alloc_in, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %in.addr.0 = phi ptr [ %call7.i130, %if.then22.if.end27_crit_edge ], [ %in, %if.end20.if.end27_crit_edge ]
  %13 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %in.addr.0, ptr %b, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %in_size, ptr %1, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %3, align 4
  br i1 %or.cond, label %if.then33, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  br label %do.body

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %call34 = call i32 @xz_dec_run(ptr noundef nonnull %s.0, ptr noundef nonnull %b) #6
  br label %if.end80

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end27.do.body_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp38 = icmp ne i32 %18, %20
  %or.cond129 = or i1 %cmp1, %cmp38
  br i1 %or.cond129, label %do.body.if.end52_crit_edge, label %if.then41

do.body.if.end52_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then41:                                        ; preds = %do.body
  br i1 %cmp.not, label %if.then41.if.end45_crit_edge, label %if.then43

if.then41.if.end45_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %in_used to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_used, align 4
  %add = add i32 %22, %18
  store i32 %add, ptr %in_used, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then41.if.end45_crit_edge
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %0, align 4
  %call47 = call i32 %fill(ptr noundef %in.addr.0, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end45.do.end_crit_edge, label %if.end50

if.end45.do.end_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call47, ptr %1, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %do.body.if.end52_crit_edge
  %call53 = call i32 @xz_dec_run(ptr noundef nonnull %s.0, ptr noundef nonnull %b) #6
  br i1 %cmp2, label %if.end52.do.cond_crit_edge, label %land.lhs.true55

if.end52.do.cond_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

land.lhs.true55:                                  ; preds = %if.end52
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp58 = icmp eq i32 %26, %28
  br i1 %cmp58, label %land.lhs.true55.if.then63_crit_edge, label %lor.lhs.false

land.lhs.true55.if.then63_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63

lor.lhs.false:                                    ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp59.not = icmp eq i32 %call53, 0
  br i1 %cmp59.not, label %lor.lhs.false.do.cond_crit_edge, label %land.lhs.true60

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

land.lhs.true60:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp62.not = icmp eq i32 %26, 0
  br i1 %cmp62.not, label %land.lhs.true60.do.end_crit_edge, label %land.lhs.true60.if.then63_crit_edge

land.lhs.true60.if.then63_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63

land.lhs.true60.do.end_crit_edge:                 ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then63:                                        ; preds = %land.lhs.true60.if.then63_crit_edge, %land.lhs.true55.if.then63_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %call66 = call i32 %flush(ptr noundef %30, i32 noundef %26) #6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %32)
  %cmp68.not = icmp eq i32 %call66, %32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %3, align 4
  br i1 %cmp68.not, label %if.then63.do.cond_crit_edge, label %if.then63.do.end_crit_edge

if.then63.do.end_crit_edge:                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then63.do.cond_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

do.cond:                                          ; preds = %if.then63.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge, %if.end52.do.cond_crit_edge
  %ret.1 = phi i32 [ 0, %lor.lhs.false.do.cond_crit_edge ], [ %call53, %if.end52.do.cond_crit_edge ], [ %call53, %if.then63.do.cond_crit_edge ]
  %cmp73 = icmp eq i32 %ret.1, 0
  br i1 %cmp73, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.then63.do.end_crit_edge, %land.lhs.true60.do.end_crit_edge, %if.end45.do.end_crit_edge
  %ret.2 = phi i32 [ %ret.1, %do.cond.do.end_crit_edge ], [ 8, %if.end45.do.end_crit_edge ], [ %call53, %land.lhs.true60.do.end_crit_edge ], [ 8, %if.then63.do.end_crit_edge ]
  br i1 %cmp21, label %if.then74, label %do.end.if.end75_crit_edge

do.end.if.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.then74:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree(ptr noundef %in.addr.0) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %do.end.if.end75_crit_edge
  br i1 %cmp2, label %if.end75.if.end80_crit_edge, label %if.then77

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %35) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end75.if.end80_crit_edge, %if.then33
  %ret.3 = phi i32 [ %call34, %if.then33 ], [ %ret.2, %if.then77 ], [ %ret.2, %if.end75.if.end80_crit_edge ]
  br i1 %cmp.not, label %if.end80.if.end85_crit_edge, label %if.then82

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %0, align 4
  %38 = ptrtoint ptr %in_used to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in_used, align 4
  %add84 = add i32 %39, %37
  store i32 %add84, ptr %in_used, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end80.if.end85_crit_edge
  call void @xz_dec_end(ptr noundef nonnull %s.0) #6
  %40 = zext i32 %ret.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.3, label %sw.default [
    i32 1, label %if.end85.cleanup_crit_edge
    i32 3, label %sw.bb86
    i32 5, label %sw.bb87
    i32 6, label %sw.bb88
    i32 7, label %if.end85.sw.bb89_crit_edge
    i32 8, label %if.end85.sw.bb89_crit_edge133
  ]

if.end85.sw.bb89_crit_edge133:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb89

if.end85.sw.bb89_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb86:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str) #6
  br label %cleanup

sw.bb87:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.1) #6
  br label %cleanup

sw.bb88:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.2) #6
  br label %cleanup

sw.bb89:                                          ; preds = %if.end85.sw.bb89_crit_edge, %if.end85.sw.bb89_crit_edge133
  call void %error(ptr noundef nonnull @.str.3) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  call void %error(ptr noundef nonnull @.str.4) #6
  br label %cleanup

error_alloc_in:                                   ; preds = %if.then22
  br i1 %cmp2, label %error_alloc_in.error_alloc_out_crit_edge, label %if.then91

error_alloc_in.error_alloc_out_crit_edge:         ; preds = %error_alloc_in
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_alloc_out

if.then91:                                        ; preds = %error_alloc_in
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %42) #6
  br label %error_alloc_out

error_alloc_out:                                  ; preds = %if.then91, %error_alloc_in.error_alloc_out_crit_edge, %if.else12.error_alloc_out_crit_edge
  tail call void @xz_dec_end(ptr noundef nonnull %s.0) #6
  br label %error_alloc_state

error_alloc_state:                                ; preds = %error_alloc_out, %if.end5.error_alloc_state_crit_edge
  tail call void %error(ptr noundef nonnull @.str) #6
  br label %cleanup

cleanup:                                          ; preds = %error_alloc_state, %sw.default, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %if.end85.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %error_alloc_state ], [ 0, %if.end85.cleanup_crit_edge ], [ -1, %sw.default ], [ -1, %sw.bb89 ], [ -1, %sw.bb88 ], [ -1, %sw.bb87 ], [ -1, %sw.bb86 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %b) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/decompress_unxz.c", i32 357, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/decompress_unxz.c", i32 361, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/decompress_unxz.c", i32 365, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/decompress_unxz.c", i32 371, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/decompress_unxz.c", i32 375, i32 9}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
