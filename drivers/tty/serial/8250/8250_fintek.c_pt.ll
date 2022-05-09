; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_fintek.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_fintek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fintek_8250 = type { i16, i16, i8, i8 }

@probe_setup_port.addr = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 78, i16 46], [28 x i8] zeroinitializer }, align 32
@probe_setup_port.keys = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"w\A0\87g", [28 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"8250_fintek\00", [20 x i8] zeroinitializer }, align 32
@fintek_8250_set_termios.clock_table = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\03\01\02", [28 x i8] zeroinitializer }, align 32
@fintek_8250_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: pid: %x Not support. use default set_termios.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fintek_8250_set_termios\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/tty/serial/8250/8250_fintek.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fintek_8250_set_termios._entry_ptr = internal global ptr @fintek_8250_set_termios._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 533, i64 1031, i64 1281, i64 2050, i64 4112, i64 5634]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 16, i64 533, i64 1031, i64 1281, i64 2050, i64 4112, i64 5634]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 533, i64 1281, i64 4112]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 16, i64 533, i64 1031, i64 1281, i64 4112, i64 5634]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 533, i64 1281, i64 4112]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 533, i64 1281, i64 4112]
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 377, i32 19 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 378, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 125, i32 7 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"clock_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 302, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [41 x i8] c"../drivers/tty/serial/8250/8250_fintek.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 323, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @fintek_8250_set_termios._entry, ptr @fintek_8250_set_termios._entry_ptr, ptr @probe_setup_port.addr, ptr @probe_setup_port.keys, ptr @.str, ptr @fintek_8250_set_termios.clock_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_setup_port.addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_setup_port.keys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_8250_set_termios.clock_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_8250_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fintek_8250_probe(ptr nocapture noundef %uart) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 1
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc41.i.for.cond1.preheader.i_crit_edge, %entry
  %i.0141.i = phi i32 [ 0, %entry ], [ %inc42.i, %for.inc41.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i16], ptr @probe_setup_port.addr, i32 0, i32 %i.0141.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %add2.i.i = or i32 %conv.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %add6.i.i.i = add nuw nsw i32 %conv.i.i, -18874367
  %3 = inttoptr i32 %add6.i.i.i to ptr
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc38.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %j.0138.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc39.i, %for.inc38.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr [4 x i8], ptr @probe_setup_port.keys, i32 0, i32 %j.0138.i
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %call.i.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.i, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body3.i.for.inc38.i_crit_edge, label %if.end.i

for.body3.i.for.inc38.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc38.i

if.end.i:                                         ; preds = %for.body3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -86) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %5) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %5) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 35) #3, !srcloc !28
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 25
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.if.then11.i_crit_edge

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11.i

if.end.i.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 36) #3, !srcloc !28
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %7)
  %cmp4.not.i.i = icmp eq i8 %7, 52
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %if.end.i.i.if.then11.i_crit_edge

if.end.i.i.if.then11.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #3, !srcloc !28
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 33) #3, !srcloc !28
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %conv11.i.i = zext i8 %9 to i16
  %shl.i.i = shl nuw i16 %conv11.i.i, 8
  %conv12.i.i = zext i8 %8 to i16
  %or.i.i = or i16 %shl.i.i, %conv12.i.i
  %10 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or.i.i, label %if.end7.i.i.if.then11.i_crit_edge [
    i16 533, label %if.end7.i.i.for.body16.preheader.i_crit_edge
    i16 1031, label %if.end7.i.i.for.body16.preheader.i_crit_edge102
    i16 4112, label %if.end7.i.i.for.body16.preheader.i_crit_edge103
    i16 5634, label %if.end7.i.i.sw.bb1.i.i_crit_edge
    i16 1281, label %if.end7.i.i.sw.bb1.i.i_crit_edge104
    i16 2050, label %if.end7.i.i.sw.bb1.i.i_crit_edge105
  ]

if.end7.i.i.sw.bb1.i.i_crit_edge105:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i.i

if.end7.i.i.sw.bb1.i.i_crit_edge104:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i.i

if.end7.i.i.sw.bb1.i.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i.i

if.end7.i.i.for.body16.preheader.i_crit_edge103:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body16.preheader.i

if.end7.i.i.for.body16.preheader.i_crit_edge102:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body16.preheader.i

if.end7.i.i.for.body16.preheader.i_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body16.preheader.i

if.end7.i.i.if.then11.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11.i

sw.bb1.i.i:                                       ; preds = %if.end7.i.i.sw.bb1.i.i_crit_edge, %if.end7.i.i.sw.bb1.i.i_crit_edge104, %if.end7.i.i.sw.bb1.i.i_crit_edge105
  br label %for.body16.preheader.i

if.then11.i:                                      ; preds = %if.end7.i.i.if.then11.i_crit_edge, %if.end.i.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -86) #3, !srcloc !28
  br label %for.inc38.sink.split.i

for.body16.preheader.i:                           ; preds = %sw.bb1.i.i, %if.end7.i.i.for.body16.preheader.i_crit_edge, %if.end7.i.i.for.body16.preheader.i_crit_edge102, %if.end7.i.i.for.body16.preheader.i_crit_edge103
  %.sink4.i.ph.i = phi i32 [ 0, %sw.bb1.i.i ], [ 16, %if.end7.i.i.for.body16.preheader.i_crit_edge ], [ 16, %if.end7.i.i.for.body16.preheader.i_crit_edge102 ], [ 16, %if.end7.i.i.for.body16.preheader.i_crit_edge103 ]
  %.sink.i.ph.i = phi i32 [ 4, %sw.bb1.i.i ], [ 22, %if.end7.i.i.for.body16.preheader.i_crit_edge ], [ 22, %if.end7.i.i.for.body16.preheader.i_crit_edge102 ], [ 22, %if.end7.i.i.for.body16.preheader.i_crit_edge103 ]
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc.i.for.body16.i_crit_edge, %for.body16.preheader.i
  %k.0135.i = phi i32 [ %inc.i, %for.inc.i.for.body16.i_crit_edge ], [ %.sink4.i.ph.i, %for.body16.preheader.i ]
  %conv.i = trunc i32 %k.0135.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv.i) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 97) #3, !srcloc !28
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 96) #3, !srcloc !28
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %conv20.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv20.i, 8
  %conv21.i = zext i8 %11 to i32
  %or.i = or i32 %shl.i, %conv21.i
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %14)
  %cmp24.not.i = icmp eq i32 %or.i, %14
  br i1 %cmp24.not.i, label %if.end27.i, label %for.inc.i

if.end27.i:                                       ; preds = %for.body16.i
  %conv.i.i.le = zext i16 %1 to i32
  %15 = inttoptr i32 %add2.i.i to ptr
  %16 = inttoptr i32 %add6.i.i.i to ptr
  %conv.i.le = trunc i32 %k.0135.i to i8
  %irq.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  %call30.i = tail call ptr @irq_get_irq_data(i32 noundef %18) #3
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end27.i.if.end34.i_crit_edge, label %if.then32.i

if.end27.i.if.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call30.i, i32 0, i32 3
  %19 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end27.i.if.end34.i_crit_edge
  %level_mode.3.off0.i = phi i1 [ %tobool.i.i, %if.then32.i ], [ false, %if.end27.i.if.end34.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 7) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv.i.le) #3, !srcloc !28
  %23 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %or.i.i, label %if.end34.i.if.end_crit_edge [
    i16 533, label %if.end34.i.sw.bb.i.i_crit_edge
    i16 4112, label %if.end34.i.sw.bb.i.i_crit_edge106
    i16 1031, label %if.end34.i.sw.bb1.i103.i_crit_edge
    i16 5634, label %if.end34.i.sw.bb4.i.i_crit_edge
    i16 1281, label %if.end34.i.sw.bb4.i.i_crit_edge107
    i16 2050, label %if.end34.i.sw.bb4.i.i_crit_edge108
  ]

if.end34.i.sw.bb4.i.i_crit_edge108:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb4.i.i

if.end34.i.sw.bb4.i.i_crit_edge107:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb4.i.i

if.end34.i.sw.bb4.i.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb4.i.i

if.end34.i.sw.bb1.i103.i_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1.i103.i

if.end34.i.sw.bb.i.i_crit_edge106:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

if.end34.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

if.end34.i.if.end_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.bb.i.i:                                        ; preds = %if.end34.i.sw.bb.i.i_crit_edge, %if.end34.i.sw.bb.i.i_crit_edge106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -10) #3, !srcloc !28
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %and.i.i.i = and i8 %24, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -10) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %and.i.i.i) #3, !srcloc !28
  br label %sw.bb1.i103.i

sw.bb1.i103.i:                                    ; preds = %sw.bb.i.i, %if.end34.i.sw.bb1.i103.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -16) #3, !srcloc !28
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %or.i.i.i = or i8 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -16) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or.i.i.i) #3, !srcloc !28
  %conv3.i102.i = select i1 %level_mode.3.off0.i, i8 0, i8 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -16) #3, !srcloc !28
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %and.i32.i.i = and i8 %26, -3
  %or.i33.i.i = or i8 %and.i32.i.i, %conv3.i102.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -16) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or.i33.i.i) #3, !srcloc !28
  br label %fintek_8250_set_irq_mode.exit.i

sw.bb4.i.i:                                       ; preds = %if.end34.i.sw.bb4.i.i_crit_edge, %if.end34.i.sw.bb4.i.i_crit_edge107, %if.end34.i.sw.bb4.i.i_crit_edge108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 112) #3, !srcloc !28
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %or.i44.i.i = or i8 %27, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 112) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or.i44.i.i) #3, !srcloc !28
  %conv8.i.i = select i1 %level_mode.3.off0.i, i8 0, i8 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 112) #3, !srcloc !28
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %and.i54.i.i = and i8 %28, -97
  %or.i55.i.i = or i8 %and.i54.i.i, %conv8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 112) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or.i55.i.i) #3, !srcloc !28
  br label %fintek_8250_set_irq_mode.exit.i

fintek_8250_set_irq_mode.exit.i:                  ; preds = %sw.bb4.i.i, %sw.bb1.i103.i
  %29 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %or.i.i, label %fintek_8250_set_irq_mode.exit.i.if.end_crit_edge [
    i16 1281, label %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge
    i16 533, label %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge109
    i16 4112, label %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge110
  ]

fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge110: ; preds = %fintek_8250_set_irq_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i115.i

fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge109: ; preds = %fintek_8250_set_irq_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i115.i

fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge: ; preds = %fintek_8250_set_irq_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i115.i

fintek_8250_set_irq_mode.exit.i.if.end_crit_edge: ; preds = %fintek_8250_set_irq_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.bb.i115.i:                                     ; preds = %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge, %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge109, %fintek_8250_set_irq_mode.exit.i.sw.bb.i115.i_crit_edge110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -10) #3, !srcloc !28
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %and.i.i109.i = and i8 %30, -52
  %or.i.i110.i = or i8 %and.i.i109.i, 35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -10) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or.i.i110.i) #3, !srcloc !28
  br label %if.end

for.inc.i:                                        ; preds = %for.body16.i
  %inc.i = add nuw nsw i32 %k.0135.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %.sink.i.ph.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body16.i_crit_edge

for.inc.i.for.body16.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body16.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -86) #3, !srcloc !28
  br label %for.inc38.sink.split.i

for.inc38.sink.split.i:                           ; preds = %for.end.i, %if.then11.i
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.i, i32 noundef 2) #3
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %for.inc38.sink.split.i, %for.body3.i.for.inc38.i_crit_edge
  %inc39.i = add nuw nsw i32 %j.0138.i, 1
  %exitcond144.not.i = icmp eq i32 %inc39.i, 4
  br i1 %exitcond144.not.i, label %for.inc41.i, label %for.inc38.i.for.body3.i_crit_edge

for.inc38.i.for.body3.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.i

for.inc41.i:                                      ; preds = %for.inc38.i
  %inc42.i = add nuw nsw i32 %i.0141.i, 1
  %exitcond145.not.i = icmp eq i32 %inc42.i, 2
  br i1 %exitcond145.not.i, label %for.inc41.i.cleanup_crit_edge, label %for.inc41.i.for.cond1.preheader.i_crit_edge

for.inc41.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

for.inc41.i.cleanup_crit_edge:                    ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i115.i, %fintek_8250_set_irq_mode.exit.i.if.end_crit_edge, %if.end34.i.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -86) #3, !srcloc !28
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.i.le, i32 noundef 2) #3
  %dev = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef 6, i32 noundef 3520) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or.i.i, ptr %call.i, align 2
  %probe_data.sroa.7.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 2
  %34 = ptrtoint ptr %probe_data.sroa.7.0.call.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %1, ptr %probe_data.sroa.7.0.call.i.sroa_idx, align 2
  %probe_data.sroa.49.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 4
  %35 = ptrtoint ptr %probe_data.sroa.49.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i.le, ptr %probe_data.sroa.49.0.call.i.sroa_idx, align 2
  %probe_data.sroa.52.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 5
  %36 = ptrtoint ptr %probe_data.sroa.52.0.call.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %5, ptr %probe_data.sroa.52.0.call.i.sroa_idx, align 1
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %private_data, align 4
  %38 = zext i16 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %or.i.i, label %if.end4.fintek_8250_set_rs485_handler.exit_crit_edge [
    i16 5634, label %if.end4.sw.bb.i_crit_edge
    i16 1281, label %if.end4.sw.bb.i_crit_edge111
    i16 533, label %if.end4.sw.bb.i_crit_edge112
    i16 4112, label %if.end4.sw.bb.i_crit_edge113
    i16 1031, label %if.end4.sw.bb.i_crit_edge114
  ]

if.end4.sw.bb.i_crit_edge114:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end4.sw.bb.i_crit_edge113:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end4.sw.bb.i_crit_edge112:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end4.sw.bb.i_crit_edge111:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end4.sw.bb.i_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end4.fintek_8250_set_rs485_handler.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %fintek_8250_set_rs485_handler.exit

sw.bb.i:                                          ; preds = %if.end4.sw.bb.i_crit_edge, %if.end4.sw.bb.i_crit_edge111, %if.end4.sw.bb.i_crit_edge112, %if.end4.sw.bb.i_crit_edge113, %if.end4.sw.bb.i_crit_edge114
  %rs485_config.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 18
  %39 = ptrtoint ptr %rs485_config.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fintek_8250_rs485_config, ptr %rs485_config.i, align 4
  br label %fintek_8250_set_rs485_handler.exit

fintek_8250_set_rs485_handler.exit:               ; preds = %sw.bb.i, %if.end4.fintek_8250_set_rs485_handler.exit_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %call.i, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %41, label %fintek_8250_set_rs485_handler.exit.cleanup_crit_edge [
    i16 1281, label %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge
    i16 533, label %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge115
    i16 4112, label %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge116
  ]

fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge116: ; preds = %fintek_8250_set_rs485_handler.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i14

fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge115: ; preds = %fintek_8250_set_rs485_handler.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i14

fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge: ; preds = %fintek_8250_set_rs485_handler.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i14

fintek_8250_set_rs485_handler.exit.cleanup_crit_edge: ; preds = %fintek_8250_set_rs485_handler.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i14:                                        ; preds = %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge, %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge115, %fintek_8250_set_rs485_handler.exit.sw.bb.i14_crit_edge116
  %set_termios.i = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 5
  %43 = ptrtoint ptr %set_termios.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @fintek_8250_set_termios, ptr %set_termios.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.i14, %fintek_8250_set_rs485_handler.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc41.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %fintek_8250_set_rs485_handler.exit.cleanup_crit_edge ], [ 0, %sw.bb.i14 ], [ -19, %for.inc41.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fintek_8250_rs485_config(ptr nocapture noundef %port, ptr nocapture noundef %rs485) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs485, align 4
  %and = lshr i32 %3, 1
  %and3 = lshr i32 %3, 2
  %4 = xor i32 %and, %and3
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and10 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %padding = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 3
  %6 = call ptr @memset(ptr %padding, i32 0, i32 20)
  br label %if.end14

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %7 = call ptr @memset(ptr %rs485, i32 0, i32 32)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %config.0 = phi i8 [ 16, %if.then12 ], [ 0, %if.else ]
  %8 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485, align 4
  %and16 = and i32 %9, 7
  store i32 %and16, ptr %rs485, align 4
  %index = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %12 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %13 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delay_rts_after_send, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %delay_rts_before_send20 = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %14 = ptrtoint ptr %delay_rts_before_send20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay_rts_before_send20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %delay_rts_before_send20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %delay_rts_before_send20, align 4
  %17 = or i8 %config.0, 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %config.1 = phi i8 [ %17, %if.then22 ], [ %config.0, %if.end19.if.end27_crit_edge ]
  %delay_rts_after_send28 = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %18 = ptrtoint ptr %delay_rts_after_send28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay_rts_after_send28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not = icmp eq i32 %19, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %if.then30

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %delay_rts_after_send28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %delay_rts_after_send28, align 4
  %21 = or i8 %config.1, 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27.if.end35_crit_edge
  %config.2 = phi i8 [ %21, %if.then30 ], [ %config.1, %if.end27.if.end35_crit_edge ]
  %base_port = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base_port, align 2
  %key = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key, align 1
  %conv.i = zext i16 %23 to i32
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end35.cleanup_crit_edge, label %if.end46

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %26 = trunc i32 %9 to i8
  %27 = shl i8 %26, 4
  %28 = and i8 %27, 32
  %29 = or i8 %config.2, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %add2.i = or i32 %conv.i, -18874368
  %30 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 -86) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %25) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %25) #3, !srcloc !28
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %33 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base_port, align 2
  %conv.i76 = zext i16 %34 to i32
  %add1.i = or i32 %conv.i76, -18874368
  %35 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 7) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %36 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %base_port, align 2
  %conv5.i = zext i16 %37 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874367
  %38 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %32) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %39 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %base_port, align 2
  %conv.i78 = zext i16 %40 to i32
  %add1.i79 = or i32 %conv.i78, -18874368
  %41 = inttoptr i32 %add1.i79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -16) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %42 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %base_port, align 2
  %conv5.i80 = zext i16 %43 to i32
  %add8.i81 = add nuw nsw i32 %conv5.i80, -18874367
  %44 = inttoptr i32 %add8.i81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %29) #3, !srcloc !28
  %45 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %base_port, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %conv.i82 = zext i16 %46 to i32
  %add1.i83 = or i32 %conv.i82, -18874368
  %47 = inttoptr i32 %add1.i83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 -86) #3, !srcloc !28
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i82, i32 noundef 2) #3
  %rs48549 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %48 = call ptr @memcpy(ptr %rs48549, ptr %rs485, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fintek_8250_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %3, label %do.end [
    i16 1281, label %if.end.sw.epilog_crit_edge
    i16 533, label %if.end.sw.bb1_crit_edge
    i16 4112, label %if.end.sw.bb1_crit_edge76
  ]

if.end.sw.bb1_crit_edge76:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge76
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %3 to i32
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv) #6
  br label %exit

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ -14, %sw.bb1 ], [ -16, %if.end.sw.epilog_crit_edge ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %base_port = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 1
  %key = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call)
  %cmp5 = icmp ugt i32 %call, 115200
  br i1 %cmp5, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %rem = urem i32 115200, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not = icmp eq i32 %rem, 0
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false.lor.lhs.false.1_crit_edge

lor.lhs.false.lor.lhs.false.1_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.1

if.end11:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1843200, i32 %8)
  %cmp13 = icmp eq i32 %8, 1843200
  br i1 %cmp13, label %if.end11.exit_crit_edge, label %if.end16

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end16:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base_port, align 2
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %key, align 1
  %conv.i = zext i16 %10 to i32
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.lor.lhs.false.1_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end16.lor.lhs.false.1_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.1

if.end20:                                         ; preds = %if.end16.3.if.end20_crit_edge, %if.end16.2.if.end20_crit_edge, %if.end16.1.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %conv.i.le.pre-phi = phi i32 [ %conv.i.3, %if.end16.3.if.end20_crit_edge ], [ %conv.i.2, %if.end16.2.if.end20_crit_edge ], [ %conv.i.1, %if.end16.1.if.end20_crit_edge ], [ %conv.i, %if.end16.if.end20_crit_edge ]
  %i.067.lcssa71 = phi i32 [ 3, %if.end16.3.if.end20_crit_edge ], [ 2, %if.end16.2.if.end20_crit_edge ], [ 1, %if.end16.1.if.end20_crit_edge ], [ 0, %if.end16.if.end20_crit_edge ]
  %.lcssa = phi i8 [ %58, %if.end16.3.if.end20_crit_edge ], [ %52, %if.end16.2.if.end20_crit_edge ], [ %46, %if.end16.1.if.end20_crit_edge ], [ %12, %if.end16.if.end20_crit_edge ]
  %mul.lcssa69 = phi i32 [ 24000000, %if.end16.3.if.end20_crit_edge ], [ 18432000, %if.end16.2.if.end20_crit_edge ], [ 14745600, %if.end16.1.if.end20_crit_edge ], [ 1843200, %if.end16.if.end20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %add2.i = or i32 %conv.i.le.pre-phi, -18874368
  %13 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -86) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %.lcssa) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %.lcssa) #3, !srcloc !28
  %14 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.lcssa69, ptr %uartclk, align 4
  %index = getelementptr inbounds %struct.fintek_8250, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %base_port, align 2
  %conv.i56 = zext i16 %18 to i32
  %add1.i = or i32 %conv.i56, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 7) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base_port, align 2
  %conv5.i = zext i16 %21 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874367
  %22 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %16) #3, !srcloc !28
  %arrayidx24 = getelementptr [4 x i8], ptr @fintek_8250_set_termios.clock_table, i32 0, i32 %i.067.lcssa71
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %base_port, align 2
  %conv.i.i = zext i16 %26 to i32
  %add1.i.i = or i32 %conv.i.i, -18874368
  %27 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %reg.0) #3, !srcloc !28
  %28 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base_port, align 2
  %conv3.i.i = zext i16 %29 to i32
  %add6.i.i = add nuw nsw i32 %conv3.i.i, -18874367
  %30 = inttoptr i32 %add6.i.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %and.i = and i8 %31, -4
  %and49.i = and i8 %24, 3
  %or.i = or i8 %and.i, %and49.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %32 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %base_port, align 2
  %conv.i11.i = zext i16 %33 to i32
  %add1.i12.i = or i32 %conv.i11.i, -18874368
  %34 = inttoptr i32 %add1.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %reg.0) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %base_port, align 2
  %conv5.i.i = zext i16 %36 to i32
  %add8.i.i = add nuw nsw i32 %conv5.i.i, -18874367
  %37 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %or.i) #3, !srcloc !28
  %38 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %base_port, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %conv.i57 = zext i16 %39 to i32
  %add1.i58 = or i32 %conv.i57, -18874368
  %40 = inttoptr i32 %add1.i58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -86) #3, !srcloc !28
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i57, i32 noundef 2) #3
  br label %exit

for.inc:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %call)
  %cmp5.1 = icmp ugt i32 %call, 921600
  br i1 %cmp5.1, label %for.inc.1, label %for.inc.lor.lhs.false.1_crit_edge

for.inc.lor.lhs.false.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %for.inc.lor.lhs.false.1_crit_edge, %if.end16.lor.lhs.false.1_crit_edge, %lor.lhs.false.lor.lhs.false.1_crit_edge
  %rem.1 = urem i32 921600, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1)
  %cmp8.not.1 = icmp eq i32 %rem.1, 0
  br i1 %cmp8.not.1, label %if.end11.1, label %lor.lhs.false.1.lor.lhs.false.2_crit_edge

lor.lhs.false.1.lor.lhs.false.2_crit_edge:        ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.2

if.end11.1:                                       ; preds = %lor.lhs.false.1
  %41 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14745600, i32 %42)
  %cmp13.1 = icmp eq i32 %42, 14745600
  br i1 %cmp13.1, label %if.end11.1.exit_crit_edge, label %if.end16.1

if.end11.1.exit_crit_edge:                        ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end16.1:                                       ; preds = %if.end11.1
  %43 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %base_port, align 2
  %45 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %key, align 1
  %conv.i.1 = zext i16 %44 to i32
  %call.i.1 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %if.end16.1.lor.lhs.false.2_crit_edge, label %if.end16.1.if.end20_crit_edge

if.end16.1.if.end20_crit_edge:                    ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end16.1.lor.lhs.false.2_crit_edge:             ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.2

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152000, i32 %call)
  %cmp5.2 = icmp ugt i32 %call, 1152000
  br i1 %cmp5.2, label %for.inc.2, label %for.inc.1.lor.lhs.false.2_crit_edge

for.inc.1.lor.lhs.false.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %for.inc.1.lor.lhs.false.2_crit_edge, %if.end16.1.lor.lhs.false.2_crit_edge, %lor.lhs.false.1.lor.lhs.false.2_crit_edge
  %rem.2 = urem i32 1152000, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2)
  %cmp8.not.2 = icmp eq i32 %rem.2, 0
  br i1 %cmp8.not.2, label %if.end11.2, label %lor.lhs.false.2.lor.lhs.false.3_crit_edge

lor.lhs.false.2.lor.lhs.false.3_crit_edge:        ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.3

if.end11.2:                                       ; preds = %lor.lhs.false.2
  %47 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18432000, i32 %48)
  %cmp13.2 = icmp eq i32 %48, 18432000
  br i1 %cmp13.2, label %if.end11.2.exit_crit_edge, label %if.end16.2

if.end11.2.exit_crit_edge:                        ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end16.2:                                       ; preds = %if.end11.2
  %49 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %base_port, align 2
  %51 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %key, align 1
  %conv.i.2 = zext i16 %50 to i32
  %call.i.2 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.2, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %if.end16.2.lor.lhs.false.3_crit_edge, label %if.end16.2.if.end20_crit_edge

if.end16.2.if.end20_crit_edge:                    ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end16.2.lor.lhs.false.3_crit_edge:             ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.3

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %call)
  %cmp5.3 = icmp ugt i32 %call, 1500000
  br i1 %cmp5.3, label %for.inc.2.if.then28_crit_edge, label %for.inc.2.lor.lhs.false.3_crit_edge

for.inc.2.lor.lhs.false.3_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.3

for.inc.2.if.then28_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then28

lor.lhs.false.3:                                  ; preds = %for.inc.2.lor.lhs.false.3_crit_edge, %if.end16.2.lor.lhs.false.3_crit_edge, %lor.lhs.false.2.lor.lhs.false.3_crit_edge
  %rem.3 = urem i32 1500000, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3)
  %cmp8.not.3 = icmp eq i32 %rem.3, 0
  br i1 %cmp8.not.3, label %if.end11.3, label %lor.lhs.false.3.if.then28_crit_edge

lor.lhs.false.3.if.then28_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then28

if.end11.3:                                       ; preds = %lor.lhs.false.3
  %53 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %54)
  %cmp13.3 = icmp eq i32 %54, 24000000
  br i1 %cmp13.3, label %if.end11.3.exit_crit_edge, label %if.end16.3

if.end11.3.exit_crit_edge:                        ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end16.3:                                       ; preds = %if.end11.3
  %55 = ptrtoint ptr %base_port to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %base_port, align 2
  %57 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %key, align 1
  %conv.i.3 = zext i16 %56 to i32
  %call.i.3 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv.i.3, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #3
  %tobool.not.i.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.i.3, label %if.end16.3.if.then28_crit_edge, label %if.end16.3.if.end20_crit_edge

if.end16.3.if.end20_crit_edge:                    ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end16.3.if.then28_crit_edge:                   ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then28

if.then28:                                        ; preds = %if.end16.3.if.then28_crit_edge, %lor.lhs.false.3.if.then28_crit_edge, %for.inc.2.if.then28_crit_edge
  %call29 = tail call i32 @tty_termios_baud_rate(ptr noundef %old) #3
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call29, i32 noundef %call29) #3
  br label %exit

exit:                                             ; preds = %if.then28, %if.end11.3.exit_crit_edge, %if.end11.2.exit_crit_edge, %if.end11.1.exit_crit_edge, %if.end20, %if.end11.exit_crit_edge, %do.end, %entry.exit_crit_edge
  tail call void @serial8250_do_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @probe_setup_port.addr, !1, !"addr", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 377, i32 19}
!2 = !{ptr @probe_setup_port.keys, !3, !"keys", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 378, i32 18}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 125, i32 7}
!6 = distinct !{null, !7, !"baudrate_table", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 301, i32 13}
!8 = !{ptr @fintek_8250_set_termios.clock_table, !9, !"clock_table", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 302, i32 12}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_fintek.c", i32 323, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fintek_8250_set_termios._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @fintek_8250_set_termios._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2154876845}
!28 = !{i64 4988313}
!29 = !{i64 2154877183}
!30 = !{i64 2154877521}
!31 = !{i64 2154875371}
!32 = !{i64 4988708}
!33 = !{i64 2154875803}
!34 = !{i64 2154877865}
!35 = !{i64 2154876026}
!36 = !{i64 2154876379}
