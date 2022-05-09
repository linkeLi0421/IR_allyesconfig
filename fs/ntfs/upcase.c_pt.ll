; ModuleID = '/llk/IR_all_yes/fs/ntfs/upcase.c_pt.bc'
source_filename = "../fs/ntfs/upcase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }

@generate_default_upcase.uc_run_table = internal constant { [40 x [3 x i32]], [96 x i8] } { [40 x [3 x i32]] [[3 x i32] [i32 97, i32 123, i32 -32], [3 x i32] [i32 1105, i32 1117, i32 -80], [3 x i32] [i32 8048, i32 8050, i32 74], [3 x i32] [i32 224, i32 247, i32 -32], [3 x i32] [i32 1118, i32 1120, i32 -80], [3 x i32] [i32 8050, i32 8054, i32 86], [3 x i32] [i32 248, i32 255, i32 -32], [3 x i32] [i32 1377, i32 1415, i32 -48], [3 x i32] [i32 8054, i32 8056, i32 100], [3 x i32] [i32 598, i32 600, i32 -205], [3 x i32] [i32 7936, i32 7944, i32 8], [3 x i32] [i32 8056, i32 8058, i32 128], [3 x i32] [i32 650, i32 652, i32 -217], [3 x i32] [i32 7952, i32 7958, i32 8], [3 x i32] [i32 8058, i32 8060, i32 112], [3 x i32] [i32 940, i32 941, i32 -38], [3 x i32] [i32 7968, i32 7976, i32 8], [3 x i32] [i32 8060, i32 8062, i32 126], [3 x i32] [i32 941, i32 944, i32 -37], [3 x i32] [i32 7984, i32 7992, i32 8], [3 x i32] [i32 8112, i32 8114, i32 8], [3 x i32] [i32 945, i32 962, i32 -32], [3 x i32] [i32 8000, i32 8006, i32 8], [3 x i32] [i32 8144, i32 8146, i32 8], [3 x i32] [i32 962, i32 963, i32 -31], [3 x i32] [i32 8017, i32 8018, i32 8], [3 x i32] [i32 8160, i32 8162, i32 8], [3 x i32] [i32 963, i32 972, i32 -32], [3 x i32] [i32 8019, i32 8020, i32 8], [3 x i32] [i32 8165, i32 8166, i32 7], [3 x i32] [i32 972, i32 973, i32 -64], [3 x i32] [i32 8021, i32 8022, i32 8], [3 x i32] [i32 8560, i32 8576, i32 -16], [3 x i32] [i32 973, i32 975, i32 -63], [3 x i32] [i32 8023, i32 8024, i32 8], [3 x i32] [i32 9424, i32 9450, i32 -26], [3 x i32] [i32 1072, i32 1104, i32 -32], [3 x i32] [i32 8032, i32 8040, i32 8], [3 x i32] [i32 65345, i32 65371, i32 -32], [3 x i32] zeroinitializer], [96 x i8] zeroinitializer }, align 32
@generate_default_upcase.uc_dup_table = internal constant { [25 x [2 x i32]], [56 x i8] } { [25 x [2 x i32]] [[2 x i32] [i32 256, i32 303], [2 x i32] [i32 416, i32 422], [2 x i32] [i32 994, i32 1007], [2 x i32] [i32 1227, i32 1228], [2 x i32] [i32 306, i32 311], [2 x i32] [i32 435, i32 439], [2 x i32] [i32 1120, i32 1153], [2 x i32] [i32 1232, i32 1259], [2 x i32] [i32 313, i32 329], [2 x i32] [i32 461, i32 477], [2 x i32] [i32 1168, i32 1215], [2 x i32] [i32 1262, i32 1269], [2 x i32] [i32 330, i32 376], [2 x i32] [i32 478, i32 495], [2 x i32] [i32 1215, i32 1215], [2 x i32] [i32 1272, i32 1273], [2 x i32] [i32 377, i32 382], [2 x i32] [i32 500, i32 501], [2 x i32] [i32 1217, i32 1220], [2 x i32] [i32 7680, i32 7829], [2 x i32] [i32 395, i32 395], [2 x i32] [i32 506, i32 536], [2 x i32] [i32 1223, i32 1224], [2 x i32] [i32 7840, i32 7929], [2 x i32] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@generate_default_upcase.uc_word_table = internal constant { [32 x [2 x i32]], [64 x i8] } { [32 x [2 x i32]] [[2 x i32] [i32 255, i32 376], [2 x i32] [i32 429, i32 428], [2 x i32] [i32 499, i32 497], [2 x i32] [i32 617, i32 406], [2 x i32] [i32 387, i32 386], [2 x i32] [i32 432, i32 431], [2 x i32] [i32 595, i32 385], [2 x i32] [i32 623, i32 412], [2 x i32] [i32 389, i32 388], [2 x i32] [i32 441, i32 440], [2 x i32] [i32 596, i32 390], [2 x i32] [i32 626, i32 413], [2 x i32] [i32 392, i32 391], [2 x i32] [i32 445, i32 444], [2 x i32] [i32 601, i32 399], [2 x i32] [i32 629, i32 415], [2 x i32] [i32 396, i32 395], [2 x i32] [i32 454, i32 452], [2 x i32] [i32 603, i32 400], [2 x i32] [i32 643, i32 425], [2 x i32] [i32 402, i32 401], [2 x i32] [i32 457, i32 455], [2 x i32] [i32 608, i32 403], [2 x i32] [i32 648, i32 430], [2 x i32] [i32 409, i32 408], [2 x i32] [i32 460, i32 458], [2 x i32] [i32 611, i32 404], [2 x i32] [i32 658, i32 439], [2 x i32] [i32 424, i32 423], [2 x i32] [i32 477, i32 398], [2 x i32] [i32 616, i32 407], [2 x i32] zeroinitializer], [64 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"uc_run_table\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 15, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"uc_dup_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 32, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"uc_word_table\00", align 1
@___asan_gen_.8 = private constant [20 x i8] c"../fs/ntfs/upcase.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 42, i32 19 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @generate_default_upcase.uc_run_table, ptr @generate_default_upcase.uc_dup_table, ptr @generate_default_upcase.uc_word_table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_default_upcase.uc_run_table to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_default_upcase.uc_dup_table to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generate_default_upcase.uc_word_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @generate_default_upcase() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp18.i.i = icmp ugt i32 %0, 32
  br i1 %cmp18.i.i, label %ntfs_malloc_nofs.exit, label %entry.cleanup_crit_edge, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ntfs_malloc_nofs.exit:                            ; preds = %entry
  %call26.i.i = tail call noalias ptr @__vmalloc(i32 noundef 131072, i32 noundef 3138) #7
  %tobool.not = icmp eq ptr %call26.i.i, null
  br i1 %tobool.not, label %ntfs_malloc_nofs.exit.cleanup_crit_edge, label %if.end

ntfs_malloc_nofs.exit.cleanup_crit_edge:          ; preds = %ntfs_malloc_nofs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ntfs_malloc_nofs.exit
  %1 = call ptr @memset(ptr %call26.i.i, i32 0, i32 131072)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.094 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.094 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx = getelementptr i16, ptr %call26.i.i, i32 %i.094
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 65536
  br i1 %exitcond.not, label %for.body.for.cond8.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc21.for.cond8.preheader_crit_edge, %for.body.for.cond8.preheader_crit_edge
  %4 = phi i32 [ %15, %for.inc21.for.cond8.preheader_crit_edge ], [ 97, %for.body.for.cond8.preheader_crit_edge ]
  %r.097 = phi i32 [ %inc22, %for.inc21.for.cond8.preheader_crit_edge ], [ 0, %for.body.for.cond8.preheader_crit_edge ]
  %arrayidx10 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %r.097, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp1195 = icmp slt i32 %4, %6
  br i1 %cmp1195, label %for.body13.lr.ph, label %for.cond8.preheader.for.inc21_crit_edge

for.cond8.preheader.for.inc21_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.body13.lr.ph:                                 ; preds = %for.cond8.preheader
  %arrayidx16 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %r.097, i32 2
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx16, align 4
  %conv17 = trunc i32 %8 to i16
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.196 = phi i32 [ %4, %for.body13.lr.ph ], [ %inc19, %for.body13.for.body13_crit_edge ]
  %arrayidx14 = getelementptr i16, ptr %call26.i.i, i32 %i.196
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx14, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #4
  %add.i = add i16 %11, %conv17
  %12 = tail call i16 @llvm.bswap.i16(i16 %add.i) #4
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx14, align 2
  %inc19 = add nsw i32 %i.196, 1
  %exitcond103.not = icmp eq i32 %inc19, %6
  br i1 %exitcond103.not, label %for.body13.for.inc21_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body13

for.body13.for.inc21_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.inc21:                                        ; preds = %for.body13.for.inc21_crit_edge, %for.cond8.preheader.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %r.097, 1
  %arrayidx2 = getelementptr [40 x [3 x i32]], ptr @generate_default_upcase.uc_run_table, i32 0, i32 %inc22
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  %exitcond104 = icmp eq i32 %inc22, 39
  br i1 %exitcond104, label %for.inc21.for.cond31.preheader_crit_edge, label %for.inc21.for.cond8.preheader_crit_edge

for.inc21.for.cond8.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

for.inc21.for.cond31.preheader_crit_edge:         ; preds = %for.inc21
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.inc41.for.cond31.preheader_crit_edge, %for.inc21.for.cond31.preheader_crit_edge
  %16 = phi i32 [ %25, %for.inc41.for.cond31.preheader_crit_edge ], [ 256, %for.inc21.for.cond31.preheader_crit_edge ]
  %r.1101 = phi i32 [ %inc42, %for.inc41.for.cond31.preheader_crit_edge ], [ 0, %for.inc21.for.cond31.preheader_crit_edge ]
  %arrayidx33 = getelementptr [25 x [2 x i32]], ptr @generate_default_upcase.uc_dup_table, i32 0, i32 %r.1101, i32 1
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3499 = icmp slt i32 %16, %18
  br i1 %cmp3499, label %for.cond31.preheader.for.body36_crit_edge, label %for.cond31.preheader.for.inc41_crit_edge

for.cond31.preheader.for.inc41_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc41

for.cond31.preheader.for.body36_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.cond31.preheader.for.body36_crit_edge
  %i.2100 = phi i32 [ %add39, %for.body36.for.body36_crit_edge ], [ %16, %for.cond31.preheader.for.body36_crit_edge ]
  %add = add nsw i32 %i.2100, 1
  %arrayidx37 = getelementptr i16, ptr %call26.i.i, i32 %add
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx37, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #4
  %add.i90 = add i16 %21, -1
  %22 = tail call i16 @llvm.bswap.i16(i16 %add.i90) #4
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx37, align 2
  %add39 = add i32 %i.2100, 2
  %cmp34 = icmp slt i32 %add39, %18
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.inc41_crit_edge

for.body36.for.inc41_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc41

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36

for.inc41:                                        ; preds = %for.body36.for.inc41_crit_edge, %for.cond31.preheader.for.inc41_crit_edge
  %inc42 = add nuw nsw i32 %r.1101, 1
  %arrayidx25 = getelementptr [25 x [2 x i32]], ptr @generate_default_upcase.uc_dup_table, i32 0, i32 %inc42
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx25, align 4
  %exitcond105 = icmp eq i32 %inc42, 24
  br i1 %exitcond105, label %for.inc41.for.body48_crit_edge, label %for.inc41.for.cond31.preheader_crit_edge

for.inc41.for.cond31.preheader_crit_edge:         ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond31.preheader

for.inc41.for.body48_crit_edge:                   ; preds = %for.inc41
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.inc41.for.body48_crit_edge
  %26 = phi i32 [ %32, %for.body48.for.body48_crit_edge ], [ 255, %for.inc41.for.body48_crit_edge ]
  %r.2102 = phi i32 [ %inc56, %for.body48.for.body48_crit_edge ], [ 0, %for.inc41.for.body48_crit_edge ]
  %arrayidx50 = getelementptr [32 x [2 x i32]], ptr @generate_default_upcase.uc_word_table, i32 0, i32 %r.2102, i32 1
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx50, align 4
  %conv51 = trunc i32 %28 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv51)
  %arrayidx54 = getelementptr i16, ptr %call26.i.i, i32 %26
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx54, align 2
  %inc56 = add nuw nsw i32 %r.2102, 1
  %arrayidx45 = getelementptr [32 x [2 x i32]], ptr @generate_default_upcase.uc_word_table, i32 0, i32 %inc56
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx45, align 4
  %exitcond106 = icmp eq i32 %inc56, 31
  br i1 %exitcond106, label %for.body48.cleanup_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body48

for.body48.cleanup_crit_edge:                     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body48.cleanup_crit_edge, %ntfs_malloc_nofs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i.i93 = phi ptr [ null, %ntfs_malloc_nofs.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call26.i.i, %for.body48.cleanup_crit_edge ]
  ret ptr %retval.0.i.i93
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @generate_default_upcase.uc_run_table, !1, !"uc_run_table", i1 false, i1 false}
!1 = !{!"../fs/ntfs/upcase.c", i32 15, i32 19}
!2 = !{ptr @generate_default_upcase.uc_dup_table, !3, !"uc_dup_table", i1 false, i1 false}
!3 = !{!"../fs/ntfs/upcase.c", i32 32, i32 19}
!4 = !{ptr @generate_default_upcase.uc_word_table, !5, !"uc_word_table", i1 false, i1 false}
!5 = !{!"../fs/ntfs/upcase.c", i32 42, i32 19}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
