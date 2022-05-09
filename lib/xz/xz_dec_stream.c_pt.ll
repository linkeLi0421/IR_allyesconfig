; ModuleID = '/llk/IR_all_yes/lib/xz/xz_dec_stream.c_pt.bc'
source_filename = "../lib/xz/xz_dec_stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_dec = type { i32, i32, i64, i32, i32, i32, i32, i32, i8, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, ptr, ptr, i8 }
%struct.anon = type { i64, i64, i32 }
%struct.anon.0 = type { i64, i64, i64, %struct.xz_dec_hash }
%struct.xz_dec_hash = type { i64, i64, i32 }
%struct.anon.1 = type { i32, i64, i64, %struct.xz_dec_hash }
%struct.anon.2 = type { i32, i32, [1024 x i8] }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FD7zXZ\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"YZ\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 389, i32 7 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [26 x i8] c"../lib/xz/xz_dec_stream.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 424, i32 7 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xz_dec_run(ptr noundef %s, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %s, align 8
  %allow_buf_error.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 8
  %3 = ptrtoint ptr %allow_buf_error.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %allow_buf_error.i, align 4
  %pos.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos.i, align 4
  %crc32.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %5 = ptrtoint ptr %crc32.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %crc32.i, align 8
  %block.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10
  %size.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 1
  %6 = call ptr @memset(ptr %block.i, i32 0, i32 100)
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %size.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %8 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_pos, align 4
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %10 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_pos, align 4
  %in_start.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %in_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %in_start.i, align 8
  %in_size.i.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %temp.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12
  %size.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 1
  %buf.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2
  %add.ptr.i208.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 6
  %add.ptr9.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 8
  %arrayidx22.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 7
  %check_type.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 6
  %size.i47 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 9, i32 2
  %arrayidx.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 1
  %pos.i.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 1
  %vli.i.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 2
  %block_header34.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 9
  %uncompressed60.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 9, i32 1
  %bcj_active.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 15
  %bcj.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 14
  %lzma2.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 13
  %block.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10
  %out_start.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 4
  %uncompressed.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 1
  %crc32.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %out.i.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %hash.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 3
  %uncompressed82.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 3, i32 1
  %crc3286.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 3, i32 2
  %count.i.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end
  %13 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %while.cond.i.while.cond.i.backedge_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %while.cond.i.sw.bb5.i_crit_edge
    i32 2, label %while.cond.i.sw.bb27.i_crit_edge
    i32 3, label %while.cond.i.sw.bb37.i_crit_edge
    i32 4, label %while.cond.i.sw.bb44.i_crit_edge
    i32 5, label %while.cond.i.sw.bb66.i_crit_edge
    i32 6, label %sw.bb77.i
    i32 7, label %while.cond.i.sw.bb84.i_crit_edge
    i32 8, label %while.cond.i.sw.bb119.i_crit_edge
    i32 9, label %while.cond.i.sw.bb128.i_crit_edge
  ]

while.cond.i.sw.bb128.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb128.i

while.cond.i.sw.bb119.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb119.i

while.cond.i.sw.bb84.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb84.i

while.cond.i.sw.bb66.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb66.i

while.cond.i.sw.bb44.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb44.i

while.cond.i.sw.bb37.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb37.i

while.cond.i.sw.bb27.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb27.i

while.cond.i.sw.bb5.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

sw.bb.i:                                          ; preds = %while.cond.i
  %16 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_size.i.i, align 4
  %18 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_pos, align 4
  %sub.i.i = sub i32 %17, %19
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 4
  %22 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp.i.i, align 8
  %sub2.i.i = sub i32 %21, %23
  %24 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub2.i.i) #12
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %23
  %25 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 %19
  %27 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr7.i.i, i32 %24)
  %28 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_pos, align 4
  %add.i.i = add i32 %29, %24
  store i32 %add.i.i, ptr %in_pos, align 4
  %30 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %temp.i.i, align 8
  %add11.i.i = add i32 %31, %24
  %32 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i, i32 %33)
  %cmp16.i.i = icmp eq i32 %add11.i.i, %33
  %spec.store.select.i.i = select i1 %cmp16.i.i, i32 0, i32 %add11.i.i
  %34 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.store.select.i.i, ptr %temp.i.i, align 8
  br i1 %cmp16.i.i, label %if.end.i, label %sw.bb.i.dec_main.exit_crit_edge

sw.bb.i.dec_main.exit_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end.i:                                         ; preds = %sw.bb.i
  %35 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %s, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %buf.i.i, ptr noundef nonnull dereferenceable(6) @.str, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end.i.dec_main.exit_crit_edge

if.end.i.dec_main.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end.i.i:                                       ; preds = %if.end.i
  %call4.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i208.i, i32 noundef 2) #16
  %neg.i.i = xor i32 %call4.i.i, -1
  %36 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr9.i.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %neg.i.i)
  %cmp11.not.i.i = icmp eq i32 %38, %neg.i.i
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %if.end.i.i.dec_main.exit_crit_edge

if.end.i.i.dec_main.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end13.i.i:                                     ; preds = %if.end.i.i
  %39 = ptrtoint ptr %add.ptr.i208.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i208.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp16.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp16.not.i.i, label %if.end19.i.i, label %if.end13.i.i.dec_main.exit_crit_edge

if.end13.i.i.dec_main.exit_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end19.i.i:                                     ; preds = %if.end13.i.i
  %41 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx22.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %42)
  %cmp24.i.i = icmp ugt i8 %42, 15
  br i1 %cmp24.i.i, label %if.end19.i.i.dec_main.exit_crit_edge, label %if.end27.i.i

if.end19.i.i.dec_main.exit_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end27.i.i:                                     ; preds = %if.end19.i.i
  %conv23.i.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %check_type.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv23.i.i, ptr %check_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp33.i.i = icmp ugt i8 %42, 1
  br i1 %cmp33.i.i, label %if.end27.i.i.dec_main.exit_crit_edge, label %if.end27.i.i.sw.bb5.i_crit_edge

if.end27.i.i.sw.bb5.i_crit_edge:                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

if.end27.i.i.dec_main.exit_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

sw.bb5.i:                                         ; preds = %if.end27.i.i.sw.bb5.i_crit_edge, %while.cond.i.sw.bb5.i_crit_edge
  %44 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %in_pos, align 4
  %46 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp7.i = icmp eq i32 %45, %47
  br i1 %cmp7.i, label %sw.bb5.i.dec_main.exit_crit_edge, label %if.end9.i

sw.bb5.i.dec_main.exit_crit_edge:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end9.i:                                        ; preds = %sw.bb5.i
  %48 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b, align 4
  %arrayidx.i = getelementptr i8, ptr %49, i32 %45
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp11.i = icmp eq i8 %51, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end17.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %45, 1
  %52 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc.i, ptr %in_pos, align 4
  %53 = ptrtoint ptr %in_start.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %45, ptr %in_start.i, align 8
  br label %sw.epilog.sink.split.i

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %51 to i32
  %add.i = shl nuw nsw i32 %conv.i, 2
  %mul.i = add nuw nsw i32 %add.i, 4
  %54 = ptrtoint ptr %size.i47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.i, ptr %size.i47, align 8
  %55 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i, ptr %size.i.i, align 4
  %56 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %temp.i.i, align 8
  %57 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %s, align 8
  br label %sw.bb27.i

sw.bb27.i:                                        ; preds = %if.end17.i, %while.cond.i.sw.bb27.i_crit_edge
  %58 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %in_size.i.i, align 4
  %60 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in_pos, align 4
  %sub.i211.i = sub i32 %59, %61
  %62 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i.i, align 4
  %64 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %temp.i.i, align 8
  %sub2.i214.i = sub i32 %63, %65
  %66 = tail call i32 @llvm.umin.i32(i32 %sub.i211.i, i32 %sub2.i214.i) #12
  %add.ptr.i216.i = getelementptr i8, ptr %buf.i.i, i32 %65
  %67 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b, align 4
  %add.ptr7.i217.i = getelementptr i8, ptr %68, i32 %61
  %69 = call ptr @memcpy(ptr %add.ptr.i216.i, ptr %add.ptr7.i217.i, i32 %66)
  %70 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %in_pos, align 4
  %add.i218.i = add i32 %71, %66
  store i32 %add.i218.i, ptr %in_pos, align 4
  %72 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %temp.i.i, align 8
  %add11.i219.i = add i32 %73, %66
  %74 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i219.i, i32 %75)
  %cmp16.i220.i = icmp eq i32 %add11.i219.i, %75
  %spec.store.select.i221.i = select i1 %cmp16.i220.i, i32 0, i32 %add11.i219.i
  %76 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.store.select.i221.i, ptr %temp.i.i, align 8
  br i1 %cmp16.i220.i, label %if.end30.i, label %sw.bb27.i.dec_main.exit_crit_edge

sw.bb27.i.dec_main.exit_crit_edge:                ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end30.i:                                       ; preds = %sw.bb27.i
  %sub.i224.i = add i32 %add11.i219.i, -4
  %77 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i224.i, ptr %size.i.i, align 4
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf.i.i, i32 noundef %sub.i224.i) #16
  %neg.i226.i = xor i32 %call.i.i, -1
  %add.ptr.i227.i = getelementptr i8, ptr %buf.i.i, i32 %sub.i224.i
  %78 = ptrtoint ptr %add.ptr.i227.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i227.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %neg.i226.i)
  %cmp.not.i.i = icmp eq i32 %80, %neg.i226.i
  br i1 %cmp.not.i.i, label %if.end.i228.i, label %if.end30.i.dec_main.exit_crit_edge

if.end30.i.dec_main.exit_crit_edge:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end.i228.i:                                    ; preds = %if.end30.i
  %81 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %temp.i.i, align 8
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %83 to i32
  %and.i.i = and i32 %conv.i.i, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i, label %if.end.i228.i.dec_main.exit_crit_edge

if.end.i228.i.dec_main.exit_crit_edge:            ; preds = %if.end.i228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end14.i.i:                                     ; preds = %if.end.i228.i
  %and19.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end14.i.i.if.end36.i.i_crit_edge, label %if.then21.i.i

if.end14.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i.i

if.then21.i.i:                                    ; preds = %if.end14.i.i
  %84 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i.i = icmp eq i32 %85, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then21.i.i.while.cond.i.i.i.preheader_crit_edge

if.then21.i.i.while.cond.i.i.i.preheader_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i.preheader

if.then.i.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %vli.i.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %vli.i.i.i, align 8
  br label %while.cond.i.i.i.preheader

while.cond.i.i.i.preheader:                       ; preds = %if.then.i.i.i, %if.then21.i.i.while.cond.i.i.i.preheader_crit_edge
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end19.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.i.i.i.preheader
  %87 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %temp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %sub.i224.i)
  %cmp1.i.i.i = icmp ult i32 %88, %sub.i224.i
  br i1 %cmp1.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.dec_main.exit_crit_edge

while.cond.i.i.i.dec_main.exit_crit_edge:         ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %buf.i.i, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %88, 1
  %91 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %inc.i.i.i, ptr %temp.i.i, align 4
  %conv.i.i.i = zext i8 %90 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 127
  %92 = zext i32 %and.i.i.i to i64
  %93 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pos.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %94 to i64
  %shl.i.i.i = shl i64 %92, %sh_prom.i.i.i
  %95 = ptrtoint ptr %vli.i.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %vli.i.i.i, align 8
  %or.i.i.i = or i64 %shl.i.i.i, %96
  store i64 %or.i.i.i, ptr %vli.i.i.i, align 8
  %and6.i.i.i = and i32 %conv.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %cmp7.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %cmp7.i.i.i, label %if.then9.i.i.i, label %if.end19.i.i.i

if.then9.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp11.i.i.i = icmp ne i8 %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp14.not.i.i.i = icmp eq i32 %94, 0
  %or.cond.i.i.i = select i1 %cmp11.i.i.i, i1 true, i1 %cmp14.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end33.i.i, label %if.then9.i.i.i.dec_main.exit_crit_edge

if.then9.i.i.i.dec_main.exit_crit_edge:           ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end19.i.i.i:                                   ; preds = %while.body.i.i.i
  %add.i.i.i = add i32 %94, 7
  %97 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i.i.i, ptr %pos.i.i.i, align 4
  %cmp22.i.i.i = icmp eq i32 %add.i.i.i, 63
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.dec_main.exit_crit_edge, label %if.end19.i.i.i.while.cond.i.i.i_crit_edge

if.end19.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

if.end19.i.i.i.dec_main.exit_crit_edge:           ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end33.i.i:                                     ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %pos.i.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end33.i.i, %if.end14.i.i.if.end36.i.i_crit_edge
  %.sink.i.i = phi i64 [ %or.i.i.i, %if.end33.i.i ], [ -1, %if.end14.i.i.if.end36.i.i_crit_edge ]
  %99 = ptrtoint ptr %block_header34.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %.sink.i.i, ptr %block_header34.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %tobool42.not.i.i = icmp sgt i8 %83, -1
  br i1 %tobool42.not.i.i, label %if.end36.i.i.if.end61.i.i_crit_edge, label %if.then43.i.i

if.end36.i.i.if.end61.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

if.then43.i.i:                                    ; preds = %if.end36.i.i
  %100 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i229.i.i = icmp eq i32 %101, 0
  br i1 %cmp.i229.i.i, label %if.then.i231.i.i, label %if.then43.i.i.while.cond.i235.i.i.preheader_crit_edge

if.then43.i.i.while.cond.i235.i.i.preheader_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i235.i.i.preheader

if.then.i231.i.i:                                 ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %vli.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %vli.i.i.i, align 8
  br label %while.cond.i235.i.i.preheader

while.cond.i235.i.i.preheader:                    ; preds = %if.then.i231.i.i, %if.then43.i.i.while.cond.i235.i.i.preheader_crit_edge
  br label %while.cond.i235.i.i

while.cond.i235.i.i:                              ; preds = %if.end19.i253.i.i.while.cond.i235.i.i_crit_edge, %while.cond.i235.i.i.preheader
  %103 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %temp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %sub.i224.i)
  %cmp1.i234.i.i = icmp ult i32 %104, %sub.i224.i
  br i1 %cmp1.i234.i.i, label %while.body.i245.i.i, label %while.cond.i235.i.i.dec_main.exit_crit_edge

while.cond.i235.i.i.dec_main.exit_crit_edge:      ; preds = %while.cond.i235.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

while.body.i245.i.i:                              ; preds = %while.cond.i235.i.i
  %arrayidx.i236.i.i = getelementptr i8, ptr %buf.i.i, i32 %104
  %105 = ptrtoint ptr %arrayidx.i236.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i236.i.i, align 1
  %inc.i237.i.i = add nuw i32 %104, 1
  %107 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %inc.i237.i.i, ptr %temp.i.i, align 4
  %conv.i238.i.i = zext i8 %106 to i32
  %and.i239.i.i = and i32 %conv.i238.i.i, 127
  %108 = zext i32 %and.i239.i.i to i64
  %109 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pos.i.i.i, align 4
  %sh_prom.i240.i.i = zext i32 %110 to i64
  %shl.i241.i.i = shl i64 %108, %sh_prom.i240.i.i
  %111 = ptrtoint ptr %vli.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %vli.i.i.i, align 8
  %or.i242.i.i = or i64 %shl.i241.i.i, %112
  store i64 %or.i242.i.i, ptr %vli.i.i.i, align 8
  %and6.i243.i.i = and i32 %conv.i238.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i243.i.i)
  %cmp7.i244.i.i = icmp eq i32 %and6.i243.i.i, 0
  br i1 %cmp7.i244.i.i, label %if.then9.i249.i.i, label %if.end19.i253.i.i

if.then9.i249.i.i:                                ; preds = %while.body.i245.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp11.i246.i.i = icmp ne i8 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp14.not.i247.i.i = icmp eq i32 %110, 0
  %or.cond.i248.i.i = select i1 %cmp11.i246.i.i, i1 true, i1 %cmp14.not.i247.i.i
  br i1 %or.cond.i248.i.i, label %if.end55.i.i, label %if.then9.i249.i.i.dec_main.exit_crit_edge

if.then9.i249.i.i.dec_main.exit_crit_edge:        ; preds = %if.then9.i249.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end19.i253.i.i:                                ; preds = %while.body.i245.i.i
  %add.i251.i.i = add i32 %110, 7
  %113 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add.i251.i.i, ptr %pos.i.i.i, align 4
  %cmp22.i252.i.i = icmp eq i32 %add.i251.i.i, 63
  br i1 %cmp22.i252.i.i, label %if.end19.i253.i.i.dec_main.exit_crit_edge, label %if.end19.i253.i.i.while.cond.i235.i.i_crit_edge

if.end19.i253.i.i.while.cond.i235.i.i_crit_edge:  ; preds = %if.end19.i253.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i235.i.i

if.end19.i253.i.i.dec_main.exit_crit_edge:        ; preds = %if.end19.i253.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end55.i.i:                                     ; preds = %if.then9.i249.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %pos.i.i.i, align 4
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end55.i.i, %if.end36.i.i.if.end61.i.i_crit_edge
  %.sink275.i.i = phi i64 [ %or.i242.i.i, %if.end55.i.i ], [ -1, %if.end36.i.i.if.end61.i.i_crit_edge ]
  %115 = ptrtoint ptr %uncompressed60.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %.sink275.i.i, ptr %uncompressed60.i.i, align 8
  %116 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool67.not.i.i = icmp eq i8 %116, 0
  %117 = ptrtoint ptr %bcj_active.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %bcj_active.i.i, align 8
  br i1 %tobool67.not.i.i, label %if.end61.i.i.if.end101.i.i_crit_edge, label %if.then70.i.i

if.end61.i.i.if.end101.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i.i

if.then70.i.i:                                    ; preds = %if.end61.i.i
  %118 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %temp.i.i, align 8
  %sub75.i.i = sub i32 %sub.i224.i, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub75.i.i)
  %cmp76.i.i = icmp ult i32 %sub75.i.i, 2
  br i1 %cmp76.i.i, label %if.then70.i.i.dec_main.exit_crit_edge, label %if.end79.i.i

if.then70.i.i.dec_main.exit_crit_edge:            ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end79.i.i:                                     ; preds = %if.then70.i.i
  %120 = ptrtoint ptr %bcj.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bcj.i.i, align 4
  %inc.i.i = add i32 %119, 1
  %122 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %inc.i.i, ptr %temp.i.i, align 8
  %arrayidx84.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %119
  %123 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx84.i.i, align 1
  %call85.i.i = tail call i32 @xz_dec_bcj_reset(ptr noundef %121, i8 noundef zeroext %124) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i.i)
  %cmp86.not.i.i = icmp eq i32 %call85.i.i, 0
  br i1 %cmp86.not.i.i, label %if.end89.i.i, label %if.end79.i.i.dec_main.exit_crit_edge

if.end79.i.i.dec_main.exit_crit_edge:             ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end89.i.i:                                     ; preds = %if.end79.i.i
  %125 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %temp.i.i, align 8
  %inc94.i.i = add i32 %126, 1
  store i32 %inc94.i.i, ptr %temp.i.i, align 8
  %arrayidx95.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %126
  %127 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx95.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp97.not.i.i = icmp eq i8 %128, 0
  br i1 %cmp97.not.i.i, label %if.end89.i.i.if.end101.i.i_crit_edge, label %if.end89.i.i.dec_main.exit_crit_edge

if.end89.i.i.dec_main.exit_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end89.i.i.if.end101.i.i_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.end89.i.i.if.end101.i.i_crit_edge, %if.end61.i.i.if.end101.i.i_crit_edge
  %129 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i.i, align 4
  %131 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %temp.i.i, align 8
  %sub106.i.i = sub i32 %130, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub106.i.i)
  %cmp107.i.i = icmp ult i32 %sub106.i.i, 2
  br i1 %cmp107.i.i, label %if.end101.i.i.dec_main.exit_crit_edge, label %if.end110.i.i

if.end101.i.i.dec_main.exit_crit_edge:            ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end110.i.i:                                    ; preds = %if.end101.i.i
  %inc115.i.i = add i32 %132, 1
  %133 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %inc115.i.i, ptr %temp.i.i, align 8
  %arrayidx116.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %132
  %134 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx116.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %135)
  %cmp118.not.i.i = icmp eq i8 %135, 33
  br i1 %cmp118.not.i.i, label %if.end121.i.i, label %if.end110.i.i.dec_main.exit_crit_edge

if.end110.i.i.dec_main.exit_crit_edge:            ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end121.i.i:                                    ; preds = %if.end110.i.i
  %inc126.i.i = add i32 %132, 2
  %136 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %inc126.i.i, ptr %temp.i.i, align 8
  %arrayidx127.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %inc115.i.i
  %137 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx127.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %138)
  %cmp129.not.i.i = icmp eq i8 %138, 1
  br i1 %cmp129.not.i.i, label %if.end132.i.i, label %if.end121.i.i.dec_main.exit_crit_edge

if.end121.i.i.dec_main.exit_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end132.i.i:                                    ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %inc126.i.i)
  %cmp138.i.i = icmp eq i32 %130, %inc126.i.i
  br i1 %cmp138.i.i, label %if.end132.i.i.dec_main.exit_crit_edge, label %if.end141.i.i

if.end132.i.i.dec_main.exit_crit_edge:            ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end141.i.i:                                    ; preds = %if.end132.i.i
  %139 = ptrtoint ptr %lzma2.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lzma2.i.i, align 8
  %inc146.i.i = add i32 %132, 3
  %141 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %inc146.i.i, ptr %temp.i.i, align 8
  %arrayidx147.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %inc126.i.i
  %142 = ptrtoint ptr %arrayidx147.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx147.i.i, align 1
  %call148.i.i = tail call i32 @xz_dec_lzma2_reset(ptr noundef %140, i8 noundef zeroext %143) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i.i)
  %cmp149.not.i.i = icmp eq i32 %call148.i.i, 0
  br i1 %cmp149.not.i.i, label %while.cond.preheader.i.i, label %if.end141.i.i.dec_main.exit_crit_edge

if.end141.i.i.dec_main.exit_crit_edge:            ; preds = %if.end141.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

while.cond.preheader.i.i:                         ; preds = %if.end141.i.i
  %144 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %146 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %temp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %145)
  %cmp157.i.i = icmp ult i32 %147, %145
  br i1 %cmp157.i.i, label %while.body.i.i, label %if.end35.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %inc163.i.i = add nuw i32 %147, 1
  %148 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %inc163.i.i, ptr %temp.i.i, align 8
  %arrayidx164.i.i = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 %147
  %149 = ptrtoint ptr %arrayidx164.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx164.i.i, align 1
  %cmp166.not.i.i = icmp eq i8 %150, 0
  br i1 %cmp166.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.dec_main.exit_crit_edge

while.body.i.i.dec_main.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end35.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %temp.i.i, align 8
  %152 = call ptr @memset(ptr %block.i.i, i32 0, i32 16)
  %153 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3, ptr %s, align 8
  br label %sw.bb37.i

sw.bb37.i:                                        ; preds = %if.end35.i, %while.cond.i.sw.bb37.i_crit_edge
  %154 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %in_pos, align 4
  %156 = ptrtoint ptr %in_start.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %in_start.i, align 8
  %157 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %out_pos, align 4
  %159 = ptrtoint ptr %out_start.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %out_start.i.i, align 4
  %160 = ptrtoint ptr %bcj_active.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bcj_active.i.i, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i232.i = icmp eq i8 %161, 0
  br i1 %tobool.not.i232.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %bcj.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bcj.i.i, align 4
  %164 = ptrtoint ptr %lzma2.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %lzma2.i.i, align 8
  %call.i235.i = tail call i32 @xz_dec_bcj_run(ptr noundef %163, ptr noundef %165, ptr noundef %b) #12
  br label %if.end.i241.i

if.else.i.i:                                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %lzma2.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %lzma2.i.i, align 8
  %call2.i.i = tail call i32 @xz_dec_lzma2_run(ptr noundef %167, ptr noundef %b) #12
  br label %if.end.i241.i

if.end.i241.i:                                    ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %call.i235.i, %if.then.i.i ], [ %call2.i.i, %if.else.i.i ]
  %168 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %in_pos, align 4
  %170 = ptrtoint ptr %in_start.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %in_start.i, align 8
  %sub.i236.i = sub i32 %169, %171
  %conv.i237.i = zext i32 %sub.i236.i to i64
  %172 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %block.i.i, align 8
  %add.i239.i = add i64 %173, %conv.i237.i
  store i64 %add.i239.i, ptr %block.i.i, align 8
  %174 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %out_pos, align 4
  %176 = ptrtoint ptr %out_start.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %out_start.i.i, align 4
  %sub7.i.i = sub i32 %175, %177
  %conv8.i.i = zext i32 %sub7.i.i to i64
  %178 = ptrtoint ptr %uncompressed.i.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %uncompressed.i.i, align 8
  %add10.i.i = add i64 %179, %conv8.i.i
  store i64 %add10.i.i, ptr %uncompressed.i.i, align 8
  %180 = ptrtoint ptr %block_header34.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %block_header34.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i239.i, i64 %181)
  %cmp.i240.i = icmp ugt i64 %add.i239.i, %181
  br i1 %cmp.i240.i, label %if.end.i241.i.dec_main.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i241.i.dec_main.exit_crit_edge:            ; preds = %if.end.i241.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i241.i
  %182 = ptrtoint ptr %uncompressed60.i.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %uncompressed60.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add10.i.i, i64 %183)
  %cmp19.i.i = icmp ugt i64 %add10.i.i, %183
  br i1 %cmp19.i.i, label %lor.lhs.false.i.i.dec_main.exit_crit_edge, label %if.end22.i.i

lor.lhs.false.i.i.dec_main.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i
  %184 = ptrtoint ptr %check_type.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %check_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp23.i.i = icmp eq i32 %185, 1
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end22.i.i.if.end33.i245.i_crit_edge

if.end22.i.i.if.end33.i245.i_crit_edge:           ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i245.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %186 = ptrtoint ptr %crc32.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %crc32.i.i, align 8
  %neg.i243.i = xor i32 %187, -1
  %188 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %out.i.i, align 4
  %add.ptr.i244.i = getelementptr i8, ptr %189, i32 %177
  %190 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %out_pos, align 4
  %sub29.i.i = sub i32 %191, %177
  %call30.i.i = tail call i32 @crc32_le(i32 noundef %neg.i243.i, ptr noundef %add.ptr.i244.i, i32 noundef %sub29.i.i) #16
  %neg31.i.i = xor i32 %call30.i.i, -1
  %192 = ptrtoint ptr %crc32.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %neg31.i.i, ptr %crc32.i.i, align 8
  br label %if.end33.i245.i

if.end33.i245.i:                                  ; preds = %if.then25.i.i, %if.end22.i.i.if.end33.i245.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i.i)
  %cmp34.i.i = icmp eq i32 %ret.0.i.i, 1
  br i1 %cmp34.i.i, label %if.then36.i.i, label %if.end33.i245.i.dec_main.exit_crit_edge

if.end33.i245.i.dec_main.exit_crit_edge:          ; preds = %if.end33.i245.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.then36.i.i:                                    ; preds = %if.end33.i245.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %181)
  %cmp39.not.i.i = icmp eq i64 %181, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %181, i64 %add.i239.i)
  %cmp45.not.i.i = icmp eq i64 %181, %add.i239.i
  %or.cond.i.i = select i1 %cmp39.not.i.i, i1 true, i1 %cmp45.not.i.i
  br i1 %or.cond.i.i, label %if.end48.i.i, label %if.then36.i.i.dec_main.exit_crit_edge

if.then36.i.i.dec_main.exit_crit_edge:            ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end48.i.i:                                     ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %183)
  %cmp51.not.i.i = icmp eq i64 %183, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %183, i64 %add10.i.i)
  %cmp58.not.i.i = icmp eq i64 %183, %add10.i.i
  %or.cond141.i.i = select i1 %cmp51.not.i.i, i1 true, i1 %cmp58.not.i.i
  br i1 %or.cond141.i.i, label %if.end42.i, label %if.end48.i.i.dec_main.exit_crit_edge

if.end48.i.i.dec_main.exit_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end42.i:                                       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %193 = ptrtoint ptr %size.i47 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %size.i47, align 8
  %conv63.i.i = zext i32 %194 to i64
  %add66.i.i = add i64 %add.i239.i, %conv63.i.i
  %195 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %hash.i.i, align 8
  %add68.i.i = add i64 %add66.i.i, %196
  %add76.i.i = add i64 %add68.i.i, 4
  %spec.select.i.i = select i1 %cmp23.i.i, i64 %add76.i.i, i64 %add68.i.i
  store i64 %spec.select.i.i, ptr %hash.i.i, align 8
  %197 = ptrtoint ptr %uncompressed82.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %uncompressed82.i.i, align 8
  %add83.i.i = add i64 %198, %add10.i.i
  store i64 %add83.i.i, ptr %uncompressed82.i.i, align 8
  %199 = ptrtoint ptr %crc3286.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %crc3286.i.i, align 8
  %neg87.i.i = xor i32 %200, -1
  %call90.i.i = tail call i32 @crc32_le(i32 noundef %neg87.i.i, ptr noundef %hash.i.i, i32 noundef 24) #16
  %neg91.i.i = xor i32 %call90.i.i, -1
  %201 = ptrtoint ptr %crc3286.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %neg91.i.i, ptr %crc3286.i.i, align 8
  %202 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %count.i.i, align 8
  %inc.i247.i = add i64 %203, 1
  store i64 %inc.i247.i, ptr %count.i.i, align 8
  %204 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 4, ptr %s, align 8
  br label %sw.bb44.i

sw.bb44.i:                                        ; preds = %if.end42.i, %while.cond.i.sw.bb44.i_crit_edge
  %205 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %block.i.i, align 8
  %and278.i = and i64 %206, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and278.i)
  %tobool.not279.i = icmp eq i64 %and278.i, 0
  br i1 %tobool.not279.i, label %sw.bb44.i.while.end.i_crit_edge, label %sw.bb44.i.while.body46.i_crit_edge

sw.bb44.i.while.body46.i_crit_edge:               ; preds = %sw.bb44.i
  br label %while.body46.i

sw.bb44.i.while.end.i_crit_edge:                  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body46.i:                                   ; preds = %if.end61.i.while.body46.i_crit_edge, %sw.bb44.i.while.body46.i_crit_edge
  %207 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %in_pos, align 4
  %209 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp49.i = icmp eq i32 %208, %210
  br i1 %cmp49.i, label %while.body46.i.dec_main.exit_crit_edge, label %if.end52.i

while.body46.i.dec_main.exit_crit_edge:           ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end52.i:                                       ; preds = %while.body46.i
  %211 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %b, align 4
  %inc55.i = add i32 %208, 1
  %213 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %inc55.i, ptr %in_pos, align 4
  %arrayidx56.i = getelementptr i8, ptr %212, i32 %208
  %214 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %cmp58.not.i = icmp eq i8 %215, 0
  br i1 %cmp58.not.i, label %if.end61.i, label %if.end52.i.dec_main.exit_crit_edge

if.end52.i.dec_main.exit_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end61.i:                                       ; preds = %if.end52.i
  %216 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %block.i.i, align 8
  %inc64.i = add i64 %217, 1
  store i64 %inc64.i, ptr %block.i.i, align 8
  %and.i = and i64 %inc64.i, 3
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end61.i.while.end.i_crit_edge, label %if.end61.i.while.body46.i_crit_edge

if.end61.i.while.body46.i_crit_edge:              ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body46.i

if.end61.i.while.end.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %if.end61.i.while.end.i_crit_edge, %sw.bb44.i.while.end.i_crit_edge
  %218 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 5, ptr %s, align 8
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %while.end.i, %while.cond.i.sw.bb66.i_crit_edge
  %219 = ptrtoint ptr %check_type.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %check_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp67.i = icmp eq i32 %220, 1
  br i1 %cmp67.i, label %sw.bb66.i.do.body.i.i_crit_edge, label %sw.bb66.i.sw.epilog.sink.split.i_crit_edge

sw.bb66.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.bb66.i.do.body.i.i_crit_edge:                  ; preds = %sw.bb66.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end5.i.i.do.body.i.i_crit_edge, %sw.bb66.i.do.body.i.i_crit_edge
  %221 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %in_pos, align 4
  %223 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %224)
  %cmp.i253.i = icmp eq i32 %222, %224
  br i1 %cmp.i253.i, label %do.body.i.i.dec_main.exit_crit_edge, label %if.end.i256.i

do.body.i.i.dec_main.exit_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end.i256.i:                                    ; preds = %do.body.i.i
  %225 = ptrtoint ptr %crc32.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %crc32.i.i, align 8
  %227 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pos.i.i.i, align 4
  %shr.i.i = lshr i32 %226, %228
  %229 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %b, align 4
  %inc.i254.i = add i32 %222, 1
  %231 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %inc.i254.i, ptr %in_pos, align 4
  %arrayidx.i255.i = getelementptr i8, ptr %230, i32 %222
  %232 = ptrtoint ptr %arrayidx.i255.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i255.i, align 1
  %234 = trunc i32 %shr.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %234)
  %cmp2.not.i.i = icmp eq i8 %233, %234
  br i1 %cmp2.not.i.i, label %if.end5.i.i, label %if.end.i256.i.dec_main.exit_crit_edge

if.end.i256.i.dec_main.exit_crit_edge:            ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end5.i.i:                                      ; preds = %if.end.i256.i
  %235 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pos.i.i.i, align 4
  %add.i257.i = add i32 %236, 8
  store i32 %add.i257.i, ptr %pos.i.i.i, align 4
  %cmp8.i.i = icmp ult i32 %add.i257.i, 32
  br i1 %cmp8.i.i, label %if.end5.i.i.do.body.i.i_crit_edge, label %crc32_validate.exit.i

if.end5.i.i.do.body.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

crc32_validate.exit.i:                            ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %237 = ptrtoint ptr %crc32.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %crc32.i.i, align 8
  %238 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %pos.i.i.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb77.i:                                        ; preds = %while.cond.i
  %call78.i = tail call fastcc i32 @dec_index(ptr noundef %s, ptr noundef %b) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call78.i)
  %cmp79.not.i = icmp eq i32 %call78.i, 1
  br i1 %cmp79.not.i, label %if.end82.i, label %sw.bb77.i.dec_main.exit_crit_edge

sw.bb77.i.dec_main.exit_crit_edge:                ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end82.i:                                       ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #14
  %239 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 7, ptr %s, align 8
  br label %sw.bb84.i

sw.bb84.i:                                        ; preds = %if.end82.i, %while.cond.i.sw.bb84.i_crit_edge
  %size86.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 1
  br label %while.cond85.i

while.cond85.i:                                   ; preds = %if.end99.i.while.cond85.i_crit_edge, %sw.bb84.i
  %240 = ptrtoint ptr %size86.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %size86.i, align 8
  %242 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %in_pos, align 4
  %244 = ptrtoint ptr %in_start.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %in_start.i, align 8
  %sub.i = sub i32 %243, %245
  %conv89.i = zext i32 %sub.i to i64
  %add90.i = add i64 %241, %conv89.i
  %and91.i = and i64 %add90.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and91.i)
  %tobool92.not.i = icmp eq i64 %and91.i, 0
  br i1 %tobool92.not.i, label %while.end109.i, label %while.body93.i

while.body93.i:                                   ; preds = %while.cond85.i
  %246 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %247)
  %cmp96.i = icmp eq i32 %243, %247
  br i1 %cmp96.i, label %if.then98.i, label %if.end99.i

if.then98.i:                                      ; preds = %while.body93.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @index_update(ptr noundef %s, ptr noundef %b) #12
  br label %dec_main.exit

if.end99.i:                                       ; preds = %while.body93.i
  %248 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %b, align 4
  %inc102.i = add i32 %243, 1
  %250 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %inc102.i, ptr %in_pos, align 4
  %arrayidx103.i = getelementptr i8, ptr %249, i32 %243
  %251 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx103.i, align 1
  %cmp105.not.i = icmp eq i8 %252, 0
  br i1 %cmp105.not.i, label %if.end99.i.while.cond85.i_crit_edge, label %if.end99.i.dec_main.exit_crit_edge

if.end99.i.dec_main.exit_crit_edge:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end99.i.while.cond85.i_crit_edge:              ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond85.i

while.end109.i:                                   ; preds = %while.cond85.i
  tail call fastcc void @index_update(ptr noundef %s, ptr noundef %b) #12
  %hash112.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(24) %hash.i.i, ptr noundef dereferenceable(24) %hash112.i, i32 24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp114.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp114.i, label %if.end117.i, label %while.end109.i.dec_main.exit_crit_edge

while.end109.i.dec_main.exit_crit_edge:           ; preds = %while.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end117.i:                                      ; preds = %while.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  %253 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 8, ptr %s, align 8
  br label %sw.bb119.i

sw.bb119.i:                                       ; preds = %if.end117.i, %while.cond.i.sw.bb119.i_crit_edge
  %call120.i = tail call fastcc i32 @crc32_validate(ptr noundef %s, ptr noundef %b) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call120.i)
  %cmp121.not.i = icmp eq i32 %call120.i, 1
  br i1 %cmp121.not.i, label %if.end124.i, label %sw.bb119.i.dec_main.exit_crit_edge

sw.bb119.i.dec_main.exit_crit_edge:               ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end124.i:                                      ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #14
  %254 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 12, ptr %size.i.i, align 4
  %255 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 9, ptr %s, align 8
  br label %sw.bb128.i

sw.bb128.i:                                       ; preds = %if.end124.i, %while.cond.i.sw.bb128.i_crit_edge
  %call129.i = tail call fastcc zeroext i1 @fill_temp(ptr noundef %s, ptr noundef %b) #12
  br i1 %call129.i, label %if.end131.i, label %sw.bb128.i.dec_main.exit_crit_edge

sw.bb128.i.dec_main.exit_crit_edge:               ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_main.exit

if.end131.i:                                      ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #14
  %call132.i = tail call fastcc i32 @dec_stream_footer(ptr noundef %s) #12
  br label %dec_main.exit

sw.epilog.sink.split.i:                           ; preds = %crc32_validate.exit.i, %sw.bb66.i.sw.epilog.sink.split.i_crit_edge, %if.then13.i
  %.sink.i = phi i32 [ 6, %if.then13.i ], [ 1, %crc32_validate.exit.i ], [ 1, %sw.bb66.i.sw.epilog.sink.split.i_crit_edge ]
  %256 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %.sink.i, ptr %s, align 8
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %sw.epilog.sink.split.i, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

dec_main.exit:                                    ; preds = %if.end131.i, %sw.bb128.i.dec_main.exit_crit_edge, %sw.bb119.i.dec_main.exit_crit_edge, %while.end109.i.dec_main.exit_crit_edge, %if.end99.i.dec_main.exit_crit_edge, %if.then98.i, %sw.bb77.i.dec_main.exit_crit_edge, %if.end.i256.i.dec_main.exit_crit_edge, %do.body.i.i.dec_main.exit_crit_edge, %if.end52.i.dec_main.exit_crit_edge, %while.body46.i.dec_main.exit_crit_edge, %if.end48.i.i.dec_main.exit_crit_edge, %if.then36.i.i.dec_main.exit_crit_edge, %if.end33.i245.i.dec_main.exit_crit_edge, %lor.lhs.false.i.i.dec_main.exit_crit_edge, %if.end.i241.i.dec_main.exit_crit_edge, %while.body.i.i.dec_main.exit_crit_edge, %if.end141.i.i.dec_main.exit_crit_edge, %if.end132.i.i.dec_main.exit_crit_edge, %if.end121.i.i.dec_main.exit_crit_edge, %if.end110.i.i.dec_main.exit_crit_edge, %if.end101.i.i.dec_main.exit_crit_edge, %if.end89.i.i.dec_main.exit_crit_edge, %if.end79.i.i.dec_main.exit_crit_edge, %if.then70.i.i.dec_main.exit_crit_edge, %if.end19.i253.i.i.dec_main.exit_crit_edge, %if.then9.i249.i.i.dec_main.exit_crit_edge, %while.cond.i235.i.i.dec_main.exit_crit_edge, %if.end19.i.i.i.dec_main.exit_crit_edge, %if.then9.i.i.i.dec_main.exit_crit_edge, %while.cond.i.i.i.dec_main.exit_crit_edge, %if.end.i228.i.dec_main.exit_crit_edge, %if.end30.i.dec_main.exit_crit_edge, %sw.bb27.i.dec_main.exit_crit_edge, %sw.bb5.i.dec_main.exit_crit_edge, %if.end27.i.i.dec_main.exit_crit_edge, %if.end19.i.i.dec_main.exit_crit_edge, %if.end13.i.i.dec_main.exit_crit_edge, %if.end.i.i.dec_main.exit_crit_edge, %if.end.i.dec_main.exit_crit_edge, %sw.bb.i.dec_main.exit_crit_edge
  %retval.0.i = phi i32 [ %call132.i, %if.end131.i ], [ 0, %if.then98.i ], [ %call78.i, %sw.bb77.i.dec_main.exit_crit_edge ], [ 7, %while.end109.i.dec_main.exit_crit_edge ], [ %call120.i, %sw.bb119.i.dec_main.exit_crit_edge ], [ 0, %sw.bb128.i.dec_main.exit_crit_edge ], [ 7, %if.end99.i.dec_main.exit_crit_edge ], [ 0, %do.body.i.i.dec_main.exit_crit_edge ], [ 7, %if.end.i256.i.dec_main.exit_crit_edge ], [ 0, %while.body46.i.dec_main.exit_crit_edge ], [ 7, %if.end52.i.dec_main.exit_crit_edge ], [ 6, %while.body.i.i.dec_main.exit_crit_edge ], [ 7, %if.end19.i253.i.i.dec_main.exit_crit_edge ], [ 7, %while.cond.i235.i.i.dec_main.exit_crit_edge ], [ 7, %if.end19.i.i.i.dec_main.exit_crit_edge ], [ 7, %while.cond.i.i.i.dec_main.exit_crit_edge ], [ 0, %sw.bb.i.dec_main.exit_crit_edge ], [ 0, %sw.bb5.i.dec_main.exit_crit_edge ], [ 0, %sw.bb27.i.dec_main.exit_crit_edge ], [ 6, %if.end19.i.i.dec_main.exit_crit_edge ], [ 6, %if.end13.i.i.dec_main.exit_crit_edge ], [ 7, %if.end.i.i.dec_main.exit_crit_edge ], [ 5, %if.end.i.dec_main.exit_crit_edge ], [ 6, %if.end27.i.i.dec_main.exit_crit_edge ], [ 7, %if.then9.i249.i.i.dec_main.exit_crit_edge ], [ 7, %if.then9.i.i.i.dec_main.exit_crit_edge ], [ %call148.i.i, %if.end141.i.i.dec_main.exit_crit_edge ], [ 7, %if.end132.i.i.dec_main.exit_crit_edge ], [ 6, %if.end121.i.i.dec_main.exit_crit_edge ], [ 6, %if.end110.i.i.dec_main.exit_crit_edge ], [ 7, %if.end101.i.i.dec_main.exit_crit_edge ], [ 6, %if.end89.i.i.dec_main.exit_crit_edge ], [ %call85.i.i, %if.end79.i.i.dec_main.exit_crit_edge ], [ 6, %if.then70.i.i.dec_main.exit_crit_edge ], [ 6, %if.end.i228.i.dec_main.exit_crit_edge ], [ 7, %if.end30.i.dec_main.exit_crit_edge ], [ 7, %if.end48.i.i.dec_main.exit_crit_edge ], [ 7, %if.then36.i.i.dec_main.exit_crit_edge ], [ %ret.0.i.i, %if.end33.i245.i.dec_main.exit_crit_edge ], [ 7, %if.end.i241.i.dec_main.exit_crit_edge ], [ 7, %lor.lhs.false.i.i.dec_main.exit_crit_edge ]
  %257 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp2 = icmp eq i32 %258, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %dec_main.exit
  %259 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %retval.0.i, label %if.then3.if.then10_crit_edge [
    i32 0, label %if.end8.thread
    i32 1, label %if.then3.if.end27_crit_edge
  ]

if.then3.if.end27_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then3.if.then10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.end8.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %260 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %in_pos, align 4
  %262 = ptrtoint ptr %in_size.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %in_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %263)
  %cmp7 = icmp eq i32 %261, %263
  %cond = select i1 %cmp7, i32 7, i32 8
  br label %if.then10

if.then10:                                        ; preds = %if.end8.thread, %if.then3.if.then10_crit_edge
  %ret.050 = phi i32 [ %cond, %if.end8.thread ], [ %retval.0.i, %if.then3.if.then10_crit_edge ]
  %264 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %9, ptr %in_pos, align 4
  %265 = ptrtoint ptr %out_pos to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %11, ptr %out_pos, align 4
  br label %if.end27

if.else:                                          ; preds = %dec_main.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp14 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else.if.else24_crit_edge

if.else.if.else24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true:                                    ; preds = %if.else
  %266 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %in_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %267)
  %cmp16 = icmp eq i32 %9, %267
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true.if.else24_crit_edge

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true17:                                  ; preds = %land.lhs.true
  %268 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %out_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %269)
  %cmp19 = icmp eq i32 %11, %269
  br i1 %cmp19, label %if.then20, label %land.lhs.true17.if.else24_crit_edge

land.lhs.true17.if.else24_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %allow_buf_error = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 8
  %270 = ptrtoint ptr %allow_buf_error to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %allow_buf_error, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not = icmp eq i8 %271, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  %272 = ptrtoint ptr %allow_buf_error to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %allow_buf_error, align 4
  br label %if.end27

if.else24:                                        ; preds = %land.lhs.true17.if.else24_crit_edge, %land.lhs.true.if.else24_crit_edge, %if.else.if.else24_crit_edge
  %allow_buf_error25 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 8
  %273 = ptrtoint ptr %allow_buf_error25 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %allow_buf_error25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then20, %if.then10, %if.then3.if.end27_crit_edge
  %ret.2 = phi i32 [ %ret.050, %if.then10 ], [ %spec.select, %if.then20 ], [ %retval.0.i, %if.else24 ], [ %retval.0.i, %if.then3.if.end27_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xz_dec_reset(ptr nocapture noundef writeonly %s) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %s, align 8
  %allow_buf_error = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 8
  %1 = ptrtoint ptr %allow_buf_error to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %allow_buf_error, align 4
  %pos = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pos, align 4
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %3 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %crc32, align 8
  %block = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10
  %size = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 1
  %4 = call ptr @memset(ptr %block, i32 0, i32 100)
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xz_dec_init(i32 noundef %mode, i32 noundef %dict_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1208) #17
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode1 = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 7
  %1 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mode, ptr %mode1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 0
  %call3 = tail call ptr @xz_dec_bcj_create(i1 noundef zeroext %cmp2) #12
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 14
  %2 = ptrtoint ptr %bcj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %bcj, align 4
  %cmp5 = icmp eq ptr %call3, null
  br i1 %cmp5, label %if.end.error_bcj_crit_edge, label %if.end7

if.end.error_bcj_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_bcj

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @xz_dec_lzma2_create(i32 noundef %mode, i32 noundef %dict_max) #12
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 13
  %3 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %lzma2, align 8
  %cmp10 = icmp eq ptr %call8, null
  br i1 %cmp10, label %error_lzma2, label %if.end12

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call7.i, align 8
  %allow_buf_error.i = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 8
  %5 = ptrtoint ptr %allow_buf_error.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %allow_buf_error.i, align 4
  %pos.i = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pos.i, align 4
  %crc32.i = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %crc32.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %crc32.i, align 8
  %block.i = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 10
  %size.i = getelementptr inbounds %struct.xz_dec, ptr %call7.i, i32 0, i32 12, i32 1
  %8 = call ptr @memset(ptr %block.i, i32 0, i32 100)
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %size.i, align 4
  br label %cleanup

error_lzma2:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bcj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bcj, align 4
  tail call void @kfree(ptr noundef %11) #12
  br label %error_bcj

error_bcj:                                        ; preds = %error_lzma2, %if.end.error_bcj_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error_bcj, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error_bcj ], [ %call7.i, %if.end12 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_bcj_create(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_lzma2_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xz_dec_end(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %s, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lzma2 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %lzma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lzma2, align 8
  tail call void @xz_dec_lzma2_end(ptr noundef %1) #12
  %bcj = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 14
  %2 = ptrtoint ptr %bcj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bcj, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @kfree(ptr noundef nonnull %s) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_lzma2_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @fill_temp(ptr nocapture noundef %s, ptr nocapture noundef %b) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_size, align 4
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_pos, align 4
  %sub = sub i32 %1, %3
  %temp = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12
  %size = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp, align 8
  %sub2 = sub i32 %5, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub2)
  %buf = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2
  %add.ptr = getelementptr i8, ptr %buf, i32 %7
  %9 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 %3
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr7, i32 %8)
  %12 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_pos, align 4
  %add = add i32 %13, %8
  store i32 %add, ptr %in_pos, align 4
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 8
  %add11 = add i32 %15, %8
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %17)
  %cmp16 = icmp eq i32 %add11, %17
  %spec.store.select = select i1 %cmp16, i32 0, i32 %add11
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select, ptr %temp, align 8
  ret i1 %cmp16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crc32_validate(ptr nocapture noundef %s, ptr nocapture noundef %b) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %pos = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_pos, align 4
  %2 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %do.body.return_crit_edge, label %if.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %do.body
  %4 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crc32, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 4
  %shr = lshr i32 %5, %7
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b, align 4
  %inc = add i32 %1, 1
  %10 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %in_pos, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp2.not = icmp eq i8 %12, %13
  br i1 %cmp2.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5:                                          ; preds = %if.end
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 4
  %add = add i32 %15, 8
  store i32 %add, ptr %pos, align 4
  %cmp8 = icmp ult i32 %add, 32
  br i1 %cmp8, label %if.end5.do.body_crit_edge, label %do.end

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %crc32, align 8
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pos, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 7, %if.end.return_crit_edge ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dec_index(ptr noundef %s, ptr nocapture noundef %b) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %pos.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 1
  %vli4.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 2
  %index = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11
  %hash18 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 3
  %uncompressed = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 3, i32 1
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 3, i32 2
  %count30 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 2
  %count4 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 10, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %2 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_size, align 4
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %do.body.while.cond.i.preheader_crit_edge

do.body.while.cond.i.preheader_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %vli4.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %vli4.i, align 8
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then.i, %do.body.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end19.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %7 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp1.i = icmp ult i32 %8, %3
  br i1 %cmp1.i, label %while.body.i, label %while.cond.i.if.then_crit_edge

while.cond.i.if.then_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %8, 1
  %11 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i, ptr %in_pos, align 4
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 127
  %12 = zext i32 %and.i to i64
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i, align 4
  %sh_prom.i = zext i32 %14 to i64
  %shl.i = shl i64 %12, %sh_prom.i
  %15 = ptrtoint ptr %vli4.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vli4.i, align 8
  %or.i = or i64 %shl.i, %16
  store i64 %or.i, ptr %vli4.i, align 8
  %and6.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end19.i

if.then9.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp11.i = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not.i = icmp eq i32 %14, 0
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %if.end, label %if.then9.i.if.then_crit_edge

if.then9.i.if.then_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end19.i:                                       ; preds = %while.body.i
  %add.i = add i32 %14, 7
  %17 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %pos.i, align 4
  %cmp22.i = icmp eq i32 %add.i, 63
  br i1 %cmp22.i, label %if.end19.i.if.then_crit_edge, label %if.end19.i.while.cond.i_crit_edge

if.end19.i.while.cond.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end19.i.if.then_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %if.end19.i.if.then_crit_edge, %if.then9.i.if.then_crit_edge, %while.cond.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %while.cond.i.if.then_crit_edge ], [ 7, %if.end19.i.if.then_crit_edge ], [ 7, %if.then9.i.if.then_crit_edge ]
  %18 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_pos, align 4
  %in_start.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 3
  %20 = ptrtoint ptr %in_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_start.i, align 8
  %sub.i = sub i32 %19, %21
  %conv.i58 = zext i32 %sub.i to i64
  %size.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size.i, align 8
  %add.i59 = add i64 %23, %conv.i58
  store i64 %add.i59, ptr %size.i, align 8
  %crc32.i = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %24 = ptrtoint ptr %crc32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crc32.i, align 8
  %neg.i = xor i32 %25, -1
  %26 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %21
  %call.i = tail call i32 @crc32_le(i32 noundef %neg.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #16
  %neg2.i = xor i32 %call.i, -1
  %28 = ptrtoint ptr %crc32.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %neg2.i, ptr %crc32.i, align 8
  br label %cleanup

if.end:                                           ; preds = %if.then9.i
  %29 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pos.i, align 4
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %31, label %if.end.do.condthread-pre-split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb15
  ]

if.end.do.condthread-pre-split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.condthread-pre-split

sw.bb:                                            ; preds = %if.end
  %33 = ptrtoint ptr %vli4.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vli4.i, align 8
  %35 = ptrtoint ptr %count30 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %count30, align 8
  %36 = ptrtoint ptr %count4 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %count4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %37)
  %cmp5.not = icmp eq i64 %34, %37
  br i1 %cmp5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %index, align 8
  br label %do.cond

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %vli4.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vli4.i, align 8
  %41 = ptrtoint ptr %hash18 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %hash18, align 8
  %add = add i64 %42, %40
  store i64 %add, ptr %hash18, align 8
  %43 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %index, align 8
  br label %do.condthread-pre-split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %vli4.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %vli4.i, align 8
  %46 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %uncompressed, align 8
  %add19 = add i64 %47, %45
  store i64 %add19, ptr %uncompressed, align 8
  %48 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crc32, align 8
  %neg = xor i32 %49, -1
  %call24 = tail call i32 @crc32_le(i32 noundef %neg, ptr noundef %hash18, i32 noundef 24) #16
  %neg25 = xor i32 %call24, -1
  %50 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %neg25, ptr %crc32, align 8
  %51 = ptrtoint ptr %count30 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %count30, align 8
  %dec = add i64 %52, -1
  store i64 %dec, ptr %count30, align 8
  %53 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %index, align 8
  br label %do.cond

do.condthread-pre-split:                          ; preds = %sw.bb10, %if.end.do.condthread-pre-split_crit_edge
  %54 = ptrtoint ptr %count30 to i32
  call void @__asan_load8_noabort(i32 %54)
  %.pr = load i64, ptr %count30, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.condthread-pre-split, %sw.bb15, %if.end7
  %55 = phi i64 [ %.pr, %do.condthread-pre-split ], [ %34, %if.end7 ], [ %dec, %sw.bb15 ]
  %cmp35.not = icmp eq i64 %55, 0
  br i1 %cmp35.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 1, %do.cond.cleanup_crit_edge ], [ 7, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @index_update(ptr nocapture noundef %s, ptr nocapture noundef readonly %b) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %0 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_pos, align 4
  %in_start = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %in_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_start, align 8
  %sub = sub i32 %1, %3
  %conv = zext i32 %sub to i64
  %size = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %size, align 8
  %crc32 = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 5
  %6 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crc32, align 8
  %neg = xor i32 %7, -1
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %3
  %call = tail call i32 @crc32_le(i32 noundef %neg, ptr noundef %add.ptr, i32 noundef %sub) #16
  %neg2 = xor i32 %call, -1
  %10 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %neg2, ptr %crc32, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @dec_stream_footer(ptr noundef %s) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr, ptr noundef nonnull dereferenceable(2) @.str.1, i32 2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2
  %add.ptr4 = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 4
  %call5 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr4, i32 noundef 6) #16
  %neg = xor i32 %call5, -1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %neg)
  %cmp10.not = icmp eq i32 %2, %neg
  br i1 %cmp10.not, label %if.end12, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end12:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  %shr = lshr i64 %4, 2
  %5 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr4, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp18.not = icmp eq i64 %shr, %conv
  br i1 %cmp18.not, label %if.end21, label %if.end12.return_crit_edge

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end21:                                         ; preds = %if.end12
  %arrayidx = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25.not = icmp eq i8 %9, 0
  br i1 %cmp25.not, label %lor.lhs.false, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx29 = getelementptr %struct.xz_dec, ptr %s, i32 0, i32 12, i32 2, i32 9
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %11 to i32
  %check_type = getelementptr inbounds %struct.xz_dec, ptr %s, i32 0, i32 6
  %12 = ptrtoint ptr %check_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %check_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv30)
  %cmp31.not = icmp eq i32 %13, %conv30
  %spec.select = select i1 %cmp31.not, i32 1, i32 7
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end21.return_crit_edge, %if.end12.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 7, %entry.return_crit_edge ], [ 7, %if.end.return_crit_edge ], [ 7, %if.end12.return_crit_edge ], [ 7, %if.end21.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_bcj_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_bcj_run(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/xz/xz_dec_stream.c", i32 389, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/xz/xz_dec_stream.c", i32 424, i32 7}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
