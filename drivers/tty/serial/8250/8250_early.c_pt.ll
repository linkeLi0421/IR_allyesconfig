; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_early.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_early.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID___earlycon_uart8250227 = internal constant %struct.earlycon_id { [15 x i8] c"uart8250\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart228 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_ns16550229 = internal constant %struct.earlycon_id { [15 x i8] c"ns16550\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ns16550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_ns16550a230 = internal constant %struct.earlycon_id { [15 x i8] c"ns16550a\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ns16550a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart231 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"nvidia,tegra20-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_uart232 = internal constant %struct.earlycon_id { [15 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"snps,dw-apb-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_serial8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250233 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250234 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_omap8250235 = internal constant %struct.earlycon_id { [15 x i8] c"omap8250\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_omap8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_palmchip236 = internal constant %struct.earlycon_id { [15 x i8] c"palmchip\00\00\00\00\00\00\00", i8 0, [128 x i8] c"ralink,rt2880-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_au_setup }, section "__earlycon_table", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 6, i64 7]
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___earlycon_ns16550229, ptr @__UNIQUE_ID___earlycon_ns16550a230, ptr @__UNIQUE_ID___earlycon_omap8250233, ptr @__UNIQUE_ID___earlycon_omap8250234, ptr @__UNIQUE_ID___earlycon_omap8250235, ptr @__UNIQUE_ID___earlycon_palmchip236, ptr @__UNIQUE_ID___earlycon_uart228, ptr @__UNIQUE_ID___earlycon_uart231, ptr @__UNIQUE_ID___earlycon_uart232, ptr @__UNIQUE_ID___earlycon_uart8250227], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_serial8250_setup(ptr noundef %device, ptr nocapture readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %iobase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 3
  %4 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @serial8250_early_in(ptr noundef %port, i32 noundef 1)
  %and = and i32 %call, 64
  tail call fastcc void @serial8250_early_out(ptr noundef %port, i32 noundef 1, i32 noundef %and)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @init_port(ptr noundef %device) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @early_serial8250_write, ptr %write, align 4
  %9 = load ptr, ptr %device, align 4
  %read = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @early_serial8250_read, ptr %read, align 4
  br label %return

return:                                           ; preds = %if.end7, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -19, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serial8250_early_in(ptr noundef %port, i32 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %offset, %conv
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 7, label %sw.bb4
    i8 3, label %sw.bb13
    i8 6, label %sw.bb21
    i8 0, label %sw.bb27
    i8 4, label %sw.bb34
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %conv3 = zext i8 %7 to i32
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %membase7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase7, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %shl
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #5, !srcloc !31
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %conv12 = zext i16 %11 to i32
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %membase16 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase16, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 %shl
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !33
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %membase23 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase23, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 %shl
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add = add i32 %20, %shl
  %and = and i32 %add, 1048575
  %add29 = or i32 %and, -18874368
  %21 = inttoptr i32 %add29 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %conv33 = zext i8 %22 to i32
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %23 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_in, align 4
  %call35 = tail call i32 %24(ptr noundef %port, i32 noundef %offset) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb34, %sw.bb27, %sw.bb21, %sw.bb13, %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %sw.bb34 ], [ %conv33, %sw.bb27 ], [ %18, %sw.bb21 ], [ %15, %sw.bb13 ], [ %conv12, %sw.bb4 ], [ %conv3, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial8250_early_out(ptr noundef %port, i32 noundef %offset, i32 noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %0 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regshift, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %offset, %conv
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 2, label %do.body
    i8 7, label %do.body4
    i8 3, label %do.body11
    i8 6, label %do.body17
    i8 0, label %do.body23
    i8 4, label %sw.bb28
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %conv2 = trunc i32 %value to i8
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv2) #5, !srcloc !38
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %conv7 = trunc i32 %value to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %membase8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase8, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %7) #5, !srcloc !40
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %value)
  %membase14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase14, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #5, !srcloc !42
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %membase20 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase20, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %value) #5, !srcloc !42
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %conv26 = trunc i32 %value to i8
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add = add i32 %16, %shl
  %and = and i32 %add, 1048575
  %add27 = or i32 %and, -18874368
  %17 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv26) #5, !srcloc !38
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %serial_out = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %serial_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_out, align 4
  tail call void %19(ptr noundef %port, i32 noundef %offset, i32 noundef %value) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %do.body23, %do.body17, %do.body11, %do.body4, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_port(ptr noundef %device) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 3, i32 noundef 3)
  %call = tail call fastcc i32 @serial8250_early_in(ptr noundef %port1, i32 noundef 1)
  %and = and i32 %call, 64
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 1, i32 noundef %and)
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 4, i32 noundef 3)
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 3
  %2 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %baud, align 4
  %mul = shl i32 %3, 4
  %div25 = lshr exact i32 %mul, 1
  %add = add i32 %div25, %1
  %div3 = udiv i32 %add, %mul
  %call4 = tail call fastcc i32 @serial8250_early_in(ptr noundef %port1, i32 noundef 3)
  %conv5 = and i32 %call4, 127
  %or = or i32 %conv5, 128
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 3, i32 noundef %or)
  %and6 = and i32 %div3, 255
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 0, i32 noundef %and6)
  %shr = lshr i32 %div3, 8
  %and7 = and i32 %shr, 255
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 1, i32 noundef %and7)
  tail call fastcc void @serial8250_early_out(ptr noundef %port1, i32 noundef 3, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @early_serial8250_write(ptr nocapture noundef readonly %console, ptr noundef %s, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port1 = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port1, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @serial_putc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @early_serial8250_read(ptr nocapture noundef readonly %console, ptr nocapture noundef writeonly %s, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port1 = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6.not = icmp eq i32 %count, 0
  br i1 %cmp6.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 26
  %serial_in.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 3
  %iobase.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 1
  %membase23.i = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1, i32 2
  br label %while.body

while.body:                                       ; preds = %serial8250_early_in.exit.while.body_crit_edge, %while.body.lr.ph
  %num_read.07 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %serial8250_early_in.exit.while.body_crit_edge ]
  %call = tail call fastcc i32 @serial8250_early_in(ptr noundef %port1, i32 noundef 5)
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype.i, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %3, label %if.end.serial8250_early_in.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 7, label %sw.bb4.i
    i8 3, label %sw.bb13.i
    i8 6, label %sw.bb21.i
    i8 0, label %sw.bb27.i
    i8 4, label %sw.bb34.i
  ]

if.end.serial8250_early_in.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %serial8250_early_in.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %membase23.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase23.i, align 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  %conv3.i = zext i8 %7 to i32
  br label %serial8250_early_in.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %membase23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase23.i, align 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #5, !srcloc !31
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %conv12.i = zext i16 %11 to i32
  br label %serial8250_early_in.exit

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %membase23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase23.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !33
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  br label %serial8250_early_in.exit

sw.bb21.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %membase23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase23.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %serial8250_early_in.exit

sw.bb27.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %and.i = and i32 %20, 1048575
  %add29.i = or i32 %and.i, -18874368
  %21 = inttoptr i32 %add29.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #5, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %conv33.i = zext i8 %22 to i32
  br label %serial8250_early_in.exit

sw.bb34.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_in.i, align 4
  %call35.i = tail call i32 %24(ptr noundef %port1, i32 noundef 0) #5
  br label %serial8250_early_in.exit

serial8250_early_in.exit:                         ; preds = %sw.bb34.i, %sw.bb27.i, %sw.bb21.i, %sw.bb13.i, %sw.bb4.i, %sw.bb.i, %if.end.serial8250_early_in.exit_crit_edge
  %retval.0.i = phi i32 [ %call35.i, %sw.bb34.i ], [ %conv33.i, %sw.bb27.i ], [ %18, %sw.bb21.i ], [ %15, %sw.bb13.i ], [ %conv12.i, %sw.bb4.i ], [ %conv3.i, %sw.bb.i ], [ 0, %if.end.serial8250_early_in.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %inc = add nuw i32 %num_read.07, 1
  %arrayidx = getelementptr i8, ptr %s, i32 %num_read.07
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %arrayidx, align 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %serial8250_early_in.exit.while.end_crit_edge, label %serial8250_early_in.exit.while.body_crit_edge

serial8250_early_in.exit.while.body_crit_edge:    ; preds = %serial8250_early_in.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

serial8250_early_in.exit.while.end_crit_edge:     ; preds = %serial8250_early_in.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %serial8250_early_in.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %num_read.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %num_read.07, %while.body.while.end_crit_edge ], [ %count, %serial8250_early_in.exit.while.end_crit_edge ]
  ret i32 %num_read.0.lcssa
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_omap8250_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %options) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %iobase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %regshift = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 25
  %4 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %regshift, align 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @early_serial8250_write, ptr %write, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_au_setup(ptr nocapture noundef %dev, ptr nocapture noundef readnone %opt) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %serial_in to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @au_serial_in, ptr %serial_in, align 4
  %serial_out = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %serial_out to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @au_serial_out, ptr %serial_out, align 4
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %dev, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %iotype, align 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @early_serial8250_write, ptr %write, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serial_putc(ptr noundef %port, i32 noundef %c) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @serial8250_early_out(ptr noundef %port, i32 noundef 0, i32 noundef %c)
  %call8 = tail call fastcc i32 @serial8250_early_in(ptr noundef %port, i32 noundef 5)
  %and9 = and i32 %call8, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 96
  br i1 %cmp10, label %entry.for.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !46
  %call = tail call fastcc i32 @serial8250_early_in(ptr noundef %port, i32 noundef 5)
  %and = and i32 %call, 96
  %cmp = icmp eq i32 %and, 96
  br i1 %cmp, label %do.end.for.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au_serial_in(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @au_serial_out(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID___earlycon_uart8250227, !1, !"__UNIQUE_ID___earlycon_uart8250227", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 177, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_uart228, !3, !"__UNIQUE_ID___earlycon_uart228", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 178, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_ns16550229, !5, !"__UNIQUE_ID___earlycon_ns16550229", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 179, i32 1}
!6 = !{ptr @__UNIQUE_ID___earlycon_ns16550a230, !7, !"__UNIQUE_ID___earlycon_ns16550a230", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 180, i32 1}
!8 = !{ptr @__UNIQUE_ID___earlycon_uart231, !9, !"__UNIQUE_ID___earlycon_uart231", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 181, i32 1}
!10 = !{ptr @__UNIQUE_ID___earlycon_uart232, !11, !"__UNIQUE_ID___earlycon_uart232", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 182, i32 1}
!12 = !{ptr @__UNIQUE_ID___earlycon_omap8250233, !13, !"__UNIQUE_ID___earlycon_omap8250233", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 199, i32 1}
!14 = !{ptr @__UNIQUE_ID___earlycon_omap8250234, !15, !"__UNIQUE_ID___earlycon_omap8250234", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 200, i32 1}
!16 = !{ptr @__UNIQUE_ID___earlycon_omap8250235, !17, !"__UNIQUE_ID___earlycon_omap8250235", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 201, i32 1}
!18 = !{ptr @__UNIQUE_ID___earlycon_palmchip236, !19, !"__UNIQUE_ID___earlycon_palmchip236", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_early.c", i32 215, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 6038237}
!30 = !{i64 2154142206}
!31 = !{i64 6037619}
!32 = !{i64 2154142732}
!33 = !{i64 6038457}
!34 = !{i64 2154143258}
!35 = !{i64 2154143590}
!36 = !{i64 2154143912}
!37 = !{i64 2154144168}
!38 = !{i64 6037842}
!39 = !{i64 2154144469}
!40 = !{i64 6037419}
!41 = !{i64 2154144896}
!42 = !{i64 6038039}
!43 = !{i64 2154145352}
!44 = !{i64 2154145657}
!45 = !{i64 2154146167}
!46 = !{i64 2154146009}
