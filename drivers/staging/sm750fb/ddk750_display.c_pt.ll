; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_display.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }

@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@set_display_control.__UNIQUE_ID_ddebug147 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm750fb\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_display_control\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/sm750fb/ddk750_display.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Set Plane enbit:after tried %d times\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [44 x i8] c"../drivers/staging/sm750fb/ddk750_display.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 44, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ddk750_set_logical_disp_out(i32 noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %output, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 524288
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %2 = and i32 %1, -49
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and2 = shl i32 %output, 28
  %shl = and i32 %and2, 805306368
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i66 = getelementptr i8, ptr %5, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %4) #3, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %output, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i67 = getelementptr i8, ptr %6, i32 524800
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %8 = and i32 %7, -265217
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = shl i32 %output, 16
  %shl10 = and i32 %10, 786432
  %or11 = or i32 %9, %shl10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or11) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %12 = load ptr, ptr @mmio750, align 4
  %add.ptr.i68 = getelementptr i8, ptr %12, i32 524800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %11) #3, !srcloc !18
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  %and14 = and i32 %output, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %and17 = lshr i32 %output, 4
  %shr18 = and i32 %and17, 1
  tail call fastcc void @set_display_control(i32 noundef 0, i32 noundef %shr18)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %output, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %and23 = lshr i32 %output, 5
  %shr24 = and i32 %and23, 1
  tail call fastcc void @set_display_control(i32 noundef 1, i32 noundef %shr24)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %and26 = and i32 %output, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %13 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 524288
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !15
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %16 = and i32 %output, 64
  %17 = shl nuw nsw i32 %16, 21
  %or.i = or i32 %15, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %19 = load ptr, ptr @mmio750, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %19, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %18) #3, !srcloc !18
  tail call fastcc void @primary_wait_vertical_sync() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %20 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %20, i32 524288
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #3, !srcloc !15
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %23 = shl nuw nsw i32 %16, 19
  %or4.i = or i32 %22, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %25 = load ptr, ptr @mmio750, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %25, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %24) #3, !srcloc !18
  tail call fastcc void @primary_wait_vertical_sync() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %26 = load ptr, ptr @mmio750, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %26, i32 524288
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #3, !srcloc !15
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %29 = shl nuw nsw i32 %16, 20
  %or8.i = or i32 %28, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %31, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %30) #3, !srcloc !18
  tail call fastcc void @primary_wait_vertical_sync() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %32 = load ptr, ptr @mmio750, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %32, i32 524288
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #3, !srcloc !15
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %or12.i = or i32 %34, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %36 = load ptr, ptr @mmio750, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %36, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %35) #3, !srcloc !18
  tail call fastcc void @primary_wait_vertical_sync() #3
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %and32 = and i32 %output, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %if.then34

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %37 = load ptr, ptr @mmio750, align 4
  %add.ptr.i69 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %39 = and i32 %38, -4097
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %and37 = lshr i32 %output, 7
  %shr38 = and i32 %and37, 1
  %or39 = or i32 %40, %shr38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %or39) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %42 = load ptr, ptr @mmio750, align 4
  %add.ptr.i70 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %41) #3, !srcloc !18
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end31.if.end40_crit_edge
  %and41 = and i32 %output, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %and44 = lshr i32 %output, 9
  %shr45 = and i32 %and44, 3
  tail call void @ddk750_set_dpms(i32 noundef %shr45) #3
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_display_control(i32 noundef %ctrl, i32 noundef %disp_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrl)
  %tobool.not = icmp eq i32 %ctrl, 0
  %. = select i1 %tobool.not, i32 1057980415, i32 83852799
  %.35 = select i1 %tobool.not, i32 524288, i32 524800
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %.35
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !15
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disp_state)
  %tobool1.not = icmp eq i32 %disp_state, 0
  br i1 %tobool1.not, label %if.else16, label %if.then2

if.then2:                                         ; preds = %entry
  %or = or i32 %2, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i36 = getelementptr i8, ptr %4, i32 %.35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %3) #3, !srcloc !18
  %or3 = or i32 %2, 260
  %5 = tail call i32 @llvm.bswap.i32(i32 %or3) #3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then2
  %cnt.0 = phi i32 [ 0, %if.then2 ], [ %inc, %do.body.do.body_crit_edge ]
  %inc = add i32 %cnt.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i37 = getelementptr i8, ptr %6, i32 %.35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %5) #3, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i38 = getelementptr i8, ptr %7, i32 %.35
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #3, !srcloc !15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %10 = xor i32 %9, %or3
  %11 = and i32 %10, %.
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body7, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_display_control.__UNIQUE_ID_ddebug147, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_display_control, %if.then12)) #3
          to label %if.end19 [label %if.then12], !srcloc !19

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_display_control.__UNIQUE_ID_ddebug147, ptr noundef nonnull @.str.3, i32 noundef %inc) #3
  br label %if.end19

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and17 = and i32 %2, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %and17) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %13 = load ptr, ptr @mmio750, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 %.35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %12) #3, !srcloc !18
  %and18 = and i32 %2, -261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %and18) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 %.35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %14) #3, !srcloc !18
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then12, %do.body7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddk750_set_dpms(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @primary_wait_vertical_sync() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 92
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i1 = getelementptr i8, ptr %3, i32 524288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body.1:                                        ; preds = %do.body7.do.body.1_crit_edge, %do.body.1.do.body.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %8 = and i32 %7, 1024
  %tobool6.not.1 = icmp eq i32 %8, 0
  br i1 %tobool6.not.1, label %do.body.1.do.body7.1_crit_edge, label %do.body.1.do.body.1_crit_edge

do.body.1.do.body.1_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.1

do.body.1.do.body7.1_crit_edge:                   ; preds = %do.body.1
  br label %do.body7.1

do.body7.1:                                       ; preds = %do.body7.1.do.body7.1_crit_edge, %do.body.1.do.body7.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %9 = load ptr, ptr @mmio750, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %11 = and i32 %10, 1024
  %tobool11.not.1 = icmp eq i32 %11, 0
  br i1 %tobool11.not.1, label %do.body7.1.do.body7.1_crit_edge, label %do.body7.1.do.body.2_crit_edge

do.body7.1.do.body.2_crit_edge:                   ; preds = %do.body7.1
  br label %do.body.2

do.body7.1.do.body7.1_crit_edge:                  ; preds = %do.body7.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7.1

do.body.2:                                        ; preds = %do.body.2.do.body.2_crit_edge, %do.body7.1.do.body.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %12 = load ptr, ptr @mmio750, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %14 = and i32 %13, 1024
  %tobool6.not.2 = icmp eq i32 %14, 0
  br i1 %tobool6.not.2, label %do.body.2.do.body7.2_crit_edge, label %do.body.2.do.body.2_crit_edge

do.body.2.do.body.2_crit_edge:                    ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.2

do.body.2.do.body7.2_crit_edge:                   ; preds = %do.body.2
  br label %do.body7.2

do.body7.2:                                       ; preds = %do.body7.2.do.body7.2_crit_edge, %do.body.2.do.body7.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %17 = and i32 %16, 1024
  %tobool11.not.2 = icmp eq i32 %17, 0
  br i1 %tobool11.not.2, label %do.body7.2.do.body7.2_crit_edge, label %do.body7.2.do.body.3_crit_edge

do.body7.2.do.body.3_crit_edge:                   ; preds = %do.body7.2
  br label %do.body.3

do.body7.2.do.body7.2_crit_edge:                  ; preds = %do.body7.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7.2

do.body.3:                                        ; preds = %do.body.3.do.body.3_crit_edge, %do.body7.2.do.body.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %18 = load ptr, ptr @mmio750, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %20 = and i32 %19, 1024
  %tobool6.not.3 = icmp eq i32 %20, 0
  br i1 %tobool6.not.3, label %do.body.3.do.body7.3_crit_edge, label %do.body.3.do.body.3_crit_edge

do.body.3.do.body.3_crit_edge:                    ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.3

do.body.3.do.body7.3_crit_edge:                   ; preds = %do.body.3
  br label %do.body7.3

do.body7.3:                                       ; preds = %do.body7.3.do.body7.3_crit_edge, %do.body.3.do.body7.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %21 = load ptr, ptr @mmio750, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %23 = and i32 %22, 1024
  %tobool11.not.3 = icmp eq i32 %23, 0
  br i1 %tobool11.not.3, label %do.body7.3.do.body7.3_crit_edge, label %do.body7.3.cleanup_crit_edge

do.body7.3.cleanup_crit_edge:                     ; preds = %do.body7.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body7.3.do.body7.3_crit_edge:                  ; preds = %do.body7.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7.3

do.body:                                          ; preds = %do.body.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %24 = load ptr, ptr @mmio750, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %26 = and i32 %25, 1024
  %tobool6.not = icmp eq i32 %26, 0
  br i1 %tobool6.not, label %do.body.do.body7_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.do.body7_crit_edge:                       ; preds = %do.body
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body.do.body7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %27 = load ptr, ptr @mmio750, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %29 = and i32 %28, 1024
  %tobool11.not = icmp eq i32 %29, 0
  br i1 %tobool11.not, label %do.body7.do.body7_crit_edge, label %do.body7.do.body.1_crit_edge

do.body7.do.body.1_crit_edge:                     ; preds = %do.body7
  br label %do.body.1

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7

cleanup:                                          ; preds = %do.body7.3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/ddk750_display.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @set_display_control.__UNIQUE_ID_ddebug147, !1, !"__UNIQUE_ID_ddebug147", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 770165}
!16 = !{i64 2150705214}
!17 = !{i64 2150705595}
!18 = !{i64 769747}
!19 = !{i64 2148236904, i64 2148236909, i64 2148236922, i64 2148236966, i64 2148237000, i64 2148237021}
