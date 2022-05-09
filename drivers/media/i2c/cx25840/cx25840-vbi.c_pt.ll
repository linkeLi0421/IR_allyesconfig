; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/cx25840/cx25840-vbi.c_pt.bc'
source_filename = "../drivers/media/i2c/cx25840/cx25840-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_decode_vbi_line = type { i32, ptr, i32, i32 }

@cx25840_g_sliced_fmt.lcr2vbi = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 1, i16 0, i16 0, i16 16384, i16 0, i16 4096, i16 0, i16 0, i16 1024, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@decode_vps.biphase_tbl = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\C3KC\C3\87\0F\07\87\83\0B\03\83\C3KC\C3\C1IA\C1\85\0D\05\85\81\09\01\81\C1IA\C1\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\C2JB\C2\86\0E\06\86\82\0A\02\82\C2JB\C2\C0H@\C0\84\0C\04\84\80\08\00\80\C0H@\C0\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0", [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 85, i64 145]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 6, i64 9]
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"lcr2vbi\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 76, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"biphase_tbl\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/media/i2c/cx25840/cx25840-vbi.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 24, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @cx25840_g_sliced_fmt.lcr2vbi, ptr @decode_vps.biphase_tbl], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25840_g_sliced_fmt.lcr2vbi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_vps.biphase_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_g_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %svbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr i8, ptr %sd, i32 404
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  %4 = call ptr @memset(ptr %svbi, i32 0, i32 98)
  %call2 = tail call zeroext i8 @cx25840_read(ptr noundef %1, i16 noundef zeroext 1028) #5
  %5 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %vbi_regs_offset = getelementptr i8, ptr %sd, i32 448
  br i1 %tobool.not, label %if.end.for.body_crit_edge, label %if.end.for.body37_crit_edge

if.end.for.body37_crit_edge:                      ; preds = %if.end
  br label %for.body37

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 7, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbi_regs_offset, align 4
  %add = add nuw nsw i32 %i.0114, 1060
  %add9 = add i32 %add, %7
  %8 = trunc i32 %add9 to i16
  %conv10 = add i16 %8, -7
  %call11 = tail call zeroext i8 @cx25840_read(ptr noundef %1, i16 noundef zeroext %conv10) #5
  %conv12 = zext i8 %call11 to i32
  %9 = lshr i32 %conv12, 4
  %arrayidx = getelementptr [16 x i16], ptr @cx25840_g_sliced_fmt.lcr2vbi, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %arrayidx15 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.0114
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx15, align 2
  %and17 = and i32 %conv12, 15
  %arrayidx18 = getelementptr [16 x i16], ptr @cx25840_g_sliced_fmt.lcr2vbi, i32 0, i32 %and17
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx18, align 2
  %arrayidx21 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.0114
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx21, align 2
  %or110 = or i16 %14, %11
  %16 = ptrtoint ptr %svbi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %svbi, align 4
  %or32111 = or i16 %or110, %17
  store i16 %or32111, ptr %svbi, align 4
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond116.not = icmp eq i32 %inc, 24
  br i1 %exitcond116.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %if.end.for.body37_crit_edge
  %i.1113 = phi i32 [ %inc71, %for.body37.for.body37_crit_edge ], [ 10, %if.end.for.body37_crit_edge ]
  %18 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vbi_regs_offset, align 4
  %add40 = add nuw nsw i32 %i.1113, 1060
  %add41 = add i32 %add40, %19
  %20 = trunc i32 %add41 to i16
  %conv43 = add i16 %20, -10
  %call44 = tail call zeroext i8 @cx25840_read(ptr noundef %1, i16 noundef zeroext %conv43) #5
  %conv45 = zext i8 %call44 to i32
  %21 = lshr i32 %conv45, 4
  %arrayidx47 = getelementptr [16 x i16], ptr @cx25840_g_sliced_fmt.lcr2vbi, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx47, align 2
  %arrayidx50 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.1113
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx50, align 2
  %and52 = and i32 %conv45, 15
  %arrayidx53 = getelementptr [16 x i16], ptr @cx25840_g_sliced_fmt.lcr2vbi, i32 0, i32 %and52
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx53, align 2
  %arrayidx56 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.1113
  %27 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx56, align 2
  %or65108 = or i16 %26, %23
  %28 = ptrtoint ptr %svbi to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %svbi, align 4
  %or68109 = or i16 %or65108, %29
  store i16 %or68109, ptr %svbi, align 4
  %inc71 = add nuw nsw i32 %i.1113, 1
  %exitcond.not = icmp eq i32 %inc71, 22
  br i1 %exitcond.not, label %for.body37.cleanup_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.body37.cleanup_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body37.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx25840_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_s_raw_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr i8, ptr %sd, i32 404
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  tail call void @cx25840_std_setup(ptr noundef %1) #5
  %id.i = getelementptr i8, ptr %sd, i32 436
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  %conv = zext i1 %tobool.not to i8
  %. = select i1 %cmp.i, i16 1359, i16 1151
  %call6 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %., i8 noundef zeroext %conv) #5
  %call7 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext 1028, i8 noundef zeroext 46) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25840_std_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25840_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_s_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %svbi) local_unnamed_addr #0 align 64 {
entry:
  %lcr = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr i8, ptr %sd, i32 404
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and = and i64 %3, 63744
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lcr) #5
  %4 = call ptr @memset(ptr %lcr, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  tail call void @cx25840_std_setup(ptr noundef %1) #5
  %call3 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext 1028, i8 noundef zeroext 50) #5
  %call4 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext 1030, i8 noundef zeroext 19) #5
  %id.i = getelementptr i8, ptr %sd, i32 436
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  %conv = zext i1 %tobool.not to i8
  %. = select i1 %cmp.i, i16 1359, i16 1151
  %call8 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %., i8 noundef zeroext %conv) #5
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  br i1 %tobool.not, label %for.cond11.preheader, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx43 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 22
  %7 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayidx43, align 2
  %arrayidx46 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 0, i32 22
  %arrayidx43.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 23
  %8 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx43.1, align 2
  %9 = call ptr @memset(ptr %service_lines, i32 0, i32 20)
  %10 = call ptr @memset(ptr %arrayidx46, i32 0, i32 24)
  br label %for.cond55.preheader.preheader

for.cond11.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 0
  %11 = call ptr @memset(ptr %service_lines, i32 0, i32 14)
  %12 = call ptr @memset(ptr %arrayidx16, i32 0, i32 14)
  br label %for.cond55.preheader.preheader

for.cond55.preheader.preheader:                   ; preds = %for.cond11.preheader, %for.cond24.preheader
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.inc87.1.for.cond55.preheader_crit_edge, %for.cond55.preheader.preheader
  %i.3237 = phi i32 [ %inc91, %for.inc87.1.for.cond55.preheader_crit_edge ], [ 7, %for.cond55.preheader.preheader ]
  %arrayidx83 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %i.3237
  %arrayidx61 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.3237
  %13 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx61, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %for.cond55.preheader.for.inc87_crit_edge [
    i16 1, label %for.cond55.preheader.for.inc87.sink.split_crit_edge
    i16 16384, label %sw.bb66
    i16 4096, label %sw.bb73
    i16 1024, label %sw.bb80
  ]

for.cond55.preheader.for.inc87.sink.split_crit_edge: ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.sink.split

for.cond55.preheader.for.inc87_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87

sw.bb66:                                          ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.sink.split

sw.bb73:                                          ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.sink.split

sw.bb80:                                          ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.sink.split

for.inc87.sink.split:                             ; preds = %sw.bb80, %sw.bb73, %sw.bb66, %for.cond55.preheader.for.inc87.sink.split_crit_edge
  %.sink255 = phi i8 [ 4, %sw.bb66 ], [ 6, %sw.bb73 ], [ 9, %sw.bb80 ], [ 1, %for.cond55.preheader.for.inc87.sink.split_crit_edge ]
  %16 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx83, align 1
  %conv65 = or i8 %17, %.sink255
  store i8 %conv65, ptr %arrayidx83, align 1
  br label %for.inc87

for.inc87:                                        ; preds = %for.inc87.sink.split, %for.cond55.preheader.for.inc87_crit_edge
  %arrayidx61.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 0, i32 %i.3237
  %18 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx61.1, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %19, label %for.inc87.for.inc87.1_crit_edge [
    i16 1, label %sw.bb.1
    i16 16384, label %sw.bb66.1
    i16 4096, label %sw.bb73.1
    i16 1024, label %for.inc87.for.inc87.1.sink.split_crit_edge
  ]

for.inc87.for.inc87.1.sink.split_crit_edge:       ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.1.sink.split

for.inc87.for.inc87.1_crit_edge:                  ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.1

sw.bb73.1:                                        ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.1.sink.split

sw.bb66.1:                                        ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.1.sink.split

sw.bb.1:                                          ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc87.1.sink.split

for.inc87.1.sink.split:                           ; preds = %sw.bb.1, %sw.bb66.1, %sw.bb73.1, %for.inc87.for.inc87.1.sink.split_crit_edge
  %.sink257 = phi i8 [ 16, %sw.bb.1 ], [ 64, %sw.bb66.1 ], [ 96, %sw.bb73.1 ], [ -112, %for.inc87.for.inc87.1.sink.split_crit_edge ]
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx83, align 1
  %conv65.1 = or i8 %22, %.sink257
  store i8 %conv65.1, ptr %arrayidx83, align 1
  br label %for.inc87.1

for.inc87.1:                                      ; preds = %for.inc87.1.sink.split, %for.inc87.for.inc87.1_crit_edge
  %inc91 = add nuw nsw i32 %i.3237, 1
  %exitcond.not = icmp eq i32 %inc91, 24
  br i1 %exitcond.not, label %for.end92, label %for.inc87.1.for.cond55.preheader_crit_edge

for.inc87.1.for.cond55.preheader_crit_edge:       ; preds = %for.inc87.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond55.preheader

for.end92:                                        ; preds = %for.inc87.1
  %vbi_regs_offset = getelementptr i8, ptr %sd, i32 448
  %23 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vbi_regs_offset, align 4
  %add = add i32 %24, 1060
  br i1 %tobool.not, label %if.then94, label %if.else109

if.then94:                                        ; preds = %for.end92
  %add97245 = add i32 %24, 1076
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add97245)
  %cmp98.not246 = icmp ugt i32 %add, %add97245
  br i1 %cmp98.not246, label %if.then94.if.end139_crit_edge, label %if.then94.for.body100_crit_edge

if.then94.for.body100_crit_edge:                  ; preds = %if.then94
  br label %for.body100

if.then94.if.end139_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %if.then94.for.body100_crit_edge
  %x.2248 = phi i32 [ %inc107, %for.body100.for.body100_crit_edge ], [ 1, %if.then94.for.body100_crit_edge ]
  %i.4247 = phi i32 [ %inc106, %for.body100.for.body100_crit_edge ], [ %add, %if.then94.for.body100_crit_edge ]
  %conv101 = trunc i32 %i.4247 to i16
  %add102 = add i32 %x.2248, 6
  %arrayidx103 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %add102
  %25 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx103, align 1
  %call104 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %conv101, i8 noundef zeroext %26) #5
  %inc106 = add i32 %i.4247, 1
  %inc107 = add i32 %x.2248, 1
  %27 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vbi_regs_offset, align 4
  %add97 = add i32 %28, 1076
  %cmp98.not = icmp ugt i32 %inc106, %add97
  br i1 %cmp98.not, label %for.body100.if.end139_crit_edge, label %for.body100.for.body100_crit_edge

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body100

for.body100.if.end139_crit_edge:                  ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.else109:                                       ; preds = %for.end92
  %add114238 = add i32 %24, 1072
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add114238)
  %cmp115.not239 = icmp ugt i32 %add, %add114238
  br i1 %cmp115.not239, label %if.else109.for.end125_crit_edge, label %if.else109.for.body117_crit_edge

if.else109.for.body117_crit_edge:                 ; preds = %if.else109
  br label %for.body117

if.else109.for.end125_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end125

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %if.else109.for.body117_crit_edge
  %x.3241 = phi i32 [ %inc124, %for.body117.for.body117_crit_edge ], [ 1, %if.else109.for.body117_crit_edge ]
  %i.5240 = phi i32 [ %inc123, %for.body117.for.body117_crit_edge ], [ %add, %if.else109.for.body117_crit_edge ]
  %conv118 = trunc i32 %i.5240 to i16
  %add119 = add i32 %x.3241, 9
  %arrayidx120 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %add119
  %29 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx120, align 1
  %call121 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %conv118, i8 noundef zeroext %30) #5
  %inc123 = add i32 %i.5240, 1
  %inc124 = add i32 %x.3241, 1
  %31 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vbi_regs_offset, align 4
  %add114 = add i32 %32, 1072
  %cmp115.not = icmp ugt i32 %inc123, %add114
  br i1 %cmp115.not, label %for.body117.for.end125_crit_edge, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body117

for.body117.for.end125_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end125

for.end125:                                       ; preds = %for.body117.for.end125_crit_edge, %if.else109.for.end125_crit_edge
  %.lcssa = phi i32 [ %24, %if.else109.for.end125_crit_edge ], [ %32, %for.body117.for.end125_crit_edge ]
  %add127 = add i32 %.lcssa, 1073
  %33 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vbi_regs_offset, align 4
  %add130242 = add i32 %34, 1076
  call void @__sanitizer_cov_trace_cmp4(i32 %add127, i32 %add130242)
  %cmp131.not243 = icmp ugt i32 %add127, %add130242
  br i1 %cmp131.not243, label %for.end125.if.end139_crit_edge, label %for.end125.for.body133_crit_edge

for.end125.for.body133_crit_edge:                 ; preds = %for.end125
  br label %for.body133

for.end125.if.end139_crit_edge:                   ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %for.end125.for.body133_crit_edge
  %i.6244 = phi i32 [ %inc137, %for.body133.for.body133_crit_edge ], [ %add127, %for.end125.for.body133_crit_edge ]
  %conv134 = trunc i32 %i.6244 to i16
  %call135 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %conv134, i8 noundef zeroext 0) #5
  %inc137 = add i32 %i.6244, 1
  %35 = ptrtoint ptr %vbi_regs_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vbi_regs_offset, align 4
  %add130 = add i32 %36, 1076
  %cmp131.not = icmp ugt i32 %inc137, %add130
  br i1 %cmp131.not, label %for.body133.if.end139_crit_edge, label %for.body133.for.body133_crit_edge

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body133

for.body133.if.end139_crit_edge:                  ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.end139:                                        ; preds = %for.body133.if.end139_crit_edge, %for.end125.if.end139_crit_edge, %for.body100.if.end139_crit_edge, %if.then94.if.end139_crit_edge
  %conv148 = phi i8 [ 34, %for.end125.if.end139_crit_edge ], [ 42, %if.then94.if.end139_crit_edge ], [ 42, %for.body100.if.end139_crit_edge ], [ 34, %for.body133.if.end139_crit_edge ]
  %vbi_regs_offset140 = getelementptr i8, ptr %sd, i32 448
  %37 = ptrtoint ptr %vbi_regs_offset140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vbi_regs_offset140, align 4
  %39 = trunc i32 %38 to i16
  %conv142 = add i16 %39, 1084
  %call143 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %conv142, i8 noundef zeroext 22) #5
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i228 = icmp eq i32 %41, 2
  %.259 = select i1 %cmp.i228, i16 1064, i16 1140
  %call154 = tail call i32 @cx25840_write(ptr noundef %1, i16 noundef zeroext %.259, i8 noundef zeroext %conv148) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lcr) #5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25840_decode_vbi_line(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vbi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %p1 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 1
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.not = icmp eq i8 %5, -1
  br i1 %cmp.not, label %lor.lhs.false5, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp8.not = icmp eq i8 %7, -1
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %arrayidx11 = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %9, label %lor.lhs.false10.if.then_crit_edge [
    i8 85, label %lor.lhs.false10.if.end_crit_edge
    i8 -111, label %lor.lhs.false10.if.end_crit_edge110
  ]

lor.lhs.false10.if.end_crit_edge110:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %type = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %12 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %line, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge110
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr, align 1
  %15 = and i8 %14, 15
  %and = zext i8 %15 to i32
  %arrayidx23 = getelementptr i8, ptr %1, i32 6
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23, align 1
  %18 = and i8 %17, 63
  %and25 = zext i8 %18 to i32
  %vbi_line_offset = getelementptr i8, ptr %sd, i32 432
  %19 = ptrtoint ptr %vbi_line_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vbi_line_offset, align 4
  %add = add i32 %20, %and25
  %add.ptr26 = getelementptr i8, ptr %1, i32 8
  %21 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %if.end.sw.epilog.thread98_crit_edge [
    i32 1, label %if.end.sw.epilog.thread_crit_edge
    i32 4, label %sw.bb27
    i32 6, label %sw.bb28
    i32 9, label %sw.epilog
  ]

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.sw.epilog.thread98_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread98

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb28:                                          ; preds = %if.end
  %22 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr26, align 1
  %24 = lshr i8 %23, 4
  %xor.i = xor i8 %24, %23
  %25 = lshr i8 %xor.i, 2
  %xor6.i = xor i8 %25, %xor.i
  %26 = lshr i8 %xor6.i, 1
  %xor11.i = xor i8 %26, %xor6.i
  %27 = and i8 %xor11.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %sw.bb28.sw.epilog.thread98_crit_edge, label %lor.rhs

sw.bb28.sw.epilog.thread98_crit_edge:             ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread98

lor.rhs:                                          ; preds = %sw.bb28
  %arrayidx32 = getelementptr i8, ptr %1, i32 9
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  %30 = lshr i8 %29, 4
  %xor.i87 = xor i8 %30, %29
  %31 = lshr i8 %xor.i87, 2
  %xor6.i88 = xor i8 %31, %xor.i87
  %32 = lshr i8 %xor6.i88, 1
  %xor11.i89 = xor i8 %32, %xor6.i88
  %33 = and i8 %xor11.i89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %lor.rhs.sw.epilog.thread98_crit_edge, label %lor.rhs.sw.epilog.thread_crit_edge

lor.rhs.sw.epilog.thread_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

lor.rhs.sw.epilog.thread98_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread98

sw.epilog:                                        ; preds = %if.end
  %call36 = tail call fastcc i32 @decode_vps(ptr noundef %add.ptr26, ptr noundef %add.ptr26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.sw.epilog.thread98_crit_edge

sw.epilog.sw.epilog.thread98_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread98

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.epilog.thread98:                               ; preds = %sw.epilog.sw.epilog.thread98_crit_edge, %lor.rhs.sw.epilog.thread98_crit_edge, %sw.bb28.sw.epilog.thread98_crit_edge, %if.end.sw.epilog.thread98_crit_edge
  %type42102 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %34 = ptrtoint ptr %type42102 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type42102, align 4
  %line48 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %35 = ptrtoint ptr %line48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %line48, align 4
  br label %38

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %lor.rhs.sw.epilog.thread_crit_edge, %sw.bb27, %if.end.sw.epilog.thread_crit_edge
  %id2.093 = phi i32 [ 1024, %sw.epilog.sw.epilog.thread_crit_edge ], [ 4096, %lor.rhs.sw.epilog.thread_crit_edge ], [ %and, %if.end.sw.epilog.thread_crit_edge ], [ 16384, %sw.bb27 ]
  %type42 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %36 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %id2.093, ptr %type42, align 4
  %line48106 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %37 = ptrtoint ptr %line48106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %line48106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %9)
  %cmp52107 = icmp eq i8 %9, 85
  %conv53108 = zext i1 %cmp52107 to i32
  br label %38

38:                                               ; preds = %sw.epilog.thread, %sw.epilog.thread98
  %39 = phi i32 [ %conv53108, %sw.epilog.thread ], [ 0, %sw.epilog.thread98 ]
  %40 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %vbi, align 4
  %41 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr26, ptr %p1, align 4
  br label %cleanup

cleanup:                                          ; preds = %38, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_vps(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %p) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %add22, %for.body.for.body_crit_edge ]
  %err.038 = phi i32 [ 0, %entry ], [ %or7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %p, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr [256 x i8], ptr @decode_vps.biphase_tbl, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %add = or i32 %i.039, 1
  %arrayidx2 = getelementptr i8, ptr %p, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %5 to i32
  %arrayidx4 = getelementptr [256 x i8], ptr @decode_vps.biphase_tbl, i32 0, i32 %idxprom3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %or35 = or i8 %7, %3
  %or = zext i8 %or35 to i32
  %or7 = or i32 %err.038, %or
  %8 = and i8 %7, 15
  %9 = shl i8 %3, 4
  %or1936 = or i8 %8, %9
  %div37 = lshr exact i32 %i.039, 1
  %arrayidx21 = getelementptr i8, ptr %dst, i32 %div37
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or1936, ptr %arrayidx21, align 1
  %add22 = add nuw nsw i32 %i.039, 2
  %cmp = icmp ult i32 %i.039, 24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and24 = and i32 %or7, 240
  ret i32 %and24
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @cx25840_g_sliced_fmt.lcr2vbi, !1, !"lcr2vbi", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/cx25840/cx25840-vbi.c", i32 76, i32 19}
!2 = !{ptr @decode_vps.biphase_tbl, !3, !"biphase_tbl", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/cx25840/cx25840-vbi.c", i32 24, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
