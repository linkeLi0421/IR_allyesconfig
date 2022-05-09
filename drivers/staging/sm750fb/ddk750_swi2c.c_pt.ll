; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_swi2c.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_swi2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@sw_i2c_clk_gpio_data_reg = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sw_i2c_clk_gpio_data_dir_reg = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sw_i2c_clk_gpio = internal global { i8, [31 x i8] } { i8 30, [31 x i8] zeroinitializer }, align 32
@sw_i2c_data_gpio_data_reg = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sw_i2c_data_gpio_data_dir_reg = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sw_i2c_data_gpio = internal global { i8, [31 x i8] } { i8 31, [31 x i8] zeroinitializer }, align 32
@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"sw_i2c_clk_gpio_data_reg\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [29 x i8] c"sw_i2c_clk_gpio_data_dir_reg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"sw_i2c_clk_gpio\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 54, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [26 x i8] c"sw_i2c_data_gpio_data_reg\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [30 x i8] c"sw_i2c_data_gpio_data_dir_reg\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"sw_i2c_data_gpio\00", align 1
@___asan_gen_.9 = private constant [42 x i8] c"../drivers/staging/sm750fb/ddk750_swi2c.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 55, i32 22 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @sw_i2c_clk_gpio_data_reg, ptr @sw_i2c_clk_gpio_data_dir_reg, ptr @sw_i2c_clk_gpio, ptr @sw_i2c_data_gpio_data_reg, ptr @sw_i2c_data_gpio_data_dir_reg, ptr @sw_i2c_data_gpio], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_clk_gpio_data_reg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_clk_gpio_data_dir_reg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_clk_gpio to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_data_gpio_data_reg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_data_gpio_data_dir_reg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_i2c_data_gpio to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_sw_i2c_init(i8 noundef zeroext %clk_gpio, i8 noundef zeroext %data_gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %data_gpio, %clk_gpio
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %0)
  %.not = icmp ult i8 %0, 32
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp5 = icmp eq i32 %call, 3
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @sw_i2c_clk_gpio_data_reg, align 4
  store i1 true, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  store i8 %clk_gpio, ptr @sw_i2c_clk_gpio, align 1
  store i1 true, ptr @sw_i2c_data_gpio_data_reg, align 4
  store i1 true, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  store i8 %data_gpio, ptr @sw_i2c_data_gpio, align 1
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  tail call fastcc void @sw_i2c_stop() #3
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 false, ptr @sw_i2c_clk_gpio_data_reg, align 4
  store i1 false, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  store i8 %clk_gpio, ptr @sw_i2c_clk_gpio, align 1
  store i1 false, ptr @sw_i2c_data_gpio_data_reg, align 4
  store i1 false, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  store i8 %data_gpio, ptr @sw_i2c_data_gpio, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %4 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv11 = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv11
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i24 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %5) #3, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i25 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #3, !srcloc !25
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %10 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv13 = zext i8 %10 to i32
  %shl14 = shl nuw i32 1, %conv13
  %neg15 = xor i32 %shl14, -1
  %and16 = and i32 %9, %neg15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %and16) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %12 = load ptr, ptr @mmio750, align 4
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %11) #3, !srcloc !28
  tail call void @sm750_enable_gpio(i32 noundef 1) #3
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  tail call fastcc void @sw_i2c_stop()
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_get_chip_type() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_enable_gpio(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_i2c_stop() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b15.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %0 = select i1 %.b15.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %4 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %.b14.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %5 = select i1 %.b14.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %7, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %6) #3, !srcloc !28
  %.b15.i1 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %8 = select i1 %.b15.i1, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %9 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %9, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #3, !srcloc !25
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %12 = select i1 %.b12.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %13 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %13, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #3, !srcloc !25
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %16 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv2.i = zext i8 %16 to i32
  %shl3.i = shl nuw i32 1, %conv2.i
  %neg4.i = xor i32 %shl3.i, -1
  %and5.i = and i32 %15, %neg4.i
  %.b.i = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %17 = select i1 %.b.i, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %19 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %18) #3, !srcloc !28
  %20 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv6.i = zext i8 %20 to i32
  %shl7.i = shl nuw i32 1, %conv6.i
  %or.i = or i32 %shl7.i, %11
  %.b13.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %21 = select i1 %.b13.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %23 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %22) #3, !srcloc !28
  %.b15.i3 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %24 = select i1 %.b15.i3, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %25 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %25, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #3, !srcloc !25
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %28 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i5 = zext i8 %28 to i32
  %shl.i6 = shl nuw i32 1, %conv.i5
  %neg.i7 = xor i32 %shl.i6, -1
  %and.i8 = and i32 %27, %neg.i7
  %.b14.i9 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %29 = select i1 %.b14.i9, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i8) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i10 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i10, i32 %30) #3, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sm750_sw_i2c_read_reg(i8 noundef zeroext %addr, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sw_i2c_start()
  %call = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %addr)
  %call1 = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %reg)
  tail call fastcc void @sw_i2c_start()
  %add = add i8 %addr, 1
  %call3 = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %add)
  br label %for.body.i

for.body.i:                                       ; preds = %sw_i2c_read_sda.exit.i.for.body.i_crit_edge, %entry
  %data.048.i = phi i8 [ 0, %entry ], [ %conv2.i, %sw_i2c_read_sda.exit.i.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ 7, %entry ], [ %dec.i, %sw_i2c_read_sda.exit.i.for.body.i_crit_edge ]
  %.b15.i.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %0 = select i1 %.b15.i.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %4 = select i1 %.b12.i.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %5, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #3, !srcloc !25
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %8 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i.i = zext i8 %8 to i32
  %shl3.i.i = shl nuw i32 1, %conv2.i.i
  %neg4.i.i = xor i32 %shl3.i.i, -1
  %and5.i.i = and i32 %7, %neg4.i.i
  %.b.i.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %9 = select i1 %.b.i.i, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %and5.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %10) #3, !srcloc !28
  %12 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i.i = zext i8 %12 to i32
  %shl7.i.i = shl nuw i32 1, %conv6.i.i
  %or.i.i = or i32 %shl7.i.i, %3
  %.b13.i.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %13 = select i1 %.b13.i.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %14) #3, !srcloc !28
  %.b15.i1.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %16 = select i1 %.b15.i1.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %17 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %17, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #3, !srcloc !25
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %20 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i.i = zext i8 %20 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %19, %neg.i.i
  %.b14.i.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %21 = select i1 %.b14.i.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %23 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %22) #3, !srcloc !28
  %.b15.i3.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %24 = select i1 %.b15.i3.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %25 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %25, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #3, !srcloc !25
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %28 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i5.i = zext i8 %28 to i32
  %shl.i6.i = shl nuw i32 1, %conv.i5.i
  %neg.i7.i = xor i32 %shl.i6.i, -1
  %and.i8.i = and i32 %27, %neg.i7.i
  %.b14.i9.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %29 = select i1 %.b14.i9.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i8.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i10.i = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i10.i, i32 %30) #3, !srcloc !28
  %32 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i11.i = zext i8 %32 to i32
  %shl.i12.i = shl nuw i32 1, %conv.i11.i
  %.b17.i.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %33 = select i1 %.b17.i.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %34 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %34, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #3, !srcloc !25
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %and.i14.i = and i32 %36, %shl.i12.i
  %neg.i15.i = xor i32 %shl.i12.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i14.i, i32 %neg.i15.i)
  %cmp.not.i.i = icmp eq i32 %and.i14.i, %neg.i15.i
  br i1 %cmp.not.i.i, label %for.body.i.sw_i2c_read_sda.exit.i_crit_edge, label %if.then.i.i

for.body.i.sw_i2c_read_sda.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw_i2c_read_sda.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %37 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv2.i16.i = zext i8 %37 to i32
  %shl3.i17.i = shl nuw i32 1, %conv2.i16.i
  %neg4.i18.i = xor i32 %shl3.i17.i, -1
  %and5.i19.i = and i32 %36, %neg4.i18.i
  %.b16.i.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %38 = select i1 %.b16.i.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %39 = tail call i32 @llvm.bswap.i32(i32 %and5.i19.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %40 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i20.i = getelementptr i8, ptr %40, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i20.i, i32 %39) #3, !srcloc !28
  br label %sw_i2c_read_sda.exit.i

sw_i2c_read_sda.exit.i:                           ; preds = %if.then.i.i, %for.body.i.sw_i2c_read_sda.exit.i_crit_edge
  %.b.i21.i = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %41 = select i1 %.b.i21.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %42 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i22.i = getelementptr i8, ptr %42, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i22.i) #3, !srcloc !25
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %45 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv7.i.i = zext i8 %45 to i32
  %46 = lshr i32 %44, %conv7.i.i
  %47 = and i32 %46, 1
  %shl.i = shl nuw i32 %47, %i.047.i
  %48 = trunc i32 %shl.i to i8
  %conv2.i = or i8 %data.048.i, %48
  %dec.i = add nsw i32 %i.047.i, -1
  %cmp.not.i = icmp eq i32 %i.047.i, 0
  br i1 %cmp.not.i, label %sw_i2c_read_byte.exit, label %sw_i2c_read_sda.exit.i.for.body.i_crit_edge

sw_i2c_read_sda.exit.i.for.body.i_crit_edge:      ; preds = %sw_i2c_read_sda.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

sw_i2c_read_byte.exit:                            ; preds = %sw_i2c_read_sda.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %.b15.i23.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %49 = select i1 %.b15.i23.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %50 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %50, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i) #3, !srcloc !25
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i25.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %53 = select i1 %.b12.i25.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %54 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i26.i = getelementptr i8, ptr %54, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i26.i) #3, !srcloc !25
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %57 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i27.i = zext i8 %57 to i32
  %shl3.i28.i = shl nuw i32 1, %conv2.i27.i
  %neg4.i29.i = xor i32 %shl3.i28.i, -1
  %and5.i30.i = and i32 %56, %neg4.i29.i
  %.b.i31.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %58 = select i1 %.b.i31.i, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %59 = tail call i32 @llvm.bswap.i32(i32 %and5.i30.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %60 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i32.i = getelementptr i8, ptr %60, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i32.i, i32 %59) #3, !srcloc !28
  %61 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i33.i = zext i8 %61 to i32
  %shl7.i34.i = shl nuw i32 1, %conv6.i33.i
  %or.i35.i = or i32 %shl7.i34.i, %52
  %.b13.i36.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %62 = select i1 %.b13.i36.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i35.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %64 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i37.i = getelementptr i8, ptr %64, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i37.i, i32 %63) #3, !srcloc !28
  %.b15.i38.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %65 = select i1 %.b15.i38.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %66 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %66, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i) #3, !srcloc !25
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %69 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i40.i = zext i8 %69 to i32
  %shl.i41.i = shl nuw i32 1, %conv.i40.i
  %neg.i42.i = xor i32 %shl.i41.i, -1
  %and.i43.i = and i32 %68, %neg.i42.i
  %.b14.i44.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %70 = select i1 %.b14.i44.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %71 = tail call i32 @llvm.bswap.i32(i32 %and.i43.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %72 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i45.i = getelementptr i8, ptr %72, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i45.i, i32 %71) #3, !srcloc !28
  tail call fastcc void @sw_i2c_stop()
  ret i8 %conv2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_i2c_start() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b15.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %0 = select i1 %.b15.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %4 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %.b14.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %5 = select i1 %.b14.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %7, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %6) #3, !srcloc !28
  %.b15.i1 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %8 = select i1 %.b15.i1, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %9 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %9, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #3, !srcloc !25
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %12 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i3 = zext i8 %12 to i32
  %shl.i4 = shl nuw i32 1, %conv.i3
  %neg.i5 = xor i32 %shl.i4, -1
  %and.i6 = and i32 %11, %neg.i5
  %.b14.i7 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %13 = select i1 %.b14.i7, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i6) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i8 = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i8, i32 %14) #3, !srcloc !28
  %.b15.i9 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %16 = select i1 %.b15.i9, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %17 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %17, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #3, !srcloc !25
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %20 = select i1 %.b12.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %21 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %21, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #3, !srcloc !25
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %24 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv2.i = zext i8 %24 to i32
  %shl3.i = shl nuw i32 1, %conv2.i
  %neg4.i = xor i32 %shl3.i, -1
  %and5.i = and i32 %23, %neg4.i
  %.b.i = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %25 = select i1 %.b.i, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %27 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %27, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %26) #3, !srcloc !28
  %28 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv6.i = zext i8 %28 to i32
  %shl7.i = shl nuw i32 1, %conv6.i
  %or.i = or i32 %shl7.i, %19
  %.b13.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %29 = select i1 %.b13.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %30) #3, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0141 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %value.0140 = phi i8 [ %data, %entry ], [ %shl, %if.end.for.body_crit_edge ]
  %.b15.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %0 = select i1 %.b15.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %1 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %4 = select i1 %.b12.i, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %5, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #3, !srcloc !25
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %8 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i = zext i8 %8 to i32
  %shl3.i = shl nuw i32 1, %conv2.i
  %neg4.i = xor i32 %shl3.i, -1
  %and5.i = and i32 %7, %neg4.i
  %.b.i = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %9 = select i1 %.b.i, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %10) #3, !srcloc !28
  %12 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i = zext i8 %12 to i32
  %shl7.i = shl nuw i32 1, %conv6.i
  %or.i = or i32 %shl7.i, %3
  %.b13.i = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %13 = select i1 %.b13.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %14) #3, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %value.0140)
  %cmp1.not = icmp sgt i8 %value.0140, -1
  %.b15.i26 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %16 = select i1 %.b15.i26, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %17 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %17, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #3
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %20 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %19, %neg.i
  %.b14.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %21 = select i1 %.b14.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %23 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %23, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %22) #3, !srcloc !28
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %.b12.i28 = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %24 = select i1 %.b12.i28, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %25 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i29 = getelementptr i8, ptr %25, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i29) #3, !srcloc !25
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %28 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv2.i30 = zext i8 %28 to i32
  %shl3.i31 = shl nuw i32 1, %conv2.i30
  %neg4.i32 = xor i32 %shl3.i31, -1
  %and5.i33 = and i32 %27, %neg4.i32
  %.b.i34 = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %29 = select i1 %.b.i34, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and5.i33) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %31 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i35 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i35, i32 %30) #3, !srcloc !28
  %32 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv6.i36 = zext i8 %32 to i32
  %shl7.i37 = shl nuw i32 1, %conv6.i36
  %or.i38 = or i32 %shl7.i37, %19
  %.b13.i39 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %33 = select i1 %.b13.i39, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i38) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %35 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i40 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i40, i32 %34) #3, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.b15.i41 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %36 = select i1 %.b15.i41, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %37 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %37, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #3, !srcloc !25
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %40 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i43 = zext i8 %40 to i32
  %shl.i44 = shl nuw i32 1, %conv.i43
  %neg.i45 = xor i32 %shl.i44, -1
  %and.i46 = and i32 %39, %neg.i45
  %.b14.i47 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %41 = select i1 %.b14.i47, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i46) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %43 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i48 = getelementptr i8, ptr %43, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i48, i32 %42) #3, !srcloc !28
  %shl = shl i8 %value.0140, 1
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end
  %.b15.i49 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %44 = select i1 %.b15.i49, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %45 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %45, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #3, !srcloc !25
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i51 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %48 = select i1 %.b12.i51, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %49 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i52 = getelementptr i8, ptr %49, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i52) #3, !srcloc !25
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %52 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i53 = zext i8 %52 to i32
  %shl3.i54 = shl nuw i32 1, %conv2.i53
  %neg4.i55 = xor i32 %shl3.i54, -1
  %and5.i56 = and i32 %51, %neg4.i55
  %.b.i57 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %53 = select i1 %.b.i57, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %54 = tail call i32 @llvm.bswap.i32(i32 %and5.i56) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %55 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i58 = getelementptr i8, ptr %55, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i58, i32 %54) #3, !srcloc !28
  %56 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i59 = zext i8 %56 to i32
  %shl7.i60 = shl nuw i32 1, %conv6.i59
  %or.i61 = or i32 %shl7.i60, %47
  %.b13.i62 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %57 = select i1 %.b13.i62, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i61) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %59 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i63 = getelementptr i8, ptr %59, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i63, i32 %58) #3, !srcloc !28
  %.b15.i64 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %60 = select i1 %.b15.i64, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %61 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %61, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #3, !srcloc !25
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %64 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i66 = zext i8 %64 to i32
  %shl.i67 = shl nuw i32 1, %conv.i66
  %neg.i68 = xor i32 %shl.i67, -1
  %and.i69 = and i32 %63, %neg.i68
  %.b14.i70 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %65 = select i1 %.b14.i70, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i69) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %67 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i71 = getelementptr i8, ptr %67, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i71, i32 %66) #3, !srcloc !28
  %.b15.i72 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %68 = select i1 %.b15.i72, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %69 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %69, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #3, !srcloc !25
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %72 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i74 = zext i8 %72 to i32
  %shl.i75 = shl nuw i32 1, %conv.i74
  %neg.i76 = xor i32 %shl.i75, -1
  %and.i77 = and i32 %71, %neg.i76
  %.b14.i78 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %73 = select i1 %.b14.i78, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %74 = tail call i32 @llvm.bswap.i32(i32 %and.i77) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %75 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i79 = getelementptr i8, ptr %75, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i79, i32 %74) #3, !srcloc !28
  br label %for.body8

for.body8:                                        ; preds = %if.end10.for.body8_crit_edge, %for.end
  %cmp6143 = phi i1 [ true, %for.end ], [ %cmp6, %if.end10.for.body8_crit_edge ]
  %i.1142 = phi i32 [ 0, %for.end ], [ %inc12, %if.end10.for.body8_crit_edge ]
  %76 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i80 = zext i8 %76 to i32
  %shl.i81 = shl nuw i32 1, %conv.i80
  %.b17.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %77 = select i1 %.b17.i, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %78 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %78, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #3, !srcloc !25
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %and.i83 = and i32 %80, %shl.i81
  %neg.i84 = xor i32 %shl.i81, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i83, i32 %neg.i84)
  %cmp.not.i = icmp eq i32 %and.i83, %neg.i84
  br i1 %cmp.not.i, label %for.body8.sw_i2c_read_sda.exit_crit_edge, label %if.then.i

for.body8.sw_i2c_read_sda.exit_crit_edge:         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw_i2c_read_sda.exit

if.then.i:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #5
  %81 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv2.i85 = zext i8 %81 to i32
  %shl3.i86 = shl nuw i32 1, %conv2.i85
  %neg4.i87 = xor i32 %shl3.i86, -1
  %and5.i88 = and i32 %80, %neg4.i87
  %.b16.i = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %82 = select i1 %.b16.i, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %83 = tail call i32 @llvm.bswap.i32(i32 %and5.i88) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %84 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i89 = getelementptr i8, ptr %84, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i89, i32 %83) #3, !srcloc !28
  br label %sw_i2c_read_sda.exit

sw_i2c_read_sda.exit:                             ; preds = %if.then.i, %for.body8.sw_i2c_read_sda.exit_crit_edge
  %.b.i90 = load i1, ptr @sw_i2c_data_gpio_data_reg, align 4
  %85 = select i1 %.b.i90, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %86 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i91 = getelementptr i8, ptr %86, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i91) #3, !srcloc !25
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %89 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv7.i = zext i8 %89 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  %and9.i = and i32 %shl8.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i.not, label %sw_i2c_read_sda.exit.for.end13_crit_edge, label %if.end10

sw_i2c_read_sda.exit.for.end13_crit_edge:         ; preds = %sw_i2c_read_sda.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end13

if.end10:                                         ; preds = %sw_i2c_read_sda.exit
  %.b15.i92 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %90 = select i1 %.b15.i92, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %91 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %91, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i93) #3, !srcloc !25
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i94 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %94 = select i1 %.b12.i94, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %95 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i95 = getelementptr i8, ptr %95, i32 %94
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i95) #3, !srcloc !25
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %98 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i96 = zext i8 %98 to i32
  %shl3.i97 = shl nuw i32 1, %conv2.i96
  %neg4.i98 = xor i32 %shl3.i97, -1
  %and5.i99 = and i32 %97, %neg4.i98
  %.b.i100 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %99 = select i1 %.b.i100, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %100 = tail call i32 @llvm.bswap.i32(i32 %and5.i99) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %101 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i101 = getelementptr i8, ptr %101, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i101, i32 %100) #3, !srcloc !28
  %102 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i102 = zext i8 %102 to i32
  %shl7.i103 = shl nuw i32 1, %conv6.i102
  %or.i104 = or i32 %shl7.i103, %93
  %.b13.i105 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %103 = select i1 %.b13.i105, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i104) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %105 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i106 = getelementptr i8, ptr %105, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i106, i32 %104) #3, !srcloc !28
  %.b15.i107 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %106 = select i1 %.b15.i107, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %107 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %107, i32 %106
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #3, !srcloc !25
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %110 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv.i109 = zext i8 %110 to i32
  %shl.i110 = shl nuw i32 1, %conv.i109
  %neg.i111 = xor i32 %shl.i110, -1
  %and.i112 = and i32 %109, %neg.i111
  %.b14.i113 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %111 = select i1 %.b14.i113, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %112 = tail call i32 @llvm.bswap.i32(i32 %and.i112) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %113 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i114 = getelementptr i8, ptr %113, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i114, i32 %112) #3, !srcloc !28
  %inc12 = add nuw nsw i32 %i.1142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.1142)
  %cmp6 = icmp ult i32 %i.1142, 254
  %exitcond144.not = icmp eq i32 %inc12, 255
  br i1 %exitcond144.not, label %if.end10.for.end13_crit_edge, label %if.end10.for.body8_crit_edge

if.end10.for.body8_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body8

if.end10.for.end13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end13

for.end13:                                        ; preds = %if.end10.for.end13_crit_edge, %sw_i2c_read_sda.exit.for.end13_crit_edge
  %cmp6.lcssa = phi i1 [ %cmp6143, %sw_i2c_read_sda.exit.for.end13_crit_edge ], [ %cmp6, %if.end10.for.end13_crit_edge ]
  %.b15.i116 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %114 = select i1 %.b15.i116, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %115 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %115, i32 %114
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i117) #3, !srcloc !25
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %.b12.i118 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %118 = select i1 %.b12.i118, i32 131096, i32 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %119 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17.i119 = getelementptr i8, ptr %119, i32 %118
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i119) #3, !srcloc !25
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %122 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv2.i120 = zext i8 %122 to i32
  %shl3.i121 = shl nuw i32 1, %conv2.i120
  %neg4.i122 = xor i32 %shl3.i121, -1
  %and5.i123 = and i32 %121, %neg4.i122
  %.b.i124 = load i1, ptr @sw_i2c_clk_gpio_data_reg, align 4
  %123 = select i1 %.b.i124, i32 131096, i32 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %124 = tail call i32 @llvm.bswap.i32(i32 %and5.i123) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %125 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18.i125 = getelementptr i8, ptr %125, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i125, i32 %124) #3, !srcloc !28
  %126 = load i8, ptr @sw_i2c_clk_gpio, align 1
  %conv6.i126 = zext i8 %126 to i32
  %shl7.i127 = shl nuw i32 1, %conv6.i126
  %or.i128 = or i32 %shl7.i127, %117
  %.b13.i129 = load i1, ptr @sw_i2c_clk_gpio_data_dir_reg, align 4
  %127 = select i1 %.b13.i129, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i128) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %129 = load ptr, ptr @mmio750, align 4
  %add.ptr.i19.i130 = getelementptr i8, ptr %129, i32 %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i130, i32 %128) #3, !srcloc !28
  %.b15.i131 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %130 = select i1 %.b15.i131, i32 131100, i32 65540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %131 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %131, i32 %130
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #3, !srcloc !25
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %134 = load i8, ptr @sw_i2c_data_gpio, align 1
  %conv.i133 = zext i8 %134 to i32
  %shl.i134 = shl nuw i32 1, %conv.i133
  %neg.i135 = xor i32 %shl.i134, -1
  %and.i136 = and i32 %133, %neg.i135
  %.b14.i137 = load i1, ptr @sw_i2c_data_gpio_data_dir_reg, align 4
  %135 = select i1 %.b14.i137, i32 131100, i32 65540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %136 = tail call i32 @llvm.bswap.i32(i32 %and.i136) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %137 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i138 = getelementptr i8, ptr %137, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i138, i32 %136) #3, !srcloc !28
  %not.cmp6 = xor i1 %cmp6.lcssa, true
  %. = sext i1 %not.cmp6 to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_sw_i2c_write_reg(i8 noundef zeroext %addr, i8 noundef zeroext %reg, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sw_i2c_start()
  %call = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @sw_i2c_write_byte(i8 noundef zeroext %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %lor.lhs.false3.if.end_crit_edge, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3.if.end_crit_edge
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %lor.lhs.false3.if.end_crit_edge ]
  tail call fastcc void @sw_i2c_stop()
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !{null, !1, !"sw_i2c_clk_gpio_mux_reg", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 69, i32 22}
!2 = distinct !{null, !3, !"sw_i2c_clk_gpio_data_reg", i1 false, i1 false}
!3 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 70, i32 22}
!4 = distinct !{null, !5, !"sw_i2c_clk_gpio_data_dir_reg", i1 false, i1 false}
!5 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 71, i32 22}
!6 = !{ptr @sw_i2c_clk_gpio, !7, !"sw_i2c_clk_gpio", i1 false, i1 false}
!7 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 54, i32 22}
!8 = distinct !{null, !9, !"sw_i2c_data_gpio_mux_reg", i1 false, i1 false}
!9 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 74, i32 22}
!10 = distinct !{null, !11, !"sw_i2c_data_gpio_data_reg", i1 false, i1 false}
!11 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 75, i32 22}
!12 = distinct !{null, !13, !"sw_i2c_data_gpio_data_dir_reg", i1 false, i1 false}
!13 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 76, i32 22}
!14 = !{ptr @sw_i2c_data_gpio, !15, !"sw_i2c_data_gpio", i1 false, i1 false}
!15 = !{!"../drivers/staging/sm750fb/ddk750_swi2c.c", i32 55, i32 22}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 698744}
!26 = !{i64 2150633793}
!27 = !{i64 2150634174}
!28 = !{i64 698326}
