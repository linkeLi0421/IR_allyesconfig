; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/sm750_accel.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/sm750_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lynx_accel = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sm750_hw_fillrect.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm750fb\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sm750_hw_fillrect\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/sm750fb/sm750_accel.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"De engine always busy\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [41 x i8] c"../drivers/staging/sm750fb/sm750_accel.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 100, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_de_init(ptr nocapture noundef readonly %accel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accel, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #4, !srcloc !16
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %accel, align 4
  %add.ptr.i13 = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %5 = and i32 %4, 15757444
  %6 = or i32 %5, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %accel, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %6) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %accel, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %accel, align 4
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %accel, align 4
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %accel, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #4, !srcloc !16
  %17 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %accel, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %20 = and i32 %19, -458753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %accel, align 4
  %add.ptr.i20 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %20) #4, !srcloc !16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_set2dformat(ptr nocapture noundef readonly %accel, i32 noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accel, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %3 = and i32 %2, -12289
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %fmt, 20
  %and1 = and i32 %shl, 3145728
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %6 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %accel, align 4
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_hw_fillrect(ptr nocapture noundef readonly %accel, i32 noundef %base, i32 noundef %pitch, i32 noundef %Bpp, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height, i32 noundef %color, i32 noundef %rop) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %de_wait = getelementptr inbounds %struct.lynx_accel, ptr %accel, i32 0, i32 3
  %0 = ptrtoint ptr %de_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %de_wait, align 4
  %call = tail call i32 %1() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sm750_hw_fillrect.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sm750_hw_fillrect, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !19

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sm750_hw_fillrect.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %base) #4
  %3 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %accel, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #4, !srcloc !16
  %div = udiv i32 %pitch, %Bpp
  %shl = shl i32 %div, 16
  %and = and i32 %shl, 536805376
  %and7 = and i32 %div, 8191
  %or = or i32 %and, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %6 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %accel, align 4
  %add.ptr.i37 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %5) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %accel, align 4
  %add.ptr.i38 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %5) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %color) #4
  %11 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %accel, align 4
  %add.ptr.i39 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %10) #4, !srcloc !16
  %shl14 = shl i32 %x, 16
  %and15 = and i32 %shl14, 536805376
  %and16 = and i32 %y, 65535
  %or17 = or i32 %and15, %and16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or17) #4
  %14 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %accel, align 4
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %13) #4, !srcloc !16
  %shl18 = shl i32 %width, 16
  %and19 = and i32 %shl18, 536805376
  %and20 = and i32 %height, 8191
  %or21 = or i32 %and19, %and20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or21) #4
  %17 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %accel, align 4
  %add.ptr.i41 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %16) #4, !srcloc !16
  %and22 = and i32 %rop, 255
  %or23 = or i32 %and22, -2145288192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or23) #4
  %20 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %accel, align 4
  %add.ptr.i42 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %19) #4, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then4 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_hw_copyarea(ptr nocapture noundef readonly %accel, i32 noundef %sBase, i32 noundef %sPitch, i32 noundef %sx, i32 noundef %sy, i32 noundef %dBase, i32 noundef %dPitch, i32 noundef %Bpp, i32 noundef %dx, i32 noundef %dy, i32 noundef %width, i32 noundef %height, i32 noundef %rop2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %sBase, i32 %dBase)
  %cmp = icmp eq i32 %sBase, %dBase
  call void @__sanitizer_cov_trace_cmp4(i32 %sPitch, i32 %dPitch)
  %cmp1 = icmp eq i32 %sPitch, %dPitch
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sy, i32 %dy)
  %cmp2 = icmp ult i32 %sy, %dy
  br i1 %cmp2, label %if.then.if.then15_crit_edge, label %if.else

if.then.if.then15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %sy, i32 %dy)
  %cmp4 = icmp ule i32 %sy, %dy
  call void @__sanitizer_cov_trace_cmp4(i32 %sx, i32 %dx)
  %cmp7.not = icmp ule i32 %sx, %dx
  %or.cond97 = and i1 %cmp7.not, %cmp4
  br i1 %or.cond97, label %if.else.if.then15_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.else.if.then15_crit_edge, %if.then.if.then15_crit_edge
  %sub = add i32 %width, -1
  %add = add i32 %sub, %sx
  %sub16 = add i32 %height, -1
  %add17 = add i32 %sub16, %sy
  %add19 = add i32 %sub, %dx
  %add21 = add i32 %sub16, %dy
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.else.if.end22_crit_edge, %entry.if.end22_crit_edge
  %cmp1393 = phi i32 [ 134217728, %if.then15 ], [ 0, %entry.if.end22_crit_edge ], [ 0, %if.else.if.end22_crit_edge ]
  %dx.addr.0 = phi i32 [ %add19, %if.then15 ], [ %dx, %entry.if.end22_crit_edge ], [ %dx, %if.else.if.end22_crit_edge ]
  %dy.addr.0 = phi i32 [ %add21, %if.then15 ], [ %dy, %entry.if.end22_crit_edge ], [ %dy, %if.else.if.end22_crit_edge ]
  %sy.addr.0 = phi i32 [ %add17, %if.then15 ], [ %sy, %entry.if.end22_crit_edge ], [ %sy, %if.else.if.end22_crit_edge ]
  %sx.addr.0 = phi i32 [ %add, %if.then15 ], [ %sx, %entry.if.end22_crit_edge ], [ %sx, %if.else.if.end22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %sBase) #4
  %1 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %accel, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %dBase) #4
  %4 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %accel, align 4
  %add.ptr.i86 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %3) #4, !srcloc !16
  %div = udiv i32 %dPitch, %Bpp
  %shl = shl i32 %div, 16
  %and = and i32 %shl, 536805376
  %div23 = udiv i32 %sPitch, %Bpp
  %and24 = and i32 %div23, 8191
  %or = or i32 %and, %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %7 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %accel, align 4
  %add.ptr.i87 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %6) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %accel, align 4
  %add.ptr.i88 = getelementptr i8, ptr %10, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %6) #4, !srcloc !16
  %de_wait = getelementptr inbounds %struct.lynx_accel, ptr %accel, i32 0, i32 3
  %11 = ptrtoint ptr %de_wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %de_wait, align 4
  %call = tail call i32 %12() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31.not = icmp eq i32 %call, 0
  br i1 %cmp31.not, label %if.end33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %shl34 = shl i32 %sx.addr.0, 16
  %and35 = and i32 %shl34, 1073676288
  %and36 = and i32 %sy.addr.0, 65535
  %or37 = or i32 %and35, %and36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or37) #4
  %14 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %accel, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !16
  %shl38 = shl i32 %dx.addr.0, 16
  %and39 = and i32 %shl38, 536805376
  %and40 = and i32 %dy.addr.0, 65535
  %or41 = or i32 %and39, %and40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or41) #4
  %17 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %accel, align 4
  %add.ptr.i89 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %16) #4, !srcloc !16
  %shl42 = shl i32 %width, 16
  %and43 = and i32 %shl42, 536805376
  %and44 = and i32 %height, 8191
  %or45 = or i32 %and43, %and44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or45) #4
  %20 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %accel, align 4
  %add.ptr.i90 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %19) #4, !srcloc !16
  %and46 = and i32 %rop2, 255
  %or47 = or i32 %and46, %cmp1393
  %or51 = or i32 %or47, -2147450880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or51) #4
  %23 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %accel, align 4
  %add.ptr.i91 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %22) #4, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -1, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_hw_imageblit(ptr nocapture noundef readonly %accel, ptr nocapture noundef readonly %pSrcbuf, i32 noundef %srcDelta, i32 noundef %startBit, i32 noundef %dBase, i32 noundef %dPitch, i32 noundef %bytePerPixel, i32 noundef %dx, i32 noundef %dy, i32 noundef %width, i32 noundef %height, i32 noundef %fColor, i32 noundef %bColor, i32 noundef %rop2) local_unnamed_addr #0 align 64 {
entry:
  %ajRemain.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ajRemain.sroa.0)
  %and = and i32 %startBit, 7
  %add = add nuw nsw i32 %and, 7
  %add1 = add i32 %add, %width
  %div84 = lshr i32 %add1, 3
  %and2 = and i32 %div84, 536870908
  %and3 = and i32 %div84, 3
  %de_wait = getelementptr inbounds %struct.lynx_accel, ptr %accel, i32 0, i32 3
  %0 = ptrtoint ptr %ajRemain.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ajRemain.sroa.0, align 4
  %1 = ptrtoint ptr %de_wait to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %de_wait, align 4
  %call = tail call i32 %2() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %3 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %accel, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %dBase) #4
  %6 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %accel, align 4
  %add.ptr.i86 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %5) #4, !srcloc !16
  %div4 = udiv i32 %dPitch, %bytePerPixel
  %shl = shl i32 %div4, 16
  %and5 = and i32 %shl, 536805376
  %and7 = and i32 %div4, 8191
  %or = or i32 %and5, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %9 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %accel, align 4
  %add.ptr.i87 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %8) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %accel, align 4
  %add.ptr.i88 = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %8) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %13 = shl nuw nsw i32 %and, 8
  %14 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %accel, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !16
  %shl16 = shl i32 %dx, 16
  %and17 = and i32 %shl16, 536805376
  %and18 = and i32 %dy, 65535
  %or19 = or i32 %and17, %and18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or19) #4
  %17 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %accel, align 4
  %add.ptr.i89 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %16) #4, !srcloc !16
  %shl20 = shl i32 %width, 16
  %and21 = and i32 %shl20, 536805376
  %and22 = and i32 %height, 8191
  %or23 = or i32 %and21, %and22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or23) #4
  %20 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %accel, align 4
  %add.ptr.i90 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %19) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %fColor) #4
  %23 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %accel, align 4
  %add.ptr.i91 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %22) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %bColor) #4
  %26 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %accel, align 4
  %add.ptr.i92 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %25) #4, !srcloc !16
  %and24 = and i32 %rop2, 255
  %28 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %accel, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !17
  %31 = lshr i32 %30, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %and.i = and i32 %31, 1792
  %or28 = or i32 %and24, %and.i
  %or30 = or i32 %or28, -2142732288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %32 = tail call i32 @llvm.bswap.i32(i32 %or30) #4
  %33 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %accel, align 4
  %add.ptr.i93 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %32) #4, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %cmp3197.not = icmp eq i32 %height, 0
  br i1 %cmp3197.not, label %if.end.cleanup_crit_edge, label %for.cond32.preheader.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond32.preheader.lr.ph:                       ; preds = %if.end
  %div3385 = lshr i32 %add1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add1)
  %cmp3495.not = icmp ult i32 %add1, 32
  %dpPortBase.i = getelementptr inbounds %struct.lynx_accel, ptr %accel, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %umax = call i32 @llvm.umax.i32(i32 %div3385, i32 1)
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %if.end39.for.cond32.preheader_crit_edge, %for.cond32.preheader.lr.ph
  %i.099 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %inc42, %if.end39.for.cond32.preheader_crit_edge ]
  %pSrcbuf.addr.098 = phi ptr [ %pSrcbuf, %for.cond32.preheader.lr.ph ], [ %add.ptr40, %if.end39.for.cond32.preheader_crit_edge ]
  br i1 %cmp3495.not, label %for.cond32.preheader.for.end_crit_edge, label %for.cond32.preheader.for.body35_crit_edge

for.cond32.preheader.for.body35_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body35

for.cond32.preheader.for.end_crit_edge:           ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond32.preheader.for.body35_crit_edge
  %j.096 = phi i32 [ %inc, %for.body35.for.body35_crit_edge ], [ 0, %for.cond32.preheader.for.body35_crit_edge ]
  %mul = shl i32 %j.096, 2
  %add.ptr = getelementptr i8, ptr %pSrcbuf.addr.098, i32 %mul
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  %38 = ptrtoint ptr %dpPortBase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dpPortBase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !16
  %inc = add nuw nsw i32 %j.096, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body35.for.end_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body35

for.body35.for.end_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body35.for.end_crit_edge, %for.cond32.preheader.for.end_crit_edge
  br i1 %tobool.not, label %for.end.if.end39_crit_edge, label %if.then36

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr37 = getelementptr i8, ptr %pSrcbuf.addr.098, i32 %and2
  %40 = call ptr @memcpy(ptr %ajRemain.sroa.0, ptr %add.ptr37, i32 %and3)
  %41 = ptrtoint ptr %ajRemain.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %ajRemain.sroa.0.0.ajRemain.sroa.0.0.ajRemain.sroa.0.0.ajRemain.sroa.0.0. = load i32, ptr %ajRemain.sroa.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %42 = tail call i32 @llvm.bswap.i32(i32 %ajRemain.sroa.0.0.ajRemain.sroa.0.0.ajRemain.sroa.0.0.ajRemain.sroa.0.0.) #4
  %43 = ptrtoint ptr %dpPortBase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dpPortBase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #4, !srcloc !16
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.end.if.end39_crit_edge
  %add.ptr40 = getelementptr i8, ptr %pSrcbuf.addr.098, i32 %srcDelta
  %inc42 = add nuw i32 %i.099, 1
  %exitcond100.not = icmp eq i32 %inc42, %height
  br i1 %exitcond100.not, label %if.end39.cleanup_crit_edge, label %if.end39.for.cond32.preheader_crit_edge

if.end39.for.cond32.preheader_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond32.preheader

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ajRemain.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/sm750_accel.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sm750_hw_fillrect.__UNIQUE_ID_ddebug305, !1, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2156250545}
!16 = !{i64 6223078}
!17 = !{i64 6223496}
!18 = !{i64 2156251420}
!19 = !{i64 2148963521, i64 2148963526, i64 2148963539, i64 2148963583, i64 2148963617, i64 2148963638}
!20 = !{i64 2156251804}
