; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 18, i64 19, i64 20, i64 33, i64 35, i64 36, i64 37, i64 48, i64 53, i64 64]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 73, i64 75]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_table(ptr noundef %bios, ptr nocapture noundef %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %snr, ptr nocapture noundef writeonly %ssz) local_unnamed_addr #0 align 64 {
entry:
  %bit_P = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_P) #4
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 3
  %1 = call ptr @memset(ptr %bit_P, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 80, ptr noundef nonnull %bit_P) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.bit_entry, ptr %bit_P, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp ult i8 %4, 3
  br i1 %cmp, label %if.then2, label %if.then.if.end45_crit_edge

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then2:                                         ; preds = %if.then
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %0, align 2
  %conv3 = zext i16 %6 to i32
  %call4 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end45_crit_edge, label %if.then6

if.then2.if.end45_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then6:                                         ; preds = %if.then2
  %call8 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call4) #4
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call8, ptr %ver, align 1
  %add9 = add i32 %call4, 1
  %call10 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add9) #4
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call10, ptr %hdr, align 1
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp15 = icmp eq i8 %10, 64
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %add18 = add i32 %call4, 5
  %call19 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add18) #4
  %11 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call19, ptr %cnt, align 1
  %add20 = add i32 %call4, 2
  %call21 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add20) #4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call21, ptr %len, align 1
  %add22 = add i32 %call4, 4
  %call23 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add22) #4
  %13 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call23, ptr %snr, align 1
  %add24 = add i32 %call4, 3
  %call25 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add24) #4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then6
  %14 = and i8 %10, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %if.then33, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %add34 = add i32 %call4, 2
  %call35 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add34) #4
  %16 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call35, ptr %cnt, align 1
  %add36 = add i32 %call4, 3
  %call37 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add36) #4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call37, ptr %len, align 1
  %add38 = add i32 %call4, 4
  %call39 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add38) #4
  %18 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call39, ptr %snr, align 1
  %add40 = add i32 %call4, 5
  %call41 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add40) #4
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.then2.if.end45_crit_edge, %if.then.if.end45_crit_edge, %entry.if.end45_crit_edge
  %bmp_offset = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 5
  %19 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bmp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not = icmp eq i32 %20, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  %add49 = add i32 %20, 6
  %call50 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add49) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %call50)
  %cmp52 = icmp ugt i8 %call50, 36
  br i1 %cmp52, label %if.then54, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then54:                                        ; preds = %if.then47
  %21 = ptrtoint ptr %bmp_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bmp_offset, align 4
  %add56 = add i32 %22, 148
  %call57 = call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add56) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call57)
  %tobool59.not = icmp eq i16 %call57, 0
  br i1 %tobool59.not, label %if.then54.cleanup_crit_edge, label %if.then60

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %conv58 = zext i16 %call57 to i32
  %call62 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv58) #4
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call62, ptr %hdr, align 1
  %add63 = add nuw nsw i32 %conv58, 1
  %call64 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add63) #4
  %24 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call64, ptr %ver, align 1
  %add65 = add nuw nsw i32 %conv58, 2
  %call66 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add65) #4
  %25 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call66, ptr %cnt, align 1
  %add67 = add nuw nsw i32 %conv58, 3
  %call68 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add67) #4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call68, ptr %len, align 1
  %27 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %snr, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then60, %if.then33, %if.then17
  %.sink = phi i8 [ 0, %if.then60 ], [ %call41, %if.then33 ], [ %call25, %if.then17 ]
  %retval.0.ph = phi i32 [ %conv58, %if.then60 ], [ %call4, %if.then33 ], [ %call4, %if.then17 ]
  %28 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %ssz, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then54.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then47.cleanup_crit_edge ], [ 0, %if.then54.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_P) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_entry(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %snr = alloca i8, align 1
  %ssz = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr) #4
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz) #4
  %1 = ptrtoint ptr %ssz to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz, align 1, !annotation !9
  %call = call i32 @nvbios_perf_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %5 to i32
  %add = add i32 %call, %conv2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3 = zext i8 %7 to i32
  %8 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %snr, align 1
  %conv4 = zext i8 %9 to i32
  %10 = ptrtoint ptr %ssz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssz, align 1
  %conv5 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv5, %conv4
  %add6 = add nuw nsw i32 %mul, %conv3
  %mul7 = mul i32 %add6, %idx
  %add8 = add i32 %add, %mul7
  store i8 %7, ptr %hdr, align 1
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %cnt, align 1
  store i8 %11, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_perfEp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef %ver, ptr nocapture noundef %hdr, ptr nocapture noundef %cnt, ptr nocapture noundef %len, ptr noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %snr.i = alloca i8, align 1
  %ssz.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr.i) #4
  %0 = ptrtoint ptr %snr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %snr.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz.i) #4
  %1 = ptrtoint ptr %ssz.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ssz.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_perf_table(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef %cnt, ptr noundef %len, ptr noundef nonnull %snr.i, ptr noundef nonnull %ssz.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_perf_entry.exit_crit_edge, label %land.lhs.true.i

entry.nvbios_perf_entry.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_perf_entry.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.nvbios_perf_entry.exit_crit_edge

land.lhs.true.i.nvbios_perf_entry.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvbios_perf_entry.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %5 to i32
  %add.i = add i32 %call.i, %conv2.i
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %snr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %snr.i, align 1
  %conv4.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %ssz.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssz.i, align 1
  %conv5.i = zext i8 %11 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add6.i = add nuw nsw i32 %mul.i, %conv3.i
  %mul7.i = mul i32 %add6.i, %idx
  %add8.i = add i32 %add.i, %mul7.i
  store i8 %7, ptr %hdr, align 1
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %cnt, align 1
  store i8 %11, ptr %len, align 1
  br label %nvbios_perf_entry.exit

nvbios_perf_entry.exit:                           ; preds = %if.then.i, %land.lhs.true.i.nvbios_perf_entry.exit_crit_edge, %entry.nvbios_perf_entry.exit_crit_edge
  %retval.0.i = phi i32 [ %add8.i, %if.then.i ], [ 0, %land.lhs.true.i.nvbios_perf_entry.exit_crit_edge ], [ 0, %entry.nvbios_perf_entry.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr.i) #4
  %13 = call ptr @memset(ptr %info, i32 0, i32 32)
  %call1 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %retval.0.i) #4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call1, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %nvbios_perf_entry.exit.cleanup_crit_edge, label %15

nvbios_perf_entry.exit.cleanup_crit_edge:         ; preds = %nvbios_perf_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

15:                                               ; preds = %nvbios_perf_entry.exit
  %16 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ver, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %.cleanup_crit_edge [
    i8 18, label %.sw.bb_crit_edge
    i8 19, label %.sw.bb_crit_edge202
    i8 20, label %.sw.bb_crit_edge203
    i8 33, label %.sw.bb15_crit_edge
    i8 35, label %.sw.bb15_crit_edge204
    i8 36, label %.sw.bb15_crit_edge205
    i8 37, label %sw.bb44
    i8 48, label %sw.bb66
    i8 53, label %.sw.bb70_crit_edge
    i8 64, label %sw.bb100
  ]

.sw.bb70_crit_edge:                               ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb70

.sw.bb15_crit_edge205:                            ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

.sw.bb15_crit_edge204:                            ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

.sw.bb15_crit_edge:                               ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

.sw.bb_crit_edge203:                              ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

.sw.bb_crit_edge202:                              ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

.sw.bb_crit_edge:                                 ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

.cleanup_crit_edge:                               ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %.sw.bb_crit_edge, %.sw.bb_crit_edge202, %.sw.bb_crit_edge203
  %add3 = add i32 %retval.0.i, 1
  %call4 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add3) #4
  %mul5 = mul i32 %call4, 10
  %core = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul5, ptr %core, align 4
  %add6 = add i32 %retval.0.i, 5
  %call7 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add6) #4
  %mul8 = mul i32 %call7, 20
  %memory = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul8, ptr %memory, align 4
  %add9 = add i32 %retval.0.i, 55
  %call10 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add9) #4
  %fanspeed = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %fanspeed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call10, ptr %fanspeed, align 1
  %22 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %23)
  %cmp = icmp ugt i8 %23, 56
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %add13 = add i32 %retval.0.i, 56
  %call14 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add13) #4
  %voltage = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 2
  %24 = ptrtoint ptr %voltage to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call14, ptr %voltage, align 2
  br label %cleanup

sw.bb15:                                          ; preds = %.sw.bb15_crit_edge, %.sw.bb15_crit_edge204, %.sw.bb15_crit_edge205
  %add16 = add i32 %retval.0.i, 4
  %call17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #4
  %fanspeed18 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 1
  %25 = ptrtoint ptr %fanspeed18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call17, ptr %fanspeed18, align 1
  %add19 = add i32 %retval.0.i, 5
  %call20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add19) #4
  %voltage21 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %voltage21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call20, ptr %voltage21, align 2
  %add22 = add i32 %retval.0.i, 6
  %call23 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add22) #4
  %conv24 = zext i16 %call23 to i32
  %mul25 = mul nuw nsw i32 %conv24, 1000
  %shader = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %shader to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul25, ptr %shader, align 4
  %add27 = add i32 %retval.0.i, 8
  %call28 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add27) #4
  %conv29 = sext i8 %call28 to i32
  %mul30 = mul nsw i32 %conv29, 1000
  %add31 = add nsw i32 %mul30, %mul25
  %core32 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 3
  %28 = ptrtoint ptr %core32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add31, ptr %core32, align 4
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chipset, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %32, label %sw.default [
    i32 73, label %sw.bb15.sw.bb33_crit_edge
    i32 75, label %sw.bb15.sw.bb33_crit_edge206
  ]

sw.bb15.sw.bb33_crit_edge206:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33

sw.bb15.sw.bb33_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb15.sw.bb33_crit_edge, %sw.bb15.sw.bb33_crit_edge206
  %add34 = add i32 %retval.0.i, 11
  %call35 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add34) #4
  %conv36 = zext i16 %call35 to i32
  %mul37 = mul nuw nsw i32 %conv36, 1000
  %memory38 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 5
  %34 = ptrtoint ptr %memory38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul37, ptr %memory38, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  %add39 = add i32 %retval.0.i, 11
  %call40 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add39) #4
  %conv41 = zext i16 %call40 to i32
  %mul42 = mul nuw nsw i32 %conv41, 2000
  %memory43 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 5
  %35 = ptrtoint ptr %memory43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul42, ptr %memory43, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  %add45 = add i32 %retval.0.i, 4
  %call46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add45) #4
  %fanspeed47 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 1
  %36 = ptrtoint ptr %fanspeed47 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call46, ptr %fanspeed47, align 1
  %add48 = add i32 %retval.0.i, 5
  %call49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add48) #4
  %voltage50 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 2
  %37 = ptrtoint ptr %voltage50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call49, ptr %voltage50, align 2
  %add51 = add i32 %retval.0.i, 6
  %call52 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add51) #4
  %conv53 = zext i16 %call52 to i32
  %mul54 = mul nuw nsw i32 %conv53, 1000
  %core55 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 3
  %38 = ptrtoint ptr %core55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul54, ptr %core55, align 4
  %add56 = add i32 %retval.0.i, 10
  %call57 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add56) #4
  %conv58 = zext i16 %call57 to i32
  %mul59 = mul nuw nsw i32 %conv58, 1000
  %shader60 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 4
  %39 = ptrtoint ptr %shader60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul59, ptr %shader60, align 4
  %add61 = add i32 %retval.0.i, 12
  %call62 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add61) #4
  %conv63 = zext i16 %call62 to i32
  %mul64 = mul nuw nsw i32 %conv63, 1000
  %memory65 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 5
  %40 = ptrtoint ptr %memory65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul64, ptr %memory65, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  %add67 = add i32 %retval.0.i, 2
  %call68 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add67) #4
  %conv69 = zext i16 %call68 to i32
  %script = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 8
  %41 = ptrtoint ptr %script to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv69, ptr %script, align 4
  br label %sw.bb70

sw.bb70:                                          ; preds = %sw.bb66, %.sw.bb70_crit_edge
  %add71 = add i32 %retval.0.i, 6
  %call72 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add71) #4
  %fanspeed73 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 1
  %42 = ptrtoint ptr %fanspeed73 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call72, ptr %fanspeed73, align 1
  %add74 = add i32 %retval.0.i, 7
  %call75 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add74) #4
  %voltage76 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 2
  %43 = ptrtoint ptr %voltage76 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call75, ptr %voltage76, align 2
  %add77 = add i32 %retval.0.i, 8
  %call78 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add77) #4
  %conv79 = zext i16 %call78 to i32
  %mul80 = mul nuw nsw i32 %conv79, 1000
  %core81 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 3
  %44 = ptrtoint ptr %core81 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul80, ptr %core81, align 4
  %add82 = add i32 %retval.0.i, 10
  %call83 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add82) #4
  %conv84 = zext i16 %call83 to i32
  %mul85 = mul nuw nsw i32 %conv84, 1000
  %shader86 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %shader86 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul85, ptr %shader86, align 4
  %add87 = add i32 %retval.0.i, 12
  %call88 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add87) #4
  %conv89 = zext i16 %call88 to i32
  %mul90 = mul nuw nsw i32 %conv89, 1000
  %memory91 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 5
  %46 = ptrtoint ptr %memory91 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul90, ptr %memory91, align 4
  %add92 = add i32 %retval.0.i, 16
  %call93 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add92) #4
  %conv94 = zext i16 %call93 to i32
  %mul95 = mul nuw nsw i32 %conv94, 1000
  %vdec = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 6
  %47 = ptrtoint ptr %vdec to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul95, ptr %vdec, align 4
  %add96 = add i32 %retval.0.i, 20
  %call97 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add96) #4
  %conv98 = zext i16 %call97 to i32
  %mul99 = mul nuw nsw i32 %conv98, 1000
  %disp = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 7
  %48 = ptrtoint ptr %disp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul99, ptr %disp, align 4
  br label %cleanup

sw.bb100:                                         ; preds = %15
  call void @__sanitizer_cov_trace_pc() #6
  %add101 = add i32 %retval.0.i, 2
  %call102 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add101) #4
  %voltage103 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 2
  %49 = ptrtoint ptr %voltage103 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call102, ptr %voltage103, align 2
  %add104 = add i32 %retval.0.i, 11
  %call105 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add104) #4
  %50 = shl i8 %call105, 3
  %51 = and i8 %50, 24
  %switch.shiftamt = zext i8 %51 to i32
  %switch.downshift = lshr i32 131073, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %pcie_speed111 = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 9
  %52 = ptrtoint ptr %pcie_speed111 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %switch.masked, ptr %pcie_speed111, align 4
  %pcie_width = getelementptr inbounds %struct.nvbios_perfE, ptr %info, i32 0, i32 10
  %53 = ptrtoint ptr %pcie_width to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %pcie_width, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb100, %sw.bb70, %sw.bb44, %sw.default, %sw.bb33, %if.then, %sw.bb.cleanup_crit_edge, %.cleanup_crit_edge, %nvbios_perf_entry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %.cleanup_crit_edge ], [ %retval.0.i, %sw.bb33 ], [ %retval.0.i, %sw.default ], [ %retval.0.i, %sw.bb.cleanup_crit_edge ], [ %retval.0.i, %if.then ], [ %retval.0.i, %sw.bb100 ], [ %retval.0.i, %sw.bb70 ], [ %retval.0.i, %sw.bb44 ], [ 0, %nvbios_perf_entry.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvbios_perfSe(ptr nocapture readnone %bios, i32 noundef %perfE, i32 noundef %idx, ptr nocapture readnone %ver, ptr nocapture noundef %hdr, i8 noundef zeroext %cnt, i8 noundef zeroext %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp = icmp sgt i32 %conv, %idx
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %1 to i32
  %conv3 = zext i8 %len to i32
  %mul = mul i32 %conv3, %idx
  %add = add i32 %mul, %perfE
  %add4 = add i32 %add, %conv2
  store i8 %len, ptr %hdr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %add4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_perfSp(ptr noundef %bios, i32 noundef %perfE, i32 noundef %idx, ptr nocapture noundef readonly %ver, ptr nocapture noundef %hdr, i8 noundef zeroext %cnt, i8 noundef zeroext %len, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %nvbios_perfSe.exit, label %entry.sw.epilog.sink.split_crit_edge

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

nvbios_perfSe.exit:                               ; preds = %entry
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %1 to i32
  %conv3.i = zext i8 %len to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add.i = add i32 %mul.i, %perfE
  %add4.i = add i32 %add.i, %conv2.i
  store i8 %len, ptr %hdr, align 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not = icmp ne i32 %add4.i, 0
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cond10 = icmp eq i8 %4, 64
  %cond = select i1 %tobool.not, i1 %cond10, i1 false
  br i1 %cond, label %sw.bb, label %nvbios_perfSe.exit.sw.epilog_crit_edge

nvbios_perfSe.exit.sw.epilog_crit_edge:           ; preds = %nvbios_perfSe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %nvbios_perfSe.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add4.i) #4
  %5 = and i16 %call2, 16383
  %and = zext i16 %5 to i32
  %mul4 = mul nuw nsw i32 %and, 1000
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %mul4, %sw.bb ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %data.0.i15.ph = phi i32 [ %add4.i, %sw.bb ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %info, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %nvbios_perfSe.exit.sw.epilog_crit_edge
  %data.0.i15 = phi i32 [ %add4.i, %nvbios_perfSe.exit.sw.epilog_crit_edge ], [ %data.0.i15.ph, %sw.epilog.sink.split ]
  ret i32 %data.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_fan_parse(ptr noundef %bios, ptr nocapture noundef writeonly %fan) local_unnamed_addr #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %snr = alloca i8, align 1
  %ssz = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #4
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %snr) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssz) #4
  %call = call i32 @nvbios_perf_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %snr, ptr noundef nonnull %ssz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ver, align 1
  %4 = and i8 %3, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %5 = icmp eq i8 %4, 32
  br i1 %5, label %land.lhs.true5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true5:                                   ; preds = %if.end
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp7 = icmp ugt i8 %7, 6
  br i1 %cmp7, label %if.then9, label %land.lhs.true5.if.end13_crit_edge

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %call, 6
  %call10 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add) #4
  %conv11 = zext i16 %call10 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %storemerge = phi i32 [ %conv11, %if.then9 ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %8 = ptrtoint ptr %fan to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %fan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssz) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %snr) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"auto-init"}
