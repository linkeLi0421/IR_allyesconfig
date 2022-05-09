; ModuleID = '/llk/IR_all_yes/fs/unicode/utf8-norm.c_pt.bc'
source_filename = "../fs/unicode/utf8-norm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.unicode_map = type { i32, [2 x ptr], ptr }
%struct.utf8data_table = type { ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.utf8data = type { i32, i32 }
%struct.utf8cursor = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i16, i16, [12 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8version_is_supported(ptr nocapture noundef readonly %um, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tables = getelementptr inbounds %struct.unicode_map, ptr %um, i32 0, i32 2
  %0 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tables, align 4
  %utf8agetab_size = getelementptr inbounds %struct.utf8data_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %utf8agetab_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %utf8agetab_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %3, %entry ], [ %i.0, %while.body.while.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %land.rhs, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %cmp6 = icmp eq i32 %7, %version
  br i1 %cmp6, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8nlen(ptr nocapture noundef readonly %um, i32 noundef %n, ptr nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  %hangul = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hangul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not66 = icmp eq i32 %len, 0
  %0 = call ptr @memset(ptr %hangul, i32 255, i32 12)
  br i1 %tobool.not66, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %tables = getelementptr inbounds %struct.unicode_map, ptr %um, i32 0, i32 2
  %arrayidx4 = getelementptr %struct.unicode_map, ptr %um, i32 0, i32 1, i32 %n
  br label %land.rhs

land.rhs:                                         ; preds = %if.end19.land.rhs_crit_edge, %land.rhs.lr.ph
  %ret.069 = phi i32 [ 0, %land.rhs.lr.ph ], [ %ret.1, %if.end19.land.rhs_crit_edge ]
  %len.addr.068 = phi i32 [ %len, %land.rhs.lr.ph ], [ %sub, %if.end19.land.rhs_crit_edge ]
  %s.addr.067 = phi ptr [ %s, %land.rhs.lr.ph ], [ %add.ptr22, %if.end19.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %s.addr.067 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s.addr.067, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %call = call fastcc ptr @utf8nlookup(ptr noundef %um, i32 noundef %n, ptr noundef nonnull %hangul, ptr noundef %s.addr.067, i32 noundef %len.addr.068)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %3 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tables, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx3 = getelementptr i32, ptr %6, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp = icmp ugt i32 %10, %14
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %s.addr.067 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s.addr.067, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %16)
  %cmp.i = icmp ugt i8 %16, -65
  %add.i = select i1 %cmp.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %16)
  %cmp3.i = icmp ugt i8 %16, -33
  %conv4.i = zext i1 %cmp3.i to i32
  %add5.i = add nuw nsw i32 %add.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %16)
  %cmp7.i = icmp ugt i8 %16, -17
  %conv8.i = zext i1 %cmp7.i to i32
  %add9.i = add nuw nsw i32 %add5.i, %conv8.i
  br label %if.end19

if.else:                                          ; preds = %if.end
  %arrayidx8 = getelementptr i8, ptr %call, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp10 = icmp eq i8 %18, -1
  br i1 %cmp10, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call, i32 2
  %call13 = call i32 @strlen(ptr noundef %add.ptr) #9
  br label %if.end19

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %s.addr.067 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s.addr.067, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %20)
  %cmp.i42 = icmp ugt i8 %20, -65
  %add.i43 = select i1 %cmp.i42, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %20)
  %cmp3.i44 = icmp ugt i8 %20, -33
  %conv4.i45 = zext i1 %cmp3.i44 to i32
  %add5.i46 = add nuw nsw i32 %add.i43, %conv4.i45
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %20)
  %cmp7.i47 = icmp ugt i8 %20, -17
  %conv8.i48 = zext i1 %cmp7.i47 to i32
  %add9.i49 = add nuw nsw i32 %add5.i46, %conv8.i48
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12, %if.then6
  %call7.pn = phi i32 [ %add9.i, %if.then6 ], [ %call13, %if.then12 ], [ %add9.i49, %if.else15 ]
  %ret.1 = add i32 %call7.pn, %ret.069
  %21 = ptrtoint ptr %s.addr.067 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %s.addr.067, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %22)
  %cmp.i50 = icmp ugt i8 %22, -65
  %add.i51 = select i1 %cmp.i50, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %22)
  %cmp3.i52 = icmp ugt i8 %22, -33
  %conv4.i53 = zext i1 %cmp3.i52 to i32
  %add5.i54 = add nuw nsw i32 %add.i51, %conv4.i53
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %22)
  %cmp7.i55 = icmp ugt i8 %22, -17
  %conv8.i56 = zext i1 %cmp7.i55 to i32
  %add9.i57 = add nuw nsw i32 %add5.i54, %conv8.i56
  %sub = sub i32 %len.addr.068, %add9.i57
  %add.ptr22 = getelementptr i8, ptr %s.addr.067, i32 %add9.i57
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.end19.land.rhs_crit_edge

if.end19.land.rhs_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.069, %land.rhs.cleanup_crit_edge ], [ %ret.1, %if.end19.cleanup_crit_edge ], [ -1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hangul) #6
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @utf8nlookup(ptr nocapture noundef readonly %um, i32 noundef %n, ptr noundef writeonly %hangul, ptr nocapture noundef readonly %s, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tables = getelementptr inbounds %struct.unicode_map, ptr %um, i32 0, i32 2
  %0 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tables, align 4
  %utf8data = getelementptr inbounds %struct.utf8data_table, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %utf8data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %utf8data, align 4
  %arrayidx = getelementptr %struct.unicode_map, ptr %um, i32 0, i32 1, i32 %n
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %offset = getelementptr inbounds %struct.utf8data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %if.end
  %trie.0112 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr46, %if.end58.while.body_crit_edge ]
  %len.addr.0111 = phi i32 [ %len, %if.end ], [ %len.addr.1, %if.end58.while.body_crit_edge ]
  %s.addr.0110 = phi ptr [ %s, %if.end ], [ %s.addr.1, %if.end58.while.body_crit_edge ]
  %8 = ptrtoint ptr %trie.0112 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trie.0112, align 1
  %conv = zext i8 %9 to i32
  %and = lshr i32 %conv, 4
  %10 = and i32 %and, 3
  %and3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %while.body.if.end10_crit_edge, label %if.then5

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %while.body
  %dec = add i32 %len.addr.0111, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i8, ptr %s.addr.0110, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %while.body.if.end10_crit_edge
  %s.addr.1 = phi ptr [ %incdec.ptr, %if.end9 ], [ %s.addr.0110, %while.body.if.end10_crit_edge ]
  %len.addr.1 = phi i32 [ %dec, %if.end9 ], [ %len.addr.0111, %while.body.if.end10_crit_edge ]
  %and12 = and i32 %conv, 7
  %shl = shl nuw nsw i32 1, %and12
  %11 = ptrtoint ptr %s.addr.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s.addr.1, align 1
  %conv13 = zext i8 %12 to i32
  %and14 = and i32 %shl, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool42.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %if.else41, label %if.then16

if.then16:                                        ; preds = %if.end10
  %and32 = and i32 %conv, 64
  br i1 %tobool42.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then16
  %arrayidx21 = getelementptr i8, ptr %trie.0112, i32 %10
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %14 to i32
  %dec24106 = add nsw i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec24106)
  %tobool25.not107 = icmp eq i32 %dec24106, 0
  br i1 %tobool25.not107, label %if.then18.if.end58_crit_edge, label %if.then18.while.body26_crit_edge

if.then18.while.body26_crit_edge:                 ; preds = %if.then18
  br label %while.body26

if.then18.if.end58_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

while.body26:                                     ; preds = %while.body26.while.body26_crit_edge, %if.then18.while.body26_crit_edge
  %dec24109 = phi i32 [ %dec24, %while.body26.while.body26_crit_edge ], [ %dec24106, %if.then18.while.body26_crit_edge ]
  %offset1.0108 = phi i32 [ %or, %while.body26.while.body26_crit_edge ], [ %conv22, %if.then18.while.body26_crit_edge ]
  %shl27 = shl i32 %offset1.0108, 8
  %arrayidx28 = getelementptr i8, ptr %trie.0112, i32 %dec24109
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %16 to i32
  %or = or i32 %shl27, %conv29
  %dec24 = add i32 %dec24109, -1
  %tobool25.not = icmp eq i32 %dec24, 0
  br i1 %tobool25.not, label %while.body26.if.end58_crit_edge, label %while.body26.while.body26_crit_edge

while.body26.while.body26_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body26

while.body26.if.end58_crit_edge:                  ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else.cleanup_crit_edge, label %if.then34

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and36 = and i32 %conv, 128
  br label %if.end58

if.else41:                                        ; preds = %if.end10
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  %and45 = and i32 %conv, 128
  %add = add nuw nsw i32 %10, 1
  br label %if.end58

if.else47:                                        ; preds = %if.else41
  %and49 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else52, label %if.else47.cleanup_crit_edge

if.else47.cleanup_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  %and54 = and i32 %conv, 128
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then43, %if.then34, %while.body26.if.end58_crit_edge, %if.then18.if.end58_crit_edge
  %add.sink = phi i32 [ %add, %if.then43 ], [ 1, %if.else52 ], [ 1, %if.then34 ], [ %conv22, %if.then18.if.end58_crit_edge ], [ %or, %while.body26.if.end58_crit_edge ]
  %node.1 = phi i32 [ %and45, %if.then43 ], [ %and54, %if.else52 ], [ %and36, %if.then34 ], [ %and32, %if.then18.if.end58_crit_edge ], [ %and32, %while.body26.if.end58_crit_edge ]
  %add.ptr46 = getelementptr i8, ptr %trie.0112, i32 %add.sink
  %tobool.not = icmp eq i32 %node.1, 0
  br i1 %tobool.not, label %while.end59, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end59:                                      ; preds = %if.end58
  %arrayidx60 = getelementptr i8, ptr %add.ptr46, i32 1
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp62 = icmp eq i8 %18, -1
  br i1 %cmp62, label %land.lhs.true, label %while.end59.cleanup_crit_edge

while.end59.cleanup_crit_edge:                    ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end59
  %add.ptr64 = getelementptr i8, ptr %add.ptr46, i32 2
  %19 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp67 = icmp eq i8 %20, -1
  br i1 %cmp67, label %if.then69, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true
  %add.ptr70 = getelementptr i8, ptr %s.addr.1, i32 -2
  %incdec.ptr.i.i = getelementptr i8, ptr %s.addr.1, i32 -1
  %21 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr70, align 1
  %23 = and i8 %22, 15
  %and.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.i.i, align 1
  %26 = and i8 %25, 63
  %and3.i.i = zext i8 %26 to i32
  %27 = shl nuw nsw i32 %and.i.i, 12
  %28 = shl nuw nsw i32 %and3.i.i, 6
  %29 = ptrtoint ptr %s.addr.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s.addr.1, align 1
  %31 = and i8 %30, 63
  %and7.i.i = zext i8 %31 to i32
  %shl4.i.i = add nsw i32 %27, -44032
  %or8.i.i = or i32 %shl4.i.i, %and7.i.i
  %sub.i = add nsw i32 %or8.i.i, %28
  %sub.i.frozen = freeze i32 %sub.i
  %div.i = udiv i32 %sub.i.frozen, 588
  %32 = mul i32 %div.i, 588
  %rem.i.decomposed = sub i32 %sub.i.frozen, %32
  %div1.lhs.trunc.i = trunc i32 %rem.i.decomposed to i16
  %div140.i = udiv i16 %div1.lhs.trunc.i, 28
  %rem2.i = urem i32 %sub.i, 28
  %33 = ptrtoint ptr %hangul to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %hangul, align 1
  %arrayidx3.i = getelementptr i8, ptr %hangul, i32 1
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx3.i, align 1
  %add.ptr.i = getelementptr i8, ptr %hangul, i32 2
  %add.i = add nuw nsw i32 %div.i, 4352
  %35 = trunc i32 %add.i to i8
  %36 = and i8 %35, 63
  %conv.i.i = or i8 %36, -128
  %arrayidx.i.i = getelementptr i8, ptr %hangul, i32 4
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %shr.i.i = lshr i32 %add.i, 6
  %38 = trunc i32 %shr.i.i to i8
  %39 = and i8 %38, 63
  %conv3.i.i = or i8 %39, -128
  %arrayidx4.i.i = getelementptr i8, ptr %hangul, i32 3
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %shr5.i.i = lshr i32 %add.i, 12
  %41 = trunc i32 %shr5.i.i to i8
  %conv7.i.i = or i8 %41, -32
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv7.i.i, ptr %add.ptr.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %hangul, i32 5
  %43 = trunc i16 %div140.i to i8
  %conv.i26.i = add nuw nsw i8 %43, -95
  %arrayidx.i27.i = getelementptr i8, ptr %hangul, i32 7
  %44 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i26.i, ptr %arrayidx.i27.i, align 1
  %arrayidx4.i30.i = getelementptr i8, ptr %hangul, i32 6
  %45 = ptrtoint ptr %arrayidx4.i30.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -123, ptr %arrayidx4.i30.i, align 1
  %46 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -31, ptr %add.ptr5.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %hangul, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2.i)
  %tobool.not.i = icmp eq i32 %rem2.i, 0
  br i1 %tobool.not.i, label %if.then69.utf8hangul.exit_crit_edge, label %if.then.i

if.then69.utf8hangul.exit_crit_edge:              ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %utf8hangul.exit

if.then.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i = add nuw nsw i32 %rem2.i, 4519
  %47 = trunc i32 %add9.i to i8
  %48 = and i8 %47, 63
  %conv.i33.i = or i8 %48, -128
  %arrayidx.i34.i = getelementptr i8, ptr %hangul, i32 10
  %49 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i33.i, ptr %arrayidx.i34.i, align 1
  %shr.i35.i = lshr i32 %add9.i, 6
  %50 = trunc i32 %shr.i35.i to i8
  %51 = and i8 %50, 7
  %conv3.i36.i = or i8 %51, -128
  %arrayidx4.i37.i = getelementptr i8, ptr %hangul, i32 9
  %52 = ptrtoint ptr %arrayidx4.i37.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv3.i36.i, ptr %arrayidx4.i37.i, align 1
  %53 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -31, ptr %add.ptr8.i, align 1
  %add.ptr11.i = getelementptr i8, ptr %hangul, i32 11
  br label %utf8hangul.exit

utf8hangul.exit:                                  ; preds = %if.then.i, %if.then69.utf8hangul.exit_crit_edge
  %h.0.i = phi ptr [ %add.ptr11.i, %if.then.i ], [ %add.ptr8.i, %if.then69.utf8hangul.exit_crit_edge ]
  %54 = ptrtoint ptr %h.0.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %h.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %utf8hangul.exit, %land.lhs.true.cleanup_crit_edge, %while.end59.cleanup_crit_edge, %if.else47.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %hangul, %utf8hangul.exit ], [ %add.ptr46, %land.lhs.true.cleanup_crit_edge ], [ %add.ptr46, %while.end59.cleanup_crit_edge ], [ null, %if.then5.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ null, %if.else47.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @utf8ncursor(ptr nocapture noundef %u8c, ptr noundef %um, i32 noundef %n, ptr noundef %s, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end7

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end7:                                          ; preds = %entry
  %0 = ptrtoint ptr %u8c to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %um, ptr %u8c, align 4
  %n2 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 1
  %1 = ptrtoint ptr %n2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %n, ptr %n2, align 4
  %s3 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 2
  %2 = ptrtoint ptr %s3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %s, ptr %s3, align 4
  %p = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 3
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %p, align 4
  %ss = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 4
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ss, align 4
  %sp = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 5
  %5 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sp, align 4
  %len4 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 6
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %len4, align 4
  %slen = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp8.not = icmp eq i32 %len, 0
  %7 = ptrtoint ptr %slen to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %slen, align 4
  br i1 %cmp8.not, label %if.end7.if.end12_crit_edge, label %land.lhs.true

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s, align 1
  %10 = and i8 %9, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %10)
  %cmp9 = icmp eq i8 %10, -128
  br i1 %cmp9, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  br label %return

return:                                           ; preds = %if.end12, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -1, %entry.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8byte(ptr noundef %u8c) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 3
  %s = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 2
  %len = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 6
  %n = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 1
  %hangul = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 10
  %ccc102 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 8
  %nccc = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 9
  %ss177 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 4
  %sp179 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 5
  %slen181 = getelementptr inbounds %struct.utf8cursor, ptr %u8c, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.land.lhs.true7_crit_edge, label %land.lhs.true

for.cond.land.lhs.true7_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true7

land.lhs.true:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %s, align 4
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %p, align 4
  br label %land.lhs.true7

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %p, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %if.end.land.lhs.true7_crit_edge, label %if.else.thread

if.end.land.lhs.true7_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end.land.lhs.true7_crit_edge, %if.then, %for.cond.land.lhs.true7_crit_edge
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true7.if.then14_crit_edge, label %lor.lhs.false

land.lhs.true7.if.then14_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp12 = icmp eq i8 %14, 0
  br i1 %cmp12, label %lor.lhs.false.if.then14_crit_edge, label %if.else

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %land.lhs.true7.if.then14_crit_edge
  %15 = ptrtoint ptr %ccc102 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ccc102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp17 = icmp eq i16 %16, 0
  br i1 %cmp17, label %if.then14.cleanup_crit_edge, label %if.then14.ccc_mismatch_crit_edge

if.then14.ccc_mismatch_crit_edge:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccc_mismatch

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = and i8 %20, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp23 = icmp eq i8 %21, -128
  br i1 %cmp23, label %if.then28, label %if.else39

if.else.thread:                                   ; preds = %if.end
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = and i8 %25, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %26)
  %cmp23339 = icmp eq i8 %26, -128
  br i1 %cmp23339, label %if.else.thread.cleanup.sink.split_crit_edge, label %if.then37

if.else.thread.cleanup.sink.split_crit_edge:      ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %len, align 4
  br label %cleanup.sink.split

if.then37:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %u8c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %u8c, align 4
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %call.i = tail call fastcc ptr @utf8nlookup(ptr noundef %30, i32 noundef %32, ptr noundef %hangul, ptr noundef %23, i32 noundef -1) #6
  br label %if.end47

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %u8c to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %u8c, align 4
  %35 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n, align 4
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %call46 = tail call fastcc ptr @utf8nlookup(ptr noundef %34, i32 noundef %36, ptr noundef %hangul, ptr noundef %18, i32 noundef %38)
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then37
  %leaf.0 = phi ptr [ %call.i, %if.then37 ], [ %call46, %if.else39 ]
  %tobool48.not = icmp eq ptr %leaf.0, null
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.end50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %39 = ptrtoint ptr %u8c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %u8c, align 4
  %tables = getelementptr inbounds %struct.unicode_map, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %tables to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tables, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %leaf.0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %leaf.0, align 1
  %idxprom = zext i8 %46 to i32
  %arrayidx54 = getelementptr i32, ptr %44, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx54, align 4
  %49 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n, align 4
  %arrayidx57 = getelementptr %struct.unicode_map, ptr %40, i32 0, i32 1, i32 %50
  %51 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx57, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %54)
  %cmp58 = icmp ugt i32 %48, %54
  br i1 %cmp58, label %if.end50.if.end113_crit_edge, label %if.else61

if.end50.if.end113_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.else61:                                        ; preds = %if.end50
  %arrayidx = getelementptr i8, ptr %leaf.0, i32 1
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp62 = icmp eq i8 %56, -1
  br i1 %cmp62, label %if.then64, label %if.else61.if.end98_crit_edge

if.else61.if.end98_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then64:                                        ; preds = %if.else61
  %57 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %60)
  %cmp.i = icmp ugt i8 %60, -65
  %add.i.neg = select i1 %cmp.i, i32 -2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %60)
  %cmp3.i = icmp ugt i8 %60, -33
  %conv4.i.neg = sext i1 %cmp3.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %60)
  %cmp7.i = icmp ugt i8 %60, -17
  %conv8.i.neg = sext i1 %cmp7.i to i32
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %add5.i.neg = add i32 %62, %conv4.i.neg
  %add9.i.neg = add i32 %add5.i.neg, %add.i.neg
  %sub = add i32 %add9.i.neg, %conv8.i.neg
  store i32 %sub, ptr %len, align 4
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %64)
  %cmp.i283 = icmp ugt i8 %64, -65
  %add.i284 = select i1 %cmp.i283, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %64)
  %cmp3.i285 = icmp ugt i8 %64, -33
  %conv4.i286 = zext i1 %cmp3.i285 to i32
  %add5.i287 = add nuw nsw i32 %add.i284, %conv4.i286
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %64)
  %cmp7.i288 = icmp ugt i8 %64, -17
  %conv8.i289 = zext i1 %cmp7.i288 to i32
  %add9.i290 = add nuw nsw i32 %add5.i287, %conv8.i289
  %add.ptr = getelementptr i8, ptr %58, i32 %add9.i290
  %65 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr, ptr %p, align 4
  %add.ptr72 = getelementptr i8, ptr %leaf.0, i32 2
  %66 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr72, ptr %s, align 4
  %67 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp76 = icmp eq i8 %68, 0
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %if.then64
  %69 = ptrtoint ptr %ccc102 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ccc102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp81 = icmp eq i16 %70, 0
  br i1 %cmp81, label %if.then78.for.cond.backedge_crit_edge, label %if.then78.ccc_mismatch_crit_edge

if.then78.ccc_mismatch_crit_edge:                 ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccc_mismatch

if.then78.for.cond.backedge_crit_edge:            ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.end85:                                         ; preds = %if.then64
  %call.i291 = tail call fastcc ptr @utf8nlookup(ptr noundef %40, i32 noundef %50, ptr noundef %hangul, ptr noundef %add.ptr72, i32 noundef -1) #6
  %tobool92.not = icmp eq ptr %call.i291, null
  br i1 %tobool92.not, label %if.end85.cleanup_crit_edge, label %if.end94

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx95 = getelementptr i8, ptr %call.i291, i32 1
  %71 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx95, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.end94, %if.else61.if.end98_crit_edge
  %ccc.0.shrunk = phi i8 [ %72, %if.end94 ], [ %56, %if.else61.if.end98_crit_edge ]
  %ccc.0 = zext i8 %ccc.0.shrunk to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ccc.0.shrunk)
  %cmp99.not = icmp eq i8 %ccc.0.shrunk, 0
  br i1 %cmp99.not, label %if.end98.if.end113_crit_edge, label %land.lhs.true101

if.end98.if.end113_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

land.lhs.true101:                                 ; preds = %if.end98
  %73 = ptrtoint ptr %ccc102 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ccc102, align 4
  %conv103 = sext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv103, i32 %ccc.0)
  %cmp104 = icmp slt i32 %conv103, %ccc.0
  br i1 %cmp104, label %land.lhs.true106, label %land.lhs.true101.if.end113_crit_edge

land.lhs.true101.if.end113_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

land.lhs.true106:                                 ; preds = %land.lhs.true101
  %75 = ptrtoint ptr %nccc to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nccc, align 2
  %conv107 = sext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ccc.0, i32 %conv107)
  %cmp108 = icmp slt i32 %ccc.0, %conv107
  br i1 %cmp108, label %if.then110, label %land.lhs.true106.if.end113_crit_edge

land.lhs.true106.if.end113_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then110:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #8
  %conv111 = zext i8 %ccc.0.shrunk to i16
  %77 = ptrtoint ptr %nccc to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv111, ptr %nccc, align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %land.lhs.true106.if.end113_crit_edge, %land.lhs.true101.if.end113_crit_edge, %if.end98.if.end113_crit_edge, %if.end50.if.end113_crit_edge
  %ccc.0330 = phi i32 [ %ccc.0, %if.then110 ], [ %ccc.0, %land.lhs.true106.if.end113_crit_edge ], [ %ccc.0, %land.lhs.true101.if.end113_crit_edge ], [ 0, %if.end98.if.end113_crit_edge ], [ 0, %if.end50.if.end113_crit_edge ]
  %78 = ptrtoint ptr %ccc102 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ccc102, align 4
  %conv115 = sext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ccc.0330, i32 %conv115)
  %cmp116 = icmp eq i32 %ccc.0330, %conv115
  br i1 %cmp116, label %if.then118, label %if.end113.ccc_mismatch_crit_edge

if.end113.ccc_mismatch_crit_edge:                 ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccc_mismatch

if.then118:                                       ; preds = %if.end113
  %80 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %p, align 4
  %tobool120.not = icmp eq ptr %81, null
  br i1 %tobool120.not, label %if.then121, label %if.then118.if.end124_crit_edge

if.then118.if.end124_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %dec123 = add i32 %83, -1
  store i32 %dec123, ptr %len, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.then118.if.end124_crit_edge
  %84 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s, align 4
  br label %cleanup.sink.split

ccc_mismatch:                                     ; preds = %if.end113.ccc_mismatch_crit_edge, %if.then78.ccc_mismatch_crit_edge, %if.then14.ccc_mismatch_crit_edge
  %ccc.1 = phi i32 [ %ccc.0330, %if.end113.ccc_mismatch_crit_edge ], [ 0, %if.then14.ccc_mismatch_crit_edge ], [ 0, %if.then78.ccc_mismatch_crit_edge ]
  %86 = ptrtoint ptr %nccc to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %nccc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp131 = icmp eq i16 %87, 0
  br i1 %cmp131, label %if.then133, label %if.else152

if.then133:                                       ; preds = %ccc_mismatch
  %88 = ptrtoint ptr %ccc102 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %ccc102, align 4
  %conv135 = trunc i32 %ccc.1 to i16
  %89 = ptrtoint ptr %nccc to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv135, ptr %nccc, align 2
  %90 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p, align 4
  %92 = ptrtoint ptr %sp179 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %sp179, align 4
  %93 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s, align 4
  %95 = ptrtoint ptr %ss177 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %ss177, align 4
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 4
  %98 = ptrtoint ptr %slen181 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %slen181, align 4
  %tobool141.not = icmp eq ptr %91, null
  br i1 %tobool141.not, label %if.then142, label %if.then133.if.end147_crit_edge

if.then133.if.end147_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then142:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %100)
  %cmp.i292 = icmp ugt i8 %100, -65
  %add.i293.neg = select i1 %cmp.i292, i32 -2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %100)
  %cmp3.i294 = icmp ugt i8 %100, -33
  %conv4.i295.neg = sext i1 %cmp3.i294 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %100)
  %cmp7.i297 = icmp ugt i8 %100, -17
  %conv8.i298.neg = sext i1 %cmp7.i297 to i32
  %add5.i296.neg = add i32 %97, %conv4.i295.neg
  %add9.i299.neg = add i32 %add5.i296.neg, %add.i293.neg
  %sub146 = add i32 %add9.i299.neg, %conv8.i298.neg
  %101 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %sub146, ptr %len, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.then133.if.end147_crit_edge
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %103)
  %cmp.i300 = icmp ugt i8 %103, -65
  %add.i301 = select i1 %cmp.i300, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %103)
  %cmp3.i302 = icmp ugt i8 %103, -33
  %conv4.i303 = zext i1 %cmp3.i302 to i32
  %add5.i304 = add nuw nsw i32 %add.i301, %conv4.i303
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %103)
  %cmp7.i305 = icmp ugt i8 %103, -17
  %conv8.i306 = zext i1 %cmp7.i305 to i32
  %add9.i307 = add nuw nsw i32 %add5.i304, %conv8.i306
  %add.ptr151 = getelementptr i8, ptr %94, i32 %add9.i307
  %104 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr151, ptr %s, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else183, %if.then173, %if.end163, %if.end147, %if.then78.for.cond.backedge_crit_edge
  br label %for.cond

if.else152:                                       ; preds = %ccc_mismatch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ccc.1)
  %cmp153.not = icmp eq i32 %ccc.1, 0
  br i1 %cmp153.not, label %if.else168, label %if.then155

if.then155:                                       ; preds = %if.else152
  %105 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p, align 4
  %tobool157.not = icmp eq ptr %106, null
  br i1 %tobool157.not, label %if.then158, label %if.then155.if.end163_crit_edge

if.then155.if.end163_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then158:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %110)
  %cmp.i308 = icmp ugt i8 %110, -65
  %add.i309.neg = select i1 %cmp.i308, i32 -2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %110)
  %cmp3.i310 = icmp ugt i8 %110, -33
  %conv4.i311.neg = sext i1 %cmp3.i310 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %110)
  %cmp7.i313 = icmp ugt i8 %110, -17
  %conv8.i314.neg = sext i1 %cmp7.i313 to i32
  %111 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len, align 4
  %add5.i312.neg = add i32 %112, %conv4.i311.neg
  %add9.i315.neg = add i32 %add5.i312.neg, %add.i309.neg
  %sub162 = add i32 %add9.i315.neg, %conv8.i314.neg
  store i32 %sub162, ptr %len, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.then155.if.end163_crit_edge
  %113 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %116)
  %cmp.i316 = icmp ugt i8 %116, -65
  %add.i317 = select i1 %cmp.i316, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %116)
  %cmp3.i318 = icmp ugt i8 %116, -33
  %conv4.i319 = zext i1 %cmp3.i318 to i32
  %add5.i320 = add nuw nsw i32 %add.i317, %conv4.i319
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %116)
  %cmp7.i321 = icmp ugt i8 %116, -17
  %conv8.i322 = zext i1 %cmp7.i321 to i32
  %add9.i323 = add nuw nsw i32 %add5.i320, %conv8.i322
  %add.ptr167 = getelementptr i8, ptr %114, i32 %add9.i323
  %117 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr167, ptr %s, align 4
  br label %for.cond.backedge

if.else168:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %87)
  %cmp171.not = icmp eq i16 %87, 255
  br i1 %cmp171.not, label %if.else183, label %if.then173

if.then173:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %ccc102 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %87, ptr %ccc102, align 4
  %119 = ptrtoint ptr %nccc to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 255, ptr %nccc, align 2
  %120 = ptrtoint ptr %ss177 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ss177, align 4
  %122 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %s, align 4
  %123 = ptrtoint ptr %sp179 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sp179, align 4
  %125 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %p, align 4
  %126 = ptrtoint ptr %slen181 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %slen181, align 4
  %128 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %len, align 4
  br label %for.cond.backedge

if.else183:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %sp179 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %sp179, align 4
  %130 = ptrtoint ptr %ss177 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %ss177, align 4
  %131 = ptrtoint ptr %slen181 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 0, ptr %slen181, align 4
  br label %for.cond.backedge

cleanup.sink.split:                               ; preds = %if.end124, %if.then28, %if.else.thread.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %85, %if.end124 ], [ %18, %if.then28 ], [ %23, %if.else.thread.cleanup.sink.split_crit_edge ]
  %incdec.ptr126 = getelementptr i8, ptr %.sink, i32 1
  %132 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %incdec.ptr126, ptr %s, align 4
  %133 = ptrtoint ptr %.sink to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %.sink, align 1
  %conv127 = zext i8 %134 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end85.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv127, %cleanup.sink.split ], [ -1, %if.end85.cleanup_crit_edge ], [ -1, %if.end47.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
