; ModuleID = '/llk/IR_all_yes/fs/ntfs3/lznt.c_pt.bc'
source_filename = "../fs/ntfs3/lznt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lznt = type { ptr, ptr, ptr, i32, i8, [4096 x %struct.lznt_hash] }
%struct.lznt_hash = type { ptr, ptr }

@s_max_len = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4098, i32 2050, i32 1026, i32 514, i32 258, i32 130, i32 66, i32 34, i32 18], [60 x i8] zeroinitializer }, align 32
@s_max_off = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"s_max_len\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 110, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"s_max_off\00", align 1
@___asan_gen_.5 = private constant [19 x i8] c"../fs/ntfs3/lznt.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 114, i32 21 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @s_max_len, ptr @s_max_off], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_max_len to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_max_off to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_lznt_ctx(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  %cond = select i1 %tobool.not, i32 32788, i32 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3392) #7
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %std = getelementptr inbounds %struct.lznt, ptr %call9.i.i, i32 0, i32 4
  %frombool = zext i1 %tobool.not to i8
  %0 = ptrtoint ptr %std to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %std, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @compress_lznt(ptr noundef %unc, i32 noundef %unc_size, ptr noundef %cmpr, i32 noundef %cmpr_size, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cmpr, i32 %cmpr_size
  %add.ptr1 = getelementptr i8, ptr %unc, i32 %unc_size
  %std = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %std, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hash = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 5
  %2 = call ptr @memset(ptr %hash, i32 0, i32 32768)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %match.0 = phi ptr [ @longest_match_std, %if.then ], [ @longest_match_best, %entry.if.end_crit_edge ]
  %cmp50 = icmp ugt ptr %add.ptr1, %unc
  br i1 %cmp50, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %unc_end8.i = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 1
  %max_len.i = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 3
  %best_match.i = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %is_zero.0.off056 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %if.end4.for.body_crit_edge ]
  %unc_chunk.054 = phi ptr [ %unc, %for.body.lr.ph ], [ %add.ptr2.i, %if.end4.for.body_crit_edge ]
  %p.051 = phi ptr [ %cmpr, %for.body.lr.ph ], [ %add.ptr9, %if.end4.for.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.051, i32 3
  %add.ptr1.i = getelementptr i8, ptr %p.051, i32 2
  %add.ptr2.i = getelementptr i8, ptr %unc_chunk.054, i32 4096
  %cmp.i = icmp ult ptr %add.ptr2.i, %add.ptr1
  %spec.select.i = select i1 %cmp.i, ptr %add.ptr2.i, ptr %add.ptr1
  %add.ptr5.i = getelementptr i8, ptr %p.051, i32 4098
  %cmp6.i = icmp ult ptr %add.ptr5.i, %add.ptr
  %cond.i = select i1 %cmp6.i, ptr %add.ptr5.i, ptr %add.ptr
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %unc_chunk.054, ptr %ctx, align 4
  %4 = ptrtoint ptr %unc_end8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select.i, ptr %unc_end8.i, align 4
  %5 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4098, ptr %max_len.i, align 4
  %cmp9165.i = icmp ugt ptr %spec.select.i, %unc_chunk.054
  br i1 %cmp9165.i, label %for.body.while.cond11.preheader.i_crit_edge, label %for.body.while.end51.i_crit_edge

for.body.while.end51.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end51.i

for.body.while.cond11.preheader.i_crit_edge:      ; preds = %for.body
  br label %while.cond11.preheader.i

while.cond11.preheader.i:                         ; preds = %cleanup.i.while.cond11.preheader.i_crit_edge, %for.body.while.cond11.preheader.i_crit_edge
  %ohdr.0173.i = phi i8 [ %ohdr.3.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ 0, %for.body.while.cond11.preheader.i_crit_edge ]
  %not_zero.0172.i = phi i8 [ %not_zero.1.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ 0, %for.body.while.cond11.preheader.i_crit_edge ]
  %cp2.0171.i = phi ptr [ %cp2.2.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ %add.ptr1.i, %for.body.while.cond11.preheader.i_crit_edge ]
  %cp.0170.i = phi ptr [ %cp.3.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ %add.ptr.i, %for.body.while.cond11.preheader.i_crit_edge ]
  %up.0168.i = phi ptr [ %up.1.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ %unc_chunk.054, %for.body.while.cond11.preheader.i_crit_edge ]
  %idx.0167.i = phi i32 [ %idx.1.lcssa.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ 0, %for.body.while.cond11.preheader.i_crit_edge ]
  %cnt.0166.i = phi i32 [ %and.i, %cleanup.i.while.cond11.preheader.i_crit_edge ], [ 0, %for.body.while.cond11.preheader.i_crit_edge ]
  %arrayidx161.i = getelementptr [9 x i32], ptr @s_max_off, i32 0, i32 %idx.0167.i
  %6 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx161.i, align 4
  %add.ptr12162.i = getelementptr i8, ptr %unc_chunk.054, i32 %7
  %cmp13163.i = icmp ult ptr %add.ptr12162.i, %up.0168.i
  br i1 %cmp13163.i, label %while.cond11.preheader.i.while.body14.i_crit_edge, label %while.cond11.preheader.i.while.end.i_crit_edge

while.cond11.preheader.i.while.end.i_crit_edge:   ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.cond11.preheader.i.while.body14.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body14.i

while.body14.i:                                   ; preds = %while.body14.i.while.body14.i_crit_edge, %while.cond11.preheader.i.while.body14.i_crit_edge
  %idx.1164.i = phi i32 [ %inc.i, %while.body14.i.while.body14.i_crit_edge ], [ %idx.0167.i, %while.cond11.preheader.i.while.body14.i_crit_edge ]
  %inc.i = add i32 %idx.1164.i, 1
  %arrayidx.i = getelementptr [9 x i32], ptr @s_max_off, i32 0, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %unc_chunk.054, i32 %9
  %cmp13.i = icmp ult ptr %add.ptr12.i, %up.0168.i
  br i1 %cmp13.i, label %while.body14.i.while.body14.i_crit_edge, label %while.cond11.while.end_crit_edge.i

while.body14.i.while.body14.i_crit_edge:          ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14.i

while.cond11.while.end_crit_edge.i:               ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx15.i = getelementptr [9 x i32], ptr @s_max_len, i32 0, i32 %inc.i
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15.i, align 4
  %12 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_len.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond11.while.end_crit_edge.i, %while.cond11.preheader.i.while.end.i_crit_edge
  %idx.1.lcssa.i = phi i32 [ %inc.i, %while.cond11.while.end_crit_edge.i ], [ %idx.0167.i, %while.cond11.preheader.i.while.end.i_crit_edge ]
  %add.ptr17.i = getelementptr i8, ptr %up.0168.i, i32 3
  %cmp18.not.i = icmp ugt ptr %add.ptr17.i, %spec.select.i
  br i1 %cmp18.not.i, label %while.end.i.if.then23.i_crit_edge, label %cond.end21.i

while.end.i.if.then23.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

cond.end21.i:                                     ; preds = %while.end.i
  %call.i = tail call i32 %match.0(ptr noundef %up.0168.i, ptr noundef %ctx) #4, !callees !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.end21.i.if.then23.i_crit_edge, label %if.else.i

cond.end21.i.if.then23.i_crit_edge:               ; preds = %cond.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23.i

if.then23.i:                                      ; preds = %cond.end21.i.if.then23.i_crit_edge, %while.end.i.if.then23.i_crit_edge
  %cmp24.not.i = icmp ult ptr %cp.0170.i, %cond.i
  br i1 %cmp24.not.i, label %if.end26.i, label %if.then23.i.NotCompressed.i_crit_edge

if.then23.i.NotCompressed.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %NotCompressed.i

if.end26.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.i = getelementptr i8, ptr %up.0168.i, i32 1
  %13 = ptrtoint ptr %up.0168.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %up.0168.i, align 1
  %15 = ptrtoint ptr %cp.0170.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %cp.0170.i, align 1
  %or147.i = or i8 %14, %not_zero.0172.i
  br label %if.end46.i

if.else.i:                                        ; preds = %cond.end21.i
  %add.ptr30.i = getelementptr i8, ptr %cp.0170.i, i32 1
  %cmp31.not.i = icmp ult ptr %add.ptr30.i, %cond.i
  br i1 %cmp31.not.i, label %if.else34.i, label %if.else.i.NotCompressed.i_crit_edge

if.else.i.NotCompressed.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %NotCompressed.i

if.else34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %best_match.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %best_match.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %up.0168.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 65535
  %sub.i.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %sub1.i.i = sub i32 12, %idx.1.lcssa.i
  %shl.i.i = shl i32 %sub.i.i, %sub1.i.i
  %sub2.i.i = add i32 %call.i, 65533
  %notmask.i.i = shl nsw i32 -1, %sub1.i.i
  %sub5.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %sub2.i.i, %sub5.i.i
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %conv36.i = trunc i32 %or.i.i to i8
  %18 = ptrtoint ptr %cp.0170.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36.i, ptr %cp.0170.i, align 1
  %19 = lshr i32 %or.i.i, 8
  %conv39.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv39.i, ptr %add.ptr30.i, align 1
  %shl.i = shl nuw i32 1, %cnt.0166.i
  %21 = trunc i32 %shl.i to i8
  %conv43.i = or i8 %ohdr.0173.i, %21
  %add.ptr44.i = getelementptr i8, ptr %up.0168.i, i32 %call.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else34.i, %if.end26.i
  %up.1.i = phi ptr [ %add.ptr44.i, %if.else34.i ], [ %incdec.ptr.i, %if.end26.i ]
  %add.ptr30.pn.i = phi ptr [ %add.ptr30.i, %if.else34.i ], [ %cp.0170.i, %if.end26.i ]
  %not_zero.1.i = phi i8 [ %not_zero.0172.i, %if.else34.i ], [ %or147.i, %if.end26.i ]
  %ohdr.1.i = phi i8 [ %conv43.i, %if.else34.i ], [ %ohdr.0173.i, %if.end26.i ]
  %cp.1.i = getelementptr i8, ptr %add.ptr30.pn.i, i32 1
  %add.i = add nuw nsw i32 %cnt.0166.i, 1
  %and.i = and i32 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end46.i.cleanup.i_crit_edge

if.end46.i.cleanup.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then48.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %cp2.0171.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %ohdr.1.i, ptr %cp2.0171.i, align 1
  %add.ptr49.i = getelementptr i8, ptr %add.ptr30.pn.i, i32 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then48.i, %if.end46.i.cleanup.i_crit_edge
  %cp.3.i = phi ptr [ %add.ptr49.i, %if.then48.i ], [ %cp.1.i, %if.end46.i.cleanup.i_crit_edge ]
  %cp2.2.i = phi ptr [ %cp.1.i, %if.then48.i ], [ %cp2.0171.i, %if.end46.i.cleanup.i_crit_edge ]
  %ohdr.3.i = phi i8 [ 0, %if.then48.i ], [ %ohdr.1.i, %if.end46.i.cleanup.i_crit_edge ]
  %cmp9.i = icmp ult ptr %up.1.i, %spec.select.i
  br i1 %cmp9.i, label %cleanup.i.while.cond11.preheader.i_crit_edge, label %cleanup.i.while.end51.i_crit_edge

cleanup.i.while.end51.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end51.i

cleanup.i.while.cond11.preheader.i_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond11.preheader.i

while.end51.i:                                    ; preds = %cleanup.i.while.end51.i_crit_edge, %for.body.while.end51.i_crit_edge
  %cp.0.lcssa.i = phi ptr [ %add.ptr.i, %for.body.while.end51.i_crit_edge ], [ %cp.3.i, %cleanup.i.while.end51.i_crit_edge ]
  %cp2.0.lcssa.i = phi ptr [ %add.ptr1.i, %for.body.while.end51.i_crit_edge ], [ %cp2.2.i, %cleanup.i.while.end51.i_crit_edge ]
  %not_zero.0.lcssa.i = phi i8 [ 0, %for.body.while.end51.i_crit_edge ], [ %not_zero.1.i, %cleanup.i.while.end51.i_crit_edge ]
  %ohdr.0.lcssa.i = phi i8 [ 0, %for.body.while.end51.i_crit_edge ], [ %ohdr.3.i, %cleanup.i.while.end51.i_crit_edge ]
  %cmp52.i = icmp ult ptr %cp2.0.lcssa.i, %cond.i
  br i1 %cmp52.i, label %if.then54.i, label %if.else55.i

if.then54.i:                                      ; preds = %while.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %cp2.0.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ohdr.0.lcssa.i, ptr %cp2.0.lcssa.i, align 1
  br label %if.end57.i

if.else55.i:                                      ; preds = %while.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr56.i = getelementptr i8, ptr %cp.0.lcssa.i, i32 -1
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else55.i, %if.then54.i
  %cp.4.i = phi ptr [ %cp.0.lcssa.i, %if.then54.i ], [ %add.ptr56.i, %if.else55.i ]
  %sub.ptr.lhs.cast58.i = ptrtoint ptr %cp.4.i to i32
  %sub.ptr.rhs.cast59.i = ptrtoint ptr %p.051 to i32
  %sub.ptr.sub60.i = sub i32 %sub.ptr.lhs.cast58.i, %sub.ptr.rhs.cast59.i
  %24 = trunc i32 %sub.ptr.sub60.i to i16
  %25 = add i16 %24, 32765
  %conv63.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %p.051 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv63.i, ptr %p.051, align 1
  %conv62.i = lshr i16 %25, 8
  %27 = trunc i16 %conv62.i to i8
  %conv67.i = or i8 %27, -80
  %arrayidx68.i = getelementptr i8, ptr %p.051, i32 1
  %28 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv67.i, ptr %arrayidx68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %not_zero.0.lcssa.i)
  %tobool70.not.i = icmp eq i8 %not_zero.0.lcssa.i, 0
  %cond71.i = zext i1 %tobool70.not.i to i32
  br label %if.end4

NotCompressed.i:                                  ; preds = %if.else.i.NotCompressed.i_crit_edge, %if.then23.i.NotCompressed.i_crit_edge
  %cmp74.i = icmp ugt ptr %add.ptr5.i, %add.ptr
  br i1 %cmp74.i, label %NotCompressed.i.cleanup_crit_edge, label %if.end77.i

NotCompressed.i.cleanup_crit_edge:                ; preds = %NotCompressed.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77.i:                                       ; preds = %NotCompressed.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %p.051 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %p.051, align 1
  %arrayidx79.i = getelementptr i8, ptr %p.051, i32 1
  %30 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 63, ptr %arrayidx79.i, align 1
  %31 = call ptr @memcpy(ptr %add.ptr1.i, ptr %unc_chunk.054, i32 4096)
  br label %if.end4

if.end4:                                          ; preds = %if.end77.i, %if.end57.i
  %cmpr_size.addr.0.ph = phi i32 [ 4098, %if.end77.i ], [ %sub.ptr.sub60.i, %if.end57.i ]
  %retval.0.i.ph = phi i32 [ 0, %if.end77.i ], [ %cond71.i, %if.end57.i ]
  %is_zero.0.off0.not = xor i1 %is_zero.0.off056, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.ph)
  %cmp6.not = icmp eq i32 %retval.0.i.ph, 1
  %or.cond = select i1 %is_zero.0.off0.not, i1 true, i1 %cmp6.not
  %spec.select = and i1 %is_zero.0.off056, %or.cond
  %add.ptr9 = getelementptr i8, ptr %p.051, i32 %cmpr_size.addr.0.ph
  br i1 %cmp.i, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %cmpr, %if.end.for.end_crit_edge ], [ %add.ptr9, %if.end4.for.end_crit_edge ]
  %is_zero.0.off0.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %spec.select, %if.end4.for.end_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 -2
  %cmp12.not = icmp ugt ptr %p.0.lcssa, %add.ptr11
  br i1 %cmp12.not, label %for.end.if.end15_crit_edge, label %if.then13

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i8, ptr %p.0.lcssa, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx, align 1
  %33 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %p.0.lcssa, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %for.end.if.end15_crit_edge
  %34 = ptrtoint ptr %p.0.lcssa to i32
  %35 = ptrtoint ptr %cmpr to i32
  %sub = sub i32 %34, %35
  %cond = select i1 %is_zero.0.off0.lcssa, i32 0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %NotCompressed.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end15 ], [ %unc_size, %NotCompressed.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @longest_match_std(ptr noundef %src, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %src, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv, 8
  %5 = shl nuw nsw i32 %conv2, 4
  %shl3 = xor i32 %5, %4
  %arrayidx4 = getelementptr i8, ptr %src, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %xor6 = xor i32 %shl3, %conv5
  %mul = mul nuw i32 %xor6, 40543
  %shr = lshr i32 %mul, 4
  %and = and i32 %shr, 4095
  %arrayidx8 = getelementptr %struct.lznt, ptr %ctx, i32 0, i32 5, i32 %and
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %cmp.not = icmp uge ptr %9, %11
  %cmp12 = icmp ult ptr %9, %src
  %or.cond = and i1 %cmp12, %cmp.not
  br i1 %or.cond, label %land.lhs.true14, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true14:                                  ; preds = %entry
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %1)
  %cmp20 = icmp eq i8 %13, %1
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true14.if.end44_crit_edge

land.lhs.true14.if.end44_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true22:                                  ; preds = %land.lhs.true14
  %arrayidx24 = getelementptr i8, ptr %9, i32 1
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %3)
  %cmp28 = icmp eq i8 %15, %3
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true22.if.end44_crit_edge

land.lhs.true22.if.end44_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true30:                                  ; preds = %land.lhs.true22
  %arrayidx32 = getelementptr i8, ptr %9, i32 2
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %7)
  %cmp36 = icmp eq i8 %17, %7
  br i1 %cmp36, label %if.then, label %land.lhs.true30.if.end44_crit_edge

land.lhs.true30.if.end44_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then:                                          ; preds = %land.lhs.true30
  %max_len = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp38 = icmp ugt i32 %19, 3
  br i1 %cmp38, label %if.then40, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then40:                                        ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %src, i32 3
  %unc_end = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %unc_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unc_end, align 4
  %add.ptr42 = getelementptr i8, ptr %9, i32 3
  %sub = add i32 %19, -3
  %ptr14.i = ptrtoint ptr %add.ptr to i32
  %end13.i = ptrtoint ptr %21 to i32
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %end13.i, i32 %ptr14.i) #4
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then40
  %len.0.i = phi i32 [ 0, %if.then40 ], [ %inc.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %22)
  %exitcond.not.i = icmp eq i32 %len.0.i, %22
  br i1 %exitcond.not.i, label %while.cond.i.get_match_len.exit_crit_edge, label %land.lhs.true.i

while.cond.i.get_match_len.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

land.lhs.true.i:                                  ; preds = %while.cond.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %len.0.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %add.ptr42, i32 %len.0.i
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp3.i = icmp eq i8 %24, %26
  br i1 %cmp3.i, label %land.rhs.i, label %land.lhs.true.i.get_match_len.exit_crit_edge

land.lhs.true.i.get_match_len.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %inc.i = add nuw i32 %len.0.i, 1
  %exitcond16.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond16.not.i, label %land.rhs.i.get_match_len.exit_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

land.rhs.i.get_match_len.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

get_match_len.exit:                               ; preds = %land.rhs.i.get_match_len.exit_crit_edge, %land.lhs.true.i.get_match_len.exit_crit_edge, %while.cond.i.get_match_len.exit_crit_edge
  %len.1.i = phi i32 [ %sub, %land.rhs.i.get_match_len.exit_crit_edge ], [ %len.0.i, %land.lhs.true.i.get_match_len.exit_crit_edge ], [ %22, %while.cond.i.get_match_len.exit_crit_edge ]
  %add = add i32 %len.1.i, 3
  br label %if.end44

if.end44:                                         ; preds = %get_match_len.exit, %if.then.if.end44_crit_edge, %land.lhs.true30.if.end44_crit_edge, %land.lhs.true22.if.end44_crit_edge, %land.lhs.true14.if.end44_crit_edge, %entry.if.end44_crit_edge
  %len1.0 = phi i32 [ %add, %get_match_len.exit ], [ 3, %if.then.if.end44_crit_edge ], [ 0, %land.lhs.true30.if.end44_crit_edge ], [ 0, %land.lhs.true22.if.end44_crit_edge ], [ 0, %land.lhs.true14.if.end44_crit_edge ], [ 0, %entry.if.end44_crit_edge ]
  %arrayidx45 = getelementptr ptr, ptr %arrayidx8, i32 1
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx45, align 4
  %cmp47.not = icmp uge ptr %28, %11
  %cmp51 = icmp ult ptr %28, %src
  %or.cond148 = and i1 %cmp47.not, %cmp51
  br i1 %or.cond148, label %land.lhs.true53, label %if.end44.if.end91_crit_edge

if.end44.if.end91_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

land.lhs.true53:                                  ; preds = %if.end44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %1)
  %cmp59 = icmp eq i8 %30, %1
  br i1 %cmp59, label %land.lhs.true61, label %land.lhs.true53.if.end91_crit_edge

land.lhs.true53.if.end91_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

land.lhs.true61:                                  ; preds = %land.lhs.true53
  %arrayidx63 = getelementptr i8, ptr %28, i32 1
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %3)
  %cmp67 = icmp eq i8 %32, %3
  br i1 %cmp67, label %land.lhs.true69, label %land.lhs.true61.if.end91_crit_edge

land.lhs.true61.if.end91_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

land.lhs.true69:                                  ; preds = %land.lhs.true61
  %arrayidx71 = getelementptr i8, ptr %28, i32 2
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %7)
  %cmp75 = icmp eq i8 %34, %7
  br i1 %cmp75, label %if.then77, label %land.lhs.true69.if.end91_crit_edge

land.lhs.true69.if.end91_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then77:                                        ; preds = %land.lhs.true69
  %max_len78 = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 3
  %35 = ptrtoint ptr %max_len78 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_len78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp79 = icmp ugt i32 %36, 3
  br i1 %cmp79, label %if.then81, label %if.then77.if.end91_crit_edge

if.then77.if.end91_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then81:                                        ; preds = %if.then77
  %add.ptr82 = getelementptr i8, ptr %src, i32 3
  %unc_end83 = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 1
  %37 = ptrtoint ptr %unc_end83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unc_end83, align 4
  %add.ptr85 = getelementptr i8, ptr %28, i32 3
  %sub87 = add i32 %36, -3
  %ptr14.i149 = ptrtoint ptr %add.ptr82 to i32
  %end13.i150 = ptrtoint ptr %38 to i32
  %39 = tail call i32 @llvm.usub.sat.i32(i32 %end13.i150, i32 %ptr14.i149) #4
  br label %while.cond.i154

while.cond.i154:                                  ; preds = %land.rhs.i161.while.cond.i154_crit_edge, %if.then81
  %len.0.i152 = phi i32 [ 0, %if.then81 ], [ %inc.i159, %land.rhs.i161.while.cond.i154_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i152, i32 %39)
  %exitcond.not.i153 = icmp eq i32 %len.0.i152, %39
  br i1 %exitcond.not.i153, label %while.cond.i154.get_match_len.exit163_crit_edge, label %land.lhs.true.i158

while.cond.i154.get_match_len.exit163_crit_edge:  ; preds = %while.cond.i154
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit163

land.lhs.true.i158:                               ; preds = %while.cond.i154
  %add.ptr.i155 = getelementptr i8, ptr %add.ptr82, i32 %len.0.i152
  %40 = ptrtoint ptr %add.ptr.i155 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i155, align 1
  %arrayidx1.i156 = getelementptr i8, ptr %add.ptr85, i32 %len.0.i152
  %42 = ptrtoint ptr %arrayidx1.i156 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.i156, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp3.i157 = icmp eq i8 %41, %43
  br i1 %cmp3.i157, label %land.rhs.i161, label %land.lhs.true.i158.get_match_len.exit163_crit_edge

land.lhs.true.i158.get_match_len.exit163_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit163

land.rhs.i161:                                    ; preds = %land.lhs.true.i158
  %inc.i159 = add nuw i32 %len.0.i152, 1
  %exitcond16.not.i160 = icmp eq i32 %inc.i159, %sub87
  br i1 %exitcond16.not.i160, label %land.rhs.i161.get_match_len.exit163_crit_edge, label %land.rhs.i161.while.cond.i154_crit_edge

land.rhs.i161.while.cond.i154_crit_edge:          ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i154

land.rhs.i161.get_match_len.exit163_crit_edge:    ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit163

get_match_len.exit163:                            ; preds = %land.rhs.i161.get_match_len.exit163_crit_edge, %land.lhs.true.i158.get_match_len.exit163_crit_edge, %while.cond.i154.get_match_len.exit163_crit_edge
  %len.1.i162 = phi i32 [ %sub87, %land.rhs.i161.get_match_len.exit163_crit_edge ], [ %len.0.i152, %land.lhs.true.i158.get_match_len.exit163_crit_edge ], [ %39, %while.cond.i154.get_match_len.exit163_crit_edge ]
  %add89 = add i32 %len.1.i162, 3
  br label %if.end91

if.end91:                                         ; preds = %get_match_len.exit163, %if.then77.if.end91_crit_edge, %land.lhs.true69.if.end91_crit_edge, %land.lhs.true61.if.end91_crit_edge, %land.lhs.true53.if.end91_crit_edge, %if.end44.if.end91_crit_edge
  %len2.0 = phi i32 [ %add89, %get_match_len.exit163 ], [ 3, %if.then77.if.end91_crit_edge ], [ 0, %land.lhs.true69.if.end91_crit_edge ], [ 0, %land.lhs.true61.if.end91_crit_edge ], [ 0, %land.lhs.true53.if.end91_crit_edge ], [ 0, %if.end44.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len1.0, i32 %len2.0)
  %cmp92 = icmp ult i32 %len1.0, %len2.0
  %spec.select = select i1 %cmp92, ptr %28, ptr %9
  %44 = call i32 @llvm.umax.i32(i32 %len1.0, i32 %len2.0)
  %45 = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %spec.select, ptr %45, align 4
  %47 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %9, ptr %arrayidx45, align 4
  %48 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %src, ptr %arrayidx8, align 4
  ret i32 %44
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @longest_match_best(ptr noundef %src, ptr nocapture noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %cmp.not = icmp ult ptr %1, %src
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_len1 = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %max_len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.lr.ph

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %unc_end = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %unc_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unc_end, align 4
  %ptr14.i = ptrtoint ptr %src to i32
  %end13.i = ptrtoint ptr %5 to i32
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %end13.i, i32 %ptr14.i) #4
  %best_match = getelementptr inbounds %struct.lznt, ptr %ctx, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %ptr.025 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %if.end7.for.body_crit_edge ]
  %max_len.024 = phi i32 [ 0, %for.body.lr.ph ], [ %max_len.1, %if.end7.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %for.body
  %len.0.i = phi i32 [ 0, %for.body ], [ %inc.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %6)
  %exitcond.not.i = icmp eq i32 %len.0.i, %6
  br i1 %exitcond.not.i, label %while.cond.i.get_match_len.exit_crit_edge, label %land.lhs.true.i

while.cond.i.get_match_len.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

land.lhs.true.i:                                  ; preds = %while.cond.i
  %add.ptr.i = getelementptr i8, ptr %src, i32 %len.0.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %ptr.025, i32 %len.0.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp3.i = icmp eq i8 %8, %10
  br i1 %cmp3.i, label %land.rhs.i, label %land.lhs.true.i.get_match_len.exit_crit_edge

land.lhs.true.i.get_match_len.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %inc.i = add nuw i32 %len.0.i, 1
  %exitcond16.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond16.not.i, label %land.rhs.i.get_match_len.exit_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

land.rhs.i.get_match_len.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_match_len.exit

get_match_len.exit:                               ; preds = %land.rhs.i.get_match_len.exit_crit_edge, %land.lhs.true.i.get_match_len.exit_crit_edge, %while.cond.i.get_match_len.exit_crit_edge
  %len.1.i = phi i32 [ %3, %land.rhs.i.get_match_len.exit_crit_edge ], [ %len.0.i, %land.lhs.true.i.get_match_len.exit_crit_edge ], [ %6, %while.cond.i.get_match_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %max_len.024)
  %cmp5.not = icmp ult i32 %len.1.i, %max_len.024
  br i1 %cmp5.not, label %get_match_len.exit.if.end7_crit_edge, label %if.then6

get_match_len.exit.if.end7_crit_edge:             ; preds = %get_match_len.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %get_match_len.exit
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %best_match to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ptr.025, ptr %best_match, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %get_match_len.exit.if.end7_crit_edge
  %max_len.1 = phi i32 [ %len.1.i, %if.then6 ], [ %max_len.024, %get_match_len.exit.if.end7_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.025, i32 1
  %cmp3 = icmp ult ptr %incdec.ptr, %src
  br i1 %cmp3, label %if.end7.for.body_crit_edge, label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %max_len.1)
  %cmp8 = icmp ugt i32 %max_len.1, 2
  %spec.select = select i1 %cmp8, i32 %max_len.1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @decompress_lznt(ptr noundef readonly %cmpr, i32 noundef %cmpr_size, ptr noundef %unc, i32 noundef %unc_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cmpr, i32 %cmpr_size
  %add.ptr1 = getelementptr i8, ptr %unc, i32 %unc_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmpr_size)
  %cmp = icmp ult i32 %cmpr_size, 2
  br i1 %cmp, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %cmpr, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %2 = ptrtoint ptr %cmpr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmpr, align 1
  %conv5 = zext i8 %3 to i32
  %or = or i32 %shl, %conv5
  %and161 = and i32 %or, 4095
  %add162 = add nuw nsw i32 %and161, 3
  %add.ptr9163 = getelementptr i8, ptr %cmpr, i32 %add162
  %cmp10164 = icmp ugt ptr %add.ptr9163, %add.ptr
  br i1 %cmp10164, label %if.end.cleanup81_crit_edge, label %if.end13.lr.ph

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end13.lr.ph:                                   ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1 to i32
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 -2
  br label %if.end13

if.end13:                                         ; preds = %cleanup71.if.end13_crit_edge, %if.end13.lr.ph
  %add.ptr9171 = phi ptr [ %add.ptr9163, %if.end13.lr.ph ], [ %add.ptr9, %cleanup71.if.end13_crit_edge ]
  %conv8170 = phi i32 [ %or, %if.end13.lr.ph ], [ %conv8, %cleanup71.if.end13_crit_edge ]
  %unc_chunk.0166 = phi ptr [ %unc, %if.end13.lr.ph ], [ %unc_chunk.3, %cleanup71.if.end13_crit_edge ]
  %cmpr_chunk.0165 = phi ptr [ %cmpr, %if.end13.lr.ph ], [ %add.ptr9171, %cleanup71.if.end13_crit_edge ]
  %and15 = and i32 %conv8170, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %incdec.ptr.i = getelementptr i8, ptr %cmpr_chunk.0165, i32 3
  %cmp92.i = icmp ult ptr %unc_chunk.0166, %add.ptr1
  %cmp193.i = icmp ult ptr %incdec.ptr.i, %add.ptr9171
  %or.cond94.i = and i1 %cmp92.i, %cmp193.i
  br i1 %or.cond94.i, label %while.cond2.preheader.lr.ph.i, label %if.then16.decompress_chunk.exit_crit_edge

if.then16.decompress_chunk.exit_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %decompress_chunk.exit

while.cond2.preheader.lr.ph.i:                    ; preds = %if.then16
  %add.ptr17 = getelementptr i8, ptr %cmpr_chunk.0165, i32 2
  %4 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr17, align 1
  br label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %if.end45.i.while.cond2.preheader.i_crit_edge, %while.cond2.preheader.lr.ph.i
  %index.099.i = phi i32 [ 0, %while.cond2.preheader.lr.ph.i ], [ %index.1.i, %if.end45.i.while.cond2.preheader.i_crit_edge ]
  %bit.098.i = phi i32 [ 0, %while.cond2.preheader.lr.ph.i ], [ %and37.i, %if.end45.i.while.cond2.preheader.i_crit_edge ]
  %ch.097.i = phi i8 [ %5, %while.cond2.preheader.lr.ph.i ], [ %ch.1.i, %if.end45.i.while.cond2.preheader.i_crit_edge ]
  %up.096.i = phi ptr [ %unc_chunk.0166, %while.cond2.preheader.lr.ph.i ], [ %up.2.i, %if.end45.i.while.cond2.preheader.i_crit_edge ]
  %cmpr.addr.095.i = phi ptr [ %incdec.ptr.i, %while.cond2.preheader.lr.ph.i ], [ %cmpr.addr.2.i, %if.end45.i.while.cond2.preheader.i_crit_edge ]
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.cond2.i.while.cond2.i_crit_edge, %while.cond2.preheader.i
  %index.1.i = phi i32 [ %add.i, %while.cond2.i.while.cond2.i_crit_edge ], [ %index.099.i, %while.cond2.preheader.i ]
  %arrayidx.i = getelementptr [9 x i32], ptr @s_max_off, i32 0, i32 %index.1.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %unc_chunk.0166, i32 %7
  %cmp3.i = icmp ult ptr %add.ptr.i, %up.096.i
  %add.i = add i32 %index.1.i, 1
  br i1 %cmp3.i, label %while.cond2.i.while.cond2.i_crit_edge, label %while.end.i

while.cond2.i.while.cond2.i_crit_edge:            ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.i

while.end.i:                                      ; preds = %while.cond2.i
  %conv.i = zext i8 %ch.097.i to i32
  %shl.i = shl nuw i32 1, %bit.098.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %incdec.ptr5.i = getelementptr i8, ptr %cmpr.addr.095.i, i32 1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %cmpr.addr.095.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmpr.addr.095.i, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %up.096.i, i32 1
  %10 = ptrtoint ptr %up.096.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %up.096.i, align 1
  br label %next.i

if.end.i:                                         ; preds = %while.end.i
  %cmp8.not.i = icmp ult ptr %incdec.ptr5.i, %add.ptr9171
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end.i.cleanup81_crit_edge

if.end.i.cleanup81_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end11.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr5.i, align 1
  %conv14.i = zext i8 %12 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 8
  %13 = ptrtoint ptr %cmpr.addr.095.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmpr.addr.095.i, align 1
  %conv18.i = zext i8 %14 to i32
  %or.i = or i32 %shl15.i, %conv18.i
  %add.ptr21.i = getelementptr i8, ptr %cmpr.addr.095.i, i32 2
  %sub.i.i = sub i32 12, %index.1.i
  %shr.i.i = lshr i32 %or.i, %sub.i.i
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %add.ptr22.i = getelementptr i8, ptr %unc_chunk.0166, i32 %add.i.i
  %cmp23.i = icmp ugt ptr %add.ptr22.i, %up.096.i
  br i1 %cmp23.i, label %if.end11.i.cleanup81_crit_edge, label %if.end26.i

if.end11.i.cleanup81_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end26.i:                                       ; preds = %if.end11.i
  %notmask.i.i = shl nsw i32 -1, %sub.i.i
  %sub3.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %or.i, %sub3.i.i
  %add4.i.i = add nuw nsw i32 %and.i.i, 3
  %add.ptr27.i = getelementptr i8, ptr %up.096.i, i32 %add4.i.i
  %cmp28.not.i = icmp ult ptr %add.ptr27.i, %add.ptr1
  %sub.ptr.rhs.cast.i = ptrtoint ptr %up.096.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %spec.select.i = select i1 %cmp28.not.i, i32 %add4.i.i, i32 %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp32.not89.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp32.not89.i, label %if.end26.i.next.i_crit_edge, label %for.body.lr.ph.i

if.end26.i.next.i_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %idx.neg.i = xor i32 %shr.i.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %length.191.i = phi i32 [ %spec.select.i, %for.body.lr.ph.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %up.190.i = phi ptr [ %up.096.i, %for.body.lr.ph.i ], [ %incdec.ptr35.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr34.i = getelementptr i8, ptr %up.190.i, i32 %idx.neg.i
  %15 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr34.i, align 1
  %17 = ptrtoint ptr %up.190.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %up.190.i, align 1
  %dec.i = add i32 %length.191.i, -1
  %incdec.ptr35.i = getelementptr i8, ptr %up.190.i, i32 1
  %cmp32.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp32.not.i, label %for.body.i.next.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.next.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next.i

next.i:                                           ; preds = %for.body.i.next.i_crit_edge, %if.end26.i.next.i_crit_edge, %if.then.i
  %cmpr.addr.1.i = phi ptr [ %incdec.ptr5.i, %if.then.i ], [ %add.ptr21.i, %if.end26.i.next.i_crit_edge ], [ %add.ptr21.i, %for.body.i.next.i_crit_edge ]
  %up.2.i = phi ptr [ %incdec.ptr6.i, %if.then.i ], [ %up.096.i, %if.end26.i.next.i_crit_edge ], [ %incdec.ptr35.i, %for.body.i.next.i_crit_edge ]
  %add36.i = add nuw nsw i32 %bit.098.i, 1
  %and37.i = and i32 %add36.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %next.i.if.end45.i_crit_edge

next.i.if.end45.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45.i

if.then39.i:                                      ; preds = %next.i
  %cmp40.not.i = icmp ult ptr %cmpr.addr.1.i, %add.ptr9171
  br i1 %cmp40.not.i, label %if.end43.i, label %if.then39.i.decompress_chunk.exit_crit_edge

if.then39.i.decompress_chunk.exit_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %decompress_chunk.exit

if.end43.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr44.i = getelementptr i8, ptr %cmpr.addr.1.i, i32 1
  %18 = ptrtoint ptr %cmpr.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmpr.addr.1.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %next.i.if.end45.i_crit_edge
  %cmpr.addr.2.i = phi ptr [ %cmpr.addr.1.i, %next.i.if.end45.i_crit_edge ], [ %incdec.ptr44.i, %if.end43.i ]
  %ch.1.i = phi i8 [ %ch.097.i, %next.i.if.end45.i_crit_edge ], [ %19, %if.end43.i ]
  %cmp.i = icmp ult ptr %up.2.i, %add.ptr1
  %cmp1.i = icmp ult ptr %cmpr.addr.2.i, %add.ptr9171
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end45.i.while.cond2.preheader.i_crit_edge, label %if.end45.i.decompress_chunk.exit_crit_edge

if.end45.i.decompress_chunk.exit_crit_edge:       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %decompress_chunk.exit

if.end45.i.while.cond2.preheader.i_crit_edge:     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.preheader.i

decompress_chunk.exit:                            ; preds = %if.end45.i.decompress_chunk.exit_crit_edge, %if.then39.i.decompress_chunk.exit_crit_edge, %if.then16.decompress_chunk.exit_crit_edge
  %up.3.i = phi ptr [ %unc_chunk.0166, %if.then16.decompress_chunk.exit_crit_edge ], [ %up.2.i, %if.end45.i.decompress_chunk.exit_crit_edge ], [ %up.2.i, %if.then39.i.decompress_chunk.exit_crit_edge ]
  %sub.ptr.lhs.cast47.i = ptrtoint ptr %up.3.i to i32
  %sub.ptr.rhs.cast48.i = ptrtoint ptr %unc_chunk.0166 to i32
  %sub.ptr.sub49.i = sub i32 %sub.ptr.lhs.cast47.i, %sub.ptr.rhs.cast48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub49.i)
  %cmp19 = icmp slt i32 %sub.ptr.sub49.i, 0
  br i1 %cmp19, label %decompress_chunk.exit.cleanup81_crit_edge, label %decompress_chunk.exit.if.end33_crit_edge

decompress_chunk.exit.if.end33_crit_edge:         ; preds = %decompress_chunk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

decompress_chunk.exit.cleanup81_crit_edge:        ; preds = %decompress_chunk.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.else:                                          ; preds = %if.end13
  %add.ptr23 = getelementptr i8, ptr %unc_chunk.0166, i32 4096
  %cmp24 = icmp ugt ptr %add.ptr23, %add.ptr1
  %sub.ptr.rhs.cast = ptrtoint ptr %unc_chunk.0166 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %cond = select i1 %cmp24, i32 %sub.ptr.sub, i32 4096
  %add.ptr26 = getelementptr i8, ptr %cmpr_chunk.0165, i32 2
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 %cond
  %cmp28 = icmp ugt ptr %add.ptr27, %add.ptr
  br i1 %cmp28, label %if.else.cleanup81_crit_edge, label %if.end31

if.else.cleanup81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %20 = call ptr @memcpy(ptr %unc_chunk.0166, ptr %add.ptr26, i32 %cond)
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %decompress_chunk.exit.if.end33_crit_edge
  %unc_use.1 = phi i32 [ %sub.ptr.sub49.i, %decompress_chunk.exit.if.end33_crit_edge ], [ %cond, %if.end31 ]
  %add.ptr35 = getelementptr i8, ptr %unc_chunk.0166, i32 %unc_use.1
  %cmp36.not = icmp uge ptr %add.ptr35, %add.ptr1
  %cmp41 = icmp ugt ptr %add.ptr9171, %add.ptr40
  %or.cond = select i1 %cmp36.not, i1 true, i1 %cmp41
  br i1 %or.cond, label %if.end33.for.end_crit_edge, label %if.end44

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end44:                                         ; preds = %if.end33
  %arrayidx45 = getelementptr i8, ptr %add.ptr9171, i32 1
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx45, align 1
  %conv47 = zext i8 %22 to i16
  %shl48 = shl nuw i16 %conv47, 8
  %23 = ptrtoint ptr %add.ptr9171 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr9171, align 1
  %conv51 = zext i8 %24 to i16
  %or53 = or i16 %shl48, %conv51
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or53)
  %tobool55.not = icmp eq i16 %or53, 0
  br i1 %tobool55.not, label %if.end44.for.end_crit_edge, label %if.end57

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end57:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %unc_use.1)
  %cmp58 = icmp ult i32 %unc_use.1, 4096
  br i1 %cmp58, label %if.then60, label %if.end57.cleanup71_crit_edge

if.end57.cleanup71_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup71

if.then60:                                        ; preds = %if.end57
  %add.ptr61 = getelementptr i8, ptr %unc_chunk.0166, i32 4096
  %cmp62.not = icmp ult ptr %add.ptr61, %add.ptr1
  br i1 %cmp62.not, label %cleanup66.thread, label %if.then60.for.end_crit_edge

if.then60.for.end_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup66.thread:                                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub nuw nsw i32 4096, %unc_use.1
  %25 = call ptr @memset(ptr %add.ptr35, i32 0, i32 %sub)
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup66.thread, %if.end57.cleanup71_crit_edge
  %unc_chunk.3 = phi ptr [ %add.ptr35, %if.end57.cleanup71_crit_edge ], [ %add.ptr61, %cleanup66.thread ]
  %conv8 = zext i16 %or53 to i32
  %and = and i32 %conv8, 4095
  %add = add nuw nsw i32 %and, 3
  %add.ptr9 = getelementptr i8, ptr %add.ptr9171, i32 %add
  %cmp10 = icmp ugt ptr %add.ptr9, %add.ptr
  br i1 %cmp10, label %cleanup71.cleanup81_crit_edge, label %cleanup71.if.end13_crit_edge

cleanup71.if.end13_crit_edge:                     ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

cleanup71.cleanup81_crit_edge:                    ; preds = %cleanup71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

for.end:                                          ; preds = %if.then60.for.end_crit_edge, %if.end44.for.end_crit_edge, %if.end33.for.end_crit_edge
  %cmp76 = icmp ugt ptr %add.ptr9171, %add.ptr
  br i1 %cmp76, label %for.end.cleanup81_crit_edge, label %if.end79

for.end.cleanup81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup81

if.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %add.ptr35 to i32
  %27 = ptrtoint ptr %unc to i32
  %sub80 = sub i32 %26, %27
  br label %cleanup81

cleanup81:                                        ; preds = %if.end79, %for.end.cleanup81_crit_edge, %cleanup71.cleanup81_crit_edge, %if.else.cleanup81_crit_edge, %decompress_chunk.exit.cleanup81_crit_edge, %if.end11.i.cleanup81_crit_edge, %if.end.i.cleanup81_crit_edge, %if.end.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.4 = phi i32 [ %sub80, %if.end79 ], [ -22, %entry.cleanup81_crit_edge ], [ -22, %for.end.cleanup81_crit_edge ], [ -22, %if.end.cleanup81_crit_edge ], [ -22, %if.end.i.cleanup81_crit_edge ], [ -22, %if.end11.i.cleanup81_crit_edge ], [ %sub.ptr.sub49.i, %decompress_chunk.exit.cleanup81_crit_edge ], [ -22, %cleanup71.cleanup81_crit_edge ], [ -22, %if.else.cleanup81_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @s_max_len, !1, !"s_max_len", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/lznt.c", i32 110, i32 21}
!2 = !{ptr @s_max_off, !3, !"s_max_off", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/lznt.c", i32 114, i32 21}
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
!14 = !{ptr @longest_match_best, ptr @longest_match_std}
