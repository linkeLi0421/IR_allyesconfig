; ModuleID = '/llk/IR_all_yes/lib/gen_crc32table.c_pt.bc'
source_filename = "../lib/gen_crc32table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_le[%d][%d] = {\00", align 1
@crc32table_le = internal global [8 x [256 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"tole\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_be[%d][%d] = {\00", align 1
@crc32table_be = internal unnamed_addr global [8 x [256 x i32]] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"tobe\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"static const u32 ____cacheline_aligned crc32ctable_le[%d][%d] = {\00", align 1
@crc32ctable_le = internal global [8 x [256 x i32]] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"%s(0x%8.8xL), \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s(0x%8.8xL)},\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"/* this file is generated - do not edit */\0A\00", align 1
@str.13 = private unnamed_addr constant [3 x i8] c"};\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull @str)
  tail call fastcc void @crc32init_le_generic(i32 noundef -306674912, ptr noundef nonnull @crc32table_le) #4
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef 256)
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i, %entry
  %indvars.iv5.i = phi i64 [ 0, %entry ], [ %indvars.iv.next6.i, %for.end.i ]
  %putchar.i = tail call i32 @putchar(i32 123) #4
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %if.end.i ]
  %rem9.i = and i64 %indvars.iv.i, 3
  %cmp4.i = icmp eq i64 %rem9.i, 0
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body3.i
  %putchar1.i = tail call i32 @putchar(i32 10) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body3.i
  %arrayidx7.i = getelementptr inbounds [256 x i32], ptr @crc32table_le, i64 %indvars.iv5.i, i64 %indvars.iv.i
  %0 = load i32, ptr %arrayidx7.i, align 4, !tbaa !5
  %call8.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %0) #4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 255
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i

for.end.i:                                        ; preds = %if.end.i
  %arrayidx13.i = getelementptr inbounds [256 x i32], ptr @crc32table_le, i64 %indvars.iv5.i, i64 255
  %1 = load i32, ptr %arrayidx13.i, align 4, !tbaa !5
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %1) #4
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next6.i, 8
  br i1 %exitcond8.not.i, label %output_table.exit, label %for.body.i

output_table.exit:                                ; preds = %for.end.i
  %puts7 = tail call i32 @puts(ptr nonnull @str.13)
  store <4 x i32> <i32 0, i32 79764919, i32 159529838, i32 222504665>, ptr @crc32table_be, align 16, !tbaa !5
  store <4 x i32> <i32 319059676, i32 398814059, i32 445009330, i32 507990021>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 4), align 16, !tbaa !5
  store <4 x i32> <i32 638119352, i32 583659535, i32 797628118, i32 726387553>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 8), align 16, !tbaa !5
  store <4 x i32> <i32 890018660, i32 835552979, i32 1015980042, i32 944750013>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 12), align 16, !tbaa !5
  store <4 x i32> <i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 16), align 16, !tbaa !5
  store <4 x i32> <i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 20), align 16, !tbaa !5
  store <4 x i32> <i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 24), align 16, !tbaa !5
  store <4 x i32> <i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 28), align 16, !tbaa !5
  store i32 -1742489888, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 32), align 16, !tbaa !5
  store i32 -1662866601, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 33), align 4, !tbaa !5
  %wide.load = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 2), align 8, !tbaa !5
  %2 = xor <4 x i32> %wide.load, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %2, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 34), align 8, !tbaa !5
  %wide.load.1 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 6), align 8, !tbaa !5
  %3 = xor <4 x i32> %wide.load.1, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %3, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 38), align 8, !tbaa !5
  %wide.load.2 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 10), align 8, !tbaa !5
  %4 = xor <4 x i32> %wide.load.2, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %4, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 42), align 8, !tbaa !5
  %wide.load.3 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 14), align 8, !tbaa !5
  %5 = xor <4 x i32> %wide.load.3, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %5, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 46), align 8, !tbaa !5
  %wide.load.4 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 18), align 8, !tbaa !5
  %6 = xor <4 x i32> %wide.load.4, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %6, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 50), align 8, !tbaa !5
  %wide.load.5 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 22), align 8, !tbaa !5
  %7 = xor <4 x i32> %wide.load.5, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %7, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 54), align 8, !tbaa !5
  %wide.load.6 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 26), align 8, !tbaa !5
  %8 = xor <4 x i32> %wide.load.6, <i32 -1742489888, i32 -1742489888, i32 -1742489888, i32 -1742489888>
  store <4 x i32> %8, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 58), align 8, !tbaa !5
  %.pre.i.pre = load i32, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 30), align 8, !tbaa !5
  %xor4.5.i = xor i32 %.pre.i.pre, -1742489888
  store i32 %xor4.5.i, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 62), align 8, !tbaa !5
  %.pre.i.pre.1 = load i32, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 31), align 4, !tbaa !5
  %xor4.5.i.1 = xor i32 %.pre.i.pre.1, -1742489888
  store i32 %xor4.5.i.1, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 63), align 4, !tbaa !5
  %wide.load61 = load <4 x i32>, ptr @crc32table_be, align 16, !tbaa !5
  %9 = xor <4 x i32> %wide.load61, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %9, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 64), align 16, !tbaa !5
  %wide.load61.1 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 4), align 16, !tbaa !5
  %10 = xor <4 x i32> %wide.load61.1, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %10, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 68), align 16, !tbaa !5
  %wide.load61.2 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 8), align 16, !tbaa !5
  %11 = xor <4 x i32> %wide.load61.2, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %11, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 72), align 16, !tbaa !5
  %wide.load61.3 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 12), align 16, !tbaa !5
  %12 = xor <4 x i32> %wide.load61.3, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %12, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 76), align 16, !tbaa !5
  %wide.load61.4 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 16), align 16, !tbaa !5
  %13 = xor <4 x i32> %wide.load61.4, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %13, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 80), align 16, !tbaa !5
  %wide.load61.5 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 20), align 16, !tbaa !5
  %14 = xor <4 x i32> %wide.load61.5, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %14, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 84), align 16, !tbaa !5
  %wide.load61.6 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 24), align 16, !tbaa !5
  %15 = xor <4 x i32> %wide.load61.6, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %15, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 88), align 16, !tbaa !5
  %wide.load61.7 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 28), align 16, !tbaa !5
  %16 = xor <4 x i32> %wide.load61.7, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %16, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 92), align 16, !tbaa !5
  %wide.load61.8 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 32), align 16, !tbaa !5
  %17 = xor <4 x i32> %wide.load61.8, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %17, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 96), align 16, !tbaa !5
  %wide.load61.9 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 36), align 16, !tbaa !5
  %18 = xor <4 x i32> %wide.load61.9, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %18, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 100), align 16, !tbaa !5
  %wide.load61.10 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 40), align 16, !tbaa !5
  %19 = xor <4 x i32> %wide.load61.10, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %19, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 104), align 16, !tbaa !5
  %wide.load61.11 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 44), align 16, !tbaa !5
  %20 = xor <4 x i32> %wide.load61.11, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %20, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 108), align 16, !tbaa !5
  %wide.load61.12 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 48), align 16, !tbaa !5
  %21 = xor <4 x i32> %wide.load61.12, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %21, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 112), align 16, !tbaa !5
  %wide.load61.13 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 52), align 16, !tbaa !5
  %22 = xor <4 x i32> %wide.load61.13, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %22, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 116), align 16, !tbaa !5
  %wide.load61.14 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 56), align 16, !tbaa !5
  %23 = xor <4 x i32> %wide.load61.14, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %23, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 120), align 16, !tbaa !5
  %wide.load61.15 = load <4 x i32>, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 60), align 16, !tbaa !5
  %24 = xor <4 x i32> %wide.load61.15, <i32 881225847, i32 881225847, i32 881225847, i32 881225847>
  store <4 x i32> %24, ptr getelementptr inbounds ([8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 0, i64 124), align 16, !tbaa !5
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %output_table.exit
  %index69 = phi i64 [ 0, %output_table.exit ], [ %index.next71.1, %vector.body68 ]
  %25 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %index69
  %wide.load70 = load <4 x i32>, ptr %25, align 16, !tbaa !5
  %26 = xor <4 x i32> %wide.load70, <i32 1762451694, i32 1762451694, i32 1762451694, i32 1762451694>
  %27 = add nuw nsw i64 %index69, 128
  %28 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %27
  store <4 x i32> %26, ptr %28, align 16, !tbaa !5
  %index.next71 = or i64 %index69, 4
  %29 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %index.next71
  %wide.load70.1 = load <4 x i32>, ptr %29, align 16, !tbaa !5
  %30 = xor <4 x i32> %wide.load70.1, <i32 1762451694, i32 1762451694, i32 1762451694, i32 1762451694>
  %31 = add nuw nsw i64 %index69, 132
  %32 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %31
  store <4 x i32> %30, ptr %32, align 16, !tbaa !5
  %index.next71.1 = add nuw nsw i64 %index69, 8
  %33 = icmp eq i64 %index.next71.1, 128
  br i1 %33, label %for.body12.i, label %vector.body68, !llvm.loop !9

for.body12.i:                                     ; preds = %for.body12.i, %vector.body68
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.body12.i ], [ 0, %vector.body68 ]
  %arrayidx14.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %indvars.iv64.i
  %34 = load i32, ptr %arrayidx14.i, align 4, !tbaa !5
  %shr.i = lshr i32 %34, 24
  %idxprom19.i = zext i32 %shr.i to i64
  %arrayidx20.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.i
  %35 = load i32, ptr %arrayidx20.i, align 4, !tbaa !5
  %shl21.i = shl i32 %34, 8
  %xor22.i = xor i32 %35, %shl21.i
  %arrayidx26.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 1, i64 %indvars.iv64.i
  store i32 %xor22.i, ptr %arrayidx26.i, align 4, !tbaa !5
  %shr.1.i = lshr i32 %xor22.i, 24
  %idxprom19.1.i = zext i32 %shr.1.i to i64
  %arrayidx20.1.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.1.i
  %36 = load i32, ptr %arrayidx20.1.i, align 4, !tbaa !5
  %shl21.1.i = shl i32 %xor22.i, 8
  %xor22.1.i = xor i32 %36, %shl21.1.i
  %arrayidx26.1.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 2, i64 %indvars.iv64.i
  store i32 %xor22.1.i, ptr %arrayidx26.1.i, align 4, !tbaa !5
  %shr.2.i = lshr i32 %xor22.1.i, 24
  %idxprom19.2.i = zext i32 %shr.2.i to i64
  %arrayidx20.2.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.2.i
  %37 = load i32, ptr %arrayidx20.2.i, align 4, !tbaa !5
  %shl21.2.i = shl i32 %xor22.1.i, 8
  %xor22.2.i = xor i32 %37, %shl21.2.i
  %arrayidx26.2.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 3, i64 %indvars.iv64.i
  store i32 %xor22.2.i, ptr %arrayidx26.2.i, align 4, !tbaa !5
  %shr.3.i = lshr i32 %xor22.2.i, 24
  %idxprom19.3.i = zext i32 %shr.3.i to i64
  %arrayidx20.3.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.3.i
  %38 = load i32, ptr %arrayidx20.3.i, align 4, !tbaa !5
  %shl21.3.i = shl i32 %xor22.2.i, 8
  %xor22.3.i = xor i32 %38, %shl21.3.i
  %arrayidx26.3.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 4, i64 %indvars.iv64.i
  store i32 %xor22.3.i, ptr %arrayidx26.3.i, align 4, !tbaa !5
  %shr.4.i = lshr i32 %xor22.3.i, 24
  %idxprom19.4.i = zext i32 %shr.4.i to i64
  %arrayidx20.4.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.4.i
  %39 = load i32, ptr %arrayidx20.4.i, align 4, !tbaa !5
  %shl21.4.i = shl i32 %xor22.3.i, 8
  %xor22.4.i = xor i32 %39, %shl21.4.i
  %arrayidx26.4.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 5, i64 %indvars.iv64.i
  store i32 %xor22.4.i, ptr %arrayidx26.4.i, align 4, !tbaa !5
  %shr.5.i = lshr i32 %xor22.4.i, 24
  %idxprom19.5.i = zext i32 %shr.5.i to i64
  %arrayidx20.5.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.5.i
  %40 = load i32, ptr %arrayidx20.5.i, align 4, !tbaa !5
  %shl21.5.i = shl i32 %xor22.4.i, 8
  %xor22.5.i = xor i32 %40, %shl21.5.i
  %arrayidx26.5.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 6, i64 %indvars.iv64.i
  store i32 %xor22.5.i, ptr %arrayidx26.5.i, align 4, !tbaa !5
  %shr.6.i = lshr i32 %xor22.5.i, 24
  %idxprom19.6.i = zext i32 %shr.6.i to i64
  %arrayidx20.6.i = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 0, i64 %idxprom19.6.i
  %41 = load i32, ptr %arrayidx20.6.i, align 4, !tbaa !5
  %shl21.6.i = shl i32 %xor22.5.i, 8
  %xor22.6.i = xor i32 %41, %shl21.6.i
  %arrayidx26.6.i = getelementptr inbounds [8 x [256 x i32]], ptr @crc32table_be, i64 0, i64 7, i64 %indvars.iv64.i
  store i32 %xor22.6.i, ptr %arrayidx26.6.i, align 4, !tbaa !5
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.next65.i, 256
  br i1 %exitcond.not.i10, label %crc32init_be.exit, label %for.body12.i

crc32init_be.exit:                                ; preds = %for.body12.i
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef 256)
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.end.i29, %crc32init_be.exit
  %indvars.iv5.i11 = phi i64 [ 0, %crc32init_be.exit ], [ %indvars.iv.next6.i27, %for.end.i29 ]
  %putchar.i12 = tail call i32 @putchar(i32 123) #4
  br label %for.body3.i17

for.body3.i17:                                    ; preds = %if.end.i24, %for.body.i13
  %indvars.iv.i14 = phi i64 [ 0, %for.body.i13 ], [ %indvars.iv.next.i22, %if.end.i24 ]
  %rem9.i15 = and i64 %indvars.iv.i14, 3
  %cmp4.i16 = icmp eq i64 %rem9.i15, 0
  br i1 %cmp4.i16, label %if.then.i19, label %if.end.i24

if.then.i19:                                      ; preds = %for.body3.i17
  %putchar1.i18 = tail call i32 @putchar(i32 10) #4
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i19, %for.body3.i17
  %arrayidx7.i20 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 %indvars.iv5.i11, i64 %indvars.iv.i14
  %42 = load i32, ptr %arrayidx7.i20, align 4, !tbaa !5
  %call8.i21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %42) #4
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i14, 1
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 255
  br i1 %exitcond.not.i23, label %for.end.i29, label %for.body3.i17

for.end.i29:                                      ; preds = %if.end.i24
  %arrayidx13.i25 = getelementptr inbounds [256 x i32], ptr @crc32table_be, i64 %indvars.iv5.i11, i64 255
  %43 = load i32, ptr %arrayidx13.i25, align 4, !tbaa !5
  %call14.i26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %43) #4
  %indvars.iv.next6.i27 = add nuw nsw i64 %indvars.iv5.i11, 1
  %exitcond8.not.i28 = icmp eq i64 %indvars.iv.next6.i27, 8
  br i1 %exitcond8.not.i28, label %output_table.exit30, label %for.body.i13

output_table.exit30:                              ; preds = %for.end.i29
  %puts8 = tail call i32 @puts(ptr nonnull @str.13)
  tail call fastcc void @crc32init_le_generic(i32 noundef -2097792136, ptr noundef nonnull @crc32ctable_le) #4
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef 8, i32 noundef 256)
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.end.i49, %output_table.exit30
  %indvars.iv5.i31 = phi i64 [ 0, %output_table.exit30 ], [ %indvars.iv.next6.i47, %for.end.i49 ]
  %putchar.i32 = tail call i32 @putchar(i32 123) #4
  br label %for.body3.i37

for.body3.i37:                                    ; preds = %if.end.i44, %for.body.i33
  %indvars.iv.i34 = phi i64 [ 0, %for.body.i33 ], [ %indvars.iv.next.i42, %if.end.i44 ]
  %rem9.i35 = and i64 %indvars.iv.i34, 3
  %cmp4.i36 = icmp eq i64 %rem9.i35, 0
  br i1 %cmp4.i36, label %if.then.i39, label %if.end.i44

if.then.i39:                                      ; preds = %for.body3.i37
  %putchar1.i38 = tail call i32 @putchar(i32 10) #4
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.then.i39, %for.body3.i37
  %arrayidx7.i40 = getelementptr inbounds [256 x i32], ptr @crc32ctable_le, i64 %indvars.iv5.i31, i64 %indvars.iv.i34
  %44 = load i32, ptr %arrayidx7.i40, align 4, !tbaa !5
  %call8.i41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %44) #4
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i34, 1
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, 255
  br i1 %exitcond.not.i43, label %for.end.i49, label %for.body3.i37

for.end.i49:                                      ; preds = %if.end.i44
  %arrayidx13.i45 = getelementptr inbounds [256 x i32], ptr @crc32ctable_le, i64 %indvars.iv5.i31, i64 255
  %45 = load i32, ptr %arrayidx13.i45, align 4, !tbaa !5
  %call14.i46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef %45) #4
  %indvars.iv.next6.i47 = add nuw nsw i64 %indvars.iv5.i31, 1
  %exitcond8.not.i48 = icmp eq i64 %indvars.iv.next6.i47, 8
  br i1 %exitcond8.not.i48, label %output_table.exit50, label %for.body.i33

output_table.exit50:                              ; preds = %for.end.i49
  %puts9 = tail call i32 @puts(ptr nonnull @str.13)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal fastcc void @crc32init_le_generic(i32 noundef %polynomial, ptr nocapture noundef %tab) unnamed_addr #2 {
entry:
  store i32 0, ptr %tab, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 128
  store i32 %polynomial, ptr %arrayidx10, align 4, !tbaa !5
  %shr.1 = lshr i32 %polynomial, 1
  %and.1 = and i32 %polynomial, 1
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  %cond.1 = select i1 %tobool2.not.1, i32 0, i32 %polynomial
  %xor.1 = xor i32 %cond.1, %shr.1
  %arrayidx10.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 64
  store i32 %xor.1, ptr %arrayidx10.1, align 4, !tbaa !5
  %xor7.1.1 = xor i32 %xor.1, %polynomial
  %arrayidx10.1.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 192
  store i32 %xor7.1.1, ptr %arrayidx10.1.1, align 4, !tbaa !5
  %shr.2 = lshr i32 %xor.1, 1
  %and.2 = and i32 %xor.1, 1
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  %cond.2 = select i1 %tobool2.not.2, i32 0, i32 %polynomial
  %xor.2 = xor i32 %cond.2, %shr.2
  %arrayidx10.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 32
  store i32 %xor.2, ptr %arrayidx10.2, align 4, !tbaa !5
  %xor7.2.1 = xor i32 %xor.1, %xor.2
  %arrayidx10.2.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 96
  store i32 %xor7.2.1, ptr %arrayidx10.2.1, align 4, !tbaa !5
  %xor7.2.2 = xor i32 %xor.2, %polynomial
  %arrayidx10.2.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 160
  store i32 %xor7.2.2, ptr %arrayidx10.2.2, align 4, !tbaa !5
  %xor7.2.3 = xor i32 %xor7.1.1, %xor.2
  %arrayidx10.2.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 224
  store i32 %xor7.2.3, ptr %arrayidx10.2.3, align 4, !tbaa !5
  %shr.3 = lshr i32 %xor.2, 1
  %and.3 = and i32 %xor.2, 1
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  %cond.3 = select i1 %tobool2.not.3, i32 0, i32 %polynomial
  %xor.3 = xor i32 %cond.3, %shr.3
  %arrayidx10.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 16
  store i32 %xor.3, ptr %arrayidx10.3, align 4, !tbaa !5
  %xor7.3.1 = xor i32 %xor.2, %xor.3
  %arrayidx10.3.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 48
  store i32 %xor7.3.1, ptr %arrayidx10.3.1, align 4, !tbaa !5
  %xor7.3.2 = xor i32 %xor.1, %xor.3
  %arrayidx10.3.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 80
  store i32 %xor7.3.2, ptr %arrayidx10.3.2, align 4, !tbaa !5
  %xor7.3.3 = xor i32 %xor7.2.1, %xor.3
  %arrayidx10.3.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 112
  store i32 %xor7.3.3, ptr %arrayidx10.3.3, align 4, !tbaa !5
  %xor7.3.4 = xor i32 %xor.3, %polynomial
  %arrayidx10.3.4 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 144
  store i32 %xor7.3.4, ptr %arrayidx10.3.4, align 4, !tbaa !5
  %xor7.3.5 = xor i32 %xor7.2.2, %xor.3
  %arrayidx10.3.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 176
  store i32 %xor7.3.5, ptr %arrayidx10.3.5, align 4, !tbaa !5
  %xor7.3.6 = xor i32 %xor7.1.1, %xor.3
  %arrayidx10.3.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 208
  store i32 %xor7.3.6, ptr %arrayidx10.3.6, align 4, !tbaa !5
  %xor7.3.7 = xor i32 %xor7.2.3, %xor.3
  %arrayidx10.3.7 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 240
  store i32 %xor7.3.7, ptr %arrayidx10.3.7, align 4, !tbaa !5
  %shr.4 = lshr i32 %xor.3, 1
  %and.4 = and i32 %xor.3, 1
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  %cond.4 = select i1 %tobool2.not.4, i32 0, i32 %polynomial
  %xor.4 = xor i32 %cond.4, %shr.4
  %arrayidx10.4 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 8
  store i32 %xor.4, ptr %arrayidx10.4, align 4, !tbaa !5
  %xor7.4.1 = xor i32 %xor.3, %xor.4
  %arrayidx10.4.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 24
  store i32 %xor7.4.1, ptr %arrayidx10.4.1, align 4, !tbaa !5
  %xor7.4.2 = xor i32 %xor.2, %xor.4
  %arrayidx10.4.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 40
  store i32 %xor7.4.2, ptr %arrayidx10.4.2, align 4, !tbaa !5
  %xor7.4.3 = xor i32 %xor7.3.1, %xor.4
  %arrayidx10.4.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 56
  store i32 %xor7.4.3, ptr %arrayidx10.4.3, align 4, !tbaa !5
  %xor7.4.4 = xor i32 %xor.1, %xor.4
  %arrayidx10.4.4 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 72
  store i32 %xor7.4.4, ptr %arrayidx10.4.4, align 4, !tbaa !5
  %xor7.4.5 = xor i32 %xor7.3.2, %xor.4
  %arrayidx10.4.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 88
  store i32 %xor7.4.5, ptr %arrayidx10.4.5, align 4, !tbaa !5
  %xor7.4.6 = xor i32 %xor7.2.1, %xor.4
  %arrayidx10.4.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 104
  store i32 %xor7.4.6, ptr %arrayidx10.4.6, align 4, !tbaa !5
  %xor7.4.7 = xor i32 %xor7.3.3, %xor.4
  %arrayidx10.4.7 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 120
  store i32 %xor7.4.7, ptr %arrayidx10.4.7, align 4, !tbaa !5
  %xor7.4.8 = xor i32 %xor.4, %polynomial
  %arrayidx10.4.8 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 136
  store i32 %xor7.4.8, ptr %arrayidx10.4.8, align 4, !tbaa !5
  %xor7.4.9 = xor i32 %xor7.3.4, %xor.4
  %arrayidx10.4.9 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 152
  store i32 %xor7.4.9, ptr %arrayidx10.4.9, align 4, !tbaa !5
  %xor7.4.10 = xor i32 %xor7.2.2, %xor.4
  %arrayidx10.4.10 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 168
  store i32 %xor7.4.10, ptr %arrayidx10.4.10, align 4, !tbaa !5
  %xor7.4.11 = xor i32 %xor7.3.5, %xor.4
  %arrayidx10.4.11 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 184
  store i32 %xor7.4.11, ptr %arrayidx10.4.11, align 4, !tbaa !5
  %xor7.4.12 = xor i32 %xor7.1.1, %xor.4
  %arrayidx10.4.12 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 200
  store i32 %xor7.4.12, ptr %arrayidx10.4.12, align 4, !tbaa !5
  %xor7.4.13 = xor i32 %xor7.3.6, %xor.4
  %arrayidx10.4.13 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 216
  store i32 %xor7.4.13, ptr %arrayidx10.4.13, align 4, !tbaa !5
  %xor7.4.14 = xor i32 %xor7.2.3, %xor.4
  %arrayidx10.4.14 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 232
  store i32 %xor7.4.14, ptr %arrayidx10.4.14, align 4, !tbaa !5
  %xor7.4.15 = xor i32 %xor7.3.7, %xor.4
  %arrayidx10.4.15 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 248
  store i32 %xor7.4.15, ptr %arrayidx10.4.15, align 4, !tbaa !5
  %shr.5 = lshr i32 %xor.4, 1
  %and.5 = and i32 %xor.4, 1
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  %cond.5 = select i1 %tobool2.not.5, i32 0, i32 %polynomial
  %xor.5 = xor i32 %cond.5, %shr.5
  br label %for.body4.5

for.body4.5:                                      ; preds = %for.body4.5, %entry
  %indvars.iv.5 = phi i64 [ 0, %entry ], [ %indvars.iv.next.5.3, %for.body4.5 ]
  %arrayidx6.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.5
  %0 = load i32, ptr %arrayidx6.5, align 4, !tbaa !5
  %xor7.5 = xor i32 %0, %xor.5
  %1 = or i64 %indvars.iv.5, 4
  %arrayidx10.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %1
  store i32 %xor7.5, ptr %arrayidx10.5, align 4, !tbaa !5
  %indvars.iv.next.5 = or i64 %indvars.iv.5, 8
  %arrayidx6.5.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.5
  %2 = load i32, ptr %arrayidx6.5.1, align 4, !tbaa !5
  %xor7.5.1 = xor i32 %2, %xor.5
  %3 = or i64 %indvars.iv.5, 12
  %arrayidx10.5.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %3
  store i32 %xor7.5.1, ptr %arrayidx10.5.1, align 4, !tbaa !5
  %indvars.iv.next.5.1 = or i64 %indvars.iv.5, 16
  %arrayidx6.5.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.5.1
  %4 = load i32, ptr %arrayidx6.5.2, align 4, !tbaa !5
  %xor7.5.2 = xor i32 %4, %xor.5
  %5 = or i64 %indvars.iv.5, 20
  %arrayidx10.5.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %5
  store i32 %xor7.5.2, ptr %arrayidx10.5.2, align 4, !tbaa !5
  %indvars.iv.next.5.2 = or i64 %indvars.iv.5, 24
  %arrayidx6.5.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.5.2
  %6 = load i32, ptr %arrayidx6.5.3, align 4, !tbaa !5
  %xor7.5.3 = xor i32 %6, %xor.5
  %7 = or i64 %indvars.iv.5, 28
  %arrayidx10.5.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %7
  store i32 %xor7.5.3, ptr %arrayidx10.5.3, align 4, !tbaa !5
  %indvars.iv.next.5.3 = add nuw nsw i64 %indvars.iv.5, 32
  %cmp.5.3 = icmp ult i64 %indvars.iv.next.5.2, 248
  br i1 %cmp.5.3, label %for.body4.5, label %for.inc12.5

for.inc12.5:                                      ; preds = %for.body4.5
  %shr.6 = lshr i32 %xor.5, 1
  %and.6 = and i32 %xor.5, 1
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  %cond.6 = select i1 %tobool2.not.6, i32 0, i32 %polynomial
  %xor.6 = xor i32 %cond.6, %shr.6
  br label %for.body4.6

for.body4.6:                                      ; preds = %for.body4.6, %for.inc12.5
  %indvars.iv.6 = phi i64 [ 0, %for.inc12.5 ], [ %indvars.iv.next.6.3, %for.body4.6 ]
  %arrayidx6.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.6
  %8 = load i32, ptr %arrayidx6.6, align 4, !tbaa !5
  %xor7.6 = xor i32 %8, %xor.6
  %9 = or i64 %indvars.iv.6, 2
  %arrayidx10.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %9
  store i32 %xor7.6, ptr %arrayidx10.6, align 4, !tbaa !5
  %indvars.iv.next.6 = or i64 %indvars.iv.6, 4
  %arrayidx6.6.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.6
  %10 = load i32, ptr %arrayidx6.6.1, align 4, !tbaa !5
  %xor7.6.1 = xor i32 %10, %xor.6
  %11 = or i64 %indvars.iv.6, 6
  %arrayidx10.6.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %11
  store i32 %xor7.6.1, ptr %arrayidx10.6.1, align 4, !tbaa !5
  %indvars.iv.next.6.1 = or i64 %indvars.iv.6, 8
  %arrayidx6.6.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.6.1
  %12 = load i32, ptr %arrayidx6.6.2, align 4, !tbaa !5
  %xor7.6.2 = xor i32 %12, %xor.6
  %13 = or i64 %indvars.iv.6, 10
  %arrayidx10.6.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %13
  store i32 %xor7.6.2, ptr %arrayidx10.6.2, align 4, !tbaa !5
  %indvars.iv.next.6.2 = or i64 %indvars.iv.6, 12
  %arrayidx6.6.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.6.2
  %14 = load i32, ptr %arrayidx6.6.3, align 4, !tbaa !5
  %xor7.6.3 = xor i32 %14, %xor.6
  %15 = or i64 %indvars.iv.6, 14
  %arrayidx10.6.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %15
  store i32 %xor7.6.3, ptr %arrayidx10.6.3, align 4, !tbaa !5
  %indvars.iv.next.6.3 = add nuw nsw i64 %indvars.iv.6, 16
  %cmp.6.3 = icmp ult i64 %indvars.iv.next.6.2, 252
  br i1 %cmp.6.3, label %for.body4.6, label %for.inc12.6

for.inc12.6:                                      ; preds = %for.body4.6
  %shr.7 = lshr i32 %xor.6, 1
  %and.7 = and i32 %xor.6, 1
  %tobool2.not.7 = icmp eq i32 %and.7, 0
  %cond.7 = select i1 %tobool2.not.7, i32 0, i32 %polynomial
  %xor.7 = xor i32 %cond.7, %shr.7
  br label %for.body4.7

for.body4.7:                                      ; preds = %for.body4.7, %for.inc12.6
  %indvars.iv.7 = phi i64 [ 0, %for.inc12.6 ], [ %indvars.iv.next.7.3, %for.body4.7 ]
  %arrayidx6.7 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.7
  %16 = load i32, ptr %arrayidx6.7, align 4, !tbaa !5
  %xor7.7 = xor i32 %16, %xor.7
  %17 = or i64 %indvars.iv.7, 1
  %arrayidx10.7 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %17
  store i32 %xor7.7, ptr %arrayidx10.7, align 4, !tbaa !5
  %indvars.iv.next.7 = or i64 %indvars.iv.7, 2
  %arrayidx6.7.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.7
  %18 = load i32, ptr %arrayidx6.7.1, align 4, !tbaa !5
  %xor7.7.1 = xor i32 %18, %xor.7
  %19 = or i64 %indvars.iv.7, 3
  %arrayidx10.7.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %19
  store i32 %xor7.7.1, ptr %arrayidx10.7.1, align 4, !tbaa !5
  %indvars.iv.next.7.1 = or i64 %indvars.iv.7, 4
  %arrayidx6.7.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.7.1
  %20 = load i32, ptr %arrayidx6.7.2, align 4, !tbaa !5
  %xor7.7.2 = xor i32 %20, %xor.7
  %21 = or i64 %indvars.iv.7, 5
  %arrayidx10.7.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %21
  store i32 %xor7.7.2, ptr %arrayidx10.7.2, align 4, !tbaa !5
  %indvars.iv.next.7.2 = or i64 %indvars.iv.7, 6
  %arrayidx6.7.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv.next.7.2
  %22 = load i32, ptr %arrayidx6.7.3, align 4, !tbaa !5
  %xor7.7.3 = xor i32 %22, %xor.7
  %23 = or i64 %indvars.iv.7, 7
  %arrayidx10.7.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %23
  store i32 %xor7.7.3, ptr %arrayidx10.7.3, align 4, !tbaa !5
  %indvars.iv.next.7.3 = add nuw nsw i64 %indvars.iv.7, 8
  %cmp.7.3 = icmp ult i64 %indvars.iv.next.7.2, 254
  br i1 %cmp.7.3, label %for.body4.7, label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body4.7
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body17 ], [ 0, %for.body4.7 ]
  %arrayidx20 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %indvars.iv73
  %24 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %and25 = and i32 %24, 255
  %idxprom26 = zext i32 %and25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26
  %25 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %shr28 = lshr i32 %24, 8
  %xor29 = xor i32 %25, %shr28
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr %tab, i64 1, i64 %indvars.iv73
  store i32 %xor29, ptr %arrayidx33, align 4, !tbaa !5
  %and25.1 = and i32 %xor29, 255
  %idxprom26.1 = zext i32 %and25.1 to i64
  %arrayidx27.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.1
  %26 = load i32, ptr %arrayidx27.1, align 4, !tbaa !5
  %shr28.1 = lshr i32 %xor29, 8
  %xor29.1 = xor i32 %26, %shr28.1
  %arrayidx33.1 = getelementptr inbounds [256 x i32], ptr %tab, i64 2, i64 %indvars.iv73
  store i32 %xor29.1, ptr %arrayidx33.1, align 4, !tbaa !5
  %and25.2 = and i32 %xor29.1, 255
  %idxprom26.2 = zext i32 %and25.2 to i64
  %arrayidx27.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.2
  %27 = load i32, ptr %arrayidx27.2, align 4, !tbaa !5
  %shr28.2 = lshr i32 %xor29.1, 8
  %xor29.2 = xor i32 %27, %shr28.2
  %arrayidx33.2 = getelementptr inbounds [256 x i32], ptr %tab, i64 3, i64 %indvars.iv73
  store i32 %xor29.2, ptr %arrayidx33.2, align 4, !tbaa !5
  %and25.3 = and i32 %xor29.2, 255
  %idxprom26.3 = zext i32 %and25.3 to i64
  %arrayidx27.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.3
  %28 = load i32, ptr %arrayidx27.3, align 4, !tbaa !5
  %shr28.3 = lshr i32 %xor29.2, 8
  %xor29.3 = xor i32 %28, %shr28.3
  %arrayidx33.3 = getelementptr inbounds [256 x i32], ptr %tab, i64 4, i64 %indvars.iv73
  store i32 %xor29.3, ptr %arrayidx33.3, align 4, !tbaa !5
  %and25.4 = and i32 %xor29.3, 255
  %idxprom26.4 = zext i32 %and25.4 to i64
  %arrayidx27.4 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.4
  %29 = load i32, ptr %arrayidx27.4, align 4, !tbaa !5
  %shr28.4 = lshr i32 %xor29.3, 8
  %xor29.4 = xor i32 %29, %shr28.4
  %arrayidx33.4 = getelementptr inbounds [256 x i32], ptr %tab, i64 5, i64 %indvars.iv73
  store i32 %xor29.4, ptr %arrayidx33.4, align 4, !tbaa !5
  %and25.5 = and i32 %xor29.4, 255
  %idxprom26.5 = zext i32 %and25.5 to i64
  %arrayidx27.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.5
  %30 = load i32, ptr %arrayidx27.5, align 4, !tbaa !5
  %shr28.5 = lshr i32 %xor29.4, 8
  %xor29.5 = xor i32 %30, %shr28.5
  %arrayidx33.5 = getelementptr inbounds [256 x i32], ptr %tab, i64 6, i64 %indvars.iv73
  store i32 %xor29.5, ptr %arrayidx33.5, align 4, !tbaa !5
  %and25.6 = and i32 %xor29.5, 255
  %idxprom26.6 = zext i32 %and25.6 to i64
  %arrayidx27.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 0, i64 %idxprom26.6
  %31 = load i32, ptr %arrayidx27.6, align 4, !tbaa !5
  %shr28.6 = lshr i32 %xor29.5, 8
  %xor29.6 = xor i32 %31, %shr28.6
  %arrayidx33.6 = getelementptr inbounds [256 x i32], ptr %tab, i64 7, i64 %indvars.iv73
  store i32 %xor29.6, ptr %arrayidx33.6, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next74, 256
  br i1 %exitcond.not, label %for.end38, label %for.body17

for.end38:                                        ; preds = %for.body17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
