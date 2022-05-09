; ModuleID = '/llk/IR_all_yes/lib/raid6/mktables.c_pt.bc'
source_filename = "../lib/raid6/mktables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0x%02x,%c\00", align 1
@str = private unnamed_addr constant [26 x i8] c"#include <linux/export.h>\00", align 1
@str.22 = private unnamed_addr constant [27 x i8] c"#include <linux/raid/pq.h>\00", align 1
@str.23 = private unnamed_addr constant [67 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_gfmul[256][256] =\0A{\00", align 1
@str.26 = private unnamed_addr constant [28 x i8] c"EXPORT_SYMBOL(raid6_gfmul);\00", align 1
@str.28 = private unnamed_addr constant [67 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_vgfmul[256][32] =\0A{\00", align 1
@str.31 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_vgfmul);\00", align 1
@str.33 = private unnamed_addr constant [61 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexp[256] =\0A{\00", align 1
@str.36 = private unnamed_addr constant [28 x i8] c"EXPORT_SYMBOL(raid6_gfexp);\00", align 1
@str.38 = private unnamed_addr constant [61 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gflog[256] =\0A{\00", align 1
@str.41 = private unnamed_addr constant [28 x i8] c"EXPORT_SYMBOL(raid6_gflog);\00", align 1
@str.43 = private unnamed_addr constant [61 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfinv[256] =\0A{\00", align 1
@str.46 = private unnamed_addr constant [28 x i8] c"EXPORT_SYMBOL(raid6_gfinv);\00", align 1
@str.48 = private unnamed_addr constant [61 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexi[256] =\0A{\00", align 1
@str.49 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@str.50 = private unnamed_addr constant [18 x i8] c"#ifdef __KERNEL__\00", align 1
@str.51 = private unnamed_addr constant [28 x i8] c"EXPORT_SYMBOL(raid6_gfexi);\00", align 1
@str.52 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@str.55 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@str.56 = private unnamed_addr constant [4 x i8] c"\09},\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %exptbl = alloca [256 x i8], align 16
  %invtbl = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %exptbl) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %invtbl) #4
  %puts = tail call i32 @puts(ptr nonnull @str)
  %puts287 = tail call i32 @puts(ptr nonnull @str.22)
  %puts288 = tail call i32 @puts(ptr nonnull @str.23)
  br label %for.body

for.body:                                         ; preds = %for.end19, %entry
  %i.0375 = phi i32 [ 0, %entry ], [ %inc22, %for.end19 ]
  %puts323 = tail call i32 @puts(ptr nonnull @str.55)
  %conv = trunc i32 %i.0375 to i8
  br label %for.body6

for.body6:                                        ; preds = %for.inc17, %for.body
  %j.0374 = phi i32 [ 0, %for.body ], [ %add18, %for.inc17 ]
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4)
  br label %for.body10

for.body10:                                       ; preds = %gfmul.exit, %for.body6
  %k.0373 = phi i32 [ 0, %for.body6 ], [ %inc, %gfmul.exit ]
  %add = add nuw nsw i32 %k.0373, %j.0374
  %conv11 = trunc i32 %add to i8
  %tobool.not19.i = icmp eq i8 %conv11, 0
  br i1 %tobool.not19.i, label %gfmul.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %for.body10
  %v.022.i = phi i8 [ %spec.select.i, %while.body.i ], [ 0, %for.body10 ]
  %b.addr.021.i = phi i8 [ %1, %while.body.i ], [ %conv11, %for.body10 ]
  %a.addr.020.i = phi i8 [ %xor9.i, %while.body.i ], [ %conv, %for.body10 ]
  %0 = and i8 %b.addr.021.i, 1
  %tobool1.not.i = icmp eq i8 %0, 0
  %xor18.i = select i1 %tobool1.not.i, i8 0, i8 %a.addr.020.i
  %spec.select.i = xor i8 %xor18.i, %v.022.i
  %shl.i = shl i8 %a.addr.020.i, 1
  %tobool8.not.inv.i = icmp slt i8 %a.addr.020.i, 0
  %cond.i = select i1 %tobool8.not.inv.i, i8 29, i8 0
  %xor9.i = xor i8 %cond.i, %shl.i
  %1 = lshr i8 %b.addr.021.i, 1
  %tobool.not.i = icmp ult i8 %b.addr.021.i, 2
  br i1 %tobool.not.i, label %gfmul.exit, label %while.body.i

gfmul.exit:                                       ; preds = %while.body.i, %for.body10
  %v.0.lcssa.i = phi i8 [ 0, %for.body10 ], [ %spec.select.i, %while.body.i ]
  %conv13 = zext i8 %v.0.lcssa.i to i32
  %cmp14 = icmp eq i32 %k.0373, 7
  %cond = select i1 %cmp14, i32 10, i32 32
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv13, i32 noundef %cond)
  %inc = add nuw nsw i32 %k.0373, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc17, label %for.body10

for.inc17:                                        ; preds = %gfmul.exit
  %add18 = add nuw nsw i32 %j.0374, 8
  %cmp5 = icmp ult i32 %j.0374, 248
  br i1 %cmp5, label %for.body6, label %for.end19

for.end19:                                        ; preds = %for.inc17
  %puts324 = tail call i32 @puts(ptr nonnull @str.56)
  %inc22 = add nuw nsw i32 %i.0375, 1
  %exitcond392.not = icmp eq i32 %inc22, 256
  br i1 %exitcond392.not, label %for.end23, label %for.body

for.end23:                                        ; preds = %for.end19
  %puts289 = tail call i32 @puts(ptr nonnull @str.49)
  %puts290 = tail call i32 @puts(ptr nonnull @str.50)
  %puts291 = tail call i32 @puts(ptr nonnull @str.26)
  %puts292 = tail call i32 @puts(ptr nonnull @str.52)
  %puts293 = tail call i32 @puts(ptr nonnull @str.28)
  br label %for.body32

for.body32:                                       ; preds = %for.inc79.1, %for.end23
  %i.1380 = phi i32 [ 0, %for.end23 ], [ %inc84, %for.inc79.1 ]
  %puts321 = tail call i32 @puts(ptr nonnull @str.55)
  %conv43 = trunc i32 %i.1380 to i8
  %call38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4)
  br label %for.body42

for.body42:                                       ; preds = %gfmul.exit339, %for.body32
  %k.1376 = phi i32 [ 0, %for.body32 ], [ %inc53, %gfmul.exit339 ]
  %conv45 = trunc i32 %k.1376 to i8
  %tobool.not19.i325 = icmp eq i8 %conv45, 0
  br i1 %tobool.not19.i325, label %gfmul.exit339, label %while.body.i337

while.body.i337:                                  ; preds = %while.body.i337, %for.body42
  %v.022.i326 = phi i8 [ %spec.select.i331, %while.body.i337 ], [ 0, %for.body42 ]
  %b.addr.021.i327 = phi i8 [ %3, %while.body.i337 ], [ %conv45, %for.body42 ]
  %a.addr.020.i328 = phi i8 [ %xor9.i335, %while.body.i337 ], [ %conv43, %for.body42 ]
  %2 = and i8 %b.addr.021.i327, 1
  %tobool1.not.i329 = icmp eq i8 %2, 0
  %xor18.i330 = select i1 %tobool1.not.i329, i8 0, i8 %a.addr.020.i328
  %spec.select.i331 = xor i8 %xor18.i330, %v.022.i326
  %shl.i332 = shl i8 %a.addr.020.i328, 1
  %tobool8.not.inv.i333 = icmp slt i8 %a.addr.020.i328, 0
  %cond.i334 = select i1 %tobool8.not.inv.i333, i8 29, i8 0
  %xor9.i335 = xor i8 %cond.i334, %shl.i332
  %3 = lshr i8 %b.addr.021.i327, 1
  %tobool.not.i336 = icmp ult i8 %b.addr.021.i327, 2
  br i1 %tobool.not.i336, label %gfmul.exit339, label %while.body.i337

gfmul.exit339:                                    ; preds = %while.body.i337, %for.body42
  %v.0.lcssa.i338 = phi i8 [ 0, %for.body42 ], [ %spec.select.i331, %while.body.i337 ]
  %conv47 = zext i8 %v.0.lcssa.i338 to i32
  %cmp48 = icmp eq i32 %k.1376, 7
  %cond50 = select i1 %cmp48, i32 10, i32 32
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv47, i32 noundef %cond50)
  %inc53 = add nuw nsw i32 %k.1376, 1
  %exitcond393.not = icmp eq i32 %inc53, 8
  br i1 %exitcond393.not, label %for.inc55, label %for.body42

for.inc55:                                        ; preds = %gfmul.exit339
  %call38.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4)
  br label %for.body42.1

for.body42.1:                                     ; preds = %gfmul.exit339.1, %for.inc55
  %k.1376.1 = phi i32 [ 0, %for.inc55 ], [ %inc53.1, %gfmul.exit339.1 ]
  %4 = trunc i32 %k.1376.1 to i8
  %conv45.1 = add i8 %4, 8
  %tobool.not19.i325.1 = icmp eq i8 %conv45.1, 0
  br i1 %tobool.not19.i325.1, label %gfmul.exit339.1, label %while.body.i337.1

while.body.i337.1:                                ; preds = %while.body.i337.1, %for.body42.1
  %v.022.i326.1 = phi i8 [ %spec.select.i331.1, %while.body.i337.1 ], [ 0, %for.body42.1 ]
  %b.addr.021.i327.1 = phi i8 [ %6, %while.body.i337.1 ], [ %conv45.1, %for.body42.1 ]
  %a.addr.020.i328.1 = phi i8 [ %xor9.i335.1, %while.body.i337.1 ], [ %conv43, %for.body42.1 ]
  %5 = and i8 %b.addr.021.i327.1, 1
  %tobool1.not.i329.1 = icmp eq i8 %5, 0
  %xor18.i330.1 = select i1 %tobool1.not.i329.1, i8 0, i8 %a.addr.020.i328.1
  %spec.select.i331.1 = xor i8 %xor18.i330.1, %v.022.i326.1
  %shl.i332.1 = shl i8 %a.addr.020.i328.1, 1
  %tobool8.not.inv.i333.1 = icmp slt i8 %a.addr.020.i328.1, 0
  %cond.i334.1 = select i1 %tobool8.not.inv.i333.1, i8 29, i8 0
  %xor9.i335.1 = xor i8 %cond.i334.1, %shl.i332.1
  %6 = lshr i8 %b.addr.021.i327.1, 1
  %tobool.not.i336.1 = icmp ult i8 %b.addr.021.i327.1, 2
  br i1 %tobool.not.i336.1, label %gfmul.exit339.1, label %while.body.i337.1

gfmul.exit339.1:                                  ; preds = %while.body.i337.1, %for.body42.1
  %v.0.lcssa.i338.1 = phi i8 [ 0, %for.body42.1 ], [ %spec.select.i331.1, %while.body.i337.1 ]
  %conv47.1 = zext i8 %v.0.lcssa.i338.1 to i32
  %cmp48.1 = icmp eq i32 %k.1376.1, 7
  %cond50.1 = select i1 %cmp48.1, i32 10, i32 32
  %call51.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv47.1, i32 noundef %cond50.1)
  %inc53.1 = add nuw nsw i32 %k.1376.1, 1
  %exitcond393.1.not = icmp eq i32 %inc53.1, 8
  br i1 %exitcond393.1.not, label %for.inc55.1, label %for.body42.1

for.inc55.1:                                      ; preds = %gfmul.exit339.1
  %call62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4)
  br label %for.body66

for.body66:                                       ; preds = %gfmul.exit354, %for.inc55.1
  %k.2378 = phi i32 [ 0, %for.inc55.1 ], [ %inc77, %gfmul.exit354 ]
  %add68.tr = trunc i32 %k.2378 to i8
  %conv69 = shl i8 %add68.tr, 4
  %tobool.not19.i340 = icmp eq i8 %conv69, 0
  br i1 %tobool.not19.i340, label %gfmul.exit354, label %while.body.i352

while.body.i352:                                  ; preds = %while.body.i352, %for.body66
  %v.022.i341 = phi i8 [ %spec.select.i346, %while.body.i352 ], [ 0, %for.body66 ]
  %b.addr.021.i342 = phi i8 [ %8, %while.body.i352 ], [ %conv69, %for.body66 ]
  %a.addr.020.i343 = phi i8 [ %xor9.i350, %while.body.i352 ], [ %conv43, %for.body66 ]
  %7 = and i8 %b.addr.021.i342, 1
  %tobool1.not.i344 = icmp eq i8 %7, 0
  %xor18.i345 = select i1 %tobool1.not.i344, i8 0, i8 %a.addr.020.i343
  %spec.select.i346 = xor i8 %xor18.i345, %v.022.i341
  %shl.i347 = shl i8 %a.addr.020.i343, 1
  %tobool8.not.inv.i348 = icmp slt i8 %a.addr.020.i343, 0
  %cond.i349 = select i1 %tobool8.not.inv.i348, i8 29, i8 0
  %xor9.i350 = xor i8 %cond.i349, %shl.i347
  %8 = lshr i8 %b.addr.021.i342, 1
  %tobool.not.i351 = icmp ult i8 %b.addr.021.i342, 2
  br i1 %tobool.not.i351, label %gfmul.exit354, label %while.body.i352

gfmul.exit354:                                    ; preds = %while.body.i352, %for.body66
  %v.0.lcssa.i353 = phi i8 [ 0, %for.body66 ], [ %spec.select.i346, %while.body.i352 ]
  %conv71 = zext i8 %v.0.lcssa.i353 to i32
  %cmp72 = icmp eq i32 %k.2378, 7
  %cond74 = select i1 %cmp72, i32 10, i32 32
  %call75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv71, i32 noundef %cond74)
  %inc77 = add nuw nsw i32 %k.2378, 1
  %exitcond394.not = icmp eq i32 %inc77, 8
  br i1 %exitcond394.not, label %for.inc79, label %for.body66

for.inc79:                                        ; preds = %gfmul.exit354
  %call62.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4)
  br label %for.body66.1

for.body66.1:                                     ; preds = %gfmul.exit354.1, %for.inc79
  %k.2378.1 = phi i32 [ 0, %for.inc79 ], [ %inc77.1, %gfmul.exit354.1 ]
  %9 = trunc i32 %k.2378.1 to i8
  %add68.tr.1 = shl i8 %9, 4
  %conv69.1 = xor i8 %add68.tr.1, -128
  %tobool.not19.i340.1 = icmp eq i8 %conv69.1, 0
  br i1 %tobool.not19.i340.1, label %gfmul.exit354.1, label %while.body.i352.1

while.body.i352.1:                                ; preds = %while.body.i352.1, %for.body66.1
  %v.022.i341.1 = phi i8 [ %spec.select.i346.1, %while.body.i352.1 ], [ 0, %for.body66.1 ]
  %b.addr.021.i342.1 = phi i8 [ %11, %while.body.i352.1 ], [ %conv69.1, %for.body66.1 ]
  %a.addr.020.i343.1 = phi i8 [ %xor9.i350.1, %while.body.i352.1 ], [ %conv43, %for.body66.1 ]
  %10 = and i8 %b.addr.021.i342.1, 1
  %tobool1.not.i344.1 = icmp eq i8 %10, 0
  %xor18.i345.1 = select i1 %tobool1.not.i344.1, i8 0, i8 %a.addr.020.i343.1
  %spec.select.i346.1 = xor i8 %xor18.i345.1, %v.022.i341.1
  %shl.i347.1 = shl i8 %a.addr.020.i343.1, 1
  %tobool8.not.inv.i348.1 = icmp slt i8 %a.addr.020.i343.1, 0
  %cond.i349.1 = select i1 %tobool8.not.inv.i348.1, i8 29, i8 0
  %xor9.i350.1 = xor i8 %cond.i349.1, %shl.i347.1
  %11 = lshr i8 %b.addr.021.i342.1, 1
  %tobool.not.i351.1 = icmp ult i8 %b.addr.021.i342.1, 2
  br i1 %tobool.not.i351.1, label %gfmul.exit354.1, label %while.body.i352.1

gfmul.exit354.1:                                  ; preds = %while.body.i352.1, %for.body66.1
  %v.0.lcssa.i353.1 = phi i8 [ 0, %for.body66.1 ], [ %spec.select.i346.1, %while.body.i352.1 ]
  %conv71.1 = zext i8 %v.0.lcssa.i353.1 to i32
  %cmp72.1 = icmp eq i32 %k.2378.1, 7
  %cond74.1 = select i1 %cmp72.1, i32 10, i32 32
  %call75.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv71.1, i32 noundef %cond74.1)
  %inc77.1 = add nuw nsw i32 %k.2378.1, 1
  %exitcond394.1.not = icmp eq i32 %inc77.1, 8
  br i1 %exitcond394.1.not, label %for.inc79.1, label %for.body66.1

for.inc79.1:                                      ; preds = %gfmul.exit354.1
  %puts322 = tail call i32 @puts(ptr nonnull @str.56)
  %inc84 = add nuw nsw i32 %i.1380, 1
  %exitcond395.not = icmp eq i32 %inc84, 256
  br i1 %exitcond395.not, label %for.end85, label %for.body32

for.end85:                                        ; preds = %for.inc79.1
  %puts294 = tail call i32 @puts(ptr nonnull @str.49)
  %puts295 = tail call i32 @puts(ptr nonnull @str.50)
  %puts296 = tail call i32 @puts(ptr nonnull @str.31)
  %puts297 = tail call i32 @puts(ptr nonnull @str.52)
  %puts298 = tail call i32 @puts(ptr nonnull @str.33)
  br label %for.body94

for.body94:                                       ; preds = %for.body94, %for.end85
  %indvars.iv = phi i64 [ 0, %for.end85 ], [ %indvars.iv.next, %for.body94 ]
  %v.0384 = phi i8 [ 1, %for.end85 ], [ %spec.store.select.7, %for.body94 ]
  %putchar320 = tail call i32 @putchar(i32 9)
  %arrayidx = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv
  store i8 %v.0384, ptr %arrayidx, align 8, !tbaa !5
  %conv101 = zext i8 %v.0384 to i32
  %call105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101, i32 noundef 32)
  %shl.i361 = shl i8 %v.0384, 1
  %tobool8.not.inv.i362 = icmp slt i8 %v.0384, 0
  %cond.i363 = select i1 %tobool8.not.inv.i362, i8 29, i8 0
  %xor9.i364 = xor i8 %cond.i363, %shl.i361
  %cmp108 = icmp eq i8 %xor9.i364, 1
  %spec.store.select = select i1 %cmp108, i8 0, i8 %xor9.i364
  %12 = or i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %12
  store i8 %spec.store.select, ptr %arrayidx.1, align 1, !tbaa !5
  %conv101.1 = zext i8 %spec.store.select to i32
  %call105.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.1, i32 noundef 32)
  %shl.i361.1 = shl i8 %spec.store.select, 1
  %tobool8.not.inv.i362.1 = icmp slt i8 %spec.store.select, 0
  %cond.i363.1 = select i1 %tobool8.not.inv.i362.1, i8 29, i8 0
  %xor9.i364.1 = xor i8 %cond.i363.1, %shl.i361.1
  %cmp108.1 = icmp eq i8 %xor9.i364.1, 1
  %spec.store.select.1 = select i1 %cmp108.1, i8 0, i8 %xor9.i364.1
  %13 = or i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %13
  store i8 %spec.store.select.1, ptr %arrayidx.2, align 2, !tbaa !5
  %conv101.2 = zext i8 %spec.store.select.1 to i32
  %call105.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.2, i32 noundef 32)
  %shl.i361.2 = shl i8 %spec.store.select.1, 1
  %tobool8.not.inv.i362.2 = icmp slt i8 %spec.store.select.1, 0
  %cond.i363.2 = select i1 %tobool8.not.inv.i362.2, i8 29, i8 0
  %xor9.i364.2 = xor i8 %cond.i363.2, %shl.i361.2
  %cmp108.2 = icmp eq i8 %xor9.i364.2, 1
  %spec.store.select.2 = select i1 %cmp108.2, i8 0, i8 %xor9.i364.2
  %14 = or i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %14
  store i8 %spec.store.select.2, ptr %arrayidx.3, align 1, !tbaa !5
  %conv101.3 = zext i8 %spec.store.select.2 to i32
  %call105.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.3, i32 noundef 32)
  %shl.i361.3 = shl i8 %spec.store.select.2, 1
  %tobool8.not.inv.i362.3 = icmp slt i8 %spec.store.select.2, 0
  %cond.i363.3 = select i1 %tobool8.not.inv.i362.3, i8 29, i8 0
  %xor9.i364.3 = xor i8 %cond.i363.3, %shl.i361.3
  %cmp108.3 = icmp eq i8 %xor9.i364.3, 1
  %spec.store.select.3 = select i1 %cmp108.3, i8 0, i8 %xor9.i364.3
  %15 = or i64 %indvars.iv, 4
  %arrayidx.4 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %15
  store i8 %spec.store.select.3, ptr %arrayidx.4, align 4, !tbaa !5
  %conv101.4 = zext i8 %spec.store.select.3 to i32
  %call105.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.4, i32 noundef 32)
  %shl.i361.4 = shl i8 %spec.store.select.3, 1
  %tobool8.not.inv.i362.4 = icmp slt i8 %spec.store.select.3, 0
  %cond.i363.4 = select i1 %tobool8.not.inv.i362.4, i8 29, i8 0
  %xor9.i364.4 = xor i8 %cond.i363.4, %shl.i361.4
  %cmp108.4 = icmp eq i8 %xor9.i364.4, 1
  %spec.store.select.4 = select i1 %cmp108.4, i8 0, i8 %xor9.i364.4
  %16 = or i64 %indvars.iv, 5
  %arrayidx.5 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %16
  store i8 %spec.store.select.4, ptr %arrayidx.5, align 1, !tbaa !5
  %conv101.5 = zext i8 %spec.store.select.4 to i32
  %call105.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.5, i32 noundef 32)
  %shl.i361.5 = shl i8 %spec.store.select.4, 1
  %tobool8.not.inv.i362.5 = icmp slt i8 %spec.store.select.4, 0
  %cond.i363.5 = select i1 %tobool8.not.inv.i362.5, i8 29, i8 0
  %xor9.i364.5 = xor i8 %cond.i363.5, %shl.i361.5
  %cmp108.5 = icmp eq i8 %xor9.i364.5, 1
  %spec.store.select.5 = select i1 %cmp108.5, i8 0, i8 %xor9.i364.5
  %17 = or i64 %indvars.iv, 6
  %arrayidx.6 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %17
  store i8 %spec.store.select.5, ptr %arrayidx.6, align 2, !tbaa !5
  %conv101.6 = zext i8 %spec.store.select.5 to i32
  %call105.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.6, i32 noundef 32)
  %shl.i361.6 = shl i8 %spec.store.select.5, 1
  %tobool8.not.inv.i362.6 = icmp slt i8 %spec.store.select.5, 0
  %cond.i363.6 = select i1 %tobool8.not.inv.i362.6, i8 29, i8 0
  %xor9.i364.6 = xor i8 %cond.i363.6, %shl.i361.6
  %cmp108.6 = icmp eq i8 %xor9.i364.6, 1
  %spec.store.select.6 = select i1 %cmp108.6, i8 0, i8 %xor9.i364.6
  %18 = or i64 %indvars.iv, 7
  %arrayidx.7 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %18
  store i8 %spec.store.select.6, ptr %arrayidx.7, align 1, !tbaa !5
  %conv101.7 = zext i8 %spec.store.select.6 to i32
  %call105.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv101.7, i32 noundef 10)
  %shl.i361.7 = shl i8 %spec.store.select.6, 1
  %tobool8.not.inv.i362.7 = icmp slt i8 %spec.store.select.6, 0
  %cond.i363.7 = select i1 %tobool8.not.inv.i362.7, i8 29, i8 0
  %xor9.i364.7 = xor i8 %cond.i363.7, %shl.i361.7
  %cmp108.7 = icmp eq i8 %xor9.i364.7, 1
  %spec.store.select.7 = select i1 %cmp108.7, i8 0, i8 %xor9.i364.7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %cmp92 = icmp ult i64 %indvars.iv, 248
  br i1 %cmp92, label %for.body94, label %for.end115

for.end115:                                       ; preds = %for.body94
  %puts299 = tail call i32 @puts(ptr nonnull @str.49)
  %puts300 = tail call i32 @puts(ptr nonnull @str.50)
  %puts301 = tail call i32 @puts(ptr nonnull @str.36)
  %puts302 = tail call i32 @puts(ptr nonnull @str.52)
  %puts303 = tail call i32 @puts(ptr nonnull @str.38)
  br label %for.body124

for.body124:                                      ; preds = %for.end145.7, %for.end115
  %i.3387 = phi i32 [ 0, %for.end115 ], [ %add155, %for.end145.7 ]
  %putchar319 = tail call i32 @putchar(i32 9)
  br label %for.body133

for.body133:                                      ; preds = %for.body133, %for.body124
  %indvars.iv398 = phi i64 [ 0, %for.body124 ], [ %indvars.iv.next399, %for.body133 ]
  %arrayidx135 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398
  %19 = load i8, ptr %arrayidx135, align 1, !tbaa !5
  %conv136 = zext i8 %19 to i32
  %cmp138 = icmp eq i32 %i.3387, %conv136
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1
  %exitcond401.not = icmp eq i64 %indvars.iv.next399, 256
  %or.cond = select i1 %cmp138, i1 true, i1 %exitcond401.not
  br i1 %or.cond, label %for.end145, label %for.body133

for.end145:                                       ; preds = %for.body133
  %20 = trunc i64 %indvars.iv398 to i32
  %call150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef 32)
  %add137.1 = or i32 %i.3387, 1
  br label %for.body133.1

for.body133.1:                                    ; preds = %for.body133.1, %for.end145
  %indvars.iv398.1 = phi i64 [ 0, %for.end145 ], [ %indvars.iv.next399.1, %for.body133.1 ]
  %arrayidx135.1 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.1
  %21 = load i8, ptr %arrayidx135.1, align 1, !tbaa !5
  %conv136.1 = zext i8 %21 to i32
  %cmp138.1 = icmp eq i32 %add137.1, %conv136.1
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398.1, 1
  %exitcond401.1.not = icmp eq i64 %indvars.iv.next399.1, 256
  %or.cond426 = select i1 %cmp138.1, i1 true, i1 %exitcond401.1.not
  br i1 %or.cond426, label %for.end145.1, label %for.body133.1

for.end145.1:                                     ; preds = %for.body133.1
  %22 = trunc i64 %indvars.iv398.1 to i32
  %call150.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef 32)
  %add137.2 = or i32 %i.3387, 2
  br label %for.body133.2

for.body133.2:                                    ; preds = %for.body133.2, %for.end145.1
  %indvars.iv398.2 = phi i64 [ 0, %for.end145.1 ], [ %indvars.iv.next399.2, %for.body133.2 ]
  %arrayidx135.2 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.2
  %23 = load i8, ptr %arrayidx135.2, align 1, !tbaa !5
  %conv136.2 = zext i8 %23 to i32
  %cmp138.2 = icmp eq i32 %add137.2, %conv136.2
  %indvars.iv.next399.2 = add nuw nsw i64 %indvars.iv398.2, 1
  %exitcond401.2.not = icmp eq i64 %indvars.iv.next399.2, 256
  %or.cond427 = select i1 %cmp138.2, i1 true, i1 %exitcond401.2.not
  br i1 %or.cond427, label %for.end145.2, label %for.body133.2

for.end145.2:                                     ; preds = %for.body133.2
  %24 = trunc i64 %indvars.iv398.2 to i32
  %call150.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef 32)
  %add137.3 = or i32 %i.3387, 3
  br label %for.body133.3

for.body133.3:                                    ; preds = %for.body133.3, %for.end145.2
  %indvars.iv398.3 = phi i64 [ 0, %for.end145.2 ], [ %indvars.iv.next399.3, %for.body133.3 ]
  %arrayidx135.3 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.3
  %25 = load i8, ptr %arrayidx135.3, align 1, !tbaa !5
  %conv136.3 = zext i8 %25 to i32
  %cmp138.3 = icmp eq i32 %add137.3, %conv136.3
  %indvars.iv.next399.3 = add nuw nsw i64 %indvars.iv398.3, 1
  %exitcond401.3.not = icmp eq i64 %indvars.iv.next399.3, 256
  %or.cond428 = select i1 %cmp138.3, i1 true, i1 %exitcond401.3.not
  br i1 %or.cond428, label %for.end145.3, label %for.body133.3

for.end145.3:                                     ; preds = %for.body133.3
  %26 = trunc i64 %indvars.iv398.3 to i32
  %call150.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef 32)
  %add137.4 = or i32 %i.3387, 4
  br label %for.body133.4

for.body133.4:                                    ; preds = %for.body133.4, %for.end145.3
  %indvars.iv398.4 = phi i64 [ 0, %for.end145.3 ], [ %indvars.iv.next399.4, %for.body133.4 ]
  %arrayidx135.4 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.4
  %27 = load i8, ptr %arrayidx135.4, align 1, !tbaa !5
  %conv136.4 = zext i8 %27 to i32
  %cmp138.4 = icmp eq i32 %add137.4, %conv136.4
  %indvars.iv.next399.4 = add nuw nsw i64 %indvars.iv398.4, 1
  %exitcond401.4.not = icmp eq i64 %indvars.iv.next399.4, 256
  %or.cond429 = select i1 %cmp138.4, i1 true, i1 %exitcond401.4.not
  br i1 %or.cond429, label %for.end145.4, label %for.body133.4

for.end145.4:                                     ; preds = %for.body133.4
  %28 = trunc i64 %indvars.iv398.4 to i32
  %call150.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %28, i32 noundef 32)
  %add137.5 = or i32 %i.3387, 5
  br label %for.body133.5

for.body133.5:                                    ; preds = %for.body133.5, %for.end145.4
  %indvars.iv398.5 = phi i64 [ 0, %for.end145.4 ], [ %indvars.iv.next399.5, %for.body133.5 ]
  %arrayidx135.5 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.5
  %29 = load i8, ptr %arrayidx135.5, align 1, !tbaa !5
  %conv136.5 = zext i8 %29 to i32
  %cmp138.5 = icmp eq i32 %add137.5, %conv136.5
  %indvars.iv.next399.5 = add nuw nsw i64 %indvars.iv398.5, 1
  %exitcond401.5.not = icmp eq i64 %indvars.iv.next399.5, 256
  %or.cond430 = select i1 %cmp138.5, i1 true, i1 %exitcond401.5.not
  br i1 %or.cond430, label %for.end145.5, label %for.body133.5

for.end145.5:                                     ; preds = %for.body133.5
  %30 = trunc i64 %indvars.iv398.5 to i32
  %call150.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %30, i32 noundef 32)
  %add137.6 = or i32 %i.3387, 6
  br label %for.body133.6

for.body133.6:                                    ; preds = %for.body133.6, %for.end145.5
  %indvars.iv398.6 = phi i64 [ 0, %for.end145.5 ], [ %indvars.iv.next399.6, %for.body133.6 ]
  %arrayidx135.6 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.6
  %31 = load i8, ptr %arrayidx135.6, align 1, !tbaa !5
  %conv136.6 = zext i8 %31 to i32
  %cmp138.6 = icmp eq i32 %add137.6, %conv136.6
  %indvars.iv.next399.6 = add nuw nsw i64 %indvars.iv398.6, 1
  %exitcond401.6.not = icmp eq i64 %indvars.iv.next399.6, 256
  %or.cond431 = select i1 %cmp138.6, i1 true, i1 %exitcond401.6.not
  br i1 %or.cond431, label %for.end145.6, label %for.body133.6

for.end145.6:                                     ; preds = %for.body133.6
  %32 = trunc i64 %indvars.iv398.6 to i32
  %call150.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %32, i32 noundef 32)
  %add137.7 = or i32 %i.3387, 7
  br label %for.body133.7

for.body133.7:                                    ; preds = %for.body133.7, %for.end145.6
  %indvars.iv398.7 = phi i64 [ 0, %for.end145.6 ], [ %indvars.iv.next399.7, %for.body133.7 ]
  %arrayidx135.7 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv398.7
  %33 = load i8, ptr %arrayidx135.7, align 1, !tbaa !5
  %conv136.7 = zext i8 %33 to i32
  %cmp138.7 = icmp eq i32 %add137.7, %conv136.7
  %indvars.iv.next399.7 = add nuw nsw i64 %indvars.iv398.7, 1
  %exitcond401.7.not = icmp eq i64 %indvars.iv.next399.7, 256
  %or.cond432 = select i1 %cmp138.7, i1 true, i1 %exitcond401.7.not
  br i1 %or.cond432, label %for.end145.7, label %for.body133.7

for.end145.7:                                     ; preds = %for.body133.7
  %34 = trunc i64 %indvars.iv398.7 to i32
  %call150.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %34, i32 noundef 10)
  %add155 = add nuw nsw i32 %i.3387, 8
  %cmp122 = icmp ult i32 %i.3387, 248
  br i1 %cmp122, label %for.body124, label %for.end156

for.end156:                                       ; preds = %for.end145.7
  %puts304 = tail call i32 @puts(ptr nonnull @str.49)
  %puts305 = tail call i32 @puts(ptr nonnull @str.50)
  %puts306 = tail call i32 @puts(ptr nonnull @str.41)
  %puts307 = tail call i32 @puts(ptr nonnull @str.52)
  %puts308 = tail call i32 @puts(ptr nonnull @str.43)
  br label %for.body165

for.body165:                                      ; preds = %for.inc185, %for.end156
  %indvars.iv408 = phi i64 [ 0, %for.end156 ], [ %indvars.iv.next409, %for.inc185 ]
  %putchar318 = tail call i32 @putchar(i32 9)
  %35 = trunc i64 %indvars.iv408 to i8
  br label %for.body170

for.body170:                                      ; preds = %gfpow.exit, %for.body165
  %indvars.iv403 = phi i64 [ 0, %for.body165 ], [ %indvars.iv.next404, %gfpow.exit ]
  %indvars406 = trunc i64 %indvars.iv403 to i8
  %36 = add nuw nsw i64 %indvars.iv403, %indvars.iv408
  %add171 = add i8 %indvars406, %35
  br label %while.body.i371

while.body.i371:                                  ; preds = %gfmul.exit15.i, %for.body170
  %v.022.i369 = phi i8 [ 1, %for.body170 ], [ %v.118.i, %gfmul.exit15.i ]
  %b.addr.121.i = phi i32 [ 254, %for.body170 ], [ %41, %gfmul.exit15.i ]
  %a.addr.019.i = phi i8 [ %add171, %for.body170 ], [ %v.0.lcssa.i14.i, %gfmul.exit15.i ]
  %and.i = and i32 %b.addr.121.i, 1
  %tobool1.not.i370 = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i370, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %while.body.i371
  %tobool.not19.i.i = icmp eq i8 %a.addr.019.i, 0
  br i1 %tobool.not19.i.i, label %gfmul.exit15.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then2.i
  %v.022.i.i = phi i8 [ %spec.select.i.i, %while.body.i.i ], [ 0, %if.then2.i ]
  %b.addr.021.i.i = phi i8 [ %38, %while.body.i.i ], [ %a.addr.019.i, %if.then2.i ]
  %a.addr.020.i.i = phi i8 [ %xor9.i.i, %while.body.i.i ], [ %v.022.i369, %if.then2.i ]
  %37 = and i8 %b.addr.021.i.i, 1
  %tobool1.not.i.i = icmp eq i8 %37, 0
  %xor18.i.i = select i1 %tobool1.not.i.i, i8 0, i8 %a.addr.020.i.i
  %spec.select.i.i = xor i8 %xor18.i.i, %v.022.i.i
  %shl.i.i = shl i8 %a.addr.020.i.i, 1
  %tobool8.not.inv.i.i = icmp slt i8 %a.addr.020.i.i, 0
  %cond.i.i = select i1 %tobool8.not.inv.i.i, i8 29, i8 0
  %xor9.i.i = xor i8 %cond.i.i, %shl.i.i
  %38 = lshr i8 %b.addr.021.i.i, 1
  %tobool.not.i.i = icmp ult i8 %b.addr.021.i.i, 2
  br i1 %tobool.not.i.i, label %if.end3.i, label %while.body.i.i

if.end3.i:                                        ; preds = %while.body.i.i, %while.body.i371
  %v.1.i = phi i8 [ %v.022.i369, %while.body.i371 ], [ %spec.select.i.i, %while.body.i.i ]
  %tobool.not19.i1.i = icmp eq i8 %a.addr.019.i, 0
  br i1 %tobool.not19.i1.i, label %gfmul.exit15.i, label %while.body.i13.i

while.body.i13.i:                                 ; preds = %while.body.i13.i, %if.end3.i
  %v.022.i2.i = phi i8 [ %spec.select.i7.i, %while.body.i13.i ], [ 0, %if.end3.i ]
  %b.addr.021.i3.i = phi i8 [ %40, %while.body.i13.i ], [ %a.addr.019.i, %if.end3.i ]
  %a.addr.020.i4.i = phi i8 [ %xor9.i11.i, %while.body.i13.i ], [ %a.addr.019.i, %if.end3.i ]
  %39 = and i8 %b.addr.021.i3.i, 1
  %tobool1.not.i5.i = icmp eq i8 %39, 0
  %xor18.i6.i = select i1 %tobool1.not.i5.i, i8 0, i8 %a.addr.020.i4.i
  %spec.select.i7.i = xor i8 %xor18.i6.i, %v.022.i2.i
  %shl.i8.i = shl i8 %a.addr.020.i4.i, 1
  %tobool8.not.inv.i9.i = icmp slt i8 %a.addr.020.i4.i, 0
  %cond.i10.i = select i1 %tobool8.not.inv.i9.i, i8 29, i8 0
  %xor9.i11.i = xor i8 %cond.i10.i, %shl.i8.i
  %40 = lshr i8 %b.addr.021.i3.i, 1
  %tobool.not.i12.i = icmp ult i8 %b.addr.021.i3.i, 2
  br i1 %tobool.not.i12.i, label %gfmul.exit15.i, label %while.body.i13.i

gfmul.exit15.i:                                   ; preds = %while.body.i13.i, %if.end3.i, %if.then2.i
  %v.118.i = phi i8 [ %v.1.i, %if.end3.i ], [ 0, %if.then2.i ], [ %v.1.i, %while.body.i13.i ]
  %v.0.lcssa.i14.i = phi i8 [ 0, %if.end3.i ], [ 0, %if.then2.i ], [ %spec.select.i7.i, %while.body.i13.i ]
  %41 = lshr i32 %b.addr.121.i, 1
  %tobool.not.i372 = icmp ult i32 %b.addr.121.i, 2
  br i1 %tobool.not.i372, label %gfpow.exit, label %while.body.i371

gfpow.exit:                                       ; preds = %gfmul.exit15.i
  %arrayidx176 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %36
  store i8 %v.118.i, ptr %arrayidx176, align 1, !tbaa !5
  %conv177 = zext i8 %v.118.i to i32
  %cmp178 = icmp eq i64 %indvars.iv403, 7
  %cond180 = select i1 %cmp178, i32 10, i32 32
  %call181 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv177, i32 noundef %cond180)
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, 8
  br i1 %exitcond407.not, label %for.inc185, label %for.body170

for.inc185:                                       ; preds = %gfpow.exit
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 8
  %cmp163 = icmp ult i64 %indvars.iv408, 248
  br i1 %cmp163, label %for.body165, label %for.end187

for.end187:                                       ; preds = %for.inc185
  %puts309 = tail call i32 @puts(ptr nonnull @str.49)
  %puts310 = tail call i32 @puts(ptr nonnull @str.50)
  %puts311 = tail call i32 @puts(ptr nonnull @str.46)
  %puts312 = tail call i32 @puts(ptr nonnull @str.52)
  %puts313 = tail call i32 @puts(ptr nonnull @str.48)
  br label %for.body196

for.body196:                                      ; preds = %for.body196, %for.end187
  %indvars.iv416 = phi i64 [ 0, %for.end187 ], [ %indvars.iv.next417, %for.body196 ]
  %putchar = tail call i32 @putchar(i32 9)
  %arrayidx204 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %indvars.iv416
  %42 = load i8, ptr %arrayidx204, align 8, !tbaa !5
  %43 = xor i8 %42, 1
  %idxprom206 = zext i8 %43 to i64
  %arrayidx207 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206
  %44 = load i8, ptr %arrayidx207, align 1, !tbaa !5
  %conv208 = zext i8 %44 to i32
  %call212 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208, i32 noundef 32)
  %45 = or i64 %indvars.iv416, 1
  %arrayidx204.1 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %45
  %46 = load i8, ptr %arrayidx204.1, align 1, !tbaa !5
  %47 = xor i8 %46, 1
  %idxprom206.1 = zext i8 %47 to i64
  %arrayidx207.1 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.1
  %48 = load i8, ptr %arrayidx207.1, align 1, !tbaa !5
  %conv208.1 = zext i8 %48 to i32
  %call212.1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.1, i32 noundef 32)
  %49 = or i64 %indvars.iv416, 2
  %arrayidx204.2 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %49
  %50 = load i8, ptr %arrayidx204.2, align 2, !tbaa !5
  %51 = xor i8 %50, 1
  %idxprom206.2 = zext i8 %51 to i64
  %arrayidx207.2 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.2
  %52 = load i8, ptr %arrayidx207.2, align 1, !tbaa !5
  %conv208.2 = zext i8 %52 to i32
  %call212.2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.2, i32 noundef 32)
  %53 = or i64 %indvars.iv416, 3
  %arrayidx204.3 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %53
  %54 = load i8, ptr %arrayidx204.3, align 1, !tbaa !5
  %55 = xor i8 %54, 1
  %idxprom206.3 = zext i8 %55 to i64
  %arrayidx207.3 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.3
  %56 = load i8, ptr %arrayidx207.3, align 1, !tbaa !5
  %conv208.3 = zext i8 %56 to i32
  %call212.3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.3, i32 noundef 32)
  %57 = or i64 %indvars.iv416, 4
  %arrayidx204.4 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %57
  %58 = load i8, ptr %arrayidx204.4, align 4, !tbaa !5
  %59 = xor i8 %58, 1
  %idxprom206.4 = zext i8 %59 to i64
  %arrayidx207.4 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.4
  %60 = load i8, ptr %arrayidx207.4, align 1, !tbaa !5
  %conv208.4 = zext i8 %60 to i32
  %call212.4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.4, i32 noundef 32)
  %61 = or i64 %indvars.iv416, 5
  %arrayidx204.5 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %61
  %62 = load i8, ptr %arrayidx204.5, align 1, !tbaa !5
  %63 = xor i8 %62, 1
  %idxprom206.5 = zext i8 %63 to i64
  %arrayidx207.5 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.5
  %64 = load i8, ptr %arrayidx207.5, align 1, !tbaa !5
  %conv208.5 = zext i8 %64 to i32
  %call212.5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.5, i32 noundef 32)
  %65 = or i64 %indvars.iv416, 6
  %arrayidx204.6 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %65
  %66 = load i8, ptr %arrayidx204.6, align 2, !tbaa !5
  %67 = xor i8 %66, 1
  %idxprom206.6 = zext i8 %67 to i64
  %arrayidx207.6 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.6
  %68 = load i8, ptr %arrayidx207.6, align 1, !tbaa !5
  %conv208.6 = zext i8 %68 to i32
  %call212.6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.6, i32 noundef 32)
  %69 = or i64 %indvars.iv416, 7
  %arrayidx204.7 = getelementptr inbounds [256 x i8], ptr %exptbl, i64 0, i64 %69
  %70 = load i8, ptr %arrayidx204.7, align 1, !tbaa !5
  %71 = xor i8 %70, 1
  %idxprom206.7 = zext i8 %71 to i64
  %arrayidx207.7 = getelementptr inbounds [256 x i8], ptr %invtbl, i64 0, i64 %idxprom206.7
  %72 = load i8, ptr %arrayidx207.7, align 1, !tbaa !5
  %conv208.7 = zext i8 %72 to i32
  %call212.7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %conv208.7, i32 noundef 10)
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 8
  %cmp194 = icmp ult i64 %indvars.iv416, 248
  br i1 %cmp194, label %for.body196, label %for.end218

for.end218:                                       ; preds = %for.body196
  %puts314 = tail call i32 @puts(ptr nonnull @str.49)
  %puts315 = tail call i32 @puts(ptr nonnull @str.50)
  %puts316 = tail call i32 @puts(ptr nonnull @str.51)
  %puts317 = tail call i32 @puts(ptr nonnull @str.52)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %invtbl) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %exptbl) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
