; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/pmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_pmuE = type { i8, i32 }
%struct.nvbios_pmuR = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_pmuTe(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  %bit_p = alloca %struct.bit_entry, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bit_p) #3
  %0 = getelementptr inbounds %struct.bit_entry, ptr %bit_p, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bit_entry, ptr %bit_p, i32 0, i32 3
  %2 = call ptr @memset(ptr %bit_p, i32 255, i32 6)
  %call = call i32 @bit_entry(ptr noundef %bios, i8 noundef zeroext 112, ptr noundef nonnull %bit_p) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.bit_entry, ptr %bit_p, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp3 = icmp ugt i16 %7, 3
  br i1 %cmp3, label %if.end, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end:                                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %conv6 = zext i16 %9 to i32
  %call7 = call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %call7) #3
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11, ptr %ver, align 1
  %add12 = add i32 %call7, 1
  %call13 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add12) #3
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call13, ptr %hdr, align 1
  %add14 = add i32 %call7, 2
  %call15 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add14) #3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call15, ptr %len, align 1
  %add16 = add i32 %call7, 3
  %call17 = call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add16) #3
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17, ptr %cnt, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.end.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %data.1 = phi i32 [ 0, %entry.if.end19_crit_edge ], [ %call7, %if.then9 ], [ 0, %if.end.if.end19_crit_edge ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %if.then.if.end19_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bit_p) #3
  ret i32 %data.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_pmuEe(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #3
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cnt, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !9
  %call = call i32 @nvbios_pmuTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %5 to i32
  %add = add i32 %call, %conv2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv3 = zext i8 %7 to i32
  %mul = mul i32 %conv3, %idx
  %add4 = add i32 %add, %mul
  store i8 %7, ptr %hdr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_pmuEp(ptr noundef %bios, i32 noundef %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #3
  %0 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cnt.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #3
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len.i, align 1, !annotation !9
  %call.i = call i32 @nvbios_pmuTe(ptr noundef %bios, ptr noundef %ver, ptr noundef %hdr, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvbios_pmuEe.exit_crit_edge, label %land.lhs.true.i

entry.nvbios_pmuEe.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_pmuEe.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %idx)
  %cmp.i = icmp sgt i32 %conv.i, %idx
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.nvbios_pmuEe.exit_crit_edge

land.lhs.true.i.nvbios_pmuEe.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_pmuEe.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv2.i = zext i8 %5 to i32
  %add.i = add i32 %call.i, %conv2.i
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len.i, align 1
  %conv3.i = zext i8 %7 to i32
  %mul.i = mul i32 %conv3.i, %idx
  %add4.i = add i32 %add.i, %mul.i
  store i8 %7, ptr %hdr, align 1
  br label %nvbios_pmuEe.exit

nvbios_pmuEe.exit:                                ; preds = %if.then.i, %land.lhs.true.i.nvbios_pmuEe.exit_crit_edge, %entry.nvbios_pmuEe.exit_crit_edge
  %retval.0.i = phi i32 [ %add4.i, %if.then.i ], [ 0, %land.lhs.true.i.nvbios_pmuEe.exit_crit_edge ], [ 0, %entry.nvbios_pmuEe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #3
  %8 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %info, align 4
  %call2 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %retval.0.i) #3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call2, ptr %info, align 4
  %add3 = add i32 %retval.0.i, 2
  %call4 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add3) #3
  %data5 = getelementptr inbounds %struct.nvbios_pmuE, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %data5, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvbios_pmuRm(ptr noundef %bios, i8 noundef zeroext %type, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %cnt.i.i = alloca i8, align 1
  %len.i.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #3
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %hdr, align 1, !annotation !9
  %2 = call ptr @memset(ptr %info, i32 0, i32 44)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %idx.0 = phi i8 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %inc = add i8 %idx.0, 1
  %conv = zext i8 %idx.0 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i.i) #3
  %3 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cnt.i.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i.i) #3
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %len.i.i, align 1, !annotation !9
  %call.i.i = call i32 @nvbios_pmuTe(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt.i.i, ptr noundef nonnull %len.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.nvbios_pmuEp.exit_crit_edge, label %land.lhs.true.i.i

while.cond.nvbios_pmuEp.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_pmuEp.exit

land.lhs.true.i.i:                                ; preds = %while.cond
  %5 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cnt.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %idx.0)
  %cmp.i.i = icmp ugt i8 %6, %idx.0
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.nvbios_pmuEp.exit_crit_edge

land.lhs.true.i.i.nvbios_pmuEp.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvbios_pmuEp.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdr, align 1
  %conv2.i.i = zext i8 %8 to i32
  %add.i.i = add i32 %call.i.i, %conv2.i.i
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len.i.i, align 1
  %conv3.i.i = zext i8 %10 to i32
  %mul.i.i = mul nuw nsw i32 %conv3.i.i, %conv
  %add4.i.i = add i32 %add.i.i, %mul.i.i
  store i8 %10, ptr %hdr, align 1
  br label %nvbios_pmuEp.exit

nvbios_pmuEp.exit:                                ; preds = %if.then.i.i, %land.lhs.true.i.i.nvbios_pmuEp.exit_crit_edge, %while.cond.nvbios_pmuEp.exit_crit_edge
  %retval.0.i.i = phi i32 [ %add4.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.nvbios_pmuEp.exit_crit_edge ], [ 0, %while.cond.nvbios_pmuEp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i.i) #3
  %call2.i = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %retval.0.i.i) #3
  %add3.i = add i32 %retval.0.i.i, 2
  %call4.i = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add3.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not, label %nvbios_pmuEp.exit.cleanup_crit_edge, label %while.body

nvbios_pmuEp.exit.cleanup_crit_edge:              ; preds = %nvbios_pmuEp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %nvbios_pmuEp.exit
  call void @__sanitizer_cov_trace_cmp1(i8 %call2.i, i8 %type)
  %cmp = icmp ne i8 %call2.i, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not = icmp eq i32 %call4.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %while.body.while.cond_crit_edge, label %if.then

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %call4.i, 8
  %call7 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #3
  %init_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %init_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7, ptr %init_addr_pmu, align 4
  %add8 = add i32 %call4.i, 12
  %call9 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add8) #3
  %args_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 10
  %12 = ptrtoint ptr %args_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call9, ptr %args_addr_pmu, align 4
  %add10 = add i32 %call4.i, 48
  %boot_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 1
  %13 = ptrtoint ptr %boot_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add10, ptr %boot_addr, align 4
  %add11 = add i32 %call4.i, 16
  %call12 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add11) #3
  %add13 = add i32 %call4.i, 24
  %call14 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add13) #3
  %add15 = add i32 %call14, %call12
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add15, ptr %info, align 4
  %add16 = add i32 %call4.i, 28
  %call17 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add16) #3
  %call19 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add13) #3
  %sub = sub i32 %call17, %call19
  %boot_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %boot_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %boot_size, align 4
  %16 = ptrtoint ptr %boot_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %boot_addr, align 4
  %add22 = add i32 %17, %sub
  %code_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %code_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add22, ptr %code_addr, align 4
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %info, align 4
  %add25 = add i32 %20, %sub
  %code_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %code_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add25, ptr %code_addr_pmu, align 4
  %add26 = add i32 %call4.i, 32
  %call27 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add26) #3
  %code_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 5
  %22 = ptrtoint ptr %code_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call27, ptr %code_size, align 4
  %add29 = add i32 %call4.i, 36
  %call30 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add29) #3
  %add31 = add i32 %call30, %add10
  %data_addr = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 8
  %23 = ptrtoint ptr %data_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add31, ptr %data_addr, align 4
  %add32 = add i32 %call4.i, 40
  %call33 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add32) #3
  %data_addr_pmu = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 7
  %24 = ptrtoint ptr %data_addr_pmu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call33, ptr %data_addr_pmu, align 4
  %add34 = add i32 %call4.i, 44
  %call35 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add34) #3
  %data_size = getelementptr inbounds %struct.nvbios_pmuR, ptr %info, i32 0, i32 9
  %25 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call35, ptr %data_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %nvbios_pmuEp.exit.cleanup_crit_edge
  %26 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  ret i1 %26
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
