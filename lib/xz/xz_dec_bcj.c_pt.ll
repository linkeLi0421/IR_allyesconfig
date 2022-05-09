; ModuleID = '/llk/IR_all_yes/lib/xz/xz_dec_bcj.c_pt.bc'
source_filename = "../lib/xz/xz_dec_bcj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_dec_bcj = type { i32, i32, i8, i32, i32, ptr, i32, i32, %struct.anon }
%struct.anon = type { i32, i32, [16 x i8] }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }

@bcj_x86.mask_to_bit_num = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\02\03\03\03\03", [24 x i8] zeroinitializer }, align 32
@bcj_ia64.branch_table = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\06\06\00\00\07\07\04\04\00\00\04\04\00\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 511]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"mask_to_bit_num\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 93, i32 23 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"branch_table\00", align 1
@___asan_gen_.7 = private constant [23 x i8] c"../lib/xz/xz_dec_bcj.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 183, i32 23 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @bcj_x86.mask_to_bit_num, ptr @bcj_ia64.branch_table], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcj_x86.mask_to_bit_num to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcj_ia64.branch_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xz_dec_bcj_run(ptr noundef %s, ptr noundef %lzma2, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %out_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_start) #7
  %temp = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %out_size.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %2 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_size.i, align 4
  %out_pos.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %4 = ptrtoint ptr %out_pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_pos.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %sub.i) #7
  %out.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %7 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %5
  %buf.i = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 2
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf.i, i32 %6)
  %10 = ptrtoint ptr %out_pos.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_pos.i, align 4
  %add.i = add i32 %11, %6
  store i32 %add.i, ptr %out_pos.i, align 4
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp, align 4
  %sub6.i = sub i32 %13, %6
  store i32 %sub6.i, ptr %temp, align 4
  %size.i = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %sub8.i = sub i32 %15, %6
  store i32 %sub8.i, ptr %size.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %buf.i, i32 %6
  %16 = call ptr @memmove(ptr %buf.i, ptr %add.ptr15.i, i32 %sub8.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %6)
  %cmp3.not = icmp eq i32 %13, %6
  br i1 %cmp3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ret = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 1
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp5 = icmp eq i32 %18, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %size = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %21 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_size, align 4
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %23 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_pos, align 4
  %sub = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub)
  %cmp10 = icmp ult i32 %20, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13 = icmp eq i32 %20, 0
  %or.cond = or i1 %cmp13, %cmp10
  br i1 %or.cond, label %if.then14, label %if.end8.if.end62_crit_edge

if.end8.if.end62_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then14:                                        ; preds = %if.end8
  %25 = ptrtoint ptr %out_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %out_start, align 4
  %out = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %24
  %buf = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 2
  %28 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %20)
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %31 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_pos, align 4
  %add = add i32 %32, %30
  store i32 %add, ptr %out_pos, align 4
  %call = tail call i32 @xz_dec_lzma2_run(ptr noundef %lzma2, ptr noundef %b) #7
  %ret23 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 1
  %33 = ptrtoint ptr %ret23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call, ptr %ret23, align 4
  %34 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then14.cleanup_crit_edge [
    i32 1, label %if.then14.if.end31_crit_edge
    i32 0, label %lor.lhs.false28
  ]

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.then14
  %single_call = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 2
  %35 = ptrtoint ptr %single_call to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %single_call, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %lor.lhs.false28.if.end31_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false28.if.end31_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false28.if.end31_crit_edge, %if.then14.if.end31_crit_edge
  %37 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out, align 4
  %39 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out_pos, align 4
  call fastcc void @bcj_apply(ptr noundef %s, ptr noundef %38, ptr noundef nonnull %out_start, i32 noundef %40)
  %41 = ptrtoint ptr %ret23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp35 = icmp eq i32 %42, 1
  br i1 %cmp35, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %43 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out_pos, align 4
  %45 = ptrtoint ptr %out_start to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %out_start, align 4
  %sub39 = sub i32 %44, %46
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub39, ptr %size, align 4
  %48 = load i32, ptr %out_pos, align 4
  %sub45 = sub i32 %48, %sub39
  store i32 %sub45, ptr %out_pos, align 4
  %49 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %out, align 4
  %add.ptr51 = getelementptr i8, ptr %50, i32 %sub45
  %51 = load i32, ptr %size, align 4
  %52 = call ptr @memcpy(ptr %buf, ptr %add.ptr51, i32 %51)
  %53 = load i32, ptr %out_pos, align 4
  %add57 = add i32 %53, %51
  %54 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %55)
  %cmp59 = icmp ult i32 %add57, %55
  br i1 %cmp59, label %if.end37.cleanup_crit_edge, label %if.end37.if.end62_crit_edge

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.end37.if.end62_crit_edge, %if.end8.if.end62_crit_edge
  %56 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %out_pos, align 4
  %58 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp65 = icmp ult i32 %57, %59
  br i1 %cmp65, label %if.then66, label %if.end62.if.end120_crit_edge

if.end62.if.end120_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then66:                                        ; preds = %if.end62
  %out67 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %60 = ptrtoint ptr %out67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %out67, align 4
  %out68 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 5
  %62 = ptrtoint ptr %out68 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %out68, align 4
  %63 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %out_pos, align 4
  %out_pos70 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 6
  %65 = ptrtoint ptr %out_pos70 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %out_pos70, align 4
  %66 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_size, align 4
  %out_size72 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 7
  %68 = ptrtoint ptr %out_size72 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %out_size72, align 4
  %buf74 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 2
  store ptr %buf74, ptr %out67, align 4
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  store i32 %70, ptr %out_pos, align 4
  store i32 16, ptr %out_size, align 4
  %call81 = tail call i32 @xz_dec_lzma2_run(ptr noundef %lzma2, ptr noundef %b) #7
  %ret82 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 1
  %71 = ptrtoint ptr %ret82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call81, ptr %ret82, align 4
  %72 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %out_pos, align 4
  %74 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %size, align 4
  %75 = ptrtoint ptr %out68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %out68, align 4
  %77 = ptrtoint ptr %out67 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %out67, align 4
  %78 = ptrtoint ptr %out_pos70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %out_pos70, align 4
  store i32 %79, ptr %out_pos, align 4
  %80 = ptrtoint ptr %out_size72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %out_size72, align 4
  %82 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %out_size, align 4
  %83 = load i32, ptr %ret82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %switch = icmp ult i32 %83, 2
  br i1 %switch, label %if.end99, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99:                                         ; preds = %if.then66
  %84 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size, align 4
  tail call fastcc void @bcj_apply(ptr noundef %s, ptr noundef %buf74, ptr noundef %temp, i32 noundef %85)
  %86 = ptrtoint ptr %ret82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ret82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp108 = icmp eq i32 %87, 1
  br i1 %cmp108, label %if.then109, label %if.end99.if.end114_crit_edge

if.end99.if.end114_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then109:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size, align 4
  %90 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %temp, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %if.end99.if.end114_crit_edge
  %91 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %temp, align 4
  %93 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %out_size, align 4
  %95 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %out_pos, align 4
  %sub.i199 = sub i32 %94, %96
  %97 = tail call i32 @llvm.umin.i32(i32 %92, i32 %sub.i199) #7
  %98 = ptrtoint ptr %out67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %out67, align 4
  %add.ptr.i201 = getelementptr i8, ptr %99, i32 %96
  %100 = call ptr @memcpy(ptr %add.ptr.i201, ptr %buf74, i32 %97)
  %101 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %out_pos, align 4
  %add.i203 = add i32 %102, %97
  store i32 %add.i203, ptr %out_pos, align 4
  %103 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %temp, align 4
  %sub6.i204 = sub i32 %104, %97
  store i32 %sub6.i204, ptr %temp, align 4
  %105 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size, align 4
  %sub8.i206 = sub i32 %106, %97
  store i32 %sub8.i206, ptr %size, align 4
  %add.ptr15.i207 = getelementptr i8, ptr %buf74, i32 %97
  %107 = call ptr @memmove(ptr %buf74, ptr %add.ptr15.i207, i32 %sub8.i206)
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %97)
  %cmp117.not = icmp eq i32 %104, %97
  br i1 %cmp117.not, label %if.end114.if.end120_crit_edge, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.end120:                                        ; preds = %if.end114.if.end120_crit_edge, %if.end62.if.end120_crit_edge
  %ret121 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 1
  %108 = ptrtoint ptr %ret121 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ret121, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.end114.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %109, %if.end120 ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %83, %if.then66.cleanup_crit_edge ], [ 0, %if.end114.cleanup_crit_edge ], [ %call, %if.then14.cleanup_crit_edge ], [ 0, %lor.lhs.false28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_start) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_lzma2_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcj_apply(ptr nocapture noundef %s, ptr nocapture noundef %buf, ptr nocapture noundef %pos, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 %size, %1
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb3
    i32 7, label %sw.bb5
    i32 8, label %sw.bb7
    i32 9, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %x86_prev_mask.i = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 5
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %5 = ptrtoint ptr %x86_prev_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %x86_prev_mask.i, align 4
  %sub.i = add i32 %sub, -4
  %pos.i = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %prev_mask.0123.i = phi i32 [ %6, %for.body.lr.ph.i ], [ %prev_mask.2.i, %for.inc.i.for.body.i_crit_edge ]
  %prev_pos.0122.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %prev_pos.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0120.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.0120.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %9)
  %cmp2.not.i = icmp eq i8 %9, -24
  br i1 %cmp2.not.i, label %if.end5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %sub6.i = sub i32 %i.0120.i, %prev_pos.0122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub6.i)
  %cmp7.i = icmp ugt i32 %sub6.i, 3
  br i1 %cmp7.i, label %if.end5.i.if.end25.i_crit_edge, label %if.else.i

if.end5.i.if.end25.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end5.i
  %sub10.i = add nsw i32 %sub6.i, -1
  %shl.i = shl i32 %prev_mask.0123.i, %sub10.i
  %and11.i = and i32 %shl.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp12.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp12.not.i, label %if.else.i.if.end25.i_crit_edge, label %if.then14.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then14.i:                                      ; preds = %if.else.i
  %10 = lshr i32 232, %and11.i
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.not.i, label %lor.lhs.false.i, label %if.then14.i.if.then21.i_crit_edge

if.then14.i.if.then21.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.then14.i
  %add.i = add i32 %i.0120.i, 4
  %arrayidx15.i = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i32 0, i32 %and11.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %13 to i32
  %sub17.i = sub i32 %add.i, %conv16.i
  %arrayidx18.i = getelementptr i8, ptr %add.ptr, i32 %sub17.i
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.i, align 1
  %16 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %16)
  %17 = icmp ult i8 %16, -2
  br i1 %17, label %lor.lhs.false.i.if.end25.i_crit_edge, label %lor.lhs.false.i.if.then21.i_crit_edge

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

lor.lhs.false.i.if.end25.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.then14.i.if.then21.i_crit_edge
  %shl22.i = shl nuw nsw i32 %and11.i, 1
  %or.i = or i32 %shl22.i, 1
  br label %for.inc.i

if.end25.i:                                       ; preds = %lor.lhs.false.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.end5.i.if.end25.i_crit_edge
  %prev_mask.1.i = phi i32 [ %and11.i, %lor.lhs.false.i.if.end25.i_crit_edge ], [ 0, %if.else.i.if.end25.i_crit_edge ], [ 0, %if.end5.i.if.end25.i_crit_edge ]
  %add26.i = add i32 %i.0120.i, 4
  %arrayidx27.i = getelementptr i8, ptr %add.ptr, i32 %add26.i
  %18 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27.i, align 1
  %20 = add i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %20)
  %21 = icmp ult i8 %20, -2
  br i1 %21, label %if.else58.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end25.i
  %add.ptr31.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %22 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr31.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos.i, align 4
  %add33.neg.i = sub i32 -5, %i.0120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_mask.1.i)
  %cmp36.i = icmp eq i32 %prev_mask.1.i, 0
  %add34.neg115.i = add i32 %24, %add33.neg.i
  %sub35116.i = sub i32 %add34.neg115.i, %26
  br i1 %cmp36.i, label %if.then30.i.while.end.i_crit_edge, label %if.end39.lr.ph.i

if.then30.i.while.end.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end39.lr.ph.i:                                 ; preds = %if.then30.i
  %arrayidx40.i = getelementptr [8 x i8], ptr @bcj_x86.mask_to_bit_num, i32 0, i32 %prev_mask.1.i
  %27 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %28 to i32
  %mul.i = shl nuw nsw i32 %conv41.i, 3
  %sub42.i = sub nsw i32 24, %mul.i
  %shr.i121 = lshr i32 %sub35116.i, %sub42.i
  %conv43.i122 = trunc i32 %shr.i121 to i8
  %29 = add i8 %conv43.i122, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %29)
  %30 = icmp ult i8 %29, -2
  br i1 %30, label %if.end39.lr.ph.i.while.end.i_crit_edge, label %if.end47.i.lr.ph

if.end39.lr.ph.i.while.end.i_crit_edge:           ; preds = %if.end39.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end47.i.lr.ph:                                 ; preds = %if.end39.lr.ph.i
  %sub48.i = sub nsw i32 32, %mul.i
  %notmask.i = shl nsw i32 -1, %sub48.i
  %add34.neg.i = sub i32 %add33.neg.i, %26
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.i.if.end47.i_crit_edge, %if.end47.i.lr.ph
  %sub35117.i123 = phi i32 [ %sub35116.i, %if.end47.i.lr.ph ], [ %sub35.i, %if.end47.i.if.end47.i_crit_edge ]
  %31 = xor i32 %notmask.i, %sub35117.i123
  %xor.i = xor i32 %31, -1
  %sub35.i = add i32 %add34.neg.i, %xor.i
  %shr.i = lshr i32 %sub35.i, %sub42.i
  %conv43.i = trunc i32 %shr.i to i8
  %32 = add i8 %conv43.i, -1
  %33 = icmp ult i8 %32, -2
  br i1 %33, label %if.end47.i.while.end.i_crit_edge, label %if.end47.i.if.end47.i_crit_edge

if.end47.i.if.end47.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.end47.i.while.end.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end47.i.while.end.i_crit_edge, %if.end39.lr.ph.i.while.end.i_crit_edge, %if.then30.i.while.end.i_crit_edge
  %sub35.lcssa.i = phi i32 [ %sub35116.i, %if.then30.i.while.end.i_crit_edge ], [ %sub35116.i, %if.end39.lr.ph.i.while.end.i_crit_edge ], [ %sub35.i, %if.end47.i.while.end.i_crit_edge ]
  %and51.i = and i32 %sub35.lcssa.i, 33554431
  %and52.i = and i32 %sub35.lcssa.i, 16777216
  %sub53.i = sub nsw i32 0, %and52.i
  %or54.i = or i32 %and51.i, %sub53.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #7
  %35 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %add.ptr31.i, align 1
  br label %for.inc.i

if.else58.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl59.i = shl nuw nsw i32 %prev_mask.1.i, 1
  %or60.i = or i32 %shl59.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else58.i, %while.end.i, %if.then21.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %i.0120.i, %for.body.i.for.inc.i_crit_edge ], [ %add26.i, %while.end.i ], [ %i.0120.i, %if.else58.i ], [ %i.0120.i, %if.then21.i ]
  %prev_pos.1.i = phi i32 [ %prev_pos.0122.i, %for.body.i.for.inc.i_crit_edge ], [ %i.0120.i, %while.end.i ], [ %i.0120.i, %if.else58.i ], [ %i.0120.i, %if.then21.i ]
  %prev_mask.2.i = phi i32 [ %prev_mask.0123.i, %for.body.i.for.inc.i_crit_edge ], [ %prev_mask.1.i, %while.end.i ], [ %or60.i, %if.else58.i ], [ %or.i, %if.then21.i ]
  %inc.i = add i32 %i.1.i, 1
  %cmp1.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub62.i = sub i32 %inc.i, %prev_pos.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub62.i)
  %cmp63.i = icmp ugt i32 %sub62.i, 3
  %sub65.i = add i32 %sub62.i, -1
  %shl66.i = shl i32 %prev_mask.2.i, %sub65.i
  %cond.i = select i1 %cmp63.i, i32 0, i32 %shl66.i
  %36 = ptrtoint ptr %x86_prev_mask.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i, ptr %x86_prev_mask.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.not18.i = icmp ult i32 %sub, 4
  br i1 %cmp.not18.i, label %sw.bb1.sw.epilog_crit_edge, label %for.body.lr.ph.i36

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i36:                               ; preds = %sw.bb1
  %pos.i35 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i42.for.body.i38_crit_edge, %for.body.lr.ph.i36
  %add20.i = phi i32 [ 4, %for.body.lr.ph.i36 ], [ %add.i41, %for.inc.i42.for.body.i38_crit_edge ]
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i36 ], [ %add20.i, %for.inc.i42.for.body.i38_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %i.019.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr.i, align 1
  %and.i = and i32 %38, -67108861
  call void @__sanitizer_cov_trace_const_cmp4(i32 1207959553, i32 %and.i)
  %cmp1.i37 = icmp eq i32 %and.i, 1207959553
  br i1 %cmp1.i37, label %if.then.i, label %for.body.i38.for.inc.i42_crit_edge

for.body.i38.for.inc.i42_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i42

if.then.i:                                        ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i32 %38, 67108860
  %39 = ptrtoint ptr %pos.i35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i35, align 4
  %41 = add i32 %i.019.i, %40
  %sub.i39 = sub i32 %and2.i, %41
  %and4.i = and i32 %sub.i39, 67108860
  %or.i40 = or i32 %and4.i, 1207959553
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %or.i40, ptr %add.ptr.i, align 1
  br label %for.inc.i42

for.inc.i42:                                      ; preds = %if.then.i, %for.body.i38.for.inc.i42_crit_edge
  %add.i41 = add i32 %add20.i, 4
  %cmp.not.i = icmp ugt i32 %add.i41, %sub
  br i1 %cmp.not.i, label %for.inc.i42.sw.epilog_crit_edge, label %for.inc.i42.for.body.i38_crit_edge

for.inc.i42.for.body.i38_crit_edge:               ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i38

for.inc.i42.sw.epilog_crit_edge:                  ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp.not124.i = icmp ult i32 %sub, 16
  br i1 %cmp.not124.i, label %sw.bb3.sw.epilog_crit_edge, label %for.body.lr.ph.i45

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i45:                               ; preds = %sw.bb3
  %pos.i44 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i50

for.cond.loopexit.i:                              ; preds = %for.inc73.i
  %add.i46 = add i32 %add126.i, 16
  %cmp.not.i47 = icmp ugt i32 %add.i46, %sub
  br i1 %cmp.not.i47, label %for.cond.loopexit.i.sw.epilog_crit_edge, label %for.cond.loopexit.i.for.body.i50_crit_edge

for.cond.loopexit.i.for.body.i50_crit_edge:       ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i50

for.cond.loopexit.i.sw.epilog_crit_edge:          ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i50:                                     ; preds = %for.cond.loopexit.i.for.body.i50_crit_edge, %for.body.lr.ph.i45
  %add126.i = phi i32 [ 16, %for.body.lr.ph.i45 ], [ %add.i46, %for.cond.loopexit.i.for.body.i50_crit_edge ]
  %i.0125.i = phi i32 [ 0, %for.body.lr.ph.i45 ], [ %add126.i, %for.cond.loopexit.i.for.body.i50_crit_edge ]
  %arrayidx.i48 = getelementptr i8, ptr %add.ptr, i32 %i.0125.i
  %43 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i48, align 1
  %45 = and i8 %44, 31
  %and.i49 = zext i8 %45 to i32
  %arrayidx1.i = getelementptr [32 x i8], ptr @bcj_ia64.branch_table, i32 0, i32 %and.i49
  %46 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %47 to i32
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc73.i.for.body6.i_crit_edge, %for.body.i50
  %bit_pos.0122.i = phi i32 [ 5, %for.body.i50 ], [ %add75.i, %for.inc73.i.for.body6.i_crit_edge ]
  %slot.0121.i = phi i32 [ 0, %for.body.i50 ], [ %inc74.i, %for.inc73.i.for.body6.i_crit_edge ]
  %48 = shl nuw nsw i32 1, %slot.0121.i
  %49 = and i32 %48, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp8.i = icmp eq i32 %49, 0
  br i1 %cmp8.i, label %for.body6.i.for.inc73.i_crit_edge, label %if.end.i

for.body6.i.for.inc73.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc73.i

if.end.i:                                         ; preds = %for.body6.i
  %shr10.i = lshr i32 %bit_pos.0122.i, 3
  %add16.i = add i32 %shr10.i, %i.0125.i
  %arrayidx18.i51 = getelementptr i8, ptr %add.ptr, i32 %add16.i
  %50 = ptrtoint ptr %arrayidx18.i51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx18.i51, align 1
  %conv19.i = zext i8 %51 to i64
  %add17.1.i = add i32 %add16.i, 1
  %arrayidx18.1.i = getelementptr i8, ptr %add.ptr, i32 %add17.1.i
  %52 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx18.1.i, align 1
  %conv19.1.i = zext i8 %53 to i64
  %shl.1.i = shl nuw nsw i64 %conv19.1.i, 8
  %or.1.i = or i64 %shl.1.i, %conv19.i
  %add17.2.i = add i32 %add16.i, 2
  %arrayidx18.2.i = getelementptr i8, ptr %add.ptr, i32 %add17.2.i
  %54 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx18.2.i, align 1
  %conv19.2.i = zext i8 %55 to i64
  %shl.2.i = shl nuw nsw i64 %conv19.2.i, 16
  %or.2.i = or i64 %or.1.i, %shl.2.i
  %add17.3.i = add i32 %add16.i, 3
  %arrayidx18.3.i = getelementptr i8, ptr %add.ptr, i32 %add17.3.i
  %56 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx18.3.i, align 1
  %conv19.3.i = zext i8 %57 to i64
  %shl.3.i = shl nuw nsw i64 %conv19.3.i, 24
  %or.3.i = or i64 %or.2.i, %shl.3.i
  %add17.4.i = add i32 %add16.i, 4
  %arrayidx18.4.i = getelementptr i8, ptr %add.ptr, i32 %add17.4.i
  %58 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx18.4.i, align 1
  %conv19.4.i = zext i8 %59 to i64
  %shl.4.i = shl nuw nsw i64 %conv19.4.i, 32
  %or.4.i = or i64 %or.3.i, %shl.4.i
  %add17.5.i = add i32 %add16.i, 5
  %arrayidx18.5.i = getelementptr i8, ptr %add.ptr, i32 %add17.5.i
  %60 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx18.5.i, align 1
  %conv19.5.i = zext i8 %61 to i64
  %shl.5.i = shl nuw nsw i64 %conv19.5.i, 40
  %or.5.i = or i64 %or.4.i, %shl.5.i
  %and11.i52 = and i32 %bit_pos.0122.i, 7
  %sh_prom20.i = zext i32 %and11.i52 to i64
  %shr21.i = lshr i64 %or.5.i, %sh_prom20.i
  %62 = and i64 %shr21.i, 2061584305664
  call void @__sanitizer_cov_trace_const_cmp8(i64 687194767360, i64 %62)
  %63 = icmp eq i64 %62, 687194767360
  br i1 %63, label %if.then30.i55, label %if.end.i.for.inc73.i_crit_edge

if.end.i.for.inc73.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc73.i

if.then30.i55:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr31.i = lshr i64 %shr21.i, 13
  %64 = trunc i64 %shr31.i to i32
  %conv33.i = and i32 %64, 1048575
  %sh.diff.i = lshr i64 %shr21.i, 16
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %shl37.i = and i32 %tr.sh.diff.i, 1048576
  %or38.i = or i32 %conv33.i, %shl37.i
  %shl39.i = shl nuw nsw i32 %or38.i, 4
  %65 = ptrtoint ptr %pos.i44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pos.i44, align 4
  %67 = add i32 %i.0125.i, %66
  %sub.i53 = sub i32 %shl39.i, %67
  %shr41.i = lshr i32 %sub.i53, 4
  %and42.i = and i64 %shr21.i, -77309403137
  %and43.i = and i32 %shr41.i, 1048575
  %conv44.i = zext i32 %and43.i to i64
  %shl45.i = shl nuw nsw i64 %conv44.i, 13
  %or46.i = or i64 %shl45.i, %and42.i
  %and47.i = and i32 %shr41.i, 1048576
  %conv48.i = zext i32 %and47.i to i64
  %shl49.i = shl nuw nsw i64 %conv48.i, 16
  %or50.i = or i64 %or46.i, %shl49.i
  %notmask.i54 = shl nsw i32 -1, %and11.i52
  %sub52.i = xor i32 %notmask.i54, -1
  %68 = zext i32 %sub52.i to i64
  %and54.i = and i64 %conv19.i, %68
  %shl56.i = shl i64 %or50.i, %sh_prom20.i
  %or57.i = or i64 %shl56.i, %and54.i
  %conv65.i = trunc i64 %or57.i to i8
  %69 = ptrtoint ptr %arrayidx18.i51 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv65.i, ptr %arrayidx18.i51, align 1
  %shr64.1.i = lshr i64 %shl56.i, 8
  %conv65.1.i = trunc i64 %shr64.1.i to i8
  %70 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv65.1.i, ptr %arrayidx18.1.i, align 1
  %shr64.2.i = lshr i64 %shl56.i, 16
  %conv65.2.i = trunc i64 %shr64.2.i to i8
  %71 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv65.2.i, ptr %arrayidx18.2.i, align 1
  %shr64.3.i = lshr i64 %shl56.i, 24
  %conv65.3.i = trunc i64 %shr64.3.i to i8
  %72 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv65.3.i, ptr %arrayidx18.3.i, align 1
  %shr64.4.i = lshr i64 %shl56.i, 32
  %conv65.4.i = trunc i64 %shr64.4.i to i8
  %73 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv65.4.i, ptr %arrayidx18.4.i, align 1
  %shr64.5.i = lshr i64 %shl56.i, 40
  %conv65.5.i = trunc i64 %shr64.5.i to i8
  %74 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv65.5.i, ptr %arrayidx18.5.i, align 1
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %if.then30.i55, %if.end.i.for.inc73.i_crit_edge, %for.body6.i.for.inc73.i_crit_edge
  %inc74.i = add nuw nsw i32 %slot.0121.i, 1
  %add75.i = add nuw nsw i32 %bit_pos.0122.i, 41
  %exitcond.not.i = icmp eq i32 %inc74.i, 3
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.inc73.i.for.body6.i_crit_edge

for.inc73.i.for.body6.i_crit_edge:                ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.not49.i = icmp ult i32 %sub, 4
  br i1 %cmp.not49.i, label %sw.bb5.sw.epilog_crit_edge, label %for.body.lr.ph.i58

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i58:                               ; preds = %sw.bb5
  %pos.i57 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.inc.i66.for.body.i60_crit_edge, %for.body.lr.ph.i58
  %add51.i = phi i32 [ 4, %for.body.lr.ph.i58 ], [ %add.i64, %for.inc.i66.for.body.i60_crit_edge ]
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i58 ], [ %add51.i, %for.inc.i66.for.body.i60_crit_edge ]
  %add1.i = or i32 %i.050.i, 3
  %arrayidx.i59 = getelementptr i8, ptr %add.ptr, i32 %add1.i
  %75 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %76)
  %cmp2.i = icmp eq i8 %76, -21
  br i1 %cmp2.i, label %if.then.i63, label %for.body.i60.for.inc.i66_crit_edge

for.body.i60.for.inc.i66_crit_edge:               ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i66

if.then.i63:                                      ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4.i = getelementptr i8, ptr %add.ptr, i32 %i.050.i
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %78 to i32
  %add6.i = or i32 %i.050.i, 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr, i32 %add6.i
  %79 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %80 to i32
  %add9.i = or i32 %i.050.i, 2
  %arrayidx10.i = getelementptr i8, ptr %add.ptr, i32 %add9.i
  %81 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %82 to i32
  %83 = shl nuw nsw i32 %conv11.i, 18
  %84 = shl nuw nsw i32 %conv8.i, 10
  %85 = shl nuw nsw i32 %conv5.i, 2
  %86 = or i32 %84, %85
  %shl14.i = or i32 %86, %83
  %87 = ptrtoint ptr %pos.i57 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pos.i57, align 4
  %89 = add i32 %i.050.i, %88
  %add16.neg.i = sub i32 -8, %89
  %sub.i61 = add i32 %add16.neg.i, %shl14.i
  %shr.i62 = lshr i32 %sub.i61, 2
  %conv17.i = trunc i32 %shr.i62 to i8
  store i8 %conv17.i, ptr %arrayidx4.i, align 1
  %shr19.i = lshr i32 %sub.i61, 10
  %conv20.i = trunc i32 %shr19.i to i8
  store i8 %conv20.i, ptr %arrayidx7.i, align 1
  %shr23.i = lshr i32 %sub.i61, 18
  %conv24.i = trunc i32 %shr23.i to i8
  store i8 %conv24.i, ptr %arrayidx10.i, align 1
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.then.i63, %for.body.i60.for.inc.i66_crit_edge
  %add.i64 = add i32 %add51.i, 4
  %cmp.not.i65 = icmp ugt i32 %add.i64, %sub
  br i1 %cmp.not.i65, label %for.inc.i66.sw.epilog_crit_edge, label %for.inc.i66.for.body.i60_crit_edge

for.inc.i66.for.body.i60_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60

for.inc.i66.sw.epilog_crit_edge:                  ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.not79.i = icmp ult i32 %sub, 4
  br i1 %cmp.not79.i, label %sw.bb7.sw.epilog_crit_edge, label %for.body.lr.ph.i70

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i70:                               ; preds = %sw.bb7
  %pos.i69 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc.i86.for.body.i75_crit_edge, %for.body.lr.ph.i70
  %i.080.i = phi i32 [ 0, %for.body.lr.ph.i70 ], [ %add49.i, %for.inc.i86.for.body.i75_crit_edge ]
  %add1.i71 = add i32 %i.080.i, 1
  %arrayidx.i72 = getelementptr i8, ptr %add.ptr, i32 %add1.i71
  %90 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i72, align 1
  %conv.i = zext i8 %91 to i32
  %and.i73 = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and.i73)
  %cmp2.i74 = icmp eq i32 %and.i73, 240
  br i1 %cmp2.i74, label %land.lhs.true.i, label %for.body.i75.for.inc.i86_crit_edge

for.body.i75.for.inc.i86_crit_edge:               ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i86

land.lhs.true.i:                                  ; preds = %for.body.i75
  %add4.i = add i32 %i.080.i, 3
  %arrayidx5.i = getelementptr i8, ptr %add.ptr, i32 %add4.i
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %93 to i32
  %and7.i = and i32 %conv6.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %and7.i)
  %cmp8.i76 = icmp eq i32 %and7.i, 248
  br i1 %cmp8.i76, label %if.then.i82, label %land.lhs.true.i.for.inc.i86_crit_edge

land.lhs.true.i.for.inc.i86_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i86

if.then.i82:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i = shl nuw nsw i32 %conv.i, 19
  %shl.i77 = and i32 %and13.i, 3670016
  %arrayidx14.i = getelementptr i8, ptr %add.ptr, i32 %i.080.i
  %94 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %95 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 11
  %or.i78 = or i32 %shl16.i, %shl.i77
  %and20.i = shl nuw nsw i32 %conv6.i, 8
  %shl21.i = and i32 %and20.i, 1792
  %or22.i = or i32 %or.i78, %shl21.i
  %add23.i = add i32 %i.080.i, 2
  %arrayidx24.i = getelementptr i8, ptr %add.ptr, i32 %add23.i
  %96 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %97 to i32
  %or26.i = or i32 %or22.i, %conv25.i
  %shl27.i = shl nuw nsw i32 %or26.i, 1
  %98 = ptrtoint ptr %pos.i69 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pos.i69, align 4
  %100 = add i32 %i.080.i, %99
  %add29.neg.i = sub i32 -4, %100
  %sub.i79 = add i32 %add29.neg.i, %shl27.i
  %shr.i80 = lshr i32 %sub.i79, 1
  %shr30.i = lshr i32 %sub.i79, 20
  %101 = trunc i32 %shr30.i to i8
  %102 = and i8 %101, 7
  %conv33.i81 = or i8 %102, -16
  %103 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv33.i81, ptr %arrayidx.i72, align 1
  %shr36.i = lshr i32 %sub.i79, 12
  %conv37.i = trunc i32 %shr36.i to i8
  store i8 %conv37.i, ptr %arrayidx14.i, align 1
  %shr39.i = lshr i32 %sub.i79, 9
  %104 = trunc i32 %shr39.i to i8
  %conv42.i = or i8 %104, -8
  %105 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv42.i, ptr %arrayidx5.i, align 1
  %conv45.i = trunc i32 %shr.i80 to i8
  store i8 %conv45.i, ptr %arrayidx24.i, align 1
  br label %for.inc.i86

for.inc.i86:                                      ; preds = %if.then.i82, %land.lhs.true.i.for.inc.i86_crit_edge, %for.body.i75.for.inc.i86_crit_edge
  %i.1.i83 = phi i32 [ %add23.i, %if.then.i82 ], [ %i.080.i, %land.lhs.true.i.for.inc.i86_crit_edge ], [ %i.080.i, %for.body.i75.for.inc.i86_crit_edge ]
  %add49.i = add i32 %i.1.i83, 2
  %add.i84 = add i32 %i.1.i83, 6
  %cmp.not.i85 = icmp ugt i32 %add.i84, %sub
  br i1 %cmp.not.i85, label %for.inc.i86.sw.epilog_crit_edge, label %for.inc.i86.for.body.i75_crit_edge

for.inc.i86.for.body.i75_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i75

for.inc.i86.sw.epilog_crit_edge:                  ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.not24.i = icmp ult i32 %sub, 4
  br i1 %cmp.not24.i, label %sw.bb9.sw.epilog_crit_edge, label %for.body.lr.ph.i90

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i90:                               ; preds = %sw.bb9
  %pos.i89 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.inc.i104.for.body.i94_crit_edge, %for.body.lr.ph.i90
  %add26.i91 = phi i32 [ 4, %for.body.lr.ph.i90 ], [ %add.i102, %for.inc.i104.for.body.i94_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %add26.i91, %for.inc.i104.for.body.i94_crit_edge ]
  %add.ptr.i92 = getelementptr i8, ptr %add.ptr, i32 %i.025.i
  %106 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %add.ptr.i92, align 1
  %shr.i93 = lshr i32 %107, 22
  %108 = zext i32 %shr.i93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %shr.i93, label %for.body.i94.for.inc.i104_crit_edge [
    i32 256, label %for.body.i94.if.then.i101_crit_edge
    i32 511, label %for.body.i94.if.then.i101_crit_edge140
  ]

for.body.i94.if.then.i101_crit_edge140:           ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

for.body.i94.if.then.i101_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

for.body.i94.for.inc.i104_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i104

if.then.i101:                                     ; preds = %for.body.i94.if.then.i101_crit_edge, %for.body.i94.if.then.i101_crit_edge140
  %shl.i95 = shl i32 %107, 2
  %109 = ptrtoint ptr %pos.i89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pos.i89, align 4
  %111 = add i32 %i.025.i, %110
  %sub.i96 = sub i32 %shl.i95, %111
  %shr5.i = lshr i32 %sub.i96, 2
  %and.i97 = and i32 %shr5.i, 4194304
  %sub6.i98 = sub nuw nsw i32 1073741824, %and.i97
  %and7.i99 = and i32 %shr5.i, 4194303
  %or.i100 = or i32 %sub6.i98, %and7.i99
  %or8.i = or i32 %or.i100, 1073741824
  %112 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %or8.i, ptr %add.ptr.i92, align 1
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.then.i101, %for.body.i94.for.inc.i104_crit_edge
  %add.i102 = add i32 %add26.i91, 4
  %cmp.not.i103 = icmp ugt i32 %add.i102, %sub
  br i1 %cmp.not.i103, label %for.inc.i104.sw.epilog_crit_edge, label %for.inc.i104.for.body.i94_crit_edge

for.inc.i104.for.body.i94_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94

for.inc.i104.sw.epilog_crit_edge:                 ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.i104.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %for.inc.i86.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %for.inc.i66.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %for.cond.loopexit.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %for.inc.i42.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %for.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %filtered.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %inc.i, %for.end.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %sw.bb9.sw.epilog_crit_edge ], [ %add20.i, %for.inc.i42.sw.epilog_crit_edge ], [ %add126.i, %for.cond.loopexit.i.sw.epilog_crit_edge ], [ %add51.i, %for.inc.i66.sw.epilog_crit_edge ], [ %add49.i, %for.inc.i86.sw.epilog_crit_edge ], [ %add26.i91, %for.inc.i104.sw.epilog_crit_edge ]
  %113 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pos, align 4
  %add = add i32 %114, %filtered.0
  store i32 %add, ptr %pos, align 4
  %pos11 = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  %115 = ptrtoint ptr %pos11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pos11, align 4
  %add12 = add i32 %116, %filtered.0
  store i32 %add12, ptr %pos11, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @xz_dec_bcj_create(i1 noundef zeroext %single_call) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 56) #10
  %cmp.not = icmp eq ptr %call7.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %single_call to i8
  %single_call1 = getelementptr inbounds %struct.xz_dec_bcj, ptr %call7.i, i32 0, i32 2
  %1 = ptrtoint ptr %single_call1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %single_call1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @xz_dec_bcj_reset(ptr nocapture noundef writeonly %s, i8 noundef zeroext %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.off = add i8 %id, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %id.off)
  %switch = icmp ult i8 %id.off, 6
  br i1 %switch, label %sw.epilog, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %id to i32
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %s, align 4
  %ret = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ret, align 4
  %pos = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pos, align 4
  %x86_prev_mask = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 4
  %3 = ptrtoint ptr %x86_prev_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %x86_prev_mask, align 4
  %temp = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp, align 4
  %size = getelementptr inbounds %struct.xz_dec_bcj, ptr %s, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %size, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"mask_to_allowed_status", i1 false, i1 false}
!1 = !{!"../lib/xz/xz_dec_bcj.c", i32 90, i32 20}
!2 = !{ptr @bcj_x86.mask_to_bit_num, !3, !"mask_to_bit_num", i1 false, i1 false}
!3 = !{!"../lib/xz/xz_dec_bcj.c", i32 93, i32 23}
!4 = !{ptr @bcj_ia64.branch_table, !5, !"branch_table", i1 false, i1 false}
!5 = !{!"../lib/xz/xz_dec_bcj.c", i32 183, i32 23}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
