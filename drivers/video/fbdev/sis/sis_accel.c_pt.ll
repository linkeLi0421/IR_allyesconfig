; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sis/sis_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/sis/sis_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sis_video_info = type { i32, ptr, %struct.SiS_Private, %struct.sisfb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, [16 x i32], %struct.sisfb_monitor, i16, i16, [40 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.SIS_HEAP, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, [128 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, %struct.sisfb_info, %struct.sisfb_cmd, i32, i8, i8, i8, ptr }
%struct.SiS_Private = type { i8, i8, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [17 x i8], i8, i8, i16, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, i16, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i32], [7 x i8], [7 x i8], [7 x i8], [7 x i8] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.sisfb_monitor = type { i16, i16, i16, i16, i32, i8, i8 }
%struct.SIS_HEAP = type { %struct.SIS_OH, %struct.SIS_OH, ptr, ptr, i32, ptr }
%struct.SIS_OH = type { ptr, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sisfb_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i16, i32, i8, i8, i8, [183 x i8] }
%struct.sisfb_cmd = type { i32, [16 x i32], [4 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@myrops = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 3, i32 10, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [32 x i8] zeroinitializer }, align 32
@sisPatALUConv = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\A0P\F0\0A\AAZ\FA\05\A5U\F5\0F\AF_\FF", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"myrops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 68, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"sisPatALUConv\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../drivers/video/fbdev/sis/sis_accel.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 48, i32 17 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @myrops, ptr @sisPatALUConv], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @myrops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sisPatALUConv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sisfb_initaccel(ptr nocapture noundef readnone %ivideo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sisfb_syncaccel(ptr nocapture noundef %ivideo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sisvga_engine = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 103
  %0 = ptrtoint ptr %sisvga_engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sisvga_engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %mmio_vbase.i = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br i1 %cmp, label %entry.while.cond.i_crit_edge, label %entry.while.cond.i5_crit_edge

entry.while.cond.i5_crit_edge:                    ; preds = %entry
  br label %while.cond.i5

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %2 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 33346
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %5 = and i16 %4, 224
  %cmp.not.i = icmp eq i16 %5, 224
  br i1 %cmp.not.i, label %while.cond.i.while.cond4.i_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.cond.i.while.cond4.i_crit_edge:             ; preds = %while.cond.i
  br label %while.cond4.i

while.cond4.i:                                    ; preds = %while.cond4.i.while.cond4.i_crit_edge, %while.cond.i.while.cond4.i_crit_edge
  %6 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 33346
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %9 = and i16 %8, 224
  %cmp15.not.i = icmp eq i16 %9, 224
  br i1 %cmp15.not.i, label %while.cond4.i.while.cond19.i_crit_edge, label %while.cond4.i.while.cond4.i_crit_edge

while.cond4.i.while.cond4.i_crit_edge:            ; preds = %while.cond4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond4.i

while.cond4.i.while.cond19.i_crit_edge:           ; preds = %while.cond4.i
  br label %while.cond19.i

while.cond19.i:                                   ; preds = %while.cond19.i.while.cond19.i_crit_edge, %while.cond4.i.while.cond19.i_crit_edge
  %10 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %11, i32 33346
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %13 = and i16 %12, 224
  %cmp30.not.i = icmp eq i16 %13, 224
  br i1 %cmp30.not.i, label %SiS300Sync.exit, label %while.cond19.i.while.cond19.i_crit_edge

while.cond19.i.while.cond19.i_crit_edge:          ; preds = %while.cond19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond19.i

SiS300Sync.exit:                                  ; preds = %while.cond19.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %15, i32 33344
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i) #4, !srcloc !15
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %conv41.i = zext i16 %17 to i32
  br label %if.end

while.cond.i5:                                    ; preds = %while.cond.i5.while.cond.i5_crit_edge, %entry.while.cond.i5_crit_edge
  %18 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr1.i4 = getelementptr i8, ptr %19, i32 34254
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i4) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %21 = and i16 %20, 128
  %cmp.not.not.i = icmp eq i16 %21, 0
  br i1 %cmp.not.not.i, label %while.cond.i5.while.cond.i5_crit_edge, label %while.cond.i5.while.cond4.i7_crit_edge

while.cond.i5.while.cond4.i7_crit_edge:           ; preds = %while.cond.i5
  br label %while.cond4.i7

while.cond.i5.while.cond.i5_crit_edge:            ; preds = %while.cond.i5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i5

while.cond4.i7:                                   ; preds = %while.cond4.i7.while.cond4.i7_crit_edge, %while.cond.i5.while.cond4.i7_crit_edge
  %22 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr9.i6 = getelementptr i8, ptr %23, i32 34254
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i6) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %25 = and i16 %24, 128
  %cmp15.not.not.i = icmp eq i16 %25, 0
  br i1 %cmp15.not.not.i, label %while.cond4.i7.while.cond4.i7_crit_edge, label %while.cond4.i7.while.cond19.i9_crit_edge

while.cond4.i7.while.cond19.i9_crit_edge:         ; preds = %while.cond4.i7
  br label %while.cond19.i9

while.cond4.i7.while.cond4.i7_crit_edge:          ; preds = %while.cond4.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond4.i7

while.cond19.i9:                                  ; preds = %while.cond19.i9.while.cond19.i9_crit_edge, %while.cond4.i7.while.cond19.i9_crit_edge
  %26 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr24.i8 = getelementptr i8, ptr %27, i32 34254
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i8) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %29 = and i16 %28, 128
  %cmp30.not.not.i = icmp eq i16 %29, 0
  br i1 %cmp30.not.not.i, label %while.cond19.i9.while.cond19.i9_crit_edge, label %while.cond19.i9.while.cond34.i_crit_edge

while.cond19.i9.while.cond34.i_crit_edge:         ; preds = %while.cond19.i9
  br label %while.cond34.i

while.cond19.i9.while.cond19.i9_crit_edge:        ; preds = %while.cond19.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond19.i9

while.cond34.i:                                   ; preds = %while.cond34.i.while.cond34.i_crit_edge, %while.cond19.i9.while.cond34.i_crit_edge
  %30 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %31, i32 34254
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr39.i) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %33 = and i16 %32, 128
  %cmp45.not.not.i = icmp eq i16 %33, 0
  br i1 %cmp45.not.not.i, label %while.cond34.i.while.cond34.i_crit_edge, label %while.cond34.i.if.end_crit_edge

while.cond34.i.if.end_crit_edge:                  ; preds = %while.cond34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.cond34.i.while.cond34.i_crit_edge:          ; preds = %while.cond34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond34.i

if.end:                                           ; preds = %while.cond34.i.if.end_crit_edge, %SiS300Sync.exit
  %.sink = phi i32 [ %conv41.i, %SiS300Sync.exit ], [ 0, %while.cond34.i.if.end_crit_edge ]
  %cmdqueuelength.i10 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %34 = ptrtoint ptr %cmdqueuelength.i10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %cmdqueuelength.i10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbcon_sis_sync(ptr nocapture noundef readonly %info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %accel = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %engineok = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 71
  %4 = ptrtoint ptr %engineok to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %engineok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sisfb_syncaccel(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_sis_fillrect(ptr noundef %info, ptr noundef %rect) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %accel = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 70
  %8 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %engineok = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 71
  %10 = ptrtoint ptr %engineok to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %engineok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %width5 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %12 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end4
  %height8 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %14 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %16 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %17)
  %cmp11.not = icmp ugt i32 %3, %17
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %18 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp13.not = icmp ugt i32 %5, %19
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false12
  %add = add i32 %17, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp18 = icmp ugt i32 %add, %3
  %sub = sub i32 %3, %17
  %cond = select i1 %cmp18, i32 %sub, i32 %13
  %add23 = add i32 %19, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %5)
  %cmp24 = icmp ugt i32 %add23, %5
  %sub27 = sub i32 %5, %19
  %cond31 = select i1 %cmp24, i32 %sub27, i32 %15
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end15.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %if.end15.sw.bb33_crit_edge
    i32 32, label %if.end15.sw.bb33_crit_edge93
  ]

if.end15.sw.bb33_crit_edge93:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33

if.end15.sw.bb33_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb33

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %if.end15.sw.bb33_crit_edge, %if.end15.sw.bb33_crit_edge93
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %23 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pseudo_palette, align 4
  %color34 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %25 = ptrtoint ptr %color34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %color34, align 4
  %arrayidx = getelementptr i32, ptr %24, i32 %26
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb33, %sw.bb
  %arrayidx.sink = phi ptr [ %arrayidx, %sw.bb33 ], [ %color, %sw.bb ]
  %27 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end15.sw.epilog_crit_edge
  %col.0 = phi i32 [ 0, %if.end15.sw.epilog_crit_edge ], [ %28, %sw.epilog.sink.split ]
  %sisvga_engine = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 103
  %29 = ptrtoint ptr %sisvga_engine to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sisvga_engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp35 = icmp eq i32 %30, 1
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %31 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rop, align 4
  %arrayidx37 = getelementptr [16 x i32], ptr @myrops, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx37, align 4
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @SiS300SetupForSolidFill(ptr noundef %1, i32 noundef %col.0, i32 noundef %34)
  %35 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rect, align 4
  %37 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dy, align 4
  tail call fastcc void @SiS300SubsequentSolidFillRect(ptr noundef %1, i32 noundef %36, i32 noundef %38, i32 noundef %cond, i32 noundef %cond31)
  br label %if.end44

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @SiS310SetupForSolidFill(ptr noundef %1, i32 noundef %col.0, i32 noundef %34)
  %39 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rect, align 4
  %41 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dy, align 4
  tail call fastcc void @SiS310SubsequentSolidFillRect(ptr noundef %1, i32 noundef %40, i32 noundef %42, i32 noundef %cond, i32 noundef %cond31)
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then36
  tail call void @sisfb_syncaccel(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS300SetupForSolidFill(ptr nocapture noundef %ivideo, i32 noundef %color, i32 noundef %rop) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %0 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %while.cond.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %entry
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 33346
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %5 = and i16 %4, 224
  %cmp3.not = icmp eq i16 %5, 224
  br i1 %cmp3.not, label %while.cond.while.cond5_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond.while.cond5_crit_edge:                 ; preds = %while.cond
  br label %while.cond5

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %while.cond.while.cond5_crit_edge
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 33346
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %9 = and i16 %8, 224
  %cmp16.not = icmp eq i16 %9, 224
  br i1 %cmp16.not, label %while.cond5.while.cond20_crit_edge, label %while.cond5.while.cond5_crit_edge

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond5

while.cond5.while.cond20_crit_edge:               ; preds = %while.cond5
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %while.cond5.while.cond20_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 33346
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %13 = and i16 %12, 224
  %cmp31.not = icmp eq i16 %13, 224
  br i1 %cmp31.not, label %while.end34, label %while.cond20.while.cond20_crit_edge

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond20

while.end34:                                      ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr38 = getelementptr i8, ptr %15, i32 33344
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38) #4, !srcloc !15
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %conv42 = zext i16 %17 to i32
  %18 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv42, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end34, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %color)
  %mmio_vbase44 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %20 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr45 = getelementptr i8, ptr %21, i32 33308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %19) #4, !srcloc !29
  %22 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp48 = icmp slt i32 %dec, 1
  br i1 %cmp48, label %do.body.while.cond51_crit_edge, label %do.body.do.body106_crit_edge

do.body.do.body106_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body106

do.body.while.cond51_crit_edge:                   ; preds = %do.body
  br label %while.cond51

while.cond51:                                     ; preds = %while.cond51.while.cond51_crit_edge, %do.body.while.cond51_crit_edge
  %24 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr56 = getelementptr i8, ptr %25, i32 33346
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr56) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %27 = and i16 %26, 224
  %cmp62.not = icmp eq i16 %27, 224
  br i1 %cmp62.not, label %while.cond51.while.cond66_crit_edge, label %while.cond51.while.cond51_crit_edge

while.cond51.while.cond51_crit_edge:              ; preds = %while.cond51
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond51

while.cond51.while.cond66_crit_edge:              ; preds = %while.cond51
  br label %while.cond66

while.cond66:                                     ; preds = %while.cond66.while.cond66_crit_edge, %while.cond51.while.cond66_crit_edge
  %28 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr71 = getelementptr i8, ptr %29, i32 33346
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %31 = and i16 %30, 224
  %cmp77.not = icmp eq i16 %31, 224
  br i1 %cmp77.not, label %while.cond66.while.cond81_crit_edge, label %while.cond66.while.cond66_crit_edge

while.cond66.while.cond66_crit_edge:              ; preds = %while.cond66
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond66

while.cond66.while.cond81_crit_edge:              ; preds = %while.cond66
  br label %while.cond81

while.cond81:                                     ; preds = %while.cond81.while.cond81_crit_edge, %while.cond66.while.cond81_crit_edge
  %32 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr86 = getelementptr i8, ptr %33, i32 33346
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr86) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %35 = and i16 %34, 224
  %cmp92.not = icmp eq i16 %35, 224
  br i1 %cmp92.not, label %while.end95, label %while.cond81.while.cond81_crit_edge

while.cond81.while.cond81_crit_edge:              ; preds = %while.cond81
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond81

while.end95:                                      ; preds = %while.cond81
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr99 = getelementptr i8, ptr %37, i32 33344
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr99) #4, !srcloc !15
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %conv103 = zext i16 %39 to i32
  %40 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv103, ptr %cmdqueuelength, align 4
  br label %do.body106

do.body106:                                       ; preds = %while.end95, %do.body.do.body106_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %41 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %video_linelength, align 4
  %or = or i32 %42, -65536
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr109 = getelementptr i8, ptr %45, i32 33300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %43) #4, !srcloc !29
  %46 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmdqueuelength, align 4
  %dec111 = add i32 %47, -1
  store i32 %dec111, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec111)
  %cmp113 = icmp slt i32 %dec111, 1
  br i1 %cmp113, label %do.body106.while.cond116_crit_edge, label %do.body106.do.body171_crit_edge

do.body106.do.body171_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body171

do.body106.while.cond116_crit_edge:               ; preds = %do.body106
  br label %while.cond116

while.cond116:                                    ; preds = %while.cond116.while.cond116_crit_edge, %do.body106.while.cond116_crit_edge
  %48 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr121 = getelementptr i8, ptr %49, i32 33346
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr121) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %51 = and i16 %50, 224
  %cmp127.not = icmp eq i16 %51, 224
  br i1 %cmp127.not, label %while.cond116.while.cond131_crit_edge, label %while.cond116.while.cond116_crit_edge

while.cond116.while.cond116_crit_edge:            ; preds = %while.cond116
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond116

while.cond116.while.cond131_crit_edge:            ; preds = %while.cond116
  br label %while.cond131

while.cond131:                                    ; preds = %while.cond131.while.cond131_crit_edge, %while.cond116.while.cond131_crit_edge
  %52 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr136 = getelementptr i8, ptr %53, i32 33346
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr136) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %55 = and i16 %54, 224
  %cmp142.not = icmp eq i16 %55, 224
  br i1 %cmp142.not, label %while.cond131.while.cond146_crit_edge, label %while.cond131.while.cond131_crit_edge

while.cond131.while.cond131_crit_edge:            ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond131

while.cond131.while.cond146_crit_edge:            ; preds = %while.cond131
  br label %while.cond146

while.cond146:                                    ; preds = %while.cond146.while.cond146_crit_edge, %while.cond131.while.cond146_crit_edge
  %56 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr151 = getelementptr i8, ptr %57, i32 33346
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr151) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %59 = and i16 %58, 224
  %cmp157.not = icmp eq i16 %59, 224
  br i1 %cmp157.not, label %while.end160, label %while.cond146.while.cond146_crit_edge

while.cond146.while.cond146_crit_edge:            ; preds = %while.cond146
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond146

while.end160:                                     ; preds = %while.cond146
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr164 = getelementptr i8, ptr %61, i32 33344
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr164) #4, !srcloc !15
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %conv168 = zext i16 %63 to i32
  %64 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv168, ptr %cmdqueuelength, align 4
  br label %do.body171

do.body171:                                       ; preds = %while.end160, %do.body106.do.body171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %DstColor = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 61
  %65 = ptrtoint ptr %DstColor to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %DstColor, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %68 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr175 = getelementptr i8, ptr %69, i32 33286
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr175, i16 %67) #4, !srcloc !40
  %70 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmdqueuelength, align 4
  %dec177 = add i32 %71, -1
  store i32 %dec177, ptr %cmdqueuelength, align 4
  %arrayidx = getelementptr [16 x i8], ptr @sisPatALUConv, i32 0, i32 %rop
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %conv178 = zext i8 %73 to i32
  %shl = shl nuw nsw i32 %conv178, 8
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %74 = ptrtoint ptr %CommandReg to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shl, ptr %CommandReg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS300SubsequentSolidFillRect(ptr nocapture noundef %ivideo, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %y)
  %cmp = icmp sgt i32 %y, 2047
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %0 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %video_linelength, align 4
  %mul = mul i32 %1, %y
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dstbase.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %y.addr.0 = phi i32 [ 0, %if.then ], [ %y, %entry.if.end_crit_edge ]
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %2 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp slt i32 %3, 1
  br i1 %cmp1, label %while.cond.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %if.end
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %4 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 33346
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %7 = and i16 %6, 224
  %cmp5.not = icmp eq i16 %7, 224
  br i1 %cmp5.not, label %while.cond.while.cond7_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond.while.cond7_crit_edge:                 ; preds = %while.cond
  br label %while.cond7

while.cond7:                                      ; preds = %while.cond7.while.cond7_crit_edge, %while.cond.while.cond7_crit_edge
  %8 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 33346
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %11 = and i16 %10, 224
  %cmp18.not = icmp eq i16 %11, 224
  br i1 %cmp18.not, label %while.cond7.while.cond22_crit_edge, label %while.cond7.while.cond7_crit_edge

while.cond7.while.cond7_crit_edge:                ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond7

while.cond7.while.cond22_crit_edge:               ; preds = %while.cond7
  br label %while.cond22

while.cond22:                                     ; preds = %while.cond22.while.cond22_crit_edge, %while.cond7.while.cond22_crit_edge
  %12 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 33346
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %15 = and i16 %14, 224
  %cmp33.not = icmp eq i16 %15, 224
  br i1 %cmp33.not, label %while.end36, label %while.cond22.while.cond22_crit_edge

while.cond22.while.cond22_crit_edge:              ; preds = %while.cond22
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond22

while.end36:                                      ; preds = %while.cond22
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr40 = getelementptr i8, ptr %17, i32 33344
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #4, !srcloc !15
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %conv44 = zext i16 %19 to i32
  %20 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv44, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end36, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %dstbase.0)
  %mmio_vbase47 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %22 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr48 = getelementptr i8, ptr %23, i32 33296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %21) #4, !srcloc !29
  %24 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp51 = icmp slt i32 %dec, 1
  br i1 %cmp51, label %do.body.while.cond54_crit_edge, label %do.body.do.body109_crit_edge

do.body.do.body109_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109

do.body.while.cond54_crit_edge:                   ; preds = %do.body
  br label %while.cond54

while.cond54:                                     ; preds = %while.cond54.while.cond54_crit_edge, %do.body.while.cond54_crit_edge
  %26 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr59 = getelementptr i8, ptr %27, i32 33346
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr59) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %29 = and i16 %28, 224
  %cmp65.not = icmp eq i16 %29, 224
  br i1 %cmp65.not, label %while.cond54.while.cond69_crit_edge, label %while.cond54.while.cond54_crit_edge

while.cond54.while.cond54_crit_edge:              ; preds = %while.cond54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond54

while.cond54.while.cond69_crit_edge:              ; preds = %while.cond54
  br label %while.cond69

while.cond69:                                     ; preds = %while.cond69.while.cond69_crit_edge, %while.cond54.while.cond69_crit_edge
  %30 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr74 = getelementptr i8, ptr %31, i32 33346
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %33 = and i16 %32, 224
  %cmp80.not = icmp eq i16 %33, 224
  br i1 %cmp80.not, label %while.cond69.while.cond84_crit_edge, label %while.cond69.while.cond69_crit_edge

while.cond69.while.cond69_crit_edge:              ; preds = %while.cond69
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond69

while.cond69.while.cond84_crit_edge:              ; preds = %while.cond69
  br label %while.cond84

while.cond84:                                     ; preds = %while.cond84.while.cond84_crit_edge, %while.cond69.while.cond84_crit_edge
  %34 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr89 = getelementptr i8, ptr %35, i32 33346
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr89) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %37 = and i16 %36, 224
  %cmp95.not = icmp eq i16 %37, 224
  br i1 %cmp95.not, label %while.end98, label %while.cond84.while.cond84_crit_edge

while.cond84.while.cond84_crit_edge:              ; preds = %while.cond84
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond84

while.end98:                                      ; preds = %while.cond84
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr102 = getelementptr i8, ptr %39, i32 33344
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr102) #4, !srcloc !15
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %conv106 = zext i16 %41 to i32
  %42 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv106, ptr %cmdqueuelength, align 4
  br label %do.body109

do.body109:                                       ; preds = %while.end98, %do.body.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %x, 16
  %or = or i32 %y.addr.0, %shl
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr113 = getelementptr i8, ptr %45, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %43) #4, !srcloc !29
  %46 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmdqueuelength, align 4
  %dec115 = add i32 %47, -1
  store i32 %dec115, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec115)
  %cmp117 = icmp slt i32 %dec115, 1
  br i1 %cmp117, label %do.body109.while.cond120_crit_edge, label %do.body109.do.body175_crit_edge

do.body109.do.body175_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body175

do.body109.while.cond120_crit_edge:               ; preds = %do.body109
  br label %while.cond120

while.cond120:                                    ; preds = %while.cond120.while.cond120_crit_edge, %do.body109.while.cond120_crit_edge
  %48 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr125 = getelementptr i8, ptr %49, i32 33346
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr125) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %51 = and i16 %50, 224
  %cmp131.not = icmp eq i16 %51, 224
  br i1 %cmp131.not, label %while.cond120.while.cond135_crit_edge, label %while.cond120.while.cond120_crit_edge

while.cond120.while.cond120_crit_edge:            ; preds = %while.cond120
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond120

while.cond120.while.cond135_crit_edge:            ; preds = %while.cond120
  br label %while.cond135

while.cond135:                                    ; preds = %while.cond135.while.cond135_crit_edge, %while.cond120.while.cond135_crit_edge
  %52 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr140 = getelementptr i8, ptr %53, i32 33346
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr140) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %55 = and i16 %54, 224
  %cmp146.not = icmp eq i16 %55, 224
  br i1 %cmp146.not, label %while.cond135.while.cond150_crit_edge, label %while.cond135.while.cond135_crit_edge

while.cond135.while.cond135_crit_edge:            ; preds = %while.cond135
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond135

while.cond135.while.cond150_crit_edge:            ; preds = %while.cond135
  br label %while.cond150

while.cond150:                                    ; preds = %while.cond150.while.cond150_crit_edge, %while.cond135.while.cond150_crit_edge
  %56 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr155 = getelementptr i8, ptr %57, i32 33346
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr155) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %59 = and i16 %58, 224
  %cmp161.not = icmp eq i16 %59, 224
  br i1 %cmp161.not, label %while.end164, label %while.cond150.while.cond150_crit_edge

while.cond150.while.cond150_crit_edge:            ; preds = %while.cond150
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond150

while.end164:                                     ; preds = %while.cond150
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr168 = getelementptr i8, ptr %61, i32 33344
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr168) #4, !srcloc !15
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %conv172 = zext i16 %63 to i32
  %64 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv172, ptr %cmdqueuelength, align 4
  br label %do.body175

do.body175:                                       ; preds = %while.end164, %do.body109.do.body175_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %shl178 = shl i32 %h, 16
  %or179 = or i32 %shl178, %w
  %65 = tail call i32 @llvm.bswap.i32(i32 %or179)
  %66 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr181 = getelementptr i8, ptr %67, i32 33304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %65) #4, !srcloc !29
  %68 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmdqueuelength, align 4
  %dec183 = add i32 %69, -1
  store i32 %dec183, ptr %cmdqueuelength, align 4
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %70 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %CommandReg, align 4
  %or184 = or i32 %71, 196608
  store i32 %or184, ptr %CommandReg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec183)
  %cmp186 = icmp slt i32 %dec183, 2
  br i1 %cmp186, label %do.body175.while.cond189_crit_edge, label %do.body175.do.body244_crit_edge

do.body175.do.body244_crit_edge:                  ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body244

do.body175.while.cond189_crit_edge:               ; preds = %do.body175
  br label %while.cond189

while.cond189:                                    ; preds = %while.cond189.while.cond189_crit_edge, %do.body175.while.cond189_crit_edge
  %72 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr194 = getelementptr i8, ptr %73, i32 33346
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr194) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %75 = and i16 %74, 224
  %cmp200.not = icmp eq i16 %75, 224
  br i1 %cmp200.not, label %while.cond189.while.cond204_crit_edge, label %while.cond189.while.cond189_crit_edge

while.cond189.while.cond189_crit_edge:            ; preds = %while.cond189
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond189

while.cond189.while.cond204_crit_edge:            ; preds = %while.cond189
  br label %while.cond204

while.cond204:                                    ; preds = %while.cond204.while.cond204_crit_edge, %while.cond189.while.cond204_crit_edge
  %76 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr209 = getelementptr i8, ptr %77, i32 33346
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr209) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %79 = and i16 %78, 224
  %cmp215.not = icmp eq i16 %79, 224
  br i1 %cmp215.not, label %while.cond204.while.cond219_crit_edge, label %while.cond204.while.cond204_crit_edge

while.cond204.while.cond204_crit_edge:            ; preds = %while.cond204
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond204

while.cond204.while.cond219_crit_edge:            ; preds = %while.cond204
  br label %while.cond219

while.cond219:                                    ; preds = %while.cond219.while.cond219_crit_edge, %while.cond204.while.cond219_crit_edge
  %80 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr224 = getelementptr i8, ptr %81, i32 33346
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr224) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %83 = and i16 %82, 224
  %cmp230.not = icmp eq i16 %83, 224
  br i1 %cmp230.not, label %while.end233, label %while.cond219.while.cond219_crit_edge

while.cond219.while.cond219_crit_edge:            ; preds = %while.cond219
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond219

while.end233:                                     ; preds = %while.cond219
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr237 = getelementptr i8, ptr %85, i32 33344
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr237) #4, !srcloc !15
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %conv241 = zext i16 %87 to i32
  %88 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv241, ptr %cmdqueuelength, align 4
  br label %do.body244

do.body244:                                       ; preds = %while.end233, %do.body175.do.body244_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %89 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %CommandReg, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr249 = getelementptr i8, ptr %93, i32 33340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 %91) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %94 = ptrtoint ptr %mmio_vbase47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio_vbase47, align 4
  %add.ptr254 = getelementptr i8, ptr %95, i32 33344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 0) #4, !srcloc !29
  %96 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cmdqueuelength, align 4
  %sub = add i32 %97, -2
  store i32 %sub, ptr %cmdqueuelength, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS310SetupForSolidFill(ptr nocapture noundef %ivideo, i32 noundef %color, i32 noundef %rop) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %0 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %while.cond.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %entry
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 34254
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %5 = and i16 %4, 128
  %cmp3.not.not = icmp eq i16 %5, 0
  br i1 %cmp3.not.not, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond5_crit_edge

while.cond.while.cond5_crit_edge:                 ; preds = %while.cond
  br label %while.cond5

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %while.cond.while.cond5_crit_edge
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 34254
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %9 = and i16 %8, 128
  %cmp16.not.not = icmp eq i16 %9, 0
  br i1 %cmp16.not.not, label %while.cond5.while.cond5_crit_edge, label %while.cond5.while.cond20_crit_edge

while.cond5.while.cond20_crit_edge:               ; preds = %while.cond5
  br label %while.cond20

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond5

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %while.cond5.while.cond20_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 34254
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %13 = and i16 %12, 128
  %cmp31.not.not = icmp eq i16 %13, 0
  br i1 %cmp31.not.not, label %while.cond20.while.cond20_crit_edge, label %while.cond20.while.cond35_crit_edge

while.cond20.while.cond35_crit_edge:              ; preds = %while.cond20
  br label %while.cond35

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond20

while.cond35:                                     ; preds = %while.cond35.while.cond35_crit_edge, %while.cond20.while.cond35_crit_edge
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr40 = getelementptr i8, ptr %15, i32 34254
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %17 = and i16 %16, 128
  %cmp46.not.not = icmp eq i16 %17, 0
  br i1 %cmp46.not.not, label %while.cond35.while.cond35_crit_edge, label %while.end49

while.cond35.while.cond35_crit_edge:              ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond35

while.end49:                                      ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end49, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %color)
  %mmio_vbase51 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %20 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr52 = getelementptr i8, ptr %21, i32 33308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %19) #4, !srcloc !29
  %22 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp55 = icmp slt i32 %dec, 1
  br i1 %cmp55, label %do.body.while.cond58_crit_edge, label %do.body.do.body120_crit_edge

do.body.do.body120_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body120

do.body.while.cond58_crit_edge:                   ; preds = %do.body
  br label %while.cond58

while.cond58:                                     ; preds = %while.cond58.while.cond58_crit_edge, %do.body.while.cond58_crit_edge
  %24 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr63 = getelementptr i8, ptr %25, i32 34254
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr63) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %27 = and i16 %26, 128
  %cmp69.not.not = icmp eq i16 %27, 0
  br i1 %cmp69.not.not, label %while.cond58.while.cond58_crit_edge, label %while.cond58.while.cond73_crit_edge

while.cond58.while.cond73_crit_edge:              ; preds = %while.cond58
  br label %while.cond73

while.cond58.while.cond58_crit_edge:              ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond58

while.cond73:                                     ; preds = %while.cond73.while.cond73_crit_edge, %while.cond58.while.cond73_crit_edge
  %28 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr78 = getelementptr i8, ptr %29, i32 34254
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr78) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %31 = and i16 %30, 128
  %cmp84.not.not = icmp eq i16 %31, 0
  br i1 %cmp84.not.not, label %while.cond73.while.cond73_crit_edge, label %while.cond73.while.cond88_crit_edge

while.cond73.while.cond88_crit_edge:              ; preds = %while.cond73
  br label %while.cond88

while.cond73.while.cond73_crit_edge:              ; preds = %while.cond73
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond73

while.cond88:                                     ; preds = %while.cond88.while.cond88_crit_edge, %while.cond73.while.cond88_crit_edge
  %32 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr93 = getelementptr i8, ptr %33, i32 34254
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr93) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %35 = and i16 %34, 128
  %cmp99.not.not = icmp eq i16 %35, 0
  br i1 %cmp99.not.not, label %while.cond88.while.cond88_crit_edge, label %while.cond88.while.cond103_crit_edge

while.cond88.while.cond103_crit_edge:             ; preds = %while.cond88
  br label %while.cond103

while.cond88.while.cond88_crit_edge:              ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond88

while.cond103:                                    ; preds = %while.cond103.while.cond103_crit_edge, %while.cond88.while.cond103_crit_edge
  %36 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr108 = getelementptr i8, ptr %37, i32 34254
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr108) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %39 = and i16 %38, 128
  %cmp114.not.not = icmp eq i16 %39, 0
  br i1 %cmp114.not.not, label %while.cond103.while.cond103_crit_edge, label %while.end117

while.cond103.while.cond103_crit_edge:            ; preds = %while.cond103
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond103

while.end117:                                     ; preds = %while.cond103
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body120

do.body120:                                       ; preds = %while.end117, %do.body.do.body120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %41 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %video_linelength, align 4
  %or = or i32 %42, 268369920
  %43 = tail call i32 @llvm.bswap.i32(i32 %or)
  %44 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr123 = getelementptr i8, ptr %45, i32 33300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %43) #4, !srcloc !29
  %46 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmdqueuelength, align 4
  %dec125 = add i32 %47, -1
  store i32 %dec125, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec125)
  %cmp127 = icmp slt i32 %dec125, 1
  br i1 %cmp127, label %do.body120.while.cond130_crit_edge, label %do.body120.do.body192_crit_edge

do.body120.do.body192_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body192

do.body120.while.cond130_crit_edge:               ; preds = %do.body120
  br label %while.cond130

while.cond130:                                    ; preds = %while.cond130.while.cond130_crit_edge, %do.body120.while.cond130_crit_edge
  %48 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr135 = getelementptr i8, ptr %49, i32 34254
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr135) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  %51 = and i16 %50, 128
  %cmp141.not.not = icmp eq i16 %51, 0
  br i1 %cmp141.not.not, label %while.cond130.while.cond130_crit_edge, label %while.cond130.while.cond145_crit_edge

while.cond130.while.cond145_crit_edge:            ; preds = %while.cond130
  br label %while.cond145

while.cond130.while.cond130_crit_edge:            ; preds = %while.cond130
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond130

while.cond145:                                    ; preds = %while.cond145.while.cond145_crit_edge, %while.cond130.while.cond145_crit_edge
  %52 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr150 = getelementptr i8, ptr %53, i32 34254
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr150) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  %55 = and i16 %54, 128
  %cmp156.not.not = icmp eq i16 %55, 0
  br i1 %cmp156.not.not, label %while.cond145.while.cond145_crit_edge, label %while.cond145.while.cond160_crit_edge

while.cond145.while.cond160_crit_edge:            ; preds = %while.cond145
  br label %while.cond160

while.cond145.while.cond145_crit_edge:            ; preds = %while.cond145
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond145

while.cond160:                                    ; preds = %while.cond160.while.cond160_crit_edge, %while.cond145.while.cond160_crit_edge
  %56 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr165 = getelementptr i8, ptr %57, i32 34254
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr165) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  %59 = and i16 %58, 128
  %cmp171.not.not = icmp eq i16 %59, 0
  br i1 %cmp171.not.not, label %while.cond160.while.cond160_crit_edge, label %while.cond160.while.cond175_crit_edge

while.cond160.while.cond175_crit_edge:            ; preds = %while.cond160
  br label %while.cond175

while.cond160.while.cond160_crit_edge:            ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond160

while.cond175:                                    ; preds = %while.cond175.while.cond175_crit_edge, %while.cond160.while.cond175_crit_edge
  %60 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr180 = getelementptr i8, ptr %61, i32 34254
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr180) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  %63 = and i16 %62, 128
  %cmp186.not.not = icmp eq i16 %63, 0
  br i1 %cmp186.not.not, label %while.cond175.while.cond175_crit_edge, label %while.end189

while.cond175.while.cond175_crit_edge:            ; preds = %while.cond175
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond175

while.end189:                                     ; preds = %while.cond175
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body192

do.body192:                                       ; preds = %while.end189, %do.body120.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %DstColor = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 61
  %65 = ptrtoint ptr %DstColor to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %DstColor, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %68 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr195 = getelementptr i8, ptr %69, i32 33286
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr195, i16 %67) #4, !srcloc !40
  %70 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmdqueuelength, align 4
  %dec197 = add i32 %71, -1
  store i32 %dec197, ptr %cmdqueuelength, align 4
  %arrayidx = getelementptr [16 x i8], ptr @sisPatALUConv, i32 0, i32 %rop
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %conv198 = zext i8 %73 to i32
  %shl = shl nuw nsw i32 %conv198, 8
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %SiS310_AccelDepth = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 62
  %74 = ptrtoint ptr %SiS310_AccelDepth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %SiS310_AccelDepth, align 4
  %or201 = or i32 %shl, %75
  %76 = ptrtoint ptr %CommandReg to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or201, ptr %CommandReg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS310SubsequentSolidFillRect(ptr nocapture noundef %ivideo, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %y)
  %cmp = icmp sgt i32 %y, 2047
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %0 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %video_linelength, align 4
  %mul = mul i32 %1, %y
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dstbase.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %y.addr.0 = phi i32 [ 0, %if.then ], [ %y, %entry.if.end_crit_edge ]
  %video_offset = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 19
  %2 = ptrtoint ptr %video_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_offset, align 4
  %add = add i32 %3, %dstbase.0
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %4 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp slt i32 %5, 1
  br i1 %cmp1, label %while.cond.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %if.end
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 34254
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %9 = and i16 %8, 128
  %cmp5.not.not = icmp eq i16 %9, 0
  br i1 %cmp5.not.not, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond7_crit_edge

while.cond.while.cond7_crit_edge:                 ; preds = %while.cond
  br label %while.cond7

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond7:                                      ; preds = %while.cond7.while.cond7_crit_edge, %while.cond.while.cond7_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 34254
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %13 = and i16 %12, 128
  %cmp18.not.not = icmp eq i16 %13, 0
  br i1 %cmp18.not.not, label %while.cond7.while.cond7_crit_edge, label %while.cond7.while.cond22_crit_edge

while.cond7.while.cond22_crit_edge:               ; preds = %while.cond7
  br label %while.cond22

while.cond7.while.cond7_crit_edge:                ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond7

while.cond22:                                     ; preds = %while.cond22.while.cond22_crit_edge, %while.cond7.while.cond22_crit_edge
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 34254
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %17 = and i16 %16, 128
  %cmp33.not.not = icmp eq i16 %17, 0
  br i1 %cmp33.not.not, label %while.cond22.while.cond22_crit_edge, label %while.cond22.while.cond37_crit_edge

while.cond22.while.cond37_crit_edge:              ; preds = %while.cond22
  br label %while.cond37

while.cond22.while.cond22_crit_edge:              ; preds = %while.cond22
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond22

while.cond37:                                     ; preds = %while.cond37.while.cond37_crit_edge, %while.cond22.while.cond37_crit_edge
  %18 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr42 = getelementptr i8, ptr %19, i32 34254
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr42) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  %21 = and i16 %20, 128
  %cmp48.not.not = icmp eq i16 %21, 0
  br i1 %cmp48.not.not, label %while.cond37.while.cond37_crit_edge, label %while.end51

while.cond37.while.cond37_crit_edge:              ; preds = %while.cond37
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond37

while.end51:                                      ; preds = %while.cond37
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end51, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %add)
  %mmio_vbase54 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %24 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 33296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %23) #4, !srcloc !29
  %26 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp58 = icmp slt i32 %dec, 1
  br i1 %cmp58, label %do.body.while.cond61_crit_edge, label %do.body.do.body123_crit_edge

do.body.do.body123_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body123

do.body.while.cond61_crit_edge:                   ; preds = %do.body
  br label %while.cond61

while.cond61:                                     ; preds = %while.cond61.while.cond61_crit_edge, %do.body.while.cond61_crit_edge
  %28 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr66 = getelementptr i8, ptr %29, i32 34254
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %31 = and i16 %30, 128
  %cmp72.not.not = icmp eq i16 %31, 0
  br i1 %cmp72.not.not, label %while.cond61.while.cond61_crit_edge, label %while.cond61.while.cond76_crit_edge

while.cond61.while.cond76_crit_edge:              ; preds = %while.cond61
  br label %while.cond76

while.cond61.while.cond61_crit_edge:              ; preds = %while.cond61
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond61

while.cond76:                                     ; preds = %while.cond76.while.cond76_crit_edge, %while.cond61.while.cond76_crit_edge
  %32 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr81 = getelementptr i8, ptr %33, i32 34254
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr81) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  %35 = and i16 %34, 128
  %cmp87.not.not = icmp eq i16 %35, 0
  br i1 %cmp87.not.not, label %while.cond76.while.cond76_crit_edge, label %while.cond76.while.cond91_crit_edge

while.cond76.while.cond91_crit_edge:              ; preds = %while.cond76
  br label %while.cond91

while.cond76.while.cond76_crit_edge:              ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond76

while.cond91:                                     ; preds = %while.cond91.while.cond91_crit_edge, %while.cond76.while.cond91_crit_edge
  %36 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr96 = getelementptr i8, ptr %37, i32 34254
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr96) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  %39 = and i16 %38, 128
  %cmp102.not.not = icmp eq i16 %39, 0
  br i1 %cmp102.not.not, label %while.cond91.while.cond91_crit_edge, label %while.cond91.while.cond106_crit_edge

while.cond91.while.cond106_crit_edge:             ; preds = %while.cond91
  br label %while.cond106

while.cond91.while.cond91_crit_edge:              ; preds = %while.cond91
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond91

while.cond106:                                    ; preds = %while.cond106.while.cond106_crit_edge, %while.cond91.while.cond106_crit_edge
  %40 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr111 = getelementptr i8, ptr %41, i32 34254
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr111) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  %43 = and i16 %42, 128
  %cmp117.not.not = icmp eq i16 %43, 0
  br i1 %cmp117.not.not, label %while.cond106.while.cond106_crit_edge, label %while.end120

while.cond106.while.cond106_crit_edge:            ; preds = %while.cond106
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond106

while.end120:                                     ; preds = %while.cond106
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body123

do.body123:                                       ; preds = %while.end120, %do.body.do.body123_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %x, 16
  %or = or i32 %y.addr.0, %shl
  %45 = tail call i32 @llvm.bswap.i32(i32 %or)
  %46 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr127 = getelementptr i8, ptr %47, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %45) #4, !srcloc !29
  %48 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmdqueuelength, align 4
  %dec129 = add i32 %49, -1
  store i32 %dec129, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec129)
  %cmp131 = icmp slt i32 %dec129, 1
  br i1 %cmp131, label %do.body123.while.cond134_crit_edge, label %do.body123.do.body196_crit_edge

do.body123.do.body196_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body196

do.body123.while.cond134_crit_edge:               ; preds = %do.body123
  br label %while.cond134

while.cond134:                                    ; preds = %while.cond134.while.cond134_crit_edge, %do.body123.while.cond134_crit_edge
  %50 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr139 = getelementptr i8, ptr %51, i32 34254
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr139) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  %53 = and i16 %52, 128
  %cmp145.not.not = icmp eq i16 %53, 0
  br i1 %cmp145.not.not, label %while.cond134.while.cond134_crit_edge, label %while.cond134.while.cond149_crit_edge

while.cond134.while.cond149_crit_edge:            ; preds = %while.cond134
  br label %while.cond149

while.cond134.while.cond134_crit_edge:            ; preds = %while.cond134
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond134

while.cond149:                                    ; preds = %while.cond149.while.cond149_crit_edge, %while.cond134.while.cond149_crit_edge
  %54 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr154 = getelementptr i8, ptr %55, i32 34254
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr154) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %57 = and i16 %56, 128
  %cmp160.not.not = icmp eq i16 %57, 0
  br i1 %cmp160.not.not, label %while.cond149.while.cond149_crit_edge, label %while.cond149.while.cond164_crit_edge

while.cond149.while.cond164_crit_edge:            ; preds = %while.cond149
  br label %while.cond164

while.cond149.while.cond149_crit_edge:            ; preds = %while.cond149
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond149

while.cond164:                                    ; preds = %while.cond164.while.cond164_crit_edge, %while.cond149.while.cond164_crit_edge
  %58 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr169 = getelementptr i8, ptr %59, i32 34254
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr169) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  %61 = and i16 %60, 128
  %cmp175.not.not = icmp eq i16 %61, 0
  br i1 %cmp175.not.not, label %while.cond164.while.cond164_crit_edge, label %while.cond164.while.cond179_crit_edge

while.cond164.while.cond179_crit_edge:            ; preds = %while.cond164
  br label %while.cond179

while.cond164.while.cond164_crit_edge:            ; preds = %while.cond164
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond164

while.cond179:                                    ; preds = %while.cond179.while.cond179_crit_edge, %while.cond164.while.cond179_crit_edge
  %62 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr184 = getelementptr i8, ptr %63, i32 34254
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr184) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  %65 = and i16 %64, 128
  %cmp190.not.not = icmp eq i16 %65, 0
  br i1 %cmp190.not.not, label %while.cond179.while.cond179_crit_edge, label %while.end193

while.cond179.while.cond179_crit_edge:            ; preds = %while.cond179
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond179

while.end193:                                     ; preds = %while.cond179
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body196

do.body196:                                       ; preds = %while.end193, %do.body123.do.body196_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %shl199 = shl i32 %h, 16
  %or200 = or i32 %shl199, %w
  %67 = tail call i32 @llvm.bswap.i32(i32 %or200)
  %68 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr202 = getelementptr i8, ptr %69, i32 33304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %67) #4, !srcloc !29
  %70 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmdqueuelength, align 4
  %dec204 = add i32 %71, -1
  store i32 %dec204, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec204)
  %cmp207 = icmp slt i32 %dec204, 2
  br i1 %cmp207, label %do.body196.while.cond210_crit_edge, label %do.body196.do.body272_crit_edge

do.body196.do.body272_crit_edge:                  ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body272

do.body196.while.cond210_crit_edge:               ; preds = %do.body196
  br label %while.cond210

while.cond210:                                    ; preds = %while.cond210.while.cond210_crit_edge, %do.body196.while.cond210_crit_edge
  %72 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr215 = getelementptr i8, ptr %73, i32 34254
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr215) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %75 = and i16 %74, 128
  %cmp221.not.not = icmp eq i16 %75, 0
  br i1 %cmp221.not.not, label %while.cond210.while.cond210_crit_edge, label %while.cond210.while.cond225_crit_edge

while.cond210.while.cond225_crit_edge:            ; preds = %while.cond210
  br label %while.cond225

while.cond210.while.cond210_crit_edge:            ; preds = %while.cond210
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond210

while.cond225:                                    ; preds = %while.cond225.while.cond225_crit_edge, %while.cond210.while.cond225_crit_edge
  %76 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr230 = getelementptr i8, ptr %77, i32 34254
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr230) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  %79 = and i16 %78, 128
  %cmp236.not.not = icmp eq i16 %79, 0
  br i1 %cmp236.not.not, label %while.cond225.while.cond225_crit_edge, label %while.cond225.while.cond240_crit_edge

while.cond225.while.cond240_crit_edge:            ; preds = %while.cond225
  br label %while.cond240

while.cond225.while.cond225_crit_edge:            ; preds = %while.cond225
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond225

while.cond240:                                    ; preds = %while.cond240.while.cond240_crit_edge, %while.cond225.while.cond240_crit_edge
  %80 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr245 = getelementptr i8, ptr %81, i32 34254
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr245) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %83 = and i16 %82, 128
  %cmp251.not.not = icmp eq i16 %83, 0
  br i1 %cmp251.not.not, label %while.cond240.while.cond240_crit_edge, label %while.cond240.while.cond255_crit_edge

while.cond240.while.cond255_crit_edge:            ; preds = %while.cond240
  br label %while.cond255

while.cond240.while.cond240_crit_edge:            ; preds = %while.cond240
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond240

while.cond255:                                    ; preds = %while.cond255.while.cond255_crit_edge, %while.cond240.while.cond255_crit_edge
  %84 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr260 = getelementptr i8, ptr %85, i32 34254
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr260) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  %87 = and i16 %86, 128
  %cmp266.not.not = icmp eq i16 %87, 0
  br i1 %cmp266.not.not, label %while.cond255.while.cond255_crit_edge, label %while.end269

while.cond255.while.cond255_crit_edge:            ; preds = %while.cond255
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond255

while.end269:                                     ; preds = %while.cond255
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body272

do.body272:                                       ; preds = %while.end269, %do.body196.do.body272_crit_edge
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %89 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %CommandReg, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %92 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr277 = getelementptr i8, ptr %93, i32 33340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 %91) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %94 = ptrtoint ptr %mmio_vbase54 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio_vbase54, align 4
  %add.ptr282 = getelementptr i8, ptr %95, i32 33344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 0) #4, !srcloc !29
  %96 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cmdqueuelength, align 4
  %sub = add i32 %97, -2
  store i32 %sub, ptr %cmdqueuelength, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_sis_copyarea(ptr noundef %info, ptr noundef %area) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %width2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %6 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width2, align 4
  %height3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height3, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %accel = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 70
  %12 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %engineok = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 71
  %14 = ptrtoint ptr %engineok to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %engineok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then5_crit_edge, label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %lor.lhs.false10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end6
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %16 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %17)
  %cmp11.not = icmp ugt i32 %3, %17
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %18 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp13.not = icmp ugt i32 %5, %19
  br i1 %cmp13.not, label %lor.lhs.false14, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %20 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %21)
  %cmp15.not = icmp ugt i32 %3, %21
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %22 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %23)
  %cmp17.not = icmp ugt i32 %5, %23
  br i1 %cmp17.not, label %if.end19, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false16
  %add = add i32 %17, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp21 = icmp ugt i32 %add, %3
  %sub = sub i32 %3, %17
  %spec.select = select i1 %cmp21, i32 %sub, i32 %7
  %add26 = add i32 %21, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %3)
  %cmp27 = icmp ugt i32 %add26, %3
  %sub30 = sub i32 %3, %21
  %width.1 = select i1 %cmp27, i32 %sub30, i32 %spec.select
  %add33 = add i32 %19, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %5)
  %cmp34 = icmp ugt i32 %add33, %5
  %sub37 = sub i32 %5, %19
  %height.0 = select i1 %cmp34, i32 %sub37, i32 %9
  %add40 = add i32 %23, %height.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %5)
  %cmp41 = icmp ugt i32 %add40, %5
  %sub44 = sub i32 %5, %23
  %height.1 = select i1 %cmp41, i32 %sub44, i32 %height.0
  %sisvga_engine = getelementptr inbounds %struct.sis_video_info, ptr %1, i32 0, i32 103
  %24 = ptrtoint ptr %sisvga_engine to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sisvga_engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp46 = icmp eq i32 %25, 1
  br i1 %cmp46, label %if.then47, label %if.else63

if.then47:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp50 = icmp uge i32 %17, %21
  %. = zext i1 %cmp50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp55 = icmp uge i32 %19, %23
  %ydir.0 = zext i1 %cmp55 to i32
  tail call fastcc void @SiS300SetupForScreenToScreenCopy(ptr noundef %1, i32 noundef %., i32 noundef %ydir.0)
  %26 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sx, align 4
  %28 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sy, align 4
  %30 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %area, align 4
  %32 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dy, align 4
  tail call fastcc void @SiS300SubsequentScreenToScreenCopy(ptr noundef %1, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %width.1, i32 noundef %height.1)
  br label %if.end68

if.else63:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @SiS310SetupForScreenToScreenCopy(ptr noundef %1)
  %34 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sx, align 4
  %36 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sy, align 4
  %38 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %area, align 4
  %40 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dy, align 4
  tail call fastcc void @SiS310SubsequentScreenToScreenCopy(ptr noundef %1, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %width.1, i32 noundef %height.1)
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then47
  tail call void @sisfb_syncaccel(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS300SetupForScreenToScreenCopy(ptr nocapture noundef %ivideo, i32 noundef %xdir, i32 noundef %ydir) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %0 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %while.cond.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %entry
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 33346
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  %5 = and i16 %4, 224
  %cmp3.not = icmp eq i16 %5, 224
  br i1 %cmp3.not, label %while.cond.while.cond5_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond.while.cond5_crit_edge:                 ; preds = %while.cond
  br label %while.cond5

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %while.cond.while.cond5_crit_edge
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 33346
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  %9 = and i16 %8, 224
  %cmp16.not = icmp eq i16 %9, 224
  br i1 %cmp16.not, label %while.cond5.while.cond20_crit_edge, label %while.cond5.while.cond5_crit_edge

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond5

while.cond5.while.cond20_crit_edge:               ; preds = %while.cond5
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %while.cond5.while.cond20_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 33346
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  %13 = and i16 %12, 224
  %cmp31.not = icmp eq i16 %13, 224
  br i1 %cmp31.not, label %while.end34, label %while.cond20.while.cond20_crit_edge

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond20

while.end34:                                      ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr38 = getelementptr i8, ptr %15, i32 33344
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38) #4, !srcloc !15
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  %conv42 = zext i16 %17 to i32
  %18 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv42, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end34, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %DstColor = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 61
  %19 = ptrtoint ptr %DstColor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %DstColor, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %mmio_vbase44 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %22 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr46 = getelementptr i8, ptr %23, i32 33286
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46, i16 %21) #4, !srcloc !40
  %24 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp49 = icmp slt i32 %dec, 1
  br i1 %cmp49, label %do.body.while.cond52_crit_edge, label %do.body.do.body107_crit_edge

do.body.do.body107_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body107

do.body.while.cond52_crit_edge:                   ; preds = %do.body
  br label %while.cond52

while.cond52:                                     ; preds = %while.cond52.while.cond52_crit_edge, %do.body.while.cond52_crit_edge
  %26 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr57 = getelementptr i8, ptr %27, i32 33346
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr57) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %29 = and i16 %28, 224
  %cmp63.not = icmp eq i16 %29, 224
  br i1 %cmp63.not, label %while.cond52.while.cond67_crit_edge, label %while.cond52.while.cond52_crit_edge

while.cond52.while.cond52_crit_edge:              ; preds = %while.cond52
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond52

while.cond52.while.cond67_crit_edge:              ; preds = %while.cond52
  br label %while.cond67

while.cond67:                                     ; preds = %while.cond67.while.cond67_crit_edge, %while.cond52.while.cond67_crit_edge
  %30 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr72 = getelementptr i8, ptr %31, i32 33346
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr72) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  %33 = and i16 %32, 224
  %cmp78.not = icmp eq i16 %33, 224
  br i1 %cmp78.not, label %while.cond67.while.cond82_crit_edge, label %while.cond67.while.cond67_crit_edge

while.cond67.while.cond67_crit_edge:              ; preds = %while.cond67
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond67

while.cond67.while.cond82_crit_edge:              ; preds = %while.cond67
  br label %while.cond82

while.cond82:                                     ; preds = %while.cond82.while.cond82_crit_edge, %while.cond67.while.cond82_crit_edge
  %34 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr87 = getelementptr i8, ptr %35, i32 33346
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr87) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  %37 = and i16 %36, 224
  %cmp93.not = icmp eq i16 %37, 224
  br i1 %cmp93.not, label %while.end96, label %while.cond82.while.cond82_crit_edge

while.cond82.while.cond82_crit_edge:              ; preds = %while.cond82
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond82

while.end96:                                      ; preds = %while.cond82
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr100 = getelementptr i8, ptr %39, i32 33344
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr100) #4, !srcloc !15
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  %conv104 = zext i16 %41 to i32
  %42 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv104, ptr %cmdqueuelength, align 4
  br label %do.body107

do.body107:                                       ; preds = %while.end96, %do.body.do.body107_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %43 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %video_linelength, align 4
  %conv109 = trunc i32 %44 to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv109)
  %46 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr111 = getelementptr i8, ptr %47, i32 33284
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr111, i16 %45) #4, !srcloc !40
  %48 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmdqueuelength, align 4
  %dec113 = add i32 %49, -1
  store i32 %dec113, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec113)
  %cmp115 = icmp slt i32 %dec113, 1
  br i1 %cmp115, label %do.body107.while.cond118_crit_edge, label %do.body107.do.body173_crit_edge

do.body107.do.body173_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body173

do.body107.while.cond118_crit_edge:               ; preds = %do.body107
  br label %while.cond118

while.cond118:                                    ; preds = %while.cond118.while.cond118_crit_edge, %do.body107.while.cond118_crit_edge
  %50 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr123 = getelementptr i8, ptr %51, i32 33346
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr123) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  %53 = and i16 %52, 224
  %cmp129.not = icmp eq i16 %53, 224
  br i1 %cmp129.not, label %while.cond118.while.cond133_crit_edge, label %while.cond118.while.cond118_crit_edge

while.cond118.while.cond118_crit_edge:            ; preds = %while.cond118
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond118

while.cond118.while.cond133_crit_edge:            ; preds = %while.cond118
  br label %while.cond133

while.cond133:                                    ; preds = %while.cond133.while.cond133_crit_edge, %while.cond118.while.cond133_crit_edge
  %54 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr138 = getelementptr i8, ptr %55, i32 33346
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr138) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  %57 = and i16 %56, 224
  %cmp144.not = icmp eq i16 %57, 224
  br i1 %cmp144.not, label %while.cond133.while.cond148_crit_edge, label %while.cond133.while.cond133_crit_edge

while.cond133.while.cond133_crit_edge:            ; preds = %while.cond133
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond133

while.cond133.while.cond148_crit_edge:            ; preds = %while.cond133
  br label %while.cond148

while.cond148:                                    ; preds = %while.cond148.while.cond148_crit_edge, %while.cond133.while.cond148_crit_edge
  %58 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr153 = getelementptr i8, ptr %59, i32 33346
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr153) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  %61 = and i16 %60, 224
  %cmp159.not = icmp eq i16 %61, 224
  br i1 %cmp159.not, label %while.end162, label %while.cond148.while.cond148_crit_edge

while.cond148.while.cond148_crit_edge:            ; preds = %while.cond148
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond148

while.end162:                                     ; preds = %while.cond148
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr166 = getelementptr i8, ptr %63, i32 33344
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr166) #4, !srcloc !15
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  %conv170 = zext i16 %65 to i32
  %66 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv170, ptr %cmdqueuelength, align 4
  br label %do.body173

do.body173:                                       ; preds = %while.end162, %do.body107.do.body173_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %video_linelength, align 4
  %or = or i32 %68, -65536
  %69 = tail call i32 @llvm.bswap.i32(i32 %or)
  %70 = ptrtoint ptr %mmio_vbase44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_vbase44, align 4
  %add.ptr177 = getelementptr i8, ptr %71, i32 33300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %69) #4, !srcloc !29
  %72 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmdqueuelength, align 4
  %dec179 = add i32 %73, -1
  store i32 %dec179, ptr %cmdqueuelength, align 4
  %CommandReg254 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xdir)
  %cmp256 = icmp sgt i32 %xdir, 0
  %spec.store.select = select i1 %cmp256, i32 117760, i32 52224
  %74 = ptrtoint ptr %CommandReg254 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.store.select, ptr %CommandReg254, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ydir)
  %cmp262 = icmp sgt i32 %ydir, 0
  br i1 %cmp262, label %if.then264, label %do.body173.if.end267_crit_edge

do.body173.if.end267_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end267

if.then264:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %CommandReg254 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %CommandReg254, align 4
  %or266 = or i32 %76, 131072
  store i32 %or266, ptr %CommandReg254, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %do.body173.if.end267_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS300SubsequentScreenToScreenCopy(ptr noundef %ivideo, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %dst_x, i32 noundef %dst_y, i32 noundef %width, i32 noundef %height) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %src_y)
  %cmp = icmp sgt i32 %src_y, 2047
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %0 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %video_linelength, align 4
  %mul = mul i32 %1, %src_y
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %srcbase.0 = phi i32 [ %mul, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %src_y.addr.0 = phi i32 [ 0, %if.then ], [ %src_y, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dst_y)
  %cmp1 = icmp sgt i32 %dst_y, 2047
  br i1 %cmp1, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength3 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %2 = ptrtoint ptr %video_linelength3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_linelength3, align 4
  %mul4 = mul i32 %3, %dst_y
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %dstbase.0 = phi i32 [ %mul4, %if.then2 ], [ 0, %if.end.if.end5_crit_edge ]
  %dst_y.addr.0 = phi i32 [ 0, %if.then2 ], [ %dst_y, %if.end.if.end5_crit_edge ]
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %4 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp slt i32 %5, 1
  br i1 %cmp6, label %while.cond.preheader, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %if.end5
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 33346
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %9 = and i16 %8, 224
  %cmp10.not = icmp eq i16 %9, 224
  br i1 %cmp10.not, label %while.cond.while.cond12_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond.while.cond12_crit_edge:                ; preds = %while.cond
  br label %while.cond12

while.cond12:                                     ; preds = %while.cond12.while.cond12_crit_edge, %while.cond.while.cond12_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 33346
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  %13 = and i16 %12, 224
  %cmp23.not = icmp eq i16 %13, 224
  br i1 %cmp23.not, label %while.cond12.while.cond27_crit_edge, label %while.cond12.while.cond12_crit_edge

while.cond12.while.cond12_crit_edge:              ; preds = %while.cond12
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond12

while.cond12.while.cond27_crit_edge:              ; preds = %while.cond12
  br label %while.cond27

while.cond27:                                     ; preds = %while.cond27.while.cond27_crit_edge, %while.cond12.while.cond27_crit_edge
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 33346
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  %17 = and i16 %16, 224
  %cmp38.not = icmp eq i16 %17, 224
  br i1 %cmp38.not, label %while.end41, label %while.cond27.while.cond27_crit_edge

while.cond27.while.cond27_crit_edge:              ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond27

while.end41:                                      ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr45 = getelementptr i8, ptr %19, i32 33344
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #4, !srcloc !15
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  %conv49 = zext i16 %21 to i32
  %22 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv49, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end41, %if.end5.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %srcbase.0)
  %mmio_vbase52 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %24 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr53 = getelementptr i8, ptr %25, i32 33280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %23) #4, !srcloc !29
  %26 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp56 = icmp slt i32 %dec, 1
  br i1 %cmp56, label %do.body.while.cond59_crit_edge, label %do.body.do.body114_crit_edge

do.body.do.body114_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body114

do.body.while.cond59_crit_edge:                   ; preds = %do.body
  br label %while.cond59

while.cond59:                                     ; preds = %while.cond59.while.cond59_crit_edge, %do.body.while.cond59_crit_edge
  %28 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr64 = getelementptr i8, ptr %29, i32 33346
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  %31 = and i16 %30, 224
  %cmp70.not = icmp eq i16 %31, 224
  br i1 %cmp70.not, label %while.cond59.while.cond74_crit_edge, label %while.cond59.while.cond59_crit_edge

while.cond59.while.cond59_crit_edge:              ; preds = %while.cond59
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond59

while.cond59.while.cond74_crit_edge:              ; preds = %while.cond59
  br label %while.cond74

while.cond74:                                     ; preds = %while.cond74.while.cond74_crit_edge, %while.cond59.while.cond74_crit_edge
  %32 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr79 = getelementptr i8, ptr %33, i32 33346
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr79) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  %35 = and i16 %34, 224
  %cmp85.not = icmp eq i16 %35, 224
  br i1 %cmp85.not, label %while.cond74.while.cond89_crit_edge, label %while.cond74.while.cond74_crit_edge

while.cond74.while.cond74_crit_edge:              ; preds = %while.cond74
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond74

while.cond74.while.cond89_crit_edge:              ; preds = %while.cond74
  br label %while.cond89

while.cond89:                                     ; preds = %while.cond89.while.cond89_crit_edge, %while.cond74.while.cond89_crit_edge
  %36 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr94 = getelementptr i8, ptr %37, i32 33346
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr94) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %39 = and i16 %38, 224
  %cmp100.not = icmp eq i16 %39, 224
  br i1 %cmp100.not, label %while.end103, label %while.cond89.while.cond89_crit_edge

while.cond89.while.cond89_crit_edge:              ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond89

while.end103:                                     ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr107 = getelementptr i8, ptr %41, i32 33344
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr107) #4, !srcloc !15
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %conv111 = zext i16 %43 to i32
  %44 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv111, ptr %cmdqueuelength, align 4
  br label %do.body114

do.body114:                                       ; preds = %while.end103, %do.body.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %45 = tail call i32 @llvm.bswap.i32(i32 %dstbase.0)
  %46 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr118 = getelementptr i8, ptr %47, i32 33296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %45) #4, !srcloc !29
  %48 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmdqueuelength, align 4
  %dec120 = add i32 %49, -1
  store i32 %dec120, ptr %cmdqueuelength, align 4
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %50 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %CommandReg, align 4
  %and121 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool.not = icmp eq i32 %and121, 0
  %sub = add i32 %width, -1
  %add124 = select i1 %tobool.not, i32 %sub, i32 0
  %dst_x.addr.0 = add i32 %add124, %dst_x
  %src_x.addr.0 = add i32 %add124, %src_x
  %and127 = and i32 %51, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %sub130 = add i32 %height, -1
  %add133 = select i1 %tobool128.not, i32 %sub130, i32 0
  %dst_y.addr.1 = add i32 %add133, %dst_y.addr.0
  %src_y.addr.1 = add i32 %add133, %src_y.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec120)
  %cmp136 = icmp slt i32 %dec120, 1
  br i1 %cmp136, label %do.body114.while.cond139_crit_edge, label %do.body114.do.body194_crit_edge

do.body114.do.body194_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body194

do.body114.while.cond139_crit_edge:               ; preds = %do.body114
  br label %while.cond139

while.cond139:                                    ; preds = %while.cond139.while.cond139_crit_edge, %do.body114.while.cond139_crit_edge
  %52 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr144 = getelementptr i8, ptr %53, i32 33346
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr144) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  %55 = and i16 %54, 224
  %cmp150.not = icmp eq i16 %55, 224
  br i1 %cmp150.not, label %while.cond139.while.cond154_crit_edge, label %while.cond139.while.cond139_crit_edge

while.cond139.while.cond139_crit_edge:            ; preds = %while.cond139
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond139

while.cond139.while.cond154_crit_edge:            ; preds = %while.cond139
  br label %while.cond154

while.cond154:                                    ; preds = %while.cond154.while.cond154_crit_edge, %while.cond139.while.cond154_crit_edge
  %56 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr159 = getelementptr i8, ptr %57, i32 33346
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr159) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %59 = and i16 %58, 224
  %cmp165.not = icmp eq i16 %59, 224
  br i1 %cmp165.not, label %while.cond154.while.cond169_crit_edge, label %while.cond154.while.cond154_crit_edge

while.cond154.while.cond154_crit_edge:            ; preds = %while.cond154
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond154

while.cond154.while.cond169_crit_edge:            ; preds = %while.cond154
  br label %while.cond169

while.cond169:                                    ; preds = %while.cond169.while.cond169_crit_edge, %while.cond154.while.cond169_crit_edge
  %60 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr174 = getelementptr i8, ptr %61, i32 33346
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr174) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  %63 = and i16 %62, 224
  %cmp180.not = icmp eq i16 %63, 224
  br i1 %cmp180.not, label %while.end183, label %while.cond169.while.cond169_crit_edge

while.cond169.while.cond169_crit_edge:            ; preds = %while.cond169
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond169

while.end183:                                     ; preds = %while.cond169
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr187 = getelementptr i8, ptr %65, i32 33344
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr187) #4, !srcloc !15
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %conv191 = zext i16 %67 to i32
  %68 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv191, ptr %cmdqueuelength, align 4
  br label %do.body194

do.body194:                                       ; preds = %while.end183, %do.body114.do.body194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %height, 16
  %or = or i32 %shl, %width
  %69 = tail call i32 @llvm.bswap.i32(i32 %or)
  %70 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr198 = getelementptr i8, ptr %71, i32 33304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 %69) #4, !srcloc !29
  %72 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmdqueuelength, align 4
  %dec200 = add i32 %73, -1
  store i32 %dec200, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec200)
  %cmp202 = icmp slt i32 %dec200, 1
  br i1 %cmp202, label %do.body194.while.cond205_crit_edge, label %do.body194.do.body260_crit_edge

do.body194.do.body260_crit_edge:                  ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body260

do.body194.while.cond205_crit_edge:               ; preds = %do.body194
  br label %while.cond205

while.cond205:                                    ; preds = %while.cond205.while.cond205_crit_edge, %do.body194.while.cond205_crit_edge
  %74 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr210 = getelementptr i8, ptr %75, i32 33346
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr210) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  %77 = and i16 %76, 224
  %cmp216.not = icmp eq i16 %77, 224
  br i1 %cmp216.not, label %while.cond205.while.cond220_crit_edge, label %while.cond205.while.cond205_crit_edge

while.cond205.while.cond205_crit_edge:            ; preds = %while.cond205
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond205

while.cond205.while.cond220_crit_edge:            ; preds = %while.cond205
  br label %while.cond220

while.cond220:                                    ; preds = %while.cond220.while.cond220_crit_edge, %while.cond205.while.cond220_crit_edge
  %78 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr225 = getelementptr i8, ptr %79, i32 33346
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr225) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  %81 = and i16 %80, 224
  %cmp231.not = icmp eq i16 %81, 224
  br i1 %cmp231.not, label %while.cond220.while.cond235_crit_edge, label %while.cond220.while.cond220_crit_edge

while.cond220.while.cond220_crit_edge:            ; preds = %while.cond220
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond220

while.cond220.while.cond235_crit_edge:            ; preds = %while.cond220
  br label %while.cond235

while.cond235:                                    ; preds = %while.cond235.while.cond235_crit_edge, %while.cond220.while.cond235_crit_edge
  %82 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr240 = getelementptr i8, ptr %83, i32 33346
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr240) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  %85 = and i16 %84, 224
  %cmp246.not = icmp eq i16 %85, 224
  br i1 %cmp246.not, label %while.end249, label %while.cond235.while.cond235_crit_edge

while.cond235.while.cond235_crit_edge:            ; preds = %while.cond235
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond235

while.end249:                                     ; preds = %while.cond235
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr253 = getelementptr i8, ptr %87, i32 33344
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr253) #4, !srcloc !15
  %89 = tail call i16 @llvm.bswap.i16(i16 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  %conv257 = zext i16 %89 to i32
  %90 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv257, ptr %cmdqueuelength, align 4
  br label %do.body260

do.body260:                                       ; preds = %while.end249, %do.body194.do.body260_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %shl263 = shl i32 %src_x.addr.0, 16
  %or264 = or i32 %shl263, %src_y.addr.1
  %91 = tail call i32 @llvm.bswap.i32(i32 %or264)
  %92 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr266 = getelementptr i8, ptr %93, i32 33288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 %91) #4, !srcloc !29
  %94 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cmdqueuelength, align 4
  %dec268 = add i32 %95, -1
  store i32 %dec268, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec268)
  %cmp270 = icmp slt i32 %dec268, 1
  br i1 %cmp270, label %do.body260.while.cond273_crit_edge, label %do.body260.do.body328_crit_edge

do.body260.do.body328_crit_edge:                  ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body328

do.body260.while.cond273_crit_edge:               ; preds = %do.body260
  br label %while.cond273

while.cond273:                                    ; preds = %while.cond273.while.cond273_crit_edge, %do.body260.while.cond273_crit_edge
  %96 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr278 = getelementptr i8, ptr %97, i32 33346
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr278) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  %99 = and i16 %98, 224
  %cmp284.not = icmp eq i16 %99, 224
  br i1 %cmp284.not, label %while.cond273.while.cond288_crit_edge, label %while.cond273.while.cond273_crit_edge

while.cond273.while.cond273_crit_edge:            ; preds = %while.cond273
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond273

while.cond273.while.cond288_crit_edge:            ; preds = %while.cond273
  br label %while.cond288

while.cond288:                                    ; preds = %while.cond288.while.cond288_crit_edge, %while.cond273.while.cond288_crit_edge
  %100 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr293 = getelementptr i8, ptr %101, i32 33346
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr293) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  %103 = and i16 %102, 224
  %cmp299.not = icmp eq i16 %103, 224
  br i1 %cmp299.not, label %while.cond288.while.cond303_crit_edge, label %while.cond288.while.cond288_crit_edge

while.cond288.while.cond288_crit_edge:            ; preds = %while.cond288
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond288

while.cond288.while.cond303_crit_edge:            ; preds = %while.cond288
  br label %while.cond303

while.cond303:                                    ; preds = %while.cond303.while.cond303_crit_edge, %while.cond288.while.cond303_crit_edge
  %104 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr308 = getelementptr i8, ptr %105, i32 33346
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr308) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  %107 = and i16 %106, 224
  %cmp314.not = icmp eq i16 %107, 224
  br i1 %cmp314.not, label %while.end317, label %while.cond303.while.cond303_crit_edge

while.cond303.while.cond303_crit_edge:            ; preds = %while.cond303
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond303

while.end317:                                     ; preds = %while.cond303
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr321 = getelementptr i8, ptr %109, i32 33344
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr321) #4, !srcloc !15
  %111 = tail call i16 @llvm.bswap.i16(i16 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  %conv325 = zext i16 %111 to i32
  %112 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv325, ptr %cmdqueuelength, align 4
  br label %do.body328

do.body328:                                       ; preds = %while.end317, %do.body260.do.body328_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %shl331 = shl i32 %dst_x.addr.0, 16
  %or332 = or i32 %shl331, %dst_y.addr.1
  %113 = tail call i32 @llvm.bswap.i32(i32 %or332)
  %114 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr334 = getelementptr i8, ptr %115, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr334, i32 %113) #4, !srcloc !29
  %116 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cmdqueuelength, align 4
  %dec336 = add i32 %117, -1
  store i32 %dec336, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec336)
  %cmp338 = icmp slt i32 %dec336, 2
  br i1 %cmp338, label %do.body328.while.cond341_crit_edge, label %do.body328.do.body396_crit_edge

do.body328.do.body396_crit_edge:                  ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body396

do.body328.while.cond341_crit_edge:               ; preds = %do.body328
  br label %while.cond341

while.cond341:                                    ; preds = %while.cond341.while.cond341_crit_edge, %do.body328.while.cond341_crit_edge
  %118 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr346 = getelementptr i8, ptr %119, i32 33346
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr346) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  %121 = and i16 %120, 224
  %cmp352.not = icmp eq i16 %121, 224
  br i1 %cmp352.not, label %while.cond341.while.cond356_crit_edge, label %while.cond341.while.cond341_crit_edge

while.cond341.while.cond341_crit_edge:            ; preds = %while.cond341
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond341

while.cond341.while.cond356_crit_edge:            ; preds = %while.cond341
  br label %while.cond356

while.cond356:                                    ; preds = %while.cond356.while.cond356_crit_edge, %while.cond341.while.cond356_crit_edge
  %122 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr361 = getelementptr i8, ptr %123, i32 33346
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr361) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  %125 = and i16 %124, 224
  %cmp367.not = icmp eq i16 %125, 224
  br i1 %cmp367.not, label %while.cond356.while.cond371_crit_edge, label %while.cond356.while.cond356_crit_edge

while.cond356.while.cond356_crit_edge:            ; preds = %while.cond356
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond356

while.cond356.while.cond371_crit_edge:            ; preds = %while.cond356
  br label %while.cond371

while.cond371:                                    ; preds = %while.cond371.while.cond371_crit_edge, %while.cond356.while.cond371_crit_edge
  %126 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr376 = getelementptr i8, ptr %127, i32 33346
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr376) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  %129 = and i16 %128, 224
  %cmp382.not = icmp eq i16 %129, 224
  br i1 %cmp382.not, label %while.end385, label %while.cond371.while.cond371_crit_edge

while.cond371.while.cond371_crit_edge:            ; preds = %while.cond371
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond371

while.end385:                                     ; preds = %while.cond371
  call void @__sanitizer_cov_trace_pc() #6
  %130 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr389 = getelementptr i8, ptr %131, i32 33344
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr389) #4, !srcloc !15
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  %conv393 = zext i16 %133 to i32
  %134 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv393, ptr %cmdqueuelength, align 4
  br label %do.body396

do.body396:                                       ; preds = %while.end385, %do.body328.do.body396_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  %135 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %CommandReg, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %138 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr401 = getelementptr i8, ptr %139, i32 33340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401, i32 %137) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %140 = ptrtoint ptr %mmio_vbase52 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio_vbase52, align 4
  %add.ptr406 = getelementptr i8, ptr %141, i32 33344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr406, i32 0) #4, !srcloc !29
  %142 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cmdqueuelength, align 4
  %sub408 = add i32 %143, -2
  store i32 %sub408, ptr %cmdqueuelength, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS310SetupForScreenToScreenCopy(ptr nocapture noundef %ivideo) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %0 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %while.cond.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %entry
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 34254
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %5 = and i16 %4, 128
  %cmp3.not.not = icmp eq i16 %5, 0
  br i1 %cmp3.not.not, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond5_crit_edge

while.cond.while.cond5_crit_edge:                 ; preds = %while.cond
  br label %while.cond5

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond5:                                      ; preds = %while.cond5.while.cond5_crit_edge, %while.cond.while.cond5_crit_edge
  %6 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 34254
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  %9 = and i16 %8, 128
  %cmp16.not.not = icmp eq i16 %9, 0
  br i1 %cmp16.not.not, label %while.cond5.while.cond5_crit_edge, label %while.cond5.while.cond20_crit_edge

while.cond5.while.cond20_crit_edge:               ; preds = %while.cond5
  br label %while.cond20

while.cond5.while.cond5_crit_edge:                ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond5

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %while.cond5.while.cond20_crit_edge
  %10 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 34254
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %13 = and i16 %12, 128
  %cmp31.not.not = icmp eq i16 %13, 0
  br i1 %cmp31.not.not, label %while.cond20.while.cond20_crit_edge, label %while.cond20.while.cond35_crit_edge

while.cond20.while.cond35_crit_edge:              ; preds = %while.cond20
  br label %while.cond35

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond20

while.cond35:                                     ; preds = %while.cond35.while.cond35_crit_edge, %while.cond20.while.cond35_crit_edge
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr40 = getelementptr i8, ptr %15, i32 34254
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  %17 = and i16 %16, 128
  %cmp46.not.not = icmp eq i16 %17, 0
  br i1 %cmp46.not.not, label %while.cond35.while.cond35_crit_edge, label %while.end49

while.cond35.while.cond35_crit_edge:              ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond35

while.end49:                                      ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end49, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %DstColor = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 61
  %19 = ptrtoint ptr %DstColor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %DstColor, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %mmio_vbase51 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %22 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr52 = getelementptr i8, ptr %23, i32 33286
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 %21) #4, !srcloc !40
  %24 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp55 = icmp slt i32 %dec, 1
  br i1 %cmp55, label %do.body.while.cond58_crit_edge, label %do.body.do.body120_crit_edge

do.body.do.body120_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body120

do.body.while.cond58_crit_edge:                   ; preds = %do.body
  br label %while.cond58

while.cond58:                                     ; preds = %while.cond58.while.cond58_crit_edge, %do.body.while.cond58_crit_edge
  %26 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 34254
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr63) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  %29 = and i16 %28, 128
  %cmp69.not.not = icmp eq i16 %29, 0
  br i1 %cmp69.not.not, label %while.cond58.while.cond58_crit_edge, label %while.cond58.while.cond73_crit_edge

while.cond58.while.cond73_crit_edge:              ; preds = %while.cond58
  br label %while.cond73

while.cond58.while.cond58_crit_edge:              ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond58

while.cond73:                                     ; preds = %while.cond73.while.cond73_crit_edge, %while.cond58.while.cond73_crit_edge
  %30 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr78 = getelementptr i8, ptr %31, i32 34254
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr78) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  %33 = and i16 %32, 128
  %cmp84.not.not = icmp eq i16 %33, 0
  br i1 %cmp84.not.not, label %while.cond73.while.cond73_crit_edge, label %while.cond73.while.cond88_crit_edge

while.cond73.while.cond88_crit_edge:              ; preds = %while.cond73
  br label %while.cond88

while.cond73.while.cond73_crit_edge:              ; preds = %while.cond73
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond73

while.cond88:                                     ; preds = %while.cond88.while.cond88_crit_edge, %while.cond73.while.cond88_crit_edge
  %34 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr93 = getelementptr i8, ptr %35, i32 34254
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr93) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  %37 = and i16 %36, 128
  %cmp99.not.not = icmp eq i16 %37, 0
  br i1 %cmp99.not.not, label %while.cond88.while.cond88_crit_edge, label %while.cond88.while.cond103_crit_edge

while.cond88.while.cond103_crit_edge:             ; preds = %while.cond88
  br label %while.cond103

while.cond88.while.cond88_crit_edge:              ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond88

while.cond103:                                    ; preds = %while.cond103.while.cond103_crit_edge, %while.cond88.while.cond103_crit_edge
  %38 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr108 = getelementptr i8, ptr %39, i32 34254
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr108) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  %41 = and i16 %40, 128
  %cmp114.not.not = icmp eq i16 %41, 0
  br i1 %cmp114.not.not, label %while.cond103.while.cond103_crit_edge, label %while.end117

while.cond103.while.cond103_crit_edge:            ; preds = %while.cond103
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond103

while.end117:                                     ; preds = %while.cond103
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body120

do.body120:                                       ; preds = %while.end117, %do.body.do.body120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %43 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %video_linelength, align 4
  %conv122 = trunc i32 %44 to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv122)
  %46 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr124 = getelementptr i8, ptr %47, i32 33284
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr124, i16 %45) #4, !srcloc !40
  %48 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmdqueuelength, align 4
  %dec126 = add i32 %49, -1
  store i32 %dec126, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec126)
  %cmp128 = icmp slt i32 %dec126, 1
  br i1 %cmp128, label %do.body120.while.cond131_crit_edge, label %do.body120.do.body193_crit_edge

do.body120.do.body193_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body193

do.body120.while.cond131_crit_edge:               ; preds = %do.body120
  br label %while.cond131

while.cond131:                                    ; preds = %while.cond131.while.cond131_crit_edge, %do.body120.while.cond131_crit_edge
  %50 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr136 = getelementptr i8, ptr %51, i32 34254
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr136) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %53 = and i16 %52, 128
  %cmp142.not.not = icmp eq i16 %53, 0
  br i1 %cmp142.not.not, label %while.cond131.while.cond131_crit_edge, label %while.cond131.while.cond146_crit_edge

while.cond131.while.cond146_crit_edge:            ; preds = %while.cond131
  br label %while.cond146

while.cond131.while.cond131_crit_edge:            ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond131

while.cond146:                                    ; preds = %while.cond146.while.cond146_crit_edge, %while.cond131.while.cond146_crit_edge
  %54 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr151 = getelementptr i8, ptr %55, i32 34254
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr151) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  %57 = and i16 %56, 128
  %cmp157.not.not = icmp eq i16 %57, 0
  br i1 %cmp157.not.not, label %while.cond146.while.cond146_crit_edge, label %while.cond146.while.cond161_crit_edge

while.cond146.while.cond161_crit_edge:            ; preds = %while.cond146
  br label %while.cond161

while.cond146.while.cond146_crit_edge:            ; preds = %while.cond146
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond146

while.cond161:                                    ; preds = %while.cond161.while.cond161_crit_edge, %while.cond146.while.cond161_crit_edge
  %58 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr166 = getelementptr i8, ptr %59, i32 34254
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr166) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  %61 = and i16 %60, 128
  %cmp172.not.not = icmp eq i16 %61, 0
  br i1 %cmp172.not.not, label %while.cond161.while.cond161_crit_edge, label %while.cond161.while.cond176_crit_edge

while.cond161.while.cond176_crit_edge:            ; preds = %while.cond161
  br label %while.cond176

while.cond161.while.cond161_crit_edge:            ; preds = %while.cond161
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond161

while.cond176:                                    ; preds = %while.cond176.while.cond176_crit_edge, %while.cond161.while.cond176_crit_edge
  %62 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr181 = getelementptr i8, ptr %63, i32 34254
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr181) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  %65 = and i16 %64, 128
  %cmp187.not.not = icmp eq i16 %65, 0
  br i1 %cmp187.not.not, label %while.cond176.while.cond176_crit_edge, label %while.end190

while.cond176.while.cond176_crit_edge:            ; preds = %while.cond176
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond176

while.end190:                                     ; preds = %while.cond176
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body193

do.body193:                                       ; preds = %while.end190, %do.body120.do.body193_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %video_linelength, align 4
  %or = or i32 %68, 268369920
  %69 = tail call i32 @llvm.bswap.i32(i32 %or)
  %70 = ptrtoint ptr %mmio_vbase51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_vbase51, align 4
  %add.ptr197 = getelementptr i8, ptr %71, i32 33300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %69) #4, !srcloc !29
  %72 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cmdqueuelength, align 4
  %dec199 = add i32 %73, -1
  store i32 %dec199, ptr %cmdqueuelength, align 4
  %CommandReg281 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %SiS310_AccelDepth = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 62
  %74 = ptrtoint ptr %SiS310_AccelDepth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %SiS310_AccelDepth, align 4
  %or284 = or i32 %75, 52224
  %76 = ptrtoint ptr %CommandReg281 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or284, ptr %CommandReg281, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @SiS310SubsequentScreenToScreenCopy(ptr noundef %ivideo, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %dst_x, i32 noundef %dst_y, i32 noundef %width, i32 noundef %height) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %src_y, i32 %dst_y)
  %1 = tail call i32 @llvm.smax.i32(i32 %src_y, i32 %dst_y)
  %sub = sub i32 %1, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %height)
  %cmp7 = icmp slt i32 %sub, %height
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %src_y)
  %cmp8 = icmp sgt i32 %src_y, 2047
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dst_y)
  %cmp9 = icmp sgt i32 %dst_y, 2047
  %or.cond = or i1 %cmp8, %cmp9
  br i1 %or.cond, label %if.then10, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %2 = ptrtoint ptr %video_linelength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video_linelength, align 4
  %mul = mul i32 %3, %0
  %sub13 = sub i32 %src_y, %0
  %sub14 = sub i32 %dst_y, %0
  br label %if.end25

if.else:                                          ; preds = %entry
  br i1 %cmp8, label %if.then16, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength17 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %4 = ptrtoint ptr %video_linelength17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_linelength17, align 4
  %mul18 = mul i32 %5, %src_y
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.else.if.end19_crit_edge
  %srcbase.0 = phi i32 [ %mul18, %if.then16 ], [ 0, %if.else.if.end19_crit_edge ]
  %src_y.addr.0 = phi i32 [ 0, %if.then16 ], [ %src_y, %if.else.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dst_y)
  %cmp20 = icmp sgt i32 %dst_y, 2047
  br i1 %cmp20, label %if.then21, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %video_linelength22 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 59
  %6 = ptrtoint ptr %video_linelength22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_linelength22, align 4
  %mul23 = mul i32 %7, %dst_y
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19.if.end25_crit_edge, %if.then10, %if.then.if.end25_crit_edge
  %dstbase.0 = phi i32 [ %mul, %if.then10 ], [ %mul23, %if.then21 ], [ 0, %if.end19.if.end25_crit_edge ], [ 0, %if.then.if.end25_crit_edge ]
  %srcbase.1 = phi i32 [ %mul, %if.then10 ], [ %srcbase.0, %if.then21 ], [ %srcbase.0, %if.end19.if.end25_crit_edge ], [ 0, %if.then.if.end25_crit_edge ]
  %dst_y.addr.0 = phi i32 [ %sub14, %if.then10 ], [ 0, %if.then21 ], [ %dst_y, %if.end19.if.end25_crit_edge ], [ %dst_y, %if.then.if.end25_crit_edge ]
  %src_y.addr.1 = phi i32 [ %sub13, %if.then10 ], [ %src_y.addr.0, %if.then21 ], [ %src_y.addr.0, %if.end19.if.end25_crit_edge ], [ %src_y, %if.then.if.end25_crit_edge ]
  %video_offset = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 19
  %8 = ptrtoint ptr %video_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %video_offset, align 4
  %add = add i32 %9, %srcbase.1
  %add27 = add i32 %9, %dstbase.0
  %cmdqueuelength = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 64
  %10 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp28 = icmp slt i32 %11, 1
  br i1 %cmp28, label %while.cond.preheader, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.cond.preheader:                             ; preds = %if.end25
  %mmio_vbase = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %12 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 34254
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr30) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  %15 = and i16 %14, 128
  %cmp33.not.not = icmp eq i16 %15, 0
  br i1 %cmp33.not.not, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond35_crit_edge

while.cond.while.cond35_crit_edge:                ; preds = %while.cond
  br label %while.cond35

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond35:                                     ; preds = %while.cond35.while.cond35_crit_edge, %while.cond.while.cond35_crit_edge
  %16 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr40 = getelementptr i8, ptr %17, i32 34254
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  %19 = and i16 %18, 128
  %cmp46.not.not = icmp eq i16 %19, 0
  br i1 %cmp46.not.not, label %while.cond35.while.cond35_crit_edge, label %while.cond35.while.cond50_crit_edge

while.cond35.while.cond50_crit_edge:              ; preds = %while.cond35
  br label %while.cond50

while.cond35.while.cond35_crit_edge:              ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond35

while.cond50:                                     ; preds = %while.cond50.while.cond50_crit_edge, %while.cond35.while.cond50_crit_edge
  %20 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr55 = getelementptr i8, ptr %21, i32 34254
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  %23 = and i16 %22, 128
  %cmp61.not.not = icmp eq i16 %23, 0
  br i1 %cmp61.not.not, label %while.cond50.while.cond50_crit_edge, label %while.cond50.while.cond65_crit_edge

while.cond50.while.cond65_crit_edge:              ; preds = %while.cond50
  br label %while.cond65

while.cond50.while.cond50_crit_edge:              ; preds = %while.cond50
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond50

while.cond65:                                     ; preds = %while.cond65.while.cond65_crit_edge, %while.cond50.while.cond65_crit_edge
  %24 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr70 = getelementptr i8, ptr %25, i32 34254
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr70) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  %27 = and i16 %26, 128
  %cmp76.not.not = icmp eq i16 %27, 0
  br i1 %cmp76.not.not, label %while.cond65.while.cond65_crit_edge, label %while.end79

while.cond65.while.cond65_crit_edge:              ; preds = %while.cond65
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond65

while.end79:                                      ; preds = %while.cond65
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body

do.body:                                          ; preds = %while.end79, %if.end25.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %add)
  %mmio_vbase82 = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 23
  %30 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr83 = getelementptr i8, ptr %31, i32 33280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %29) #4, !srcloc !29
  %32 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmdqueuelength, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp86 = icmp slt i32 %dec, 1
  br i1 %cmp86, label %do.body.while.cond89_crit_edge, label %do.body.do.body151_crit_edge

do.body.do.body151_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body151

do.body.while.cond89_crit_edge:                   ; preds = %do.body
  br label %while.cond89

while.cond89:                                     ; preds = %while.cond89.while.cond89_crit_edge, %do.body.while.cond89_crit_edge
  %34 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr94 = getelementptr i8, ptr %35, i32 34254
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr94) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  %37 = and i16 %36, 128
  %cmp100.not.not = icmp eq i16 %37, 0
  br i1 %cmp100.not.not, label %while.cond89.while.cond89_crit_edge, label %while.cond89.while.cond104_crit_edge

while.cond89.while.cond104_crit_edge:             ; preds = %while.cond89
  br label %while.cond104

while.cond89.while.cond89_crit_edge:              ; preds = %while.cond89
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond89

while.cond104:                                    ; preds = %while.cond104.while.cond104_crit_edge, %while.cond89.while.cond104_crit_edge
  %38 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr109 = getelementptr i8, ptr %39, i32 34254
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr109) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  %41 = and i16 %40, 128
  %cmp115.not.not = icmp eq i16 %41, 0
  br i1 %cmp115.not.not, label %while.cond104.while.cond104_crit_edge, label %while.cond104.while.cond119_crit_edge

while.cond104.while.cond119_crit_edge:            ; preds = %while.cond104
  br label %while.cond119

while.cond104.while.cond104_crit_edge:            ; preds = %while.cond104
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond104

while.cond119:                                    ; preds = %while.cond119.while.cond119_crit_edge, %while.cond104.while.cond119_crit_edge
  %42 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr124 = getelementptr i8, ptr %43, i32 34254
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr124) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  %45 = and i16 %44, 128
  %cmp130.not.not = icmp eq i16 %45, 0
  br i1 %cmp130.not.not, label %while.cond119.while.cond119_crit_edge, label %while.cond119.while.cond134_crit_edge

while.cond119.while.cond134_crit_edge:            ; preds = %while.cond119
  br label %while.cond134

while.cond119.while.cond119_crit_edge:            ; preds = %while.cond119
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond119

while.cond134:                                    ; preds = %while.cond134.while.cond134_crit_edge, %while.cond119.while.cond134_crit_edge
  %46 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr139 = getelementptr i8, ptr %47, i32 34254
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr139) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  %49 = and i16 %48, 128
  %cmp145.not.not = icmp eq i16 %49, 0
  br i1 %cmp145.not.not, label %while.cond134.while.cond134_crit_edge, label %while.end148

while.cond134.while.cond134_crit_edge:            ; preds = %while.cond134
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond134

while.end148:                                     ; preds = %while.cond134
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body151

do.body151:                                       ; preds = %while.end148, %do.body.do.body151_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  %51 = tail call i32 @llvm.bswap.i32(i32 %add27)
  %52 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr155 = getelementptr i8, ptr %53, i32 33296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %51) #4, !srcloc !29
  %54 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmdqueuelength, align 4
  %dec157 = add i32 %55, -1
  store i32 %dec157, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec157)
  %cmp159 = icmp slt i32 %dec157, 1
  br i1 %cmp159, label %do.body151.while.cond162_crit_edge, label %do.body151.do.body224_crit_edge

do.body151.do.body224_crit_edge:                  ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body224

do.body151.while.cond162_crit_edge:               ; preds = %do.body151
  br label %while.cond162

while.cond162:                                    ; preds = %while.cond162.while.cond162_crit_edge, %do.body151.while.cond162_crit_edge
  %56 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr167 = getelementptr i8, ptr %57, i32 34254
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr167) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !169
  %59 = and i16 %58, 128
  %cmp173.not.not = icmp eq i16 %59, 0
  br i1 %cmp173.not.not, label %while.cond162.while.cond162_crit_edge, label %while.cond162.while.cond177_crit_edge

while.cond162.while.cond177_crit_edge:            ; preds = %while.cond162
  br label %while.cond177

while.cond162.while.cond162_crit_edge:            ; preds = %while.cond162
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond162

while.cond177:                                    ; preds = %while.cond177.while.cond177_crit_edge, %while.cond162.while.cond177_crit_edge
  %60 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr182 = getelementptr i8, ptr %61, i32 34254
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr182) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !170
  %63 = and i16 %62, 128
  %cmp188.not.not = icmp eq i16 %63, 0
  br i1 %cmp188.not.not, label %while.cond177.while.cond177_crit_edge, label %while.cond177.while.cond192_crit_edge

while.cond177.while.cond192_crit_edge:            ; preds = %while.cond177
  br label %while.cond192

while.cond177.while.cond177_crit_edge:            ; preds = %while.cond177
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond177

while.cond192:                                    ; preds = %while.cond192.while.cond192_crit_edge, %while.cond177.while.cond192_crit_edge
  %64 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr197 = getelementptr i8, ptr %65, i32 34254
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr197) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  %67 = and i16 %66, 128
  %cmp203.not.not = icmp eq i16 %67, 0
  br i1 %cmp203.not.not, label %while.cond192.while.cond192_crit_edge, label %while.cond192.while.cond207_crit_edge

while.cond192.while.cond207_crit_edge:            ; preds = %while.cond192
  br label %while.cond207

while.cond192.while.cond192_crit_edge:            ; preds = %while.cond192
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond192

while.cond207:                                    ; preds = %while.cond207.while.cond207_crit_edge, %while.cond192.while.cond207_crit_edge
  %68 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr212 = getelementptr i8, ptr %69, i32 34254
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr212) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !172
  %71 = and i16 %70, 128
  %cmp218.not.not = icmp eq i16 %71, 0
  br i1 %cmp218.not.not, label %while.cond207.while.cond207_crit_edge, label %while.end221

while.cond207.while.cond207_crit_edge:            ; preds = %while.cond207
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond207

while.end221:                                     ; preds = %while.cond207
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body224

do.body224:                                       ; preds = %while.end221, %do.body151.do.body224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !173
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %height, 16
  %or = or i32 %shl, %width
  %73 = tail call i32 @llvm.bswap.i32(i32 %or)
  %74 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr228 = getelementptr i8, ptr %75, i32 33304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 %73) #4, !srcloc !29
  %76 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cmdqueuelength, align 4
  %dec230 = add i32 %77, -1
  store i32 %dec230, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec230)
  %cmp232 = icmp slt i32 %dec230, 1
  br i1 %cmp232, label %do.body224.while.cond235_crit_edge, label %do.body224.do.body297_crit_edge

do.body224.do.body297_crit_edge:                  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body297

do.body224.while.cond235_crit_edge:               ; preds = %do.body224
  br label %while.cond235

while.cond235:                                    ; preds = %while.cond235.while.cond235_crit_edge, %do.body224.while.cond235_crit_edge
  %78 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr240 = getelementptr i8, ptr %79, i32 34254
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr240) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !174
  %81 = and i16 %80, 128
  %cmp246.not.not = icmp eq i16 %81, 0
  br i1 %cmp246.not.not, label %while.cond235.while.cond235_crit_edge, label %while.cond235.while.cond250_crit_edge

while.cond235.while.cond250_crit_edge:            ; preds = %while.cond235
  br label %while.cond250

while.cond235.while.cond235_crit_edge:            ; preds = %while.cond235
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond235

while.cond250:                                    ; preds = %while.cond250.while.cond250_crit_edge, %while.cond235.while.cond250_crit_edge
  %82 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr255 = getelementptr i8, ptr %83, i32 34254
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr255) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !175
  %85 = and i16 %84, 128
  %cmp261.not.not = icmp eq i16 %85, 0
  br i1 %cmp261.not.not, label %while.cond250.while.cond250_crit_edge, label %while.cond250.while.cond265_crit_edge

while.cond250.while.cond265_crit_edge:            ; preds = %while.cond250
  br label %while.cond265

while.cond250.while.cond250_crit_edge:            ; preds = %while.cond250
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond250

while.cond265:                                    ; preds = %while.cond265.while.cond265_crit_edge, %while.cond250.while.cond265_crit_edge
  %86 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr270 = getelementptr i8, ptr %87, i32 34254
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr270) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !176
  %89 = and i16 %88, 128
  %cmp276.not.not = icmp eq i16 %89, 0
  br i1 %cmp276.not.not, label %while.cond265.while.cond265_crit_edge, label %while.cond265.while.cond280_crit_edge

while.cond265.while.cond280_crit_edge:            ; preds = %while.cond265
  br label %while.cond280

while.cond265.while.cond265_crit_edge:            ; preds = %while.cond265
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond265

while.cond280:                                    ; preds = %while.cond280.while.cond280_crit_edge, %while.cond265.while.cond280_crit_edge
  %90 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr285 = getelementptr i8, ptr %91, i32 34254
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr285) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !177
  %93 = and i16 %92, 128
  %cmp291.not.not = icmp eq i16 %93, 0
  br i1 %cmp291.not.not, label %while.cond280.while.cond280_crit_edge, label %while.end294

while.cond280.while.cond280_crit_edge:            ; preds = %while.cond280
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond280

while.end294:                                     ; preds = %while.cond280
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body297

do.body297:                                       ; preds = %while.end294, %do.body224.do.body297_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !178
  tail call void @arm_heavy_mb() #4
  %shl300 = shl i32 %src_x, 16
  %or301 = or i32 %src_y.addr.1, %shl300
  %95 = tail call i32 @llvm.bswap.i32(i32 %or301)
  %96 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr303 = getelementptr i8, ptr %97, i32 33288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 %95) #4, !srcloc !29
  %98 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cmdqueuelength, align 4
  %dec305 = add i32 %99, -1
  store i32 %dec305, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec305)
  %cmp307 = icmp slt i32 %dec305, 1
  br i1 %cmp307, label %do.body297.while.cond310_crit_edge, label %do.body297.do.body372_crit_edge

do.body297.do.body372_crit_edge:                  ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body372

do.body297.while.cond310_crit_edge:               ; preds = %do.body297
  br label %while.cond310

while.cond310:                                    ; preds = %while.cond310.while.cond310_crit_edge, %do.body297.while.cond310_crit_edge
  %100 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr315 = getelementptr i8, ptr %101, i32 34254
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr315) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %103 = and i16 %102, 128
  %cmp321.not.not = icmp eq i16 %103, 0
  br i1 %cmp321.not.not, label %while.cond310.while.cond310_crit_edge, label %while.cond310.while.cond325_crit_edge

while.cond310.while.cond325_crit_edge:            ; preds = %while.cond310
  br label %while.cond325

while.cond310.while.cond310_crit_edge:            ; preds = %while.cond310
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond310

while.cond325:                                    ; preds = %while.cond325.while.cond325_crit_edge, %while.cond310.while.cond325_crit_edge
  %104 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr330 = getelementptr i8, ptr %105, i32 34254
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr330) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !180
  %107 = and i16 %106, 128
  %cmp336.not.not = icmp eq i16 %107, 0
  br i1 %cmp336.not.not, label %while.cond325.while.cond325_crit_edge, label %while.cond325.while.cond340_crit_edge

while.cond325.while.cond340_crit_edge:            ; preds = %while.cond325
  br label %while.cond340

while.cond325.while.cond325_crit_edge:            ; preds = %while.cond325
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond325

while.cond340:                                    ; preds = %while.cond340.while.cond340_crit_edge, %while.cond325.while.cond340_crit_edge
  %108 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr345 = getelementptr i8, ptr %109, i32 34254
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr345) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !181
  %111 = and i16 %110, 128
  %cmp351.not.not = icmp eq i16 %111, 0
  br i1 %cmp351.not.not, label %while.cond340.while.cond340_crit_edge, label %while.cond340.while.cond355_crit_edge

while.cond340.while.cond355_crit_edge:            ; preds = %while.cond340
  br label %while.cond355

while.cond340.while.cond340_crit_edge:            ; preds = %while.cond340
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond340

while.cond355:                                    ; preds = %while.cond355.while.cond355_crit_edge, %while.cond340.while.cond355_crit_edge
  %112 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr360 = getelementptr i8, ptr %113, i32 34254
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr360) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  %115 = and i16 %114, 128
  %cmp366.not.not = icmp eq i16 %115, 0
  br i1 %cmp366.not.not, label %while.cond355.while.cond355_crit_edge, label %while.end369

while.cond355.while.cond355_crit_edge:            ; preds = %while.cond355
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond355

while.end369:                                     ; preds = %while.cond355
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body372

do.body372:                                       ; preds = %while.end369, %do.body297.do.body372_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  %shl375 = shl i32 %dst_x, 16
  %or376 = or i32 %dst_y.addr.0, %shl375
  %117 = tail call i32 @llvm.bswap.i32(i32 %or376)
  %118 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr378 = getelementptr i8, ptr %119, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr378, i32 %117) #4, !srcloc !29
  %120 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cmdqueuelength, align 4
  %dec380 = add i32 %121, -1
  store i32 %dec380, ptr %cmdqueuelength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec380)
  %cmp382 = icmp slt i32 %dec380, 2
  br i1 %cmp382, label %do.body372.while.cond385_crit_edge, label %do.body372.do.body447_crit_edge

do.body372.do.body447_crit_edge:                  ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body447

do.body372.while.cond385_crit_edge:               ; preds = %do.body372
  br label %while.cond385

while.cond385:                                    ; preds = %while.cond385.while.cond385_crit_edge, %do.body372.while.cond385_crit_edge
  %122 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr390 = getelementptr i8, ptr %123, i32 34254
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr390) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  %125 = and i16 %124, 128
  %cmp396.not.not = icmp eq i16 %125, 0
  br i1 %cmp396.not.not, label %while.cond385.while.cond385_crit_edge, label %while.cond385.while.cond400_crit_edge

while.cond385.while.cond400_crit_edge:            ; preds = %while.cond385
  br label %while.cond400

while.cond385.while.cond385_crit_edge:            ; preds = %while.cond385
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond385

while.cond400:                                    ; preds = %while.cond400.while.cond400_crit_edge, %while.cond385.while.cond400_crit_edge
  %126 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr405 = getelementptr i8, ptr %127, i32 34254
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr405) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !185
  %129 = and i16 %128, 128
  %cmp411.not.not = icmp eq i16 %129, 0
  br i1 %cmp411.not.not, label %while.cond400.while.cond400_crit_edge, label %while.cond400.while.cond415_crit_edge

while.cond400.while.cond415_crit_edge:            ; preds = %while.cond400
  br label %while.cond415

while.cond400.while.cond400_crit_edge:            ; preds = %while.cond400
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond400

while.cond415:                                    ; preds = %while.cond415.while.cond415_crit_edge, %while.cond400.while.cond415_crit_edge
  %130 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr420 = getelementptr i8, ptr %131, i32 34254
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr420) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !186
  %133 = and i16 %132, 128
  %cmp426.not.not = icmp eq i16 %133, 0
  br i1 %cmp426.not.not, label %while.cond415.while.cond415_crit_edge, label %while.cond415.while.cond430_crit_edge

while.cond415.while.cond430_crit_edge:            ; preds = %while.cond415
  br label %while.cond430

while.cond415.while.cond415_crit_edge:            ; preds = %while.cond415
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond415

while.cond430:                                    ; preds = %while.cond430.while.cond430_crit_edge, %while.cond415.while.cond430_crit_edge
  %134 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr435 = getelementptr i8, ptr %135, i32 34254
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr435) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !187
  %137 = and i16 %136, 128
  %cmp441.not.not = icmp eq i16 %137, 0
  br i1 %cmp441.not.not, label %while.cond430.while.cond430_crit_edge, label %while.end444

while.cond430.while.cond430_crit_edge:            ; preds = %while.cond430
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond430

while.end444:                                     ; preds = %while.cond430
  call void @__sanitizer_cov_trace_pc() #6
  %138 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %cmdqueuelength, align 4
  br label %do.body447

do.body447:                                       ; preds = %while.end444, %do.body372.do.body447_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %CommandReg = getelementptr inbounds %struct.sis_video_info, ptr %ivideo, i32 0, i32 63
  %139 = ptrtoint ptr %CommandReg to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %CommandReg, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr451 = getelementptr i8, ptr %143, i32 33340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr451, i32 %141) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !189
  tail call void @arm_heavy_mb() #4
  %144 = ptrtoint ptr %mmio_vbase82 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio_vbase82, align 4
  %add.ptr456 = getelementptr i8, ptr %145, i32 33344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr456, i32 0) #4, !srcloc !29
  %146 = ptrtoint ptr %cmdqueuelength to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cmdqueuelength, align 4
  %sub458 = add i32 %147, -2
  store i32 %sub458, ptr %cmdqueuelength, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @sisPatALUConv, !1, !"sisPatALUConv", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sis/sis_accel.c", i32 48, i32 17}
!2 = !{ptr @myrops, !3, !"myrops", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/sis/sis_accel.c", i32 68, i32 18}
!4 = distinct !{null, !5, !"sisALUConv", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/sis/sis_accel.c", i32 28, i32 17}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 4723797}
!16 = !{i64 2156259101}
!17 = !{i64 2156259808}
!18 = !{i64 2156260515}
!19 = !{i64 2156261127}
!20 = !{i64 2156329847}
!21 = !{i64 2156330458}
!22 = !{i64 2156331069}
!23 = !{i64 2156331680}
!24 = !{i64 2156302280}
!25 = !{i64 2156302987}
!26 = !{i64 2156303694}
!27 = !{i64 2156304306}
!28 = !{i64 2156304667}
!29 = !{i64 4724217}
!30 = !{i64 2156306081}
!31 = !{i64 2156306788}
!32 = !{i64 2156307495}
!33 = !{i64 2156308107}
!34 = !{i64 2156308548}
!35 = !{i64 2156310058}
!36 = !{i64 2156310765}
!37 = !{i64 2156311472}
!38 = !{i64 2156312084}
!39 = !{i64 2156312473}
!40 = !{i64 4723597}
!41 = !{i64 2156313994}
!42 = !{i64 2156314701}
!43 = !{i64 2156315408}
!44 = !{i64 2156316020}
!45 = !{i64 2156316385}
!46 = !{i64 2156317777}
!47 = !{i64 2156318484}
!48 = !{i64 2156319191}
!49 = !{i64 2156319803}
!50 = !{i64 2156320188}
!51 = !{i64 2156321610}
!52 = !{i64 2156322317}
!53 = !{i64 2156323024}
!54 = !{i64 2156323636}
!55 = !{i64 2156324021}
!56 = !{i64 2156325594}
!57 = !{i64 2156326301}
!58 = !{i64 2156327008}
!59 = !{i64 2156327620}
!60 = !{i64 2156328010}
!61 = !{i64 2156328649}
!62 = !{i64 2156372664}
!63 = !{i64 2156373275}
!64 = !{i64 2156373886}
!65 = !{i64 2156374497}
!66 = !{i64 2156374836}
!67 = !{i64 2156376192}
!68 = !{i64 2156376803}
!69 = !{i64 2156377414}
!70 = !{i64 2156378025}
!71 = !{i64 2156378444}
!72 = !{i64 2156379893}
!73 = !{i64 2156380504}
!74 = !{i64 2156381115}
!75 = !{i64 2156381726}
!76 = !{i64 2156382087}
!77 = !{i64 2156383574}
!78 = !{i64 2156384185}
!79 = !{i64 2156384796}
!80 = !{i64 2156385407}
!81 = !{i64 2156385750}
!82 = !{i64 2156387080}
!83 = !{i64 2156387691}
!84 = !{i64 2156388302}
!85 = !{i64 2156388913}
!86 = !{i64 2156389276}
!87 = !{i64 2156390641}
!88 = !{i64 2156391252}
!89 = !{i64 2156391863}
!90 = !{i64 2156392474}
!91 = !{i64 2156392837}
!92 = !{i64 2156394314}
!93 = !{i64 2156394925}
!94 = !{i64 2156395536}
!95 = !{i64 2156396147}
!96 = !{i64 2156396512}
!97 = !{i64 2156397087}
!98 = !{i64 2156262251}
!99 = !{i64 2156262958}
!100 = !{i64 2156263665}
!101 = !{i64 2156264277}
!102 = !{i64 2156264666}
!103 = !{i64 2156266100}
!104 = !{i64 2156266807}
!105 = !{i64 2156267514}
!106 = !{i64 2156268126}
!107 = !{i64 2156268525}
!108 = !{i64 2156269996}
!109 = !{i64 2156270703}
!110 = !{i64 2156271410}
!111 = !{i64 2156272022}
!112 = !{i64 2156272463}
!113 = !{i64 2156278576}
!114 = !{i64 2156279283}
!115 = !{i64 2156279990}
!116 = !{i64 2156280602}
!117 = !{i64 2156280967}
!118 = !{i64 2156282353}
!119 = !{i64 2156283060}
!120 = !{i64 2156283767}
!121 = !{i64 2156284379}
!122 = !{i64 2156284744}
!123 = !{i64 2156286167}
!124 = !{i64 2156286874}
!125 = !{i64 2156287581}
!126 = !{i64 2156288193}
!127 = !{i64 2156288596}
!128 = !{i64 2156290053}
!129 = !{i64 2156290760}
!130 = !{i64 2156291467}
!131 = !{i64 2156292079}
!132 = !{i64 2156292480}
!133 = !{i64 2156293934}
!134 = !{i64 2156294641}
!135 = !{i64 2156295348}
!136 = !{i64 2156295960}
!137 = !{i64 2156296361}
!138 = !{i64 2156297857}
!139 = !{i64 2156298564}
!140 = !{i64 2156299271}
!141 = !{i64 2156299883}
!142 = !{i64 2156300273}
!143 = !{i64 2156300912}
!144 = !{i64 2156332781}
!145 = !{i64 2156333392}
!146 = !{i64 2156334003}
!147 = !{i64 2156334614}
!148 = !{i64 2156334975}
!149 = !{i64 2156336348}
!150 = !{i64 2156336959}
!151 = !{i64 2156337570}
!152 = !{i64 2156338181}
!153 = !{i64 2156338558}
!154 = !{i64 2156339971}
!155 = !{i64 2156340582}
!156 = !{i64 2156341193}
!157 = !{i64 2156341804}
!158 = !{i64 2156342223}
!159 = !{i64 2156350684}
!160 = !{i64 2156351295}
!161 = !{i64 2156351906}
!162 = !{i64 2156352517}
!163 = !{i64 2156352860}
!164 = !{i64 2156354187}
!165 = !{i64 2156354798}
!166 = !{i64 2156355409}
!167 = !{i64 2156356020}
!168 = !{i64 2156356363}
!169 = !{i64 2156357707}
!170 = !{i64 2156358318}
!171 = !{i64 2156358929}
!172 = !{i64 2156359540}
!173 = !{i64 2156359921}
!174 = !{i64 2156361316}
!175 = !{i64 2156361927}
!176 = !{i64 2156362538}
!177 = !{i64 2156363149}
!178 = !{i64 2156363528}
!179 = !{i64 2156364920}
!180 = !{i64 2156365531}
!181 = !{i64 2156366142}
!182 = !{i64 2156366753}
!183 = !{i64 2156367132}
!184 = !{i64 2156368580}
!185 = !{i64 2156369191}
!186 = !{i64 2156369802}
!187 = !{i64 2156370413}
!188 = !{i64 2156370778}
!189 = !{i64 2156371353}
