; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvbios_dpcfg = type { i8, i8, i8, i8 }

@nvbios_dpcfg_match.vsoff = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\04\07\09", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 32, i64 33, i64 48, i64 64, i64 65, i64 66]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 8, i64 32, i64 33, i64 48, i64 64, i64 65, i64 66]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 8, i64 32, i64 33, i64 48, i64 64, i64 65, i64 66]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 8, i64 32, i64 33, i64 48, i64 64, i64 65, i64 66]
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"vsoff\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 215, i32 19 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvbios_dpcfg_match.vsoff], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_dpcfg_match.vsoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dp_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %d, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %d, i32 0, i32 3
  %2 = call ptr @memset(ptr %d, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 100, ptr noundef nonnull %d) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup24_crit_edge

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp3 = icmp ugt i16 %7, 1
  br i1 %cmp3, label %if.then5, label %land.lhs.true.cleanup24_crit_edge

land.lhs.true.cleanup24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.then5:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %call7 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv6) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call7)
  %tobool8.not = icmp eq i16 %call7, 0
  br i1 %tobool8.not, label %if.then5.cleanup24_crit_edge, label %if.then9

if.then5.cleanup24_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.then9:                                         ; preds = %if.then5
  %conv10 = zext i16 %call7 to i32
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv10) #3
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11, ptr %ver, align 1
  %11 = zext i8 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call11, label %if.then9.cleanup24_crit_edge [
    i8 32, label %if.then9.sw.bb_crit_edge
    i8 33, label %if.then9.sw.bb_crit_edge36
    i8 48, label %if.then9.sw.bb_crit_edge37
    i8 64, label %if.then9.sw.bb_crit_edge38
    i8 65, label %if.then9.sw.bb_crit_edge39
    i8 66, label %if.then9.sw.bb_crit_edge40
  ]

if.then9.sw.bb_crit_edge40:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.sw.bb_crit_edge39:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.sw.bb_crit_edge38:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.sw.bb_crit_edge37:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.sw.bb_crit_edge36:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.sw.bb_crit_edge:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then9.cleanup24_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

sw.bb:                                            ; preds = %if.then9.sw.bb_crit_edge, %if.then9.sw.bb_crit_edge36, %if.then9.sw.bb_crit_edge37, %if.then9.sw.bb_crit_edge38, %if.then9.sw.bb_crit_edge39, %if.then9.sw.bb_crit_edge40
  %add14 = add nuw nsw i32 %conv10, 1
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call15, ptr %hdr, align 1
  %add17 = add nuw nsw i32 %conv10, 2
  %call18 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add17) #3
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call18, ptr %len, align 1
  %add20 = add nuw nsw i32 %conv10, 3
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #3
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call21, ptr %cnt, align 1
  br label %cleanup24

cleanup24:                                        ; preds = %sw.bb, %if.then9.cleanup24_crit_edge, %if.then5.cleanup24_crit_edge, %land.lhs.true.cleanup24_crit_edge, %if.then.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i16 [ %call7, %sw.bb ], [ 0, %if.then9.cleanup24_crit_edge ], [ 0, %if.then5.cleanup24_crit_edge ], [ 0, %if.then.cleanup24_crit_edge ], [ 0, %land.lhs.true.cleanup24_crit_edge ], [ 0, %entry.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d) #3
  ret i16 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpout_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @nvbios_dp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len) #3
  %conv.i = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_dpout_entry.exit.thread_crit_edge, label %land.lhs.true.i

entry.nvbios_dpout_entry.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_dpout_entry.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %idx)
  %cmp.i = icmp ugt i8 %1, %idx
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.nvbios_dpout_entry.exit.thread_crit_edge

land.lhs.true.i.nvbios_dpout_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_dpout_entry.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  %conv1.i = zext i8 %idx to i32
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %conv5.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv5.i, %conv.i
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %5 to i32
  %mul.i = mul nuw nsw i32 %conv7.i, %conv1.i
  %add8.i = add nuw nsw i32 %add.i, %mul.i
  %call9.i = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add8.i) #3
  %6 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9.i)
  %tobool11.not.i = icmp eq i16 %call9.i, 0
  %trunc.i = select i1 %tobool11.not.i, i8 0, i8 %7
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %trunc.i, label %if.then.i.nvbios_dpout_entry.exit_crit_edge [
    i8 32, label %if.then.i.sw.bb.i_crit_edge
    i8 33, label %if.then.i.sw.bb.i_crit_edge163
    i8 48, label %if.then.i.sw.bb.i_crit_edge164
    i8 64, label %if.then.i.sw.bb23.i_crit_edge
    i8 65, label %if.then.i.sw.bb23.i_crit_edge165
    i8 66, label %if.then.i.sw.bb23.i_crit_edge166
  ]

if.then.i.sw.bb23.i_crit_edge166:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb23.i

if.then.i.sw.bb23.i_crit_edge165:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb23.i

if.then.i.sw.bb23.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb23.i

if.then.i.sw.bb.i_crit_edge164:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge163:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.then.i.nvbios_dpout_entry.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_dpout_entry.exit

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge163, %if.then.i.sw.bb.i_crit_edge164
  %add15.i = add nuw nsw i32 %conv.i, 4
  %call16.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add15.i) #3
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call16.i, ptr %hdr, align 1
  %add18.i = add nuw nsw i32 %conv.i, 5
  %call19.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18.i) #3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call19.i, ptr %len, align 1
  %conv20.i = zext i16 %call9.i to i32
  %add21.i = add nuw nsw i32 %conv20.i, 4
  %call22.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add21.i) #3
  %11 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call22.i, ptr %cnt, align 1
  br label %nvbios_dpout_entry.exit

sw.bb23.i:                                        ; preds = %if.then.i.sw.bb23.i_crit_edge, %if.then.i.sw.bb23.i_crit_edge165, %if.then.i.sw.bb23.i_crit_edge166
  %add25.i = add nuw nsw i32 %conv.i, 4
  %call26.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add25.i) #3
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call26.i, ptr %hdr, align 1
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cnt, align 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %len, align 1
  br label %nvbios_dpout_entry.exit

nvbios_dpout_entry.exit.thread:                   ; preds = %land.lhs.true.i.nvbios_dpout_entry.exit.thread_crit_edge, %entry.nvbios_dpout_entry.exit.thread_crit_edge
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ver, align 1
  %16 = call ptr @memset(ptr %info, i32 0, i32 32)
  br label %if.end101

nvbios_dpout_entry.exit:                          ; preds = %sw.bb23.i, %sw.bb.i, %if.then.i.nvbios_dpout_entry.exit_crit_edge
  %17 = call ptr @memset(ptr %info, i32 0, i32 32)
  %conv = zext i16 %call9.i to i32
  br i1 %tobool11.not.i, label %nvbios_dpout_entry.exit.if.end101_crit_edge, label %land.lhs.true

nvbios_dpout_entry.exit.if.end101_crit_edge:      ; preds = %nvbios_dpout_entry.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

land.lhs.true:                                    ; preds = %nvbios_dpout_entry.exit
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end101_crit_edge, label %if.then

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %conv) #3
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call4, ptr %info, align 4
  %add6 = add nuw nsw i32 %conv, 2
  %call7 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add6) #3
  %mask = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call7, ptr %mask, align 2
  %22 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ver, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %23, label %if.then.if.end101_crit_edge [
    i8 32, label %sw.bb
    i8 33, label %if.then.sw.bb12_crit_edge
    i8 48, label %if.then.sw.bb12_crit_edge167
    i8 64, label %if.then.sw.bb61_crit_edge
    i8 65, label %if.then.sw.bb61_crit_edge168
    i8 66, label %if.then.sw.bb61_crit_edge169
  ]

if.then.sw.bb61_crit_edge169:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

if.then.sw.bb61_crit_edge168:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

if.then.sw.bb61_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

if.then.sw.bb12_crit_edge167:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb12

if.then.sw.bb12_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb12

if.then.if.end101_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %25 = or i16 %call7, 192
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %mask, align 2
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %if.then.sw.bb12_crit_edge, %if.then.sw.bb12_crit_edge167
  %add14 = add nuw nsw i32 %conv, 5
  %call15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %flags = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call15, ptr %flags, align 4
  %add17 = add nuw nsw i32 %conv, 6
  %call18 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add17) #3
  %conv19 = zext i16 %call18 to i32
  %script = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 3
  %28 = ptrtoint ptr %script to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv19, ptr %script, align 4
  %add21 = add nuw nsw i32 %conv, 8
  %call22 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add21) #3
  %conv23 = zext i16 %call22 to i32
  %arrayidx25 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv23, ptr %arrayidx25, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %31)
  %cmp = icmp ugt i8 %31, 11
  br i1 %cmp, label %if.end, label %sw.bb12.if.end101_crit_edge

sw.bb12.if.end101_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.end:                                           ; preds = %sw.bb12
  %add30 = add nuw nsw i32 %conv, 10
  %call31 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add30) #3
  %conv32 = zext i16 %call31 to i32
  %lnkcmp = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 4
  %32 = ptrtoint ptr %lnkcmp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv32, ptr %lnkcmp, align 4
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %33)
  %.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %.pr)
  %cmp34 = icmp ugt i8 %.pr, 14
  br i1 %cmp34, label %if.end49, label %if.end.if.end101_crit_edge

if.end.if.end101_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.end49:                                         ; preds = %if.end
  %add38 = add nuw nsw i32 %conv, 12
  %call39 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add38) #3
  %conv40 = zext i16 %call39 to i32
  %arrayidx42 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv40, ptr %arrayidx42, align 4
  %add44 = add nuw nsw i32 %conv, 14
  %call45 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add44) #3
  %conv46 = zext i16 %call45 to i32
  %arrayidx48 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv46, ptr %arrayidx48, align 4
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr161 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.pr161)
  %cmp51 = icmp ugt i8 %.pr161, 16
  br i1 %cmp51, label %if.then53, label %if.end49.if.end101_crit_edge

if.end49.if.end101_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end101

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  %add55 = add nuw nsw i32 %conv, 16
  %call56 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add55) #3
  %conv57 = zext i16 %call56 to i32
  %arrayidx59 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv57, ptr %arrayidx59, align 4
  br label %if.end101

sw.bb61:                                          ; preds = %if.then.sw.bb61_crit_edge, %if.then.sw.bb61_crit_edge168, %if.then.sw.bb61_crit_edge169
  %add63 = add nuw nsw i32 %conv, 4
  %call64 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add63) #3
  %flags65 = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 2
  %38 = ptrtoint ptr %flags65 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call64, ptr %flags65, align 4
  %add67 = add nuw nsw i32 %conv, 5
  %call68 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add67) #3
  %conv69 = zext i16 %call68 to i32
  %script70 = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %script70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv69, ptr %script70, align 4
  %add73 = add nuw nsw i32 %conv, 7
  %call74 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add73) #3
  %conv75 = zext i16 %call74 to i32
  %arrayidx77 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv75, ptr %arrayidx77, align 4
  %add79 = add nuw nsw i32 %conv, 9
  %call80 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add79) #3
  %conv81 = zext i16 %call80 to i32
  %lnkcmp82 = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 4
  %41 = ptrtoint ptr %lnkcmp82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv81, ptr %lnkcmp82, align 4
  %add84 = add nuw nsw i32 %conv, 11
  %call85 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add84) #3
  %conv86 = zext i16 %call85 to i32
  %arrayidx88 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv86, ptr %arrayidx88, align 4
  %add90 = add nuw nsw i32 %conv, 13
  %call91 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add90) #3
  %conv92 = zext i16 %call91 to i32
  %arrayidx94 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv92, ptr %arrayidx94, align 4
  %add96 = add nuw nsw i32 %conv, 15
  %call97 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add96) #3
  %conv98 = zext i16 %call97 to i32
  %arrayidx100 = getelementptr %struct.nvbios_dpout, ptr %info, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv98, ptr %arrayidx100, align 4
  br label %if.end101

if.end101:                                        ; preds = %sw.bb61, %if.then53, %if.end49.if.end101_crit_edge, %if.end.if.end101_crit_edge, %sw.bb12.if.end101_crit_edge, %if.then.if.end101_crit_edge, %land.lhs.true.if.end101_crit_edge, %nvbios_dpout_entry.exit.if.end101_crit_edge, %nvbios_dpout_entry.exit.thread
  %data.0 = phi i16 [ %call9.i, %sw.bb61 ], [ %call9.i, %if.then53 ], [ %call9.i, %if.end49.if.end101_crit_edge ], [ %call9.i, %land.lhs.true.if.end101_crit_edge ], [ 0, %nvbios_dpout_entry.exit.if.end101_crit_edge ], [ 0, %if.then.if.end101_crit_edge ], [ 0, %nvbios_dpout_entry.exit.thread ], [ %call9.i, %if.end.if.end101_crit_edge ], [ %call9.i, %sw.bb12.if.end101_crit_edge ]
  ret i16 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpout_match(ptr noundef %bios, i16 noundef zeroext %type, i16 noundef zeroext %mask, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mask10 = getelementptr inbounds %struct.nvbios_dpout, ptr %info, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %idx.0 = phi i16 [ 0, %entry ], [ %inc, %while.cond.backedge ]
  %inc = add i16 %idx.0, 1
  %conv = trunc i16 %idx.0 to i8
  %call = tail call zeroext i16 @nvbios_dpout_parse(ptr noundef %bios, i8 noundef zeroext %conv, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %land.lhs.true.critedge

lor.rhs:                                          ; preds = %while.cond
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %lor.rhs.while.end_crit_edge, label %lor.rhs.while.cond.backedge_crit_edge

lor.rhs.while.cond.backedge_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.cond.backedge:                              ; preds = %if.then.while.cond.backedge_crit_edge, %land.lhs.true.critedge.while.cond.backedge_crit_edge, %lor.rhs.while.cond.backedge_crit_edge
  br label %while.cond

land.lhs.true.critedge:                           ; preds = %while.cond
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %info, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %type)
  %cmp = icmp eq i16 %3, %type
  br i1 %cmp, label %if.then, label %land.lhs.true.critedge.while.cond.backedge_crit_edge

land.lhs.true.critedge.while.cond.backedge_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

if.then:                                          ; preds = %land.lhs.true.critedge
  %4 = ptrtoint ptr %mask10 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask10, align 2
  %and23 = and i16 %5, %mask
  call void @__sanitizer_cov_trace_cmp2(i16 %and23, i16 %mask)
  %cmp14 = icmp eq i16 %and23, %mask
  br i1 %cmp14, label %if.then.while.end_crit_edge, label %if.then.while.cond.backedge_crit_edge

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.backedge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.then.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpcfg_parse(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %0 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ver, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %2, label %if.then.if.end_crit_edge [
    i8 32, label %if.then.sw.bb_crit_edge
    i8 33, label %if.then.sw.bb_crit_edge70
    i8 48, label %if.then.sw.bb9_crit_edge
    i8 64, label %if.then.sw.bb9_crit_edge71
    i8 65, label %if.then.sw.bb9_crit_edge72
    i8 66, label %sw.bb25
  ]

if.then.sw.bb9_crit_edge72:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb9

if.then.sw.bb9_crit_edge71:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb9

if.then.sw.bb9_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb9

if.then.sw.bb_crit_edge70:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge70
  %conv1 = zext i16 %call to i32
  %add = add nuw nsw i32 %conv1, 2
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add) #3
  %dc = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %dc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call2, ptr %dc, align 1
  %add4 = add nuw nsw i32 %conv1, 3
  %call5 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add4) #3
  %pe = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %pe to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call5, ptr %pe, align 1
  %add7 = add nuw nsw i32 %conv1, 4
  br label %if.end.sink.split

sw.bb9:                                           ; preds = %if.then.sw.bb9_crit_edge, %if.then.sw.bb9_crit_edge71, %if.then.sw.bb9_crit_edge72
  %conv10 = zext i16 %call to i32
  %call12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv10) #3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call12, ptr %info, align 1
  %add14 = add nuw nsw i32 %conv10, 1
  %call15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %dc16 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %dc16 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call15, ptr %dc16, align 1
  %add18 = add nuw nsw i32 %conv10, 2
  %call19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #3
  %pe20 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %pe20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call19, ptr %pe20, align 1
  %add22 = add nuw nsw i32 %conv10, 3
  br label %if.end.sink.split

sw.bb25:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %conv26 = zext i16 %call to i32
  %call28 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv26) #3
  %dc29 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %dc29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call28, ptr %dc29, align 1
  %add31 = add nuw nsw i32 %conv26, 1
  %call32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add31) #3
  %pe33 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %pe33 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call32, ptr %pe33, align 1
  %add35 = add nuw nsw i32 %conv26, 2
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb25, %sw.bb9, %sw.bb
  %add7.sink = phi i32 [ %add7, %sw.bb ], [ %add22, %sw.bb9 ], [ %add35, %sw.bb25 ]
  %call8 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add7.sink) #3
  %tx_pu = getelementptr inbounds %struct.nvbios_dpcfg, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %tx_pu to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call8, ptr %tx_pu, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %data.0 = phi i16 [ 0, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ %call, %if.end.sink.split ]
  ret i16 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp = icmp ugt i8 %1, 63
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i16 @nvbios_dp_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr, align 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cnt, align 1
  %mul = mul i8 %7, %5
  %add = add i8 %mul, %3
  store i8 %add, ptr %hdr, align 1
  %conv6 = zext i16 %call to i32
  %add7 = add nuw nsw i32 %conv6, 6
  %call8 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add7) #3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call8, ptr %len, align 1
  %add10 = add nuw nsw i32 %conv6, 7
  %call11 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add10) #3
  %add14 = add nuw nsw i32 %conv6, 5
  %call15 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %mul17 = mul i8 %call15, %call11
  %9 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %mul17, ptr %cnt, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %outp.addr.0 = phi i16 [ %call, %if.then ], [ %outp, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %idx)
  %cmp21 = icmp ugt i8 %11, %idx
  br i1 %cmp21, label %if.then23, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv19 = zext i8 %idx to i16
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 1
  %conv25 = zext i8 %13 to i16
  %add26 = add i16 %outp.addr.0, %conv25
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len, align 1
  %conv28 = zext i8 %15 to i16
  %mul29 = mul nuw i16 %conv28, %conv19
  %add30 = add i16 %add26, %mul29
  br label %return

return:                                           ; preds = %if.then23, %if.end.return_crit_edge
  %retval.0 = phi i16 [ %add30, %if.then23 ], [ 0, %if.end.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpcfg_match(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %pc, i8 noundef zeroext %vs, i8 noundef zeroext %pe, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call3983 = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext 0, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3983)
  %tobool.not84 = icmp eq i16 %call3983, 0
  br i1 %tobool.not84, label %while.cond.preheader.if.end57_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end57_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then:                                          ; preds = %entry
  %mul = mul i8 %pc, 10
  %idxprom = zext i8 %vs to i32
  %arrayidx = getelementptr [4 x i8], ptr @nvbios_dpcfg_match.vsoff, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %add = add i8 %mul, %pe
  %add5 = add i8 %add, %3
  %4 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %5 = icmp eq i8 %4, 64
  br i1 %5, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %if.then
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp15 = icmp ugt i8 %7, 17
  br i1 %cmp15, label %land.lhs.true13.if.end57.sink.split_crit_edge, label %land.lhs.true13.if.end57_crit_edge

land.lhs.true13.if.end57_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

land.lhs.true13.if.end57.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %1)
  %cmp26 = icmp ugt i8 %1, 65
  br i1 %cmp26, label %if.else.if.end57.sink.split_crit_edge, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.else.if.end57.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57.sink.split

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3987 = phi i16 [ %call39, %if.end56.while.body_crit_edge ], [ %call3983, %while.cond.preheader.while.body_crit_edge ]
  %inc85 = phi i8 [ %inc, %if.end56.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %conv40 = zext i16 %call3987 to i32
  %call42 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv40) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %call42, i8 %vs)
  %cmp45 = icmp eq i8 %call42, %vs
  br i1 %cmp45, label %land.lhs.true47, label %while.body.if.end56_crit_edge

while.body.if.end56_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

land.lhs.true47:                                  ; preds = %while.body
  %add49 = add nuw nsw i32 %conv40, 1
  %call50 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add49) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %call50, i8 %pe)
  %cmp53 = icmp eq i8 %call50, %pe
  br i1 %cmp53, label %land.lhs.true47.if.end57_crit_edge, label %land.lhs.true47.if.end56_crit_edge

land.lhs.true47.if.end56_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

land.lhs.true47.if.end57_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.end56:                                         ; preds = %land.lhs.true47.if.end56_crit_edge, %while.body.if.end56_crit_edge
  %inc = add i8 %inc85, 1
  %call39 = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %inc, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len)
  %tobool.not = icmp eq i16 %call39, 0
  br i1 %tobool.not, label %if.end56.if.end57_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end56.if.end57_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.end57.sink.split:                              ; preds = %if.else.if.end57.sink.split_crit_edge, %land.lhs.true13.if.end57.sink.split_crit_edge
  %.sink = phi i8 [ 40, %land.lhs.true13.if.end57.sink.split_crit_edge ], [ 10, %if.else.if.end57.sink.split_crit_edge ]
  %conv18 = zext i16 %outp to i32
  %add19 = add nuw nsw i32 %conv18, 17
  %call = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #3
  %mul21 = mul i8 %call, %.sink
  %add23 = add i8 %mul21, %add5
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.end56.if.end57_crit_edge, %land.lhs.true47.if.end57_crit_edge, %if.else.if.end57_crit_edge, %land.lhs.true13.if.end57_crit_edge, %while.cond.preheader.if.end57_crit_edge
  %idx.1 = phi i8 [ %add5, %if.else.if.end57_crit_edge ], [ %add5, %land.lhs.true13.if.end57_crit_edge ], [ 0, %while.cond.preheader.if.end57_crit_edge ], [ %add23, %if.end57.sink.split ], [ %inc85, %land.lhs.true47.if.end57_crit_edge ], [ %inc, %if.end56.if.end57_crit_edge ]
  %call58 = tail call zeroext i16 @nvbios_dpcfg_parse(ptr noundef %bios, i16 noundef zeroext %outp, i8 noundef zeroext %idx.1, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef %info)
  ret i16 %call58
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvbios_dpcfg_match.vsoff, !1, !"vsoff", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c", i32 215, i32 19}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
