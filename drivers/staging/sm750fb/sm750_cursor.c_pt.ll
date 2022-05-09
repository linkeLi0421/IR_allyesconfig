; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/sm750_cursor.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/sm750_cursor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lynx_cursor = type { i32, i32, i32, i32, i32, ptr, i32, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_enable(ptr nocapture noundef readonly %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 6
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %and = and i32 %1, 67108863
  %or = or i32 %and, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mmio = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 7
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_disable(ptr nocapture noundef readonly %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %mmio = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 7
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #4, !srcloc !10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sm750_hw_cursor_setSize(ptr nocapture noundef writeonly %cursor, i32 noundef %w, i32 noundef %h) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %w, ptr %cursor, align 4
  %h2 = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 1
  %1 = ptrtoint ptr %h2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %h, ptr %h2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_setPos(ptr nocapture noundef readonly %cursor, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %y, 16
  %and = and i32 %shl, 134152192
  %and1 = and i32 %x, 2047
  %or = or i32 %and, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mmio = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 7
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_setColor(ptr nocapture noundef readonly %cursor, i32 noundef %fg, i32 noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %fg, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %and1 = and i32 %bg, 65535
  %or = or i32 %and1, %shl
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mmio = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 7
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -520159232) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_setData(ptr nocapture noundef readonly %cursor, i16 noundef zeroext %rop, ptr nocapture noundef readonly %pcol, ptr nocapture noundef readonly %pmsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cursor, align 4
  %shr = ashr i32 %1, 3
  %h = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 1
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h, align 4
  %mul = mul i32 %shr, %3
  %max_w = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 3
  %4 = ptrtoint ptr %max_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_w, align 4
  %mul1 = shl i32 %5, 1
  %div = sdiv i32 %mul1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp57 = icmp sgt i32 %mul, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end34_crit_edge

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.body.lr.ph:                                   ; preds = %entry
  %vstart = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 5
  %6 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vstart, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %rop)
  %cmp8 = icmp eq i16 %rop, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pstart.062 = phi ptr [ %7, %for.body.lr.ph ], [ %pstart.1, %for.body.for.body_crit_edge ]
  %pbuffer.061 = phi ptr [ %7, %for.body.lr.ph ], [ %pbuffer.1, %for.body.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %pmsk.addr.059 = phi ptr [ %pmsk, %for.body.lr.ph ], [ %incdec.ptr2, %for.body.for.body_crit_edge ]
  %pcol.addr.058 = phi ptr [ %pcol, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %pcol.addr.058 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcol.addr.058, align 1
  %10 = ptrtoint ptr %pmsk.addr.059 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pmsk.addr.059, align 1
  %conv = zext i8 %11 to i32
  %xor53 = xor i8 %11, %9
  %and1652 = and i8 %11, %9
  %opr.0 = select i1 %cmp8, i8 %xor53, i8 %and1652
  %conv18 = zext i8 %opr.0 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and20 = and i32 %conv18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %12 = select i1 %tobool21.not, i16 1, i16 2
  %data.1 = select i1 %tobool.not, i16 0, i16 %12
  %and.1 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %and20.1 = and i32 %conv18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  %13 = select i1 %tobool21.not.1, i16 4, i16 8
  %conv24.1 = select i1 %tobool.not.1, i16 0, i16 %13
  %data.1.1 = or i16 %data.1, %conv24.1
  %and.2 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %and20.2 = and i32 %conv18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  %14 = select i1 %tobool21.not.2, i16 16, i16 32
  %conv24.2 = select i1 %tobool.not.2, i16 0, i16 %14
  %data.1.2 = or i16 %data.1.1, %conv24.2
  %and.3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %and20.3 = and i32 %conv18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  %15 = select i1 %tobool21.not.3, i16 64, i16 128
  %conv24.3 = select i1 %tobool.not.3, i16 0, i16 %15
  %data.1.3 = or i16 %data.1.2, %conv24.3
  %and.4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %and20.4 = and i32 %conv18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  %16 = select i1 %tobool21.not.4, i16 256, i16 512
  %conv24.4 = select i1 %tobool.not.4, i16 0, i16 %16
  %data.1.4 = or i16 %data.1.3, %conv24.4
  %and.5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %and20.5 = and i32 %conv18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5)
  %tobool21.not.5 = icmp eq i32 %and20.5, 0
  %17 = select i1 %tobool21.not.5, i16 1024, i16 2048
  %conv24.5 = select i1 %tobool.not.5, i16 0, i16 %17
  %data.1.5 = or i16 %data.1.4, %conv24.5
  %and.6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %and20.6 = and i32 %conv18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.6)
  %tobool21.not.6 = icmp eq i32 %and20.6, 0
  %18 = select i1 %tobool21.not.6, i16 4096, i16 8192
  %conv24.6 = select i1 %tobool.not.6, i16 0, i16 %18
  %data.1.6 = or i16 %data.1.5, %conv24.6
  %and.7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %and20.7 = and i32 %conv18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.7)
  %tobool21.not.7 = icmp eq i32 %and20.7, 0
  %19 = select i1 %tobool21.not.7, i16 16384, i16 -32768
  %conv24.7 = select i1 %tobool.not.7, i16 0, i16 %19
  %data.1.7 = or i16 %data.1.6, %conv24.7
  %incdec.ptr = getelementptr i8, ptr %pcol.addr.058, i32 1
  %incdec.ptr2 = getelementptr i8, ptr %pmsk.addr.059, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %20 = tail call i16 @llvm.bswap.i16(i16 %data.1.7) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %pbuffer.061, i16 %20) #4, !srcloc !16
  %add = add nuw nsw i32 %i.060, 1
  %rem = srem i32 %add, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp26 = icmp eq i32 %rem, 0
  %add.ptr = getelementptr i8, ptr %pstart.062, i32 %div
  %add.ptr30 = getelementptr i8, ptr %pbuffer.061, i32 2
  %pbuffer.1 = select i1 %cmp26, ptr %add.ptr, ptr %add.ptr30
  %pstart.1 = select i1 %cmp26, ptr %add.ptr, ptr %pstart.062
  %exitcond.not = icmp eq i32 %add, %mul
  br i1 %exitcond.not, label %for.body.for.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.end34:                                        ; preds = %for.body.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_cursor_setData2(ptr nocapture noundef readonly %cursor, i16 noundef zeroext %rop, ptr nocapture noundef readonly %pcol, ptr nocapture noundef readonly %pmsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cursor, align 4
  %shr = ashr i32 %1, 3
  %h = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 1
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h, align 4
  %mul = mul i32 %shr, %3
  %max_w = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 3
  %4 = ptrtoint ptr %max_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_w, align 4
  %mul1 = shl i32 %5, 1
  %div = sdiv i32 %mul1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp39 = icmp sgt i32 %mul, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end21_crit_edge

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %vstart = getelementptr inbounds %struct.lynx_cursor, ptr %cursor, i32 0, i32 5
  %6 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vstart, align 4
  %sub = add nsw i32 %shr, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pstart.044 = phi ptr [ %7, %for.body.lr.ph ], [ %pstart.1, %for.body.for.body_crit_edge ]
  %pbuffer.043 = phi ptr [ %7, %for.body.lr.ph ], [ %pbuffer.1, %for.body.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.body.for.body_crit_edge ]
  %pmsk.addr.041 = phi ptr [ %pmsk, %for.body.lr.ph ], [ %incdec.ptr2, %for.body.for.body_crit_edge ]
  %pcol.addr.040 = phi ptr [ %pcol, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %pcol.addr.040 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcol.addr.040, align 1
  %10 = ptrtoint ptr %pmsk.addr.041 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pmsk.addr.041, align 1
  %conv = zext i8 %11 to i32
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %12 = select i1 %tobool9.not, i16 2, i16 1
  %data.1 = select i1 %tobool.not, i16 0, i16 %12
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %and8.1 = and i32 %conv6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  %13 = select i1 %tobool9.not.1, i16 8, i16 4
  %conv13.1 = select i1 %tobool.not.1, i16 0, i16 %13
  %data.1.1 = or i16 %data.1, %conv13.1
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %and8.2 = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  %14 = select i1 %tobool9.not.2, i16 32, i16 16
  %conv13.2 = select i1 %tobool.not.2, i16 0, i16 %14
  %data.1.2 = or i16 %data.1.1, %conv13.2
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %and8.3 = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  %15 = select i1 %tobool9.not.3, i16 128, i16 64
  %conv13.3 = select i1 %tobool.not.3, i16 0, i16 %15
  %data.1.3 = or i16 %data.1.2, %conv13.3
  %and.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %and8.4 = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  %16 = select i1 %tobool9.not.4, i16 512, i16 256
  %conv13.4 = select i1 %tobool.not.4, i16 0, i16 %16
  %data.1.4 = or i16 %data.1.3, %conv13.4
  %and.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %and8.5 = and i32 %conv6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5)
  %tobool9.not.5 = icmp eq i32 %and8.5, 0
  %17 = select i1 %tobool9.not.5, i16 2048, i16 1024
  %conv13.5 = select i1 %tobool.not.5, i16 0, i16 %17
  %data.1.5 = or i16 %data.1.4, %conv13.5
  %and.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %and8.6 = and i32 %conv6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.6)
  %tobool9.not.6 = icmp eq i32 %and8.6, 0
  %18 = select i1 %tobool9.not.6, i16 8192, i16 4096
  %conv13.6 = select i1 %tobool.not.6, i16 0, i16 %18
  %data.1.6 = or i16 %data.1.5, %conv13.6
  %and.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %and8.7 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.7)
  %tobool9.not.7 = icmp eq i32 %and8.7, 0
  %19 = select i1 %tobool9.not.7, i16 -32768, i16 16384
  %conv13.7 = select i1 %tobool.not.7, i16 0, i16 %19
  %data.1.7 = or i16 %data.1.6, %conv13.7
  %incdec.ptr = getelementptr i8, ptr %pcol.addr.040, i32 1
  %incdec.ptr2 = getelementptr i8, ptr %pmsk.addr.041, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %20 = tail call i16 @llvm.bswap.i16(i16 %data.1.7) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %pbuffer.043, i16 %20) #4, !srcloc !16
  %and14 = and i32 %i.042, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %add.ptr17 = getelementptr i8, ptr %pbuffer.043, i32 2
  %add.ptr = getelementptr i8, ptr %pstart.044, i32 %div
  %pbuffer.1 = select i1 %tobool15.not, ptr %add.ptr, ptr %add.ptr17
  %pstart.1 = select i1 %tobool15.not, ptr %add.ptr, ptr %pstart.044
  %inc20 = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc20, %mul
  br i1 %exitcond.not, label %for.body.for.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.end21:                                        ; preds = %for.body.for.end21_crit_edge, %entry.for.end21_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2156231379}
!10 = !{i64 6215128}
!11 = !{i64 2156231842}
!12 = !{i64 2156232326}
!13 = !{i64 2156232852}
!14 = !{i64 2156233376}
!15 = !{i64 2153756700}
!16 = !{i64 6214508}
