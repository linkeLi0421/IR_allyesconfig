; ModuleID = '/llk/IR_all_yes/lib/zlib_inflate/inffast.c_pt.bc'
source_filename = "../lib/zlib_inflate/inffast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.code = type { i8, i8, i16 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid distance too far back\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid distance code\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid literal/length code\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 183, i32 45 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 290, i32 37 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [30 x i8] c"../lib/zlib_inflate/inffast.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 304, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inflate_fast(ptr nocapture noundef %strm, i32 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %2 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strm, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %4 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_in, align 4
  %sub = add i32 %5, -5
  %add.ptr = getelementptr i8, ptr %3, i32 %sub
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %6 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %8 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_out, align 4
  %sub2.neg = sub i32 %9, %start
  %add.ptr3 = getelementptr i8, ptr %7, i32 %sub2.neg
  %sub5 = add i32 %9, -257
  %add.ptr6 = getelementptr i8, ptr %7, i32 %sub5
  %wsize7 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %wsize7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wsize7, align 4
  %whave8 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %whave8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %whave8, align 4
  %write9 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %write9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write9, align 4
  %window10 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %window10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %window10, align 4
  %hold11 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %hold11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hold11, align 4
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %bits12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits12, align 4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %lencode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lencode, align 4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %distcode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %distcode, align 4
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %lenbits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lenbits, align 4
  %notmask = shl nsw i32 -1, %27
  %sub13 = xor i32 %notmask, -1
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 21
  %28 = ptrtoint ptr %distbits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %distbits, align 4
  %notmask561 = shl nsw i32 -1, %29
  %sub15 = xor i32 %notmask561, -1
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp116 = icmp eq i32 %15, 0
  %add136 = add i32 %15, %11
  br label %do.body

do.body:                                          ; preds = %do.cond288.do.body_crit_edge, %entry
  %out.0 = phi ptr [ %7, %entry ], [ %out.10, %do.cond288.do.body_crit_edge ]
  %hold.0 = phi i32 [ %19, %entry ], [ %hold.8, %do.cond288.do.body_crit_edge ]
  %bits.0 = phi i32 [ %21, %entry ], [ %bits.8, %do.cond288.do.body_crit_edge ]
  %in.0 = phi ptr [ %3, %entry ], [ %in.6, %do.cond288.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bits.0)
  %cmp = icmp ult i32 %bits.0, 15
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr = getelementptr i8, ptr %in.0, i32 1
  %30 = ptrtoint ptr %in.0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %in.0, align 1
  %conv = zext i8 %31 to i32
  %shl16 = shl nuw nsw i32 %conv, %bits.0
  %add = add i32 %shl16, %hold.0
  %add17 = add nuw nsw i32 %bits.0, 8
  %incdec.ptr18 = getelementptr i8, ptr %in.0, i32 2
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr, align 1
  %conv19 = zext i8 %33 to i32
  %shl20 = shl nuw nsw i32 %conv19, %add17
  %add21 = add i32 %add, %shl20
  %add22 = add nuw nsw i32 %bits.0, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %hold.1 = phi i32 [ %add21, %if.then ], [ %hold.0, %do.body.if.end_crit_edge ]
  %bits.1 = phi i32 [ %add22, %if.then ], [ %bits.0, %do.body.if.end_crit_edge ]
  %in.1 = phi ptr [ %incdec.ptr18, %if.then ], [ %in.0, %do.body.if.end_crit_edge ]
  %and = and i32 %hold.1, %sub13
  %this.sroa.0.0.in589 = getelementptr %struct.code, ptr %23, i32 %and
  %34 = ptrtoint ptr %this.sroa.0.0.in589 to i32
  call void @__asan_load1_noabort(i32 %34)
  %this.sroa.0.0590 = load i8, ptr %this.sroa.0.0.in589, align 2
  %this.sroa.9.0.in591 = getelementptr %struct.code, ptr %23, i32 %and, i32 1
  %35 = ptrtoint ptr %this.sroa.9.0.in591 to i32
  call void @__asan_load1_noabort(i32 %35)
  %this.sroa.9.0592 = load i8, ptr %this.sroa.9.0.in591, align 1
  %this.sroa.12.0.in593 = getelementptr %struct.code, ptr %23, i32 %and, i32 2
  %36 = ptrtoint ptr %this.sroa.12.0.in593 to i32
  call void @__asan_load2_noabort(i32 %36)
  %this.sroa.12.0594 = load i16, ptr %this.sroa.12.0.in593, align 2
  %conv24595 = zext i8 %this.sroa.9.0592 to i32
  %shr596 = lshr i32 %hold.1, %conv24595
  %sub25597 = sub i32 %bits.1, %conv24595
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %this.sroa.0.0590)
  %cmp28599 = icmp eq i8 %this.sroa.0.0590, 0
  %extract.t = trunc i16 %this.sroa.12.0594 to i8
  br i1 %cmp28599, label %if.end.if.then30_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  br label %if.else

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then30

if.then30.loopexit:                               ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #3
  %extract.t634 = trunc i16 %this.sroa.12.0 to i8
  br label %if.then30

if.then30:                                        ; preds = %if.then30.loopexit, %if.end.if.then30_crit_edge
  %this.sroa.12.0.lcssa.off0 = phi i8 [ %extract.t, %if.end.if.then30_crit_edge ], [ %extract.t634, %if.then30.loopexit ]
  %shr.lcssa = phi i32 [ %shr596, %if.end.if.then30_crit_edge ], [ %shr, %if.then30.loopexit ]
  %sub25.lcssa = phi i32 [ %sub25597, %if.end.if.then30_crit_edge ], [ %sub25, %if.then30.loopexit ]
  %incdec.ptr32 = getelementptr i8, ptr %out.0, i32 1
  %37 = ptrtoint ptr %out.0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %this.sroa.12.0.lcssa.off0, ptr %out.0, align 1
  br label %do.cond288

if.else:                                          ; preds = %if.then270.if.else_crit_edge, %if.end.if.else_crit_edge
  %sub25603 = phi i32 [ %sub25, %if.then270.if.else_crit_edge ], [ %sub25597, %if.end.if.else_crit_edge ]
  %shr602 = phi i32 [ %shr, %if.then270.if.else_crit_edge ], [ %shr596, %if.end.if.else_crit_edge ]
  %this.sroa.12.0601 = phi i16 [ %this.sroa.12.0, %if.then270.if.else_crit_edge ], [ %this.sroa.12.0594, %if.end.if.else_crit_edge ]
  %this.sroa.0.0600 = phi i8 [ %this.sroa.0.0, %if.then270.if.else_crit_edge ], [ %this.sroa.0.0590, %if.end.if.else_crit_edge ]
  %conv27604 = zext i8 %this.sroa.0.0600 to i32
  %and33 = and i32 %conv27604, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %if.else266, label %if.then34

if.then34:                                        ; preds = %if.else
  %conv36 = zext i16 %this.sroa.12.0601 to i32
  %38 = and i8 %this.sroa.0.0600, 15
  %and37 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool38.not = icmp eq i8 %38, 0
  br i1 %tobool38.not, label %if.then34.if.end55_crit_edge, label %if.then39

if.then34.if.end55_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end55

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub25603, i32 %and37)
  %cmp40 = icmp ult i32 %sub25603, %and37
  br i1 %cmp40, label %if.then42, label %if.then39.if.end48_crit_edge

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end48

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr43 = getelementptr i8, ptr %in.1, i32 1
  %39 = ptrtoint ptr %in.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %in.1, align 1
  %conv44 = zext i8 %40 to i32
  %shl45 = shl i32 %conv44, %sub25603
  %add46 = add i32 %shl45, %shr602
  %add47 = add i32 %sub25603, 8
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then39.if.end48_crit_edge
  %hold.3 = phi i32 [ %add46, %if.then42 ], [ %shr602, %if.then39.if.end48_crit_edge ]
  %bits.3 = phi i32 [ %add47, %if.then42 ], [ %sub25603, %if.then39.if.end48_crit_edge ]
  %in.2 = phi ptr [ %incdec.ptr43, %if.then42 ], [ %in.1, %if.then39.if.end48_crit_edge ]
  %notmask566 = shl nsw i32 -1, %and37
  %sub50 = xor i32 %notmask566, -1
  %and51 = and i32 %hold.3, %sub50
  %add52 = add nuw nsw i32 %and51, %conv36
  %shr53 = lshr i32 %hold.3, %and37
  %sub54 = sub i32 %bits.3, %and37
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %if.then34.if.end55_crit_edge
  %hold.4 = phi i32 [ %shr53, %if.end48 ], [ %shr602, %if.then34.if.end55_crit_edge ]
  %bits.4 = phi i32 [ %sub54, %if.end48 ], [ %sub25603, %if.then34.if.end55_crit_edge ]
  %len.0 = phi i32 [ %add52, %if.end48 ], [ %conv36, %if.then34.if.end55_crit_edge ]
  %in.3 = phi ptr [ %in.2, %if.end48 ], [ %in.1, %if.then34.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bits.4)
  %cmp56 = icmp ult i32 %bits.4, 15
  br i1 %cmp56, label %if.then58, label %if.end55.if.end69_crit_edge

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end69

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr59 = getelementptr i8, ptr %in.3, i32 1
  %41 = ptrtoint ptr %in.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in.3, align 1
  %conv60 = zext i8 %42 to i32
  %shl61 = shl nuw nsw i32 %conv60, %bits.4
  %add62 = add i32 %shl61, %hold.4
  %add63 = add nuw nsw i32 %bits.4, 8
  %incdec.ptr64 = getelementptr i8, ptr %in.3, i32 2
  %43 = ptrtoint ptr %incdec.ptr59 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr59, align 1
  %conv65 = zext i8 %44 to i32
  %shl66 = shl nuw nsw i32 %conv65, %add63
  %add67 = add i32 %add62, %shl66
  %add68 = add nuw nsw i32 %bits.4, 16
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %if.end55.if.end69_crit_edge
  %hold.5 = phi i32 [ %add67, %if.then58 ], [ %hold.4, %if.end55.if.end69_crit_edge ]
  %bits.5 = phi i32 [ %add68, %if.then58 ], [ %bits.4, %if.end55.if.end69_crit_edge ]
  %in.4 = phi ptr [ %incdec.ptr64, %if.then58 ], [ %in.3, %if.end55.if.end69_crit_edge ]
  %and70 = and i32 %hold.5, %sub15
  %this.sroa.0.1.in607 = getelementptr %struct.code, ptr %25, i32 %and70
  %45 = ptrtoint ptr %this.sroa.0.1.in607 to i32
  call void @__asan_load1_noabort(i32 %45)
  %this.sroa.0.1608 = load i8, ptr %this.sroa.0.1.in607, align 2
  %this.sroa.9.1.in609 = getelementptr %struct.code, ptr %25, i32 %and70, i32 1
  %46 = ptrtoint ptr %this.sroa.9.1.in609 to i32
  call void @__asan_load1_noabort(i32 %46)
  %this.sroa.9.1610 = load i8, ptr %this.sroa.9.1.in609, align 1
  %this.sroa.12.1.in611 = getelementptr %struct.code, ptr %25, i32 %and70, i32 2
  %47 = ptrtoint ptr %this.sroa.12.1.in611 to i32
  call void @__asan_load2_noabort(i32 %47)
  %this.sroa.12.1612 = load i16, ptr %this.sroa.12.1.in611, align 2
  %conv73613 = zext i8 %this.sroa.9.1610 to i32
  %shr74614 = lshr i32 %hold.5, %conv73613
  %sub75615 = sub i32 %bits.5, %conv73613
  %conv77616 = zext i8 %this.sroa.0.1608 to i32
  %and78617 = and i32 %conv77616, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78617)
  %tobool79.not618 = icmp eq i32 %and78617, 0
  br i1 %tobool79.not618, label %if.end69.if.else250_crit_edge, label %if.end69.if.then80_crit_edge

if.end69.if.then80_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then80

if.end69.if.else250_crit_edge:                    ; preds = %if.end69
  br label %if.else250

if.then80:                                        ; preds = %if.then254.if.then80_crit_edge, %if.end69.if.then80_crit_edge
  %this.sroa.0.1.lcssa = phi i8 [ %this.sroa.0.1608, %if.end69.if.then80_crit_edge ], [ %this.sroa.0.1, %if.then254.if.then80_crit_edge ]
  %this.sroa.12.1.lcssa = phi i16 [ %this.sroa.12.1612, %if.end69.if.then80_crit_edge ], [ %this.sroa.12.1, %if.then254.if.then80_crit_edge ]
  %shr74.lcssa = phi i32 [ %shr74614, %if.end69.if.then80_crit_edge ], [ %shr74, %if.then254.if.then80_crit_edge ]
  %sub75.lcssa = phi i32 [ %sub75615, %if.end69.if.then80_crit_edge ], [ %sub75, %if.then254.if.then80_crit_edge ]
  %conv82 = zext i16 %this.sroa.12.1.lcssa to i32
  %48 = and i8 %this.sroa.0.1.lcssa, 15
  %and83 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75.lcssa, i32 %and83)
  %cmp84 = icmp ult i32 %sub75.lcssa, %and83
  br i1 %cmp84, label %if.then86, label %if.then80.if.end101_crit_edge

if.then80.if.end101_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end101

if.then86:                                        ; preds = %if.then80
  %incdec.ptr87 = getelementptr i8, ptr %in.4, i32 1
  %49 = ptrtoint ptr %in.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %in.4, align 1
  %conv88 = zext i8 %50 to i32
  %shl89 = shl i32 %conv88, %sub75.lcssa
  %add90 = add i32 %shl89, %shr74.lcssa
  %add91 = add i32 %sub75.lcssa, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %and83)
  %cmp92 = icmp ult i32 %add91, %and83
  br i1 %cmp92, label %if.then94, label %if.then86.if.end101_crit_edge

if.then86.if.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end101

if.then94:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr95 = getelementptr i8, ptr %in.4, i32 2
  %51 = ptrtoint ptr %incdec.ptr87 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr87, align 1
  %conv96 = zext i8 %52 to i32
  %shl97 = shl i32 %conv96, %add91
  %add98 = add i32 %shl97, %add90
  %add99 = add i32 %sub75.lcssa, 16
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.then86.if.end101_crit_edge, %if.then80.if.end101_crit_edge
  %hold.7 = phi i32 [ %add98, %if.then94 ], [ %add90, %if.then86.if.end101_crit_edge ], [ %shr74.lcssa, %if.then80.if.end101_crit_edge ]
  %bits.7 = phi i32 [ %add99, %if.then94 ], [ %add91, %if.then86.if.end101_crit_edge ], [ %sub75.lcssa, %if.then80.if.end101_crit_edge ]
  %in.5 = phi ptr [ %incdec.ptr95, %if.then94 ], [ %incdec.ptr87, %if.then86.if.end101_crit_edge ], [ %in.4, %if.then80.if.end101_crit_edge ]
  %notmask565 = shl nsw i32 -1, %and83
  %sub103 = xor i32 %notmask565, -1
  %and104 = and i32 %hold.7, %sub103
  %add105 = add nuw nsw i32 %and104, %conv82
  %shr106 = lshr i32 %hold.7, %and83
  %sub107 = sub i32 %bits.7, %and83
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %sub.ptr.sub)
  %cmp108 = icmp ugt i32 %add105, %sub.ptr.sub
  br i1 %cmp108, label %if.then110, label %if.else205

if.then110:                                       ; preds = %if.end101
  %sub111 = sub i32 %add105, %sub.ptr.sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub111, i32 %13)
  %cmp112 = icmp ugt i32 %sub111, %13
  br i1 %cmp112, label %if.then110.do.end293.sink.split.sink.split_crit_edge, label %if.end115

if.then110.do.end293.sink.split.sink.split_crit_edge: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end293.sink.split.sink.split

if.end115:                                        ; preds = %if.then110
  br i1 %cmp116, label %if.then118, label %if.else132

if.then118:                                       ; preds = %if.end115
  %sub119 = sub i32 %11, %sub111
  %add.ptr120 = getelementptr i8, ptr %17, i32 %sub119
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %sub111)
  %cmp121 = icmp ugt i32 %len.0, %sub111
  br i1 %cmp121, label %if.then118.do.body125_crit_edge, label %if.then118.if.end184_crit_edge

if.then118.if.end184_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end184

if.then118.do.body125_crit_edge:                  ; preds = %if.then118
  br label %do.body125

do.body125:                                       ; preds = %do.body125.do.body125_crit_edge, %if.then118.do.body125_crit_edge
  %out.1 = phi ptr [ %incdec.ptr127, %do.body125.do.body125_crit_edge ], [ %out.0, %if.then118.do.body125_crit_edge ]
  %op.0 = phi i32 [ %dec, %do.body125.do.body125_crit_edge ], [ %sub111, %if.then118.do.body125_crit_edge ]
  %from.0 = phi ptr [ %incdec.ptr126, %do.body125.do.body125_crit_edge ], [ %add.ptr120, %if.then118.do.body125_crit_edge ]
  %incdec.ptr126 = getelementptr i8, ptr %from.0, i32 1
  %53 = ptrtoint ptr %from.0 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %from.0, align 1
  %incdec.ptr127 = getelementptr i8, ptr %out.1, i32 1
  %55 = ptrtoint ptr %out.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %out.1, align 1
  %dec = add i32 %op.0, -1
  %tobool128.not = icmp eq i32 %dec, 0
  br i1 %tobool128.not, label %do.end, label %do.body125.do.body125_crit_edge

do.body125.do.body125_crit_edge:                  ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body125

do.end:                                           ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #3
  %sub124 = sub i32 %len.0, %sub111
  %idx.neg129 = sub nsw i32 0, %add105
  %add.ptr130 = getelementptr i8, ptr %incdec.ptr127, i32 %idx.neg129
  br label %if.end184

if.else132:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub111)
  %cmp133 = icmp ult i32 %15, %sub111
  br i1 %cmp133, label %if.then135, label %if.else166

if.then135:                                       ; preds = %if.else132
  %sub137 = sub i32 %add136, %sub111
  %add.ptr138 = getelementptr i8, ptr %17, i32 %sub137
  %sub139 = sub i32 %sub111, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %sub139)
  %cmp140 = icmp ugt i32 %len.0, %sub139
  br i1 %cmp140, label %if.then135.do.body144_crit_edge, label %if.then135.if.end184_crit_edge

if.then135.if.end184_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end184

if.then135.do.body144_crit_edge:                  ; preds = %if.then135
  br label %do.body144

do.body144:                                       ; preds = %do.body144.do.body144_crit_edge, %if.then135.do.body144_crit_edge
  %out.2 = phi ptr [ %incdec.ptr146, %do.body144.do.body144_crit_edge ], [ %out.0, %if.then135.do.body144_crit_edge ]
  %op.1 = phi i32 [ %dec148, %do.body144.do.body144_crit_edge ], [ %sub139, %if.then135.do.body144_crit_edge ]
  %from.1 = phi ptr [ %incdec.ptr145, %do.body144.do.body144_crit_edge ], [ %add.ptr138, %if.then135.do.body144_crit_edge ]
  %incdec.ptr145 = getelementptr i8, ptr %from.1, i32 1
  %56 = ptrtoint ptr %from.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %from.1, align 1
  %incdec.ptr146 = getelementptr i8, ptr %out.2, i32 1
  %58 = ptrtoint ptr %out.2 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %out.2, align 1
  %dec148 = add i32 %op.1, -1
  %tobool149.not = icmp eq i32 %dec148, 0
  br i1 %tobool149.not, label %do.end150, label %do.body144.do.body144_crit_edge

do.body144.do.body144_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body144

do.end150:                                        ; preds = %do.body144
  %sub143 = sub i32 %len.0, %sub139
  call void @__sanitizer_cov_trace_cmp4(i32 %sub143, i32 %15)
  %cmp151 = icmp ugt i32 %sub143, %15
  br i1 %cmp151, label %do.end150.do.body155_crit_edge, label %do.end150.if.end184_crit_edge

do.end150.if.end184_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end184

do.end150.do.body155_crit_edge:                   ; preds = %do.end150
  br label %do.body155

do.body155:                                       ; preds = %do.body155.do.body155_crit_edge, %do.end150.do.body155_crit_edge
  %out.3 = phi ptr [ %incdec.ptr157, %do.body155.do.body155_crit_edge ], [ %incdec.ptr146, %do.end150.do.body155_crit_edge ]
  %op.2 = phi i32 [ %dec159, %do.body155.do.body155_crit_edge ], [ %15, %do.end150.do.body155_crit_edge ]
  %from.2 = phi ptr [ %incdec.ptr156, %do.body155.do.body155_crit_edge ], [ %17, %do.end150.do.body155_crit_edge ]
  %incdec.ptr156 = getelementptr i8, ptr %from.2, i32 1
  %59 = ptrtoint ptr %from.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %from.2, align 1
  %incdec.ptr157 = getelementptr i8, ptr %out.3, i32 1
  %61 = ptrtoint ptr %out.3 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %out.3, align 1
  %dec159 = add i32 %op.2, -1
  %tobool160.not = icmp eq i32 %dec159, 0
  br i1 %tobool160.not, label %do.end161, label %do.body155.do.body155_crit_edge

do.body155.do.body155_crit_edge:                  ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body155

do.end161:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #3
  %sub154 = sub i32 %sub143, %15
  %idx.neg162 = sub nsw i32 0, %add105
  %add.ptr163 = getelementptr i8, ptr %incdec.ptr157, i32 %idx.neg162
  br label %if.end184

if.else166:                                       ; preds = %if.else132
  %sub167 = sub i32 %15, %sub111
  %add.ptr168 = getelementptr i8, ptr %17, i32 %sub167
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %sub111)
  %cmp169 = icmp ugt i32 %len.0, %sub111
  br i1 %cmp169, label %if.else166.do.body173_crit_edge, label %if.else166.if.end184_crit_edge

if.else166.if.end184_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end184

if.else166.do.body173_crit_edge:                  ; preds = %if.else166
  br label %do.body173

do.body173:                                       ; preds = %do.body173.do.body173_crit_edge, %if.else166.do.body173_crit_edge
  %out.4 = phi ptr [ %incdec.ptr175, %do.body173.do.body173_crit_edge ], [ %out.0, %if.else166.do.body173_crit_edge ]
  %op.3 = phi i32 [ %dec177, %do.body173.do.body173_crit_edge ], [ %sub111, %if.else166.do.body173_crit_edge ]
  %from.3 = phi ptr [ %incdec.ptr174, %do.body173.do.body173_crit_edge ], [ %add.ptr168, %if.else166.do.body173_crit_edge ]
  %incdec.ptr174 = getelementptr i8, ptr %from.3, i32 1
  %62 = ptrtoint ptr %from.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %from.3, align 1
  %incdec.ptr175 = getelementptr i8, ptr %out.4, i32 1
  %64 = ptrtoint ptr %out.4 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %out.4, align 1
  %dec177 = add i32 %op.3, -1
  %tobool178.not = icmp eq i32 %dec177, 0
  br i1 %tobool178.not, label %do.end179, label %do.body173.do.body173_crit_edge

do.body173.do.body173_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body173

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #3
  %sub172 = sub i32 %len.0, %sub111
  %idx.neg180 = sub nsw i32 0, %add105
  %add.ptr181 = getelementptr i8, ptr %incdec.ptr175, i32 %idx.neg180
  br label %if.end184

if.end184:                                        ; preds = %do.end179, %if.else166.if.end184_crit_edge, %do.end161, %do.end150.if.end184_crit_edge, %if.then135.if.end184_crit_edge, %do.end, %if.then118.if.end184_crit_edge
  %out.5 = phi ptr [ %incdec.ptr127, %do.end ], [ %out.0, %if.then118.if.end184_crit_edge ], [ %incdec.ptr157, %do.end161 ], [ %incdec.ptr146, %do.end150.if.end184_crit_edge ], [ %out.0, %if.then135.if.end184_crit_edge ], [ %incdec.ptr175, %do.end179 ], [ %out.0, %if.else166.if.end184_crit_edge ]
  %len.1 = phi i32 [ %sub124, %do.end ], [ %len.0, %if.then118.if.end184_crit_edge ], [ %sub154, %do.end161 ], [ %sub143, %do.end150.if.end184_crit_edge ], [ %len.0, %if.then135.if.end184_crit_edge ], [ %sub172, %do.end179 ], [ %len.0, %if.else166.if.end184_crit_edge ]
  %from.4 = phi ptr [ %add.ptr130, %do.end ], [ %add.ptr120, %if.then118.if.end184_crit_edge ], [ %add.ptr163, %do.end161 ], [ %17, %do.end150.if.end184_crit_edge ], [ %add.ptr138, %if.then135.if.end184_crit_edge ], [ %add.ptr181, %do.end179 ], [ %add.ptr168, %if.else166.if.end184_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.1)
  %cmp185627 = icmp ugt i32 %len.1, 2
  br i1 %cmp185627, label %if.end184.while.body_crit_edge, label %if.end184.while.end_crit_edge

if.end184.while.end_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

if.end184.while.body_crit_edge:                   ; preds = %if.end184
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end184.while.body_crit_edge
  %from.5630 = phi ptr [ %incdec.ptr191, %while.body.while.body_crit_edge ], [ %from.4, %if.end184.while.body_crit_edge ]
  %len.2629 = phi i32 [ %sub193, %while.body.while.body_crit_edge ], [ %len.1, %if.end184.while.body_crit_edge ]
  %out.6628 = phi ptr [ %incdec.ptr192, %while.body.while.body_crit_edge ], [ %out.5, %if.end184.while.body_crit_edge ]
  %incdec.ptr187 = getelementptr i8, ptr %from.5630, i32 1
  %65 = ptrtoint ptr %from.5630 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %from.5630, align 1
  %incdec.ptr188 = getelementptr i8, ptr %out.6628, i32 1
  %67 = ptrtoint ptr %out.6628 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %out.6628, align 1
  %incdec.ptr189 = getelementptr i8, ptr %from.5630, i32 2
  %68 = ptrtoint ptr %incdec.ptr187 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr187, align 1
  %incdec.ptr190 = getelementptr i8, ptr %out.6628, i32 2
  %70 = ptrtoint ptr %incdec.ptr188 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %incdec.ptr188, align 1
  %incdec.ptr191 = getelementptr i8, ptr %from.5630, i32 3
  %71 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr189, align 1
  %incdec.ptr192 = getelementptr i8, ptr %out.6628, i32 3
  %73 = ptrtoint ptr %incdec.ptr190 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %incdec.ptr190, align 1
  %sub193 = add i32 %len.2629, -3
  %cmp185 = icmp ugt i32 %sub193, 2
  br i1 %cmp185, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end184.while.end_crit_edge
  %out.6.lcssa = phi ptr [ %out.5, %if.end184.while.end_crit_edge ], [ %incdec.ptr192, %while.body.while.end_crit_edge ]
  %len.2.lcssa = phi i32 [ %len.1, %if.end184.while.end_crit_edge ], [ %sub193, %while.body.while.end_crit_edge ]
  %from.5.lcssa = phi ptr [ %from.4, %if.end184.while.end_crit_edge ], [ %incdec.ptr191, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2.lcssa)
  %tobool194.not = icmp eq i32 %len.2.lcssa, 0
  br i1 %tobool194.not, label %while.end.do.cond288_crit_edge, label %if.then195

while.end.do.cond288_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.cond288

if.then195:                                       ; preds = %while.end
  %74 = ptrtoint ptr %from.5.lcssa to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %from.5.lcssa, align 1
  %incdec.ptr197 = getelementptr i8, ptr %out.6.lcssa, i32 1
  %76 = ptrtoint ptr %out.6.lcssa to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %out.6.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.2.lcssa)
  %cmp198.not = icmp eq i32 %len.2.lcssa, 1
  br i1 %cmp198.not, label %if.then195.do.cond288_crit_edge, label %if.then200

if.then195.do.cond288_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.cond288

if.then200:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr196 = getelementptr i8, ptr %from.5.lcssa, i32 1
  %77 = ptrtoint ptr %incdec.ptr196 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr196, align 1
  %incdec.ptr202 = getelementptr i8, ptr %out.6.lcssa, i32 2
  %79 = ptrtoint ptr %incdec.ptr197 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %incdec.ptr197, align 1
  br label %do.cond288

if.else205:                                       ; preds = %if.end101
  %idx.neg206 = sub nsw i32 0, %add105
  %add.ptr207 = getelementptr i8, ptr %out.0, i32 %idx.neg206
  %add.ptr208 = getelementptr i8, ptr %out.0, i32 -1
  %80 = ptrtoint ptr %add.ptr208 to i32
  %and209 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.then211, label %if.else205.if.end215_crit_edge

if.else205.if.end215_crit_edge:                   ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end215

if.then211:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr212 = getelementptr i8, ptr %add.ptr207, i32 1
  %81 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr207, align 1
  %incdec.ptr213 = getelementptr i8, ptr %out.0, i32 1
  %83 = ptrtoint ptr %out.0 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %out.0, align 1
  %dec214 = add nsw i32 %len.0, -1
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %if.else205.if.end215_crit_edge
  %out.7 = phi ptr [ %out.0, %if.else205.if.end215_crit_edge ], [ %incdec.ptr213, %if.then211 ]
  %len.3 = phi i32 [ %len.0, %if.else205.if.end215_crit_edge ], [ %dec214, %if.then211 ]
  %from.6 = phi ptr [ %add.ptr207, %if.else205.if.end215_crit_edge ], [ %incdec.ptr212, %if.then211 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add105)
  %cmp216 = icmp ugt i32 %add105, 2
  br i1 %cmp216, label %if.then218, label %if.else227

if.then218:                                       ; preds = %if.end215
  %shr219 = lshr i32 %len.3, 1
  br label %do.body220

do.body220:                                       ; preds = %do.body220.do.body220_crit_edge, %if.then218
  %sout.0 = phi ptr [ %out.7, %if.then218 ], [ %incdec.ptr222, %do.body220.do.body220_crit_edge ]
  %loops.0 = phi i32 [ %shr219, %if.then218 ], [ %dec224, %do.body220.do.body220_crit_edge ]
  %sfrom.0 = phi ptr [ %from.6, %if.then218 ], [ %incdec.ptr221, %do.body220.do.body220_crit_edge ]
  %incdec.ptr221 = getelementptr i16, ptr %sfrom.0, i32 1
  %84 = ptrtoint ptr %sfrom.0 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %sfrom.0, align 2
  %incdec.ptr222 = getelementptr i16, ptr %sout.0, i32 1
  %86 = ptrtoint ptr %sout.0 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %sout.0, align 2
  %dec224 = add i32 %loops.0, -1
  %tobool225.not = icmp eq i32 %dec224, 0
  br i1 %tobool225.not, label %do.body220.if.end242_crit_edge, label %do.body220.do.body220_crit_edge

do.body220.do.body220_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body220

do.body220.if.end242_crit_edge:                   ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end242

if.else227:                                       ; preds = %if.end215
  %add.ptr228 = getelementptr i16, ptr %out.7, i32 -1
  %87 = ptrtoint ptr %add.ptr228 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr228, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add105)
  %cmp229 = icmp eq i32 %add105, 1
  %mm.sroa.6.0.insert.ext = and i16 %88, 255
  %mm.sroa.0.0.insert.shift = shl i16 %88, 8
  %mm.sroa.0.0.insert.insert = or i16 %mm.sroa.6.0.insert.ext, %mm.sroa.0.0.insert.shift
  %pat16.0 = select i1 %cmp229, i16 %mm.sroa.0.0.insert.insert, i16 %88
  %shr235 = lshr i32 %len.3, 1
  br label %do.body236

do.body236:                                       ; preds = %do.body236.do.body236_crit_edge, %if.else227
  %sout.1 = phi ptr [ %out.7, %if.else227 ], [ %incdec.ptr237, %do.body236.do.body236_crit_edge ]
  %loops.1 = phi i32 [ %shr235, %if.else227 ], [ %dec239, %do.body236.do.body236_crit_edge ]
  %incdec.ptr237 = getelementptr i16, ptr %sout.1, i32 1
  %89 = ptrtoint ptr %sout.1 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %pat16.0, ptr %sout.1, align 2
  %dec239 = add i32 %loops.1, -1
  %tobool240.not = icmp eq i32 %dec239, 0
  br i1 %tobool240.not, label %do.body236.if.end242_crit_edge, label %do.body236.do.body236_crit_edge

do.body236.do.body236_crit_edge:                  ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body236

do.body236.if.end242_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end242

if.end242:                                        ; preds = %do.body236.if.end242_crit_edge, %do.body220.if.end242_crit_edge
  %out.8 = phi ptr [ %incdec.ptr222, %do.body220.if.end242_crit_edge ], [ %incdec.ptr237, %do.body236.if.end242_crit_edge ]
  %from.7 = phi ptr [ %incdec.ptr221, %do.body220.if.end242_crit_edge ], [ %from.6, %do.body236.if.end242_crit_edge ]
  %and243 = and i32 %len.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %if.end242.do.cond288_crit_edge, label %if.then245

if.end242.do.cond288_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.cond288

if.then245:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #3
  %90 = ptrtoint ptr %from.7 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %from.7, align 1
  %incdec.ptr247 = getelementptr i8, ptr %out.8, i32 1
  %92 = ptrtoint ptr %out.8 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %out.8, align 1
  br label %do.cond288

if.else250:                                       ; preds = %if.then254.if.else250_crit_edge, %if.end69.if.else250_crit_edge
  %conv77622 = phi i32 [ %conv77, %if.then254.if.else250_crit_edge ], [ %conv77616, %if.end69.if.else250_crit_edge ]
  %sub75621 = phi i32 [ %sub75, %if.then254.if.else250_crit_edge ], [ %sub75615, %if.end69.if.else250_crit_edge ]
  %shr74620 = phi i32 [ %shr74, %if.then254.if.else250_crit_edge ], [ %shr74614, %if.end69.if.else250_crit_edge ]
  %this.sroa.12.1619 = phi i16 [ %this.sroa.12.1, %if.then254.if.else250_crit_edge ], [ %this.sroa.12.1612, %if.end69.if.else250_crit_edge ]
  %and251 = and i32 %conv77622, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %cmp252 = icmp eq i32 %and251, 0
  br i1 %cmp252, label %if.then254, label %if.else250.do.end293.sink.split.sink.split_crit_edge

if.else250.do.end293.sink.split.sink.split_crit_edge: ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end293.sink.split.sink.split

if.then254:                                       ; preds = %if.else250
  %conv256 = zext i16 %this.sroa.12.1619 to i32
  %notmask564 = shl nsw i32 -1, %conv77622
  %sub258 = xor i32 %notmask564, -1
  %and259 = and i32 %shr74620, %sub258
  %add260 = add i32 %and259, %conv256
  %this.sroa.0.1.in = getelementptr %struct.code, ptr %25, i32 %add260
  %93 = ptrtoint ptr %this.sroa.0.1.in to i32
  call void @__asan_load1_noabort(i32 %93)
  %this.sroa.0.1 = load i8, ptr %this.sroa.0.1.in, align 2
  %this.sroa.9.1.in = getelementptr %struct.code, ptr %25, i32 %add260, i32 1
  %94 = ptrtoint ptr %this.sroa.9.1.in to i32
  call void @__asan_load1_noabort(i32 %94)
  %this.sroa.9.1 = load i8, ptr %this.sroa.9.1.in, align 1
  %this.sroa.12.1.in = getelementptr %struct.code, ptr %25, i32 %add260, i32 2
  %95 = ptrtoint ptr %this.sroa.12.1.in to i32
  call void @__asan_load2_noabort(i32 %95)
  %this.sroa.12.1 = load i16, ptr %this.sroa.12.1.in, align 2
  %conv73 = zext i8 %this.sroa.9.1 to i32
  %shr74 = lshr i32 %shr74620, %conv73
  %sub75 = sub i32 %sub75621, %conv73
  %conv77 = zext i8 %this.sroa.0.1 to i32
  %and78 = and i32 %conv77, 16
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then254.if.else250_crit_edge, label %if.then254.if.then80_crit_edge

if.then254.if.then80_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then80

if.then254.if.else250_crit_edge:                  ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else250

if.else266:                                       ; preds = %if.else
  %and267 = and i32 %conv27604, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %cmp268 = icmp eq i32 %and267, 0
  br i1 %cmp268, label %if.then270, label %if.else278

if.then270:                                       ; preds = %if.else266
  %conv272 = zext i16 %this.sroa.12.0601 to i32
  %notmask563 = shl nsw i32 -1, %conv27604
  %sub274 = xor i32 %notmask563, -1
  %and275 = and i32 %shr602, %sub274
  %add276 = add i32 %and275, %conv272
  %this.sroa.0.0.in = getelementptr %struct.code, ptr %23, i32 %add276
  %96 = ptrtoint ptr %this.sroa.0.0.in to i32
  call void @__asan_load1_noabort(i32 %96)
  %this.sroa.0.0 = load i8, ptr %this.sroa.0.0.in, align 2
  %this.sroa.9.0.in = getelementptr %struct.code, ptr %23, i32 %add276, i32 1
  %97 = ptrtoint ptr %this.sroa.9.0.in to i32
  call void @__asan_load1_noabort(i32 %97)
  %this.sroa.9.0 = load i8, ptr %this.sroa.9.0.in, align 1
  %this.sroa.12.0.in = getelementptr %struct.code, ptr %23, i32 %add276, i32 2
  %98 = ptrtoint ptr %this.sroa.12.0.in to i32
  call void @__asan_load2_noabort(i32 %98)
  %this.sroa.12.0 = load i16, ptr %this.sroa.12.0.in, align 2
  %conv24 = zext i8 %this.sroa.9.0 to i32
  %shr = lshr i32 %shr602, %conv24
  %sub25 = sub i32 %sub25603, %conv24
  %cmp28 = icmp eq i8 %this.sroa.0.0, 0
  br i1 %cmp28, label %if.then30.loopexit, label %if.then270.if.else_crit_edge

if.then270.if.else_crit_edge:                     ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else

if.else278:                                       ; preds = %if.else266
  %99 = and i8 %this.sroa.0.0600, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool280.not = icmp eq i8 %99, 0
  br i1 %tobool280.not, label %if.else278.do.end293.sink.split.sink.split_crit_edge, label %if.else278.do.end293.sink.split_crit_edge

if.else278.do.end293.sink.split_crit_edge:        ; preds = %if.else278
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end293.sink.split

if.else278.do.end293.sink.split.sink.split_crit_edge: ; preds = %if.else278
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end293.sink.split.sink.split

do.cond288:                                       ; preds = %if.then245, %if.end242.do.cond288_crit_edge, %if.then200, %if.then195.do.cond288_crit_edge, %while.end.do.cond288_crit_edge, %if.then30
  %out.10 = phi ptr [ %incdec.ptr32, %if.then30 ], [ %incdec.ptr202, %if.then200 ], [ %incdec.ptr197, %if.then195.do.cond288_crit_edge ], [ %out.6.lcssa, %while.end.do.cond288_crit_edge ], [ %incdec.ptr247, %if.then245 ], [ %out.8, %if.end242.do.cond288_crit_edge ]
  %hold.8 = phi i32 [ %shr.lcssa, %if.then30 ], [ %shr106, %if.then200 ], [ %shr106, %if.then195.do.cond288_crit_edge ], [ %shr106, %while.end.do.cond288_crit_edge ], [ %shr106, %if.then245 ], [ %shr106, %if.end242.do.cond288_crit_edge ]
  %bits.8 = phi i32 [ %sub25.lcssa, %if.then30 ], [ %sub107, %if.then200 ], [ %sub107, %if.then195.do.cond288_crit_edge ], [ %sub107, %while.end.do.cond288_crit_edge ], [ %sub107, %if.then245 ], [ %sub107, %if.end242.do.cond288_crit_edge ]
  %in.6 = phi ptr [ %in.1, %if.then30 ], [ %in.5, %if.then200 ], [ %in.5, %if.then195.do.cond288_crit_edge ], [ %in.5, %while.end.do.cond288_crit_edge ], [ %in.5, %if.then245 ], [ %in.5, %if.end242.do.cond288_crit_edge ]
  %cmp289 = icmp ult ptr %in.6, %add.ptr
  %cmp291 = icmp ult ptr %out.10, %add.ptr6
  %or.cond = select i1 %cmp289, i1 %cmp291, i1 false
  br i1 %or.cond, label %do.cond288.do.body_crit_edge, label %do.cond288.do.end293_crit_edge

do.cond288.do.end293_crit_edge:                   ; preds = %do.cond288
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.end293

do.cond288.do.body_crit_edge:                     ; preds = %do.cond288
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

do.end293.sink.split.sink.split:                  ; preds = %if.else278.do.end293.sink.split.sink.split_crit_edge, %if.else250.do.end293.sink.split.sink.split_crit_edge, %if.then110.do.end293.sink.split.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str.2, %if.else278.do.end293.sink.split.sink.split_crit_edge ], [ @.str.1, %if.else250.do.end293.sink.split.sink.split_crit_edge ], [ @.str, %if.then110.do.end293.sink.split.sink.split_crit_edge ]
  %hold.9.ph.ph = phi i32 [ %shr602, %if.else278.do.end293.sink.split.sink.split_crit_edge ], [ %shr74620, %if.else250.do.end293.sink.split.sink.split_crit_edge ], [ %shr106, %if.then110.do.end293.sink.split.sink.split_crit_edge ]
  %bits.9.ph.ph = phi i32 [ %sub25603, %if.else278.do.end293.sink.split.sink.split_crit_edge ], [ %sub75621, %if.else250.do.end293.sink.split.sink.split_crit_edge ], [ %sub107, %if.then110.do.end293.sink.split.sink.split_crit_edge ]
  %in.7.ph.ph = phi ptr [ %in.1, %if.else278.do.end293.sink.split.sink.split_crit_edge ], [ %in.4, %if.else250.do.end293.sink.split.sink.split_crit_edge ], [ %in.5, %if.then110.do.end293.sink.split.sink.split_crit_edge ]
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %100 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %.str.sink, ptr %msg, align 4
  br label %do.end293.sink.split

do.end293.sink.split:                             ; preds = %do.end293.sink.split.sink.split, %if.else278.do.end293.sink.split_crit_edge
  %.sink = phi i32 [ 11, %if.else278.do.end293.sink.split_crit_edge ], [ 27, %do.end293.sink.split.sink.split ]
  %hold.9.ph = phi i32 [ %shr602, %if.else278.do.end293.sink.split_crit_edge ], [ %hold.9.ph.ph, %do.end293.sink.split.sink.split ]
  %bits.9.ph = phi i32 [ %sub25603, %if.else278.do.end293.sink.split_crit_edge ], [ %bits.9.ph.ph, %do.end293.sink.split.sink.split ]
  %in.7.ph = phi ptr [ %in.1, %if.else278.do.end293.sink.split_crit_edge ], [ %in.7.ph.ph, %do.end293.sink.split.sink.split ]
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink, ptr %1, align 4
  br label %do.end293

do.end293:                                        ; preds = %do.end293.sink.split, %do.cond288.do.end293_crit_edge
  %out.11 = phi ptr [ %out.0, %do.end293.sink.split ], [ %out.10, %do.cond288.do.end293_crit_edge ]
  %hold.9 = phi i32 [ %hold.9.ph, %do.end293.sink.split ], [ %hold.8, %do.cond288.do.end293_crit_edge ]
  %bits.9 = phi i32 [ %bits.9.ph, %do.end293.sink.split ], [ %bits.8, %do.cond288.do.end293_crit_edge ]
  %in.7 = phi ptr [ %in.7.ph, %do.end293.sink.split ], [ %in.6, %do.cond288.do.end293_crit_edge ]
  %shr294 = lshr i32 %bits.9, 3
  %idx.neg295 = sub nsw i32 0, %shr294
  %add.ptr296 = getelementptr i8, ptr %in.7, i32 %idx.neg295
  %102 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr296, ptr %strm, align 4
  %103 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %out.11, ptr %next_out, align 4
  %sub.ptr.lhs.cast306 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast307 = ptrtoint ptr %add.ptr296 to i32
  %sub.ptr.sub308 = add i32 %sub.ptr.lhs.cast306, 5
  %cond = sub i32 %sub.ptr.sub308, %sub.ptr.rhs.cast307
  %104 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond, ptr %avail_in, align 4
  %sub.ptr.lhs.cast318 = ptrtoint ptr %add.ptr6 to i32
  %sub.ptr.rhs.cast319 = ptrtoint ptr %out.11 to i32
  %sub.ptr.sub320 = add i32 %sub.ptr.lhs.cast318, 257
  %cond328 = sub i32 %sub.ptr.sub320, %sub.ptr.rhs.cast319
  %sub298 = and i32 %bits.9, 7
  %notmask562 = shl nsw i32 -1, %sub298
  %sub300 = xor i32 %notmask562, -1
  %and301 = and i32 %hold.9, %sub300
  %105 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond328, ptr %avail_out, align 4
  %106 = ptrtoint ptr %hold11 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and301, ptr %hold11, align 4
  %107 = ptrtoint ptr %bits12 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub298, ptr %bits12, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/zlib_inflate/inffast.c", i32 183, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/zlib_inflate/inffast.c", i32 290, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/zlib_inflate/inffast.c", i32 304, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
