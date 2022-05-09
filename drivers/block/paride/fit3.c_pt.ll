; ModuleID = '/llk/IR_all_yes/drivers/block/paride/fit3.c_pt.bc'
source_filename = "../drivers/block/paride/fit3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@fit3 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"fit3\00\00\00\00", i32 0, i32 3, i32 2, i32 1, i32 1, ptr @fit3_write_regr, ptr @fit3_read_regr, ptr @fit3_write_block, ptr @fit3_read_block, ptr @fit3_connect, ptr @fit3_disconnect, ptr null, ptr null, ptr null, ptr @fit3_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"fit3.file=drivers/block/paride/fit3\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"fit3.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_fit3__162_210_fit3_init6 = internal global ptr @fit3_init, section ".initcall6.init", align 4
@__exitcall_fit3_exit = internal global ptr @fit3_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@__const.fit3_log_adapter.mode_string = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 4
@fit3_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: fit3 %s, FIT 3000 adapter at 0x%x, mode %d (%s), delay %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fit3_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/fit3.c\00", [36 x i8] zeroinitializer }, align 32
@fit3_log_adapter._entry_ptr = internal global ptr @fit3_log_adapter._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant [5 x i8] c"fit3\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 183, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 174, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 174, i32 44 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 174, i32 52 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [31 x i8] c"../drivers/block/paride/fit3.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 176, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_fit3_exit, ptr @__initcall__kmod_fit3__162_210_fit3_init6, ptr @fit3_exit, ptr @fit3_log_adapter._entry, ptr @fit3_log_adapter._entry_ptr, ptr @fit3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fit3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fit3_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fit3_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @paride_unregister(ptr noundef nonnull @fit3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fit3_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @fit3) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont)
  %cmp = icmp eq i32 %cont, 1
  br i1 %cmp, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.do.body_crit_edge
    i32 1, label %if.end.do.body_crit_edge474
    i32 2, label %do.body190
  ]

if.end.do.body_crit_edge474:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 12) #4, !srcloc !32
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body13_crit_edge, label %cond.false8

do.body.do.body13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

cond.false8:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %do.body.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %regr to i8
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #4, !srcloc !32
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body13.do.body38_crit_edge, label %cond.false33

do.body13.do.body38_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

cond.false33:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #4
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body13.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 8) #4, !srcloc !32
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 12) #4, !srcloc !32
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body63.do.body88_crit_edge, label %cond.false83

do.body63.do.body88_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88

cond.false83:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #4
  br label %do.body88

do.body88:                                        ; preds = %cond.false83, %do.body63.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %conv90 = trunc i32 %val to i8
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and93 = and i32 %28, 1048575
  %add94 = or i32 %and93, -18874368
  %29 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv90) #4, !srcloc !32
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool97.not = icmp eq i32 %31, 0
  br i1 %tobool97.not, label %do.body88.do.body114_crit_edge, label %cond.false109

do.body88.do.body114_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body114

cond.false109:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #4
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body88.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add117 = add i32 %34, 2
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %35 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 13) #4, !srcloc !32
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool122.not = icmp eq i32 %37, 0
  br i1 %tobool122.not, label %do.body114.do.body139_crit_edge, label %cond.false134

do.body114.do.body139_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

cond.false134:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #4
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body114.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and143 = and i32 %40, 1048575
  %add144 = or i32 %and143, -18874368
  %41 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #4, !srcloc !32
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool147.not = icmp eq i32 %43, 0
  br i1 %tobool147.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #4
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add167 = add i32 %46, 2
  %and168 = and i32 %add167, 1048575
  %add169 = or i32 %and168, -18874368
  %47 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 12) #4, !srcloc !32
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool172.not = icmp eq i32 %49, 0
  br i1 %tobool172.not, label %do.body164.sw.epilog_crit_edge, label %do.body164.sw.epilog.sink.split_crit_edge

do.body164.sw.epilog.sink.split_crit_edge:        ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body164.sw.epilog_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body190:                                       ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %port192 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %50 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port192, align 4
  %add193 = add i32 %51, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %52 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 12) #4, !srcloc !32
  %delay197 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %53 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool198.not = icmp eq i32 %54, 0
  br i1 %tobool198.not, label %do.body190.do.body215_crit_edge, label %cond.false210

do.body190.do.body215_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body215

cond.false210:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #4
  br label %do.body215

do.body215:                                       ; preds = %cond.false210, %do.body190.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %conv217 = trunc i32 %regr to i8
  %56 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port192, align 4
  %and220 = and i32 %57, 1048575
  %add221 = or i32 %and220, -18874368
  %58 = inttoptr i32 %add221 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv217) #4, !srcloc !32
  %59 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool224.not = icmp eq i32 %60, 0
  br i1 %tobool224.not, label %do.body215.do.body241_crit_edge, label %cond.false236

do.body215.do.body241_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body241

cond.false236:                                    ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #4
  br label %do.body241

do.body241:                                       ; preds = %cond.false236, %do.body215.do.body241_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port192, align 4
  %add244 = add i32 %63, 2
  %and245 = and i32 %add244, 1048575
  %add246 = or i32 %and245, -18874368
  %64 = inttoptr i32 %add246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 8) #4, !srcloc !32
  %65 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool249.not = icmp eq i32 %66, 0
  br i1 %tobool249.not, label %do.body241.do.body266_crit_edge, label %cond.false261

do.body241.do.body266_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body266

cond.false261:                                    ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #4
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body241.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %68 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port192, align 4
  %add269 = add i32 %69, 2
  %and270 = and i32 %add269, 1048575
  %add271 = or i32 %and270, -18874368
  %70 = inttoptr i32 %add271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 12) #4, !srcloc !32
  %71 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool274.not = icmp eq i32 %72, 0
  br i1 %tobool274.not, label %do.body266.do.body291_crit_edge, label %cond.false286

do.body266.do.body291_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body291

cond.false286:                                    ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #4
  br label %do.body291

do.body291:                                       ; preds = %cond.false286, %do.body266.do.body291_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %conv293 = trunc i32 %val to i8
  %74 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port192, align 4
  %add295 = add i32 %75, 4
  %and296 = and i32 %add295, 1048575
  %add297 = or i32 %and296, -18874368
  %76 = inttoptr i32 %add297 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %conv293) #4, !srcloc !32
  %77 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool300.not = icmp eq i32 %78, 0
  br i1 %tobool300.not, label %do.body291.do.body317_crit_edge, label %cond.false312

do.body291.do.body317_crit_edge:                  ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body317

cond.false312:                                    ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #4
  br label %do.body317

do.body317:                                       ; preds = %cond.false312, %do.body291.do.body317_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %80 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port192, align 4
  %add320 = add i32 %81, 4
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %82 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 0) #4, !srcloc !32
  %83 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool325.not = icmp eq i32 %84, 0
  br i1 %tobool325.not, label %do.body317.do.body342_crit_edge, label %cond.false337

do.body317.do.body342_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body342

cond.false337:                                    ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #4
  br label %do.body342

do.body342:                                       ; preds = %cond.false337, %do.body317.do.body342_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %86 = ptrtoint ptr %port192 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port192, align 4
  %add345 = add i32 %87, 2
  %and346 = and i32 %add345, 1048575
  %add347 = or i32 %and346, -18874368
  %88 = inttoptr i32 %add347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 12) #4, !srcloc !32
  %89 = ptrtoint ptr %delay197 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool350.not = icmp eq i32 %90, 0
  br i1 %tobool350.not, label %do.body342.sw.epilog_crit_edge, label %do.body342.sw.epilog.sink.split_crit_edge

do.body342.sw.epilog.sink.split_crit_edge:        ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body342.sw.epilog_crit_edge:                   ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body342.sw.epilog.sink.split_crit_edge, %do.body164.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %49, %do.body164.sw.epilog.sink.split_crit_edge ], [ %90, %do.body342.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body342.sw.epilog_crit_edge, %do.body164.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fit3_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont)
  %tobool.not = icmp eq i32 %cont, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %regr)
  %cmp.not = icmp eq i32 %regr, 6
  br i1 %cmp.not, label %if.then.if.end2_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %regr.addr.0 = phi i32 [ %regr, %entry.if.end2_crit_edge ], [ 7, %if.then.if.end2_crit_edge ]
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %if.end2.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body230
    i32 2, label %do.body469
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 12) #4, !srcloc !32
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %do.body.do.body16_crit_edge, label %cond.false11

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

cond.false11:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  br label %do.body16

do.body16:                                        ; preds = %cond.false11, %do.body.do.body16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %9 = trunc i32 %regr.addr.0 to i8
  %conv = add i8 %9, 16
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %and22 = and i32 %11, 1048575
  %add23 = or i32 %and22, -18874368
  %12 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #4, !srcloc !32
  %13 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  br i1 %tobool26.not, label %do.body16.do.body43_crit_edge, label %cond.false38

do.body16.do.body43_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body43

cond.false38:                                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %14) #4
  br label %do.body43

do.body43:                                        ; preds = %cond.false38, %do.body16.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add47 = add i32 %17, 2
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %18 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 8) #4, !srcloc !32
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool52.not = icmp eq i32 %20, 0
  br i1 %tobool52.not, label %do.body43.do.body69_crit_edge, label %cond.false64

do.body43.do.body69_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body69

cond.false64:                                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #4
  br label %do.body69

do.body69:                                        ; preds = %cond.false64, %do.body43.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add73 = add i32 %23, 2
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %24 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 12) #4, !srcloc !32
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool78.not = icmp eq i32 %26, 0
  br i1 %tobool78.not, label %do.body69.do.body95_crit_edge, label %cond.false90

do.body69.do.body95_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body95

cond.false90:                                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #4
  br label %do.body95

do.body95:                                        ; preds = %cond.false90, %do.body69.do.body95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add99 = add i32 %29, 2
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %30 = inttoptr i32 %add101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 13) #4, !srcloc !32
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool104.not = icmp eq i32 %32, 0
  br i1 %tobool104.not, label %do.body95.cond.end138_crit_edge, label %cond.false116

do.body95.cond.end138_crit_edge:                  ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end138

cond.false116:                                    ; preds = %do.body95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #4
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool122.not = icmp eq i32 %.pr, 0
  br i1 %tobool122.not, label %cond.false116.cond.end138_crit_edge, label %cond.false134

cond.false116.cond.end138_crit_edge:              ; preds = %cond.false116
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end138

cond.false134:                                    ; preds = %cond.false116
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %.pr) #4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false134, %cond.false116.cond.end138_crit_edge, %do.body95.cond.end138_crit_edge
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add140 = add i32 %37, 1
  %and141 = and i32 %add140, 1048575
  %add142 = or i32 %and141, -18874368
  %38 = inttoptr i32 %add142 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add151 = add i32 %41, 2
  %and152 = and i32 %add151, 1048575
  %add153 = or i32 %and152, -18874368
  %42 = inttoptr i32 %add153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 15) #4, !srcloc !32
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool156.not = icmp eq i32 %44, 0
  br i1 %tobool156.not, label %cond.end138.cond.end190_crit_edge, label %cond.false168

cond.end138.cond.end190_crit_edge:                ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end190

cond.false168:                                    ; preds = %cond.end138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  %46 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr871 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr871)
  %tobool174.not = icmp eq i32 %.pr871, 0
  br i1 %tobool174.not, label %cond.false168.cond.end190_crit_edge, label %cond.false186

cond.false168.cond.end190_crit_edge:              ; preds = %cond.false168
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end190

cond.false186:                                    ; preds = %cond.false168
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %.pr871) #4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false186, %cond.false168.cond.end190_crit_edge, %cond.end138.cond.end190_crit_edge
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add193 = add i32 %49, 1
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %50 = inttoptr i32 %add195 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %conv199 = zext i8 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add205 = add i32 %53, 2
  %and206 = and i32 %add205, 1048575
  %add207 = or i32 %and206, -18874368
  %54 = inttoptr i32 %add207 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 12) #4, !srcloc !32
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool210.not = icmp eq i32 %56, 0
  br i1 %tobool210.not, label %cond.end190.cond.end226_crit_edge, label %cond.false222

cond.end190.cond.end226_crit_edge:                ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end226

cond.false222:                                    ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #4
  br label %cond.end226

cond.end226:                                      ; preds = %cond.false222, %cond.end190.cond.end226_crit_edge
  %58 = lshr i8 %39, 3
  %59 = and i8 %58, 15
  %and227 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv199, 1
  %and228 = and i32 %shl, 240
  %or = or i32 %and228, %and227
  br label %cleanup

do.body230:                                       ; preds = %if.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %port233 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %60 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port233, align 4
  %add234 = add i32 %61, 2
  %and235 = and i32 %add234, 1048575
  %add236 = or i32 %and235, -18874368
  %62 = inttoptr i32 %add236 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 12) #4, !srcloc !32
  %delay238 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %63 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool239.not = icmp eq i32 %64, 0
  br i1 %tobool239.not, label %do.body230.do.body256_crit_edge, label %cond.false251

do.body230.do.body256_crit_edge:                  ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body256

cond.false251:                                    ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %do.body256

do.body256:                                       ; preds = %cond.false251, %do.body230.do.body256_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %66 = trunc i32 %regr.addr.0 to i8
  %conv260 = add i8 %66, -112
  %67 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port233, align 4
  %and263 = and i32 %68, 1048575
  %add264 = or i32 %and263, -18874368
  %69 = inttoptr i32 %add264 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %conv260) #4, !srcloc !32
  %70 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool267.not = icmp eq i32 %71, 0
  br i1 %tobool267.not, label %do.body256.do.body284_crit_edge, label %cond.false279

do.body256.do.body284_crit_edge:                  ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body284

cond.false279:                                    ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #4
  br label %do.body284

do.body284:                                       ; preds = %cond.false279, %do.body256.do.body284_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %73 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port233, align 4
  %add288 = add i32 %74, 2
  %and289 = and i32 %add288, 1048575
  %add290 = or i32 %and289, -18874368
  %75 = inttoptr i32 %add290 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 8) #4, !srcloc !32
  %76 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool293.not = icmp eq i32 %77, 0
  br i1 %tobool293.not, label %do.body284.do.body310_crit_edge, label %cond.false305

do.body284.do.body310_crit_edge:                  ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body310

cond.false305:                                    ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #4
  br label %do.body310

do.body310:                                       ; preds = %cond.false305, %do.body284.do.body310_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %79 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port233, align 4
  %add314 = add i32 %80, 2
  %and315 = and i32 %add314, 1048575
  %add316 = or i32 %and315, -18874368
  %81 = inttoptr i32 %add316 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 12) #4, !srcloc !32
  %82 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool319.not = icmp eq i32 %83, 0
  br i1 %tobool319.not, label %do.body310.do.body336_crit_edge, label %cond.false331

do.body310.do.body336_crit_edge:                  ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body336

cond.false331:                                    ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %83) #4
  br label %do.body336

do.body336:                                       ; preds = %cond.false331, %do.body310.do.body336_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %85 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port233, align 4
  %add340 = add i32 %86, 2
  %and341 = and i32 %add340, 1048575
  %add342 = or i32 %and341, -18874368
  %87 = inttoptr i32 %add342 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 -20) #4, !srcloc !32
  %88 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool345.not = icmp eq i32 %89, 0
  br i1 %tobool345.not, label %do.body336.do.body362_crit_edge, label %cond.false357

do.body336.do.body362_crit_edge:                  ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body362

cond.false357:                                    ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #4
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %do.body336.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %91 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port233, align 4
  %add366 = add i32 %92, 2
  %and367 = and i32 %add366, 1048575
  %add368 = or i32 %and367, -18874368
  %93 = inttoptr i32 %add368 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 -18) #4, !srcloc !32
  %94 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool371.not = icmp eq i32 %95, 0
  br i1 %tobool371.not, label %do.body362.do.body388_crit_edge, label %cond.false383

do.body362.do.body388_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body388

cond.false383:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #4
  br label %do.body388

do.body388:                                       ; preds = %cond.false383, %do.body362.do.body388_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %97 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port233, align 4
  %add392 = add i32 %98, 2
  %and393 = and i32 %add392, 1048575
  %add394 = or i32 %and393, -18874368
  %99 = inttoptr i32 %add394 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 -17) #4, !srcloc !32
  %100 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool397.not = icmp eq i32 %101, 0
  br i1 %tobool397.not, label %do.body388.cond.end431_crit_edge, label %cond.false409

do.body388.cond.end431_crit_edge:                 ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end431

cond.false409:                                    ; preds = %do.body388
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %102(i32 noundef %101) #4
  %103 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr873 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr873)
  %tobool415.not = icmp eq i32 %.pr873, 0
  br i1 %tobool415.not, label %cond.false409.cond.end431_crit_edge, label %cond.false427

cond.false409.cond.end431_crit_edge:              ; preds = %cond.false409
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end431

cond.false427:                                    ; preds = %cond.false409
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %.pr873) #4
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false427, %cond.false409.cond.end431_crit_edge, %do.body388.cond.end431_crit_edge
  %105 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port233, align 4
  %and435 = and i32 %106, 1048575
  %add436 = or i32 %and435, -18874368
  %107 = inttoptr i32 %add436 to ptr
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %107) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %conv440 = zext i8 %108 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %109 = ptrtoint ptr %port233 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port233, align 4
  %add446 = add i32 %110, 2
  %and447 = and i32 %add446, 1048575
  %add448 = or i32 %and447, -18874368
  %111 = inttoptr i32 %add448 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 12) #4, !srcloc !32
  %112 = ptrtoint ptr %delay238 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %delay238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool451.not = icmp eq i32 %113, 0
  br i1 %tobool451.not, label %cond.end431.cleanup_crit_edge, label %cond.false463

cond.end431.cleanup_crit_edge:                    ; preds = %cond.end431
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false463:                                    ; preds = %cond.end431
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %114(i32 noundef %113) #4
  br label %cleanup

do.body469:                                       ; preds = %if.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %port472 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %115 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port472, align 4
  %add473 = add i32 %116, 2
  %and474 = and i32 %add473, 1048575
  %add475 = or i32 %and474, -18874368
  %117 = inttoptr i32 %add475 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 12) #4, !srcloc !32
  %delay477 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %118 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool478.not = icmp eq i32 %119, 0
  br i1 %tobool478.not, label %do.body469.do.body495_crit_edge, label %cond.false490

do.body469.do.body495_crit_edge:                  ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body495

cond.false490:                                    ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %120(i32 noundef %119) #4
  br label %do.body495

do.body495:                                       ; preds = %cond.false490, %do.body469.do.body495_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %121 = trunc i32 %regr.addr.0 to i8
  %conv499 = add i8 %121, -112
  %122 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port472, align 4
  %and502 = and i32 %123, 1048575
  %add503 = or i32 %and502, -18874368
  %124 = inttoptr i32 %add503 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv499) #4, !srcloc !32
  %125 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool506.not = icmp eq i32 %126, 0
  br i1 %tobool506.not, label %do.body495.do.body523_crit_edge, label %cond.false518

do.body495.do.body523_crit_edge:                  ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body523

cond.false518:                                    ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #4
  br label %do.body523

do.body523:                                       ; preds = %cond.false518, %do.body495.do.body523_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %128 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port472, align 4
  %add527 = add i32 %129, 2
  %and528 = and i32 %add527, 1048575
  %add529 = or i32 %and528, -18874368
  %130 = inttoptr i32 %add529 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 8) #4, !srcloc !32
  %131 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool532.not = icmp eq i32 %132, 0
  br i1 %tobool532.not, label %do.body523.do.body549_crit_edge, label %cond.false544

do.body523.do.body549_crit_edge:                  ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body549

cond.false544:                                    ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %132) #4
  br label %do.body549

do.body549:                                       ; preds = %cond.false544, %do.body523.do.body549_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %134 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port472, align 4
  %add553 = add i32 %135, 2
  %and554 = and i32 %add553, 1048575
  %add555 = or i32 %and554, -18874368
  %136 = inttoptr i32 %add555 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 12) #4, !srcloc !32
  %137 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool558.not = icmp eq i32 %138, 0
  br i1 %tobool558.not, label %do.body549.do.body575_crit_edge, label %cond.false570

do.body549.do.body575_crit_edge:                  ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body575

cond.false570:                                    ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #4
  br label %do.body575

do.body575:                                       ; preds = %cond.false570, %do.body549.do.body575_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %140 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port472, align 4
  %add579 = add i32 %141, 2
  %and580 = and i32 %add579, 1048575
  %add581 = or i32 %and580, -18874368
  %142 = inttoptr i32 %add581 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 -20) #4, !srcloc !32
  %143 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool584.not = icmp eq i32 %144, 0
  br i1 %tobool584.not, label %do.body575.cond.end618_crit_edge, label %cond.false596

do.body575.cond.end618_crit_edge:                 ; preds = %do.body575
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end618

cond.false596:                                    ; preds = %do.body575
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #4
  %146 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr875 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr875)
  %tobool602.not = icmp eq i32 %.pr875, 0
  br i1 %tobool602.not, label %cond.false596.cond.end618_crit_edge, label %cond.false614

cond.false596.cond.end618_crit_edge:              ; preds = %cond.false596
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end618

cond.false614:                                    ; preds = %cond.false596
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %.pr875) #4
  br label %cond.end618

cond.end618:                                      ; preds = %cond.false614, %cond.false596.cond.end618_crit_edge, %do.body575.cond.end618_crit_edge
  %148 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port472, align 4
  %add621 = add i32 %149, 4
  %and622 = and i32 %add621, 1048575
  %add623 = or i32 %and622, -18874368
  %150 = inttoptr i32 %add623 to ptr
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %150) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  %conv627 = zext i8 %151 to i32
  %152 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool630.not = icmp eq i32 %153, 0
  br i1 %tobool630.not, label %cond.end618.cond.end646_crit_edge, label %cond.false642

cond.end618.cond.end646_crit_edge:                ; preds = %cond.end618
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end646

cond.false642:                                    ; preds = %cond.end618
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #4
  br label %cond.end646

cond.end646:                                      ; preds = %cond.false642, %cond.end618.cond.end646_crit_edge
  %155 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port472, align 4
  %add649 = add i32 %156, 4
  %and650 = and i32 %add649, 1048575
  %add651 = or i32 %and650, -18874368
  %157 = inttoptr i32 %add651 to ptr
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %157) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %159 = ptrtoint ptr %port472 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port472, align 4
  %add661 = add i32 %160, 2
  %and662 = and i32 %add661, 1048575
  %add663 = or i32 %and662, -18874368
  %161 = inttoptr i32 %add663 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 12) #4, !srcloc !32
  %162 = ptrtoint ptr %delay477 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool666.not = icmp eq i32 %163, 0
  br i1 %tobool666.not, label %cond.end646.cleanup_crit_edge, label %cond.false678

cond.end646.cleanup_crit_edge:                    ; preds = %cond.end646
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false678:                                    ; preds = %cond.end646
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false678, %cond.end646.cleanup_crit_edge, %cond.false463, %cond.end431.cleanup_crit_edge, %cond.end226, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %cond.end226 ], [ 255, %if.then.cleanup_crit_edge ], [ %conv440, %cond.end431.cleanup_crit_edge ], [ %conv440, %cond.false463 ], [ %conv627, %cond.end646.cleanup_crit_edge ], [ %conv627, %cond.false678 ], [ -1, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge461
    i32 2, label %do.body193
  ]

entry.do.body_crit_edge461:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 12) #4, !srcloc !32
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #4, !srcloc !32
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #4
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 8) #4, !srcloc !32
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 12) #4, !srcloc !32
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.cond.end86_crit_edge, label %cond.false82

do.body62.cond.end86_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end86

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %do.body62.cond.end86_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp87458 = icmp sgt i32 %count, 1
  br i1 %cmp87458, label %cond.end86.do.body88_crit_edge, label %cond.end86.sw.epilog_crit_edge

cond.end86.sw.epilog_crit_edge:                   ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

cond.end86.do.body88_crit_edge:                   ; preds = %cond.end86
  br label %do.body88

do.body88:                                        ; preds = %for.inc.do.body88_crit_edge, %cond.end86.do.body88_crit_edge
  %k.0459 = phi i32 [ %inc, %for.inc.do.body88_crit_edge ], [ 0, %cond.end86.do.body88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %mul91 = shl nuw i32 %k.0459, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul91
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %and94 = and i32 %30, 1048575
  %add95 = or i32 %and94, -18874368
  %31 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #4, !srcloc !32
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool98.not = icmp eq i32 %33, 0
  br i1 %tobool98.not, label %do.body88.do.body114_crit_edge, label %cond.false109

do.body88.do.body114_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body114

cond.false109:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #4
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body88.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add118 = add i32 %36, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %37 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 13) #4, !srcloc !32
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool123.not = icmp eq i32 %39, 0
  br i1 %tobool123.not, label %do.body114.do.body139_crit_edge, label %cond.false134

do.body114.do.body139_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

cond.false134:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #4
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body114.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %add143 = or i32 %mul91, 1
  %arrayidx144 = getelementptr i8, ptr %buf, i32 %add143
  %41 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx144, align 1
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %and147 = and i32 %44, 1048575
  %add148 = or i32 %and147, -18874368
  %45 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %42) #4, !srcloc !32
  %46 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool151.not = icmp eq i32 %47, 0
  br i1 %tobool151.not, label %do.body139.do.body167_crit_edge, label %cond.false162

do.body139.do.body167_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body167

cond.false162:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %47) #4
  br label %do.body167

do.body167:                                       ; preds = %cond.false162, %do.body139.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add171 = add i32 %50, 2
  %and172 = and i32 %add171, 1048575
  %add173 = or i32 %and172, -18874368
  %51 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 12) #4, !srcloc !32
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool176.not = icmp eq i32 %53, 0
  br i1 %tobool176.not, label %do.body167.for.inc_crit_edge, label %cond.false187

do.body167.for.inc_crit_edge:                     ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cond.false187:                                    ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %53) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false187, %do.body167.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0459, 1
  %exitcond460.not = icmp eq i32 %inc, %div
  br i1 %exitcond460.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.do.body88_crit_edge

for.inc.do.body88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body193:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %port196 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %55 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port196, align 4
  %add197 = add i32 %56, 2
  %and198 = and i32 %add197, 1048575
  %add199 = or i32 %and198, -18874368
  %57 = inttoptr i32 %add199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 12) #4, !srcloc !32
  %delay201 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %58 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool202.not = icmp eq i32 %59, 0
  br i1 %tobool202.not, label %do.body193.do.body218_crit_edge, label %cond.false213

do.body193.do.body218_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body218

cond.false213:                                    ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %60(i32 noundef %59) #4
  br label %do.body218

do.body218:                                       ; preds = %cond.false213, %do.body193.do.body218_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %61 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port196, align 4
  %and223 = and i32 %62, 1048575
  %add224 = or i32 %and223, -18874368
  %63 = inttoptr i32 %add224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 0) #4, !srcloc !32
  %64 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool227.not = icmp eq i32 %65, 0
  br i1 %tobool227.not, label %do.body218.do.body243_crit_edge, label %cond.false238

do.body218.do.body243_crit_edge:                  ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body243

cond.false238:                                    ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #4
  br label %do.body243

do.body243:                                       ; preds = %cond.false238, %do.body218.do.body243_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port196, align 4
  %add247 = add i32 %68, 2
  %and248 = and i32 %add247, 1048575
  %add249 = or i32 %and248, -18874368
  %69 = inttoptr i32 %add249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 8) #4, !srcloc !32
  %70 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool252.not = icmp eq i32 %71, 0
  br i1 %tobool252.not, label %do.body243.do.body268_crit_edge, label %cond.false263

do.body243.do.body268_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body268

cond.false263:                                    ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #4
  br label %do.body268

do.body268:                                       ; preds = %cond.false263, %do.body243.do.body268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %73 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port196, align 4
  %add272 = add i32 %74, 2
  %and273 = and i32 %add272, 1048575
  %add274 = or i32 %and273, -18874368
  %75 = inttoptr i32 %add274 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 12) #4, !srcloc !32
  %76 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool277.not = icmp eq i32 %77, 0
  br i1 %tobool277.not, label %do.body268.cond.end292_crit_edge, label %cond.false288

do.body268.cond.end292_crit_edge:                 ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end292

cond.false288:                                    ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %77) #4
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false288, %do.body268.cond.end292_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp294456 = icmp sgt i32 %count, 0
  br i1 %cmp294456, label %cond.end292.do.body296_crit_edge, label %cond.end292.do.body325_crit_edge

cond.end292.do.body325_crit_edge:                 ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body325

cond.end292.do.body296_crit_edge:                 ; preds = %cond.end292
  br label %do.body296

do.body296:                                       ; preds = %for.inc322.do.body296_crit_edge, %cond.end292.do.body296_crit_edge
  %k.1457 = phi i32 [ %inc323, %for.inc322.do.body296_crit_edge ], [ 0, %cond.end292.do.body296_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %arrayidx299 = getelementptr i8, ptr %buf, i32 %k.1457
  %79 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx299, align 1
  %81 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port196, align 4
  %add301 = add i32 %82, 4
  %and302 = and i32 %add301, 1048575
  %add303 = or i32 %and302, -18874368
  %83 = inttoptr i32 %add303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %80) #4, !srcloc !32
  %84 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool306.not = icmp eq i32 %85, 0
  br i1 %tobool306.not, label %do.body296.for.inc322_crit_edge, label %cond.false317

do.body296.for.inc322_crit_edge:                  ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc322

cond.false317:                                    ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #4
  br label %for.inc322

for.inc322:                                       ; preds = %cond.false317, %do.body296.for.inc322_crit_edge
  %inc323 = add nuw nsw i32 %k.1457, 1
  %exitcond.not = icmp eq i32 %inc323, %count
  br i1 %exitcond.not, label %for.inc322.do.body325_crit_edge, label %for.inc322.do.body296_crit_edge

for.inc322.do.body296_crit_edge:                  ; preds = %for.inc322
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body296

for.inc322.do.body325_crit_edge:                  ; preds = %for.inc322
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body325

do.body325:                                       ; preds = %for.inc322.do.body325_crit_edge, %cond.end292.do.body325_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %87 = ptrtoint ptr %port196 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port196, align 4
  %add329 = add i32 %88, 2
  %and330 = and i32 %add329, 1048575
  %add331 = or i32 %and330, -18874368
  %89 = inttoptr i32 %add331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 12) #4, !srcloc !32
  %90 = ptrtoint ptr %delay201 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool334.not = icmp eq i32 %91, 0
  br i1 %tobool334.not, label %do.body325.sw.epilog_crit_edge, label %cond.false345

do.body325.sw.epilog_crit_edge:                   ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

cond.false345:                                    ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false345, %do.body325.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %cond.end86.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body339
    i32 2, label %do.body671
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 12) #4, !srcloc !32
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 16) #4, !srcloc !32
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #4
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 8) #4, !srcloc !32
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add66 = add i32 %22, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 12) #4, !srcloc !32
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.cond.end86_crit_edge, label %cond.false82

do.body62.cond.end86_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end86

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #4
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %do.body62.cond.end86_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp871120 = icmp sgt i32 %count, 1
  br i1 %cmp871120, label %cond.end86.do.body88_crit_edge, label %cond.end86.do.body312_crit_edge

cond.end86.do.body312_crit_edge:                  ; preds = %cond.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body312

cond.end86.do.body88_crit_edge:                   ; preds = %cond.end86
  br label %do.body88

do.body88:                                        ; preds = %cond.end288.do.body88_crit_edge, %cond.end86.do.body88_crit_edge
  %k.01121 = phi i32 [ %inc, %cond.end288.do.body88_crit_edge ], [ 0, %cond.end86.do.body88_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add92 = add i32 %28, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %29 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 13) #4, !srcloc !32
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool97.not = icmp eq i32 %31, 0
  br i1 %tobool97.not, label %do.body88.cond.end129_crit_edge, label %cond.false108

do.body88.cond.end129_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end129

cond.false108:                                    ; preds = %do.body88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #4
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool114.not = icmp eq i32 %.pr, 0
  br i1 %tobool114.not, label %cond.false108.cond.end129_crit_edge, label %cond.false125

cond.false108.cond.end129_crit_edge:              ; preds = %cond.false108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end129

cond.false125:                                    ; preds = %cond.false108
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %.pr) #4
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false125, %cond.false108.cond.end129_crit_edge, %do.body88.cond.end129_crit_edge
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add131 = add i32 %36, 1
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %37 = inttoptr i32 %add133 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add141 = add i32 %40, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 15) #4, !srcloc !32
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %cond.end129.cond.end180_crit_edge, label %cond.false158

cond.end129.cond.end180_crit_edge:                ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end180

cond.false158:                                    ; preds = %cond.end129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #4
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr1106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1106)
  %tobool164.not = icmp eq i32 %.pr1106, 0
  br i1 %tobool164.not, label %cond.false158.cond.end180_crit_edge, label %cond.false176

cond.false158.cond.end180_crit_edge:              ; preds = %cond.false158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end180

cond.false176:                                    ; preds = %cond.false158
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %.pr1106) #4
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false176, %cond.false158.cond.end180_crit_edge, %cond.end129.cond.end180_crit_edge
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add183 = add i32 %48, 1
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %49 = inttoptr i32 %add185 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add195 = add i32 %52, 2
  %and196 = and i32 %add195, 1048575
  %add197 = or i32 %and196, -18874368
  %53 = inttoptr i32 %add197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 12) #4, !srcloc !32
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool200.not = icmp eq i32 %55, 0
  br i1 %tobool200.not, label %cond.end180.cond.end234_crit_edge, label %cond.false212

cond.end180.cond.end234_crit_edge:                ; preds = %cond.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end234

cond.false212:                                    ; preds = %cond.end180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #4
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr1108 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1108)
  %tobool218.not = icmp eq i32 %.pr1108, 0
  br i1 %tobool218.not, label %cond.false212.cond.end234_crit_edge, label %cond.false230

cond.false212.cond.end234_crit_edge:              ; preds = %cond.false212
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end234

cond.false230:                                    ; preds = %cond.false212
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %.pr1108) #4
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false230, %cond.false212.cond.end234_crit_edge, %cond.end180.cond.end234_crit_edge
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add237 = add i32 %60, 1
  %and238 = and i32 %add237, 1048575
  %add239 = or i32 %and238, -18874368
  %61 = inttoptr i32 %add239 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add249 = add i32 %64, 2
  %and250 = and i32 %add249, 1048575
  %add251 = or i32 %and250, -18874368
  %65 = inttoptr i32 %add251 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 14) #4, !srcloc !32
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool254.not = icmp eq i32 %67, 0
  br i1 %tobool254.not, label %cond.end234.cond.end288_crit_edge, label %cond.false266

cond.end234.cond.end288_crit_edge:                ; preds = %cond.end234
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end288

cond.false266:                                    ; preds = %cond.end234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #4
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr1110 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1110)
  %tobool272.not = icmp eq i32 %.pr1110, 0
  br i1 %tobool272.not, label %cond.false266.cond.end288_crit_edge, label %cond.false284

cond.false266.cond.end288_crit_edge:              ; preds = %cond.false266
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end288

cond.false284:                                    ; preds = %cond.false266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %.pr1110) #4
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false284, %cond.false266.cond.end288_crit_edge, %cond.end234.cond.end288_crit_edge
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add291 = add i32 %72, 1
  %and292 = and i32 %add291, 1048575
  %add293 = or i32 %and292, -18874368
  %73 = inttoptr i32 %add293 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  %75 = lshr i8 %38, 3
  %76 = and i8 %75, 15
  %shl = shl i8 %50, 1
  %and300 = and i8 %shl, -16
  %or = or i8 %and300, %76
  %mul302 = shl nuw i32 %k.01121, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul302
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %or, ptr %arrayidx, align 1
  %78 = lshr i8 %62, 3
  %79 = and i8 %78, 15
  %shl305 = shl i8 %74, 1
  %and306 = and i8 %shl305, -16
  %or307 = or i8 %and306, %79
  %add310 = or i32 %mul302, 1
  %arrayidx311 = getelementptr i8, ptr %buf, i32 %add310
  %80 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or307, ptr %arrayidx311, align 1
  %inc = add nuw nsw i32 %k.01121, 1
  %exitcond1123.not = icmp eq i32 %inc, %div
  br i1 %exitcond1123.not, label %cond.end288.do.body312_crit_edge, label %cond.end288.do.body88_crit_edge

cond.end288.do.body88_crit_edge:                  ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88

cond.end288.do.body312_crit_edge:                 ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body312

do.body312:                                       ; preds = %cond.end288.do.body312_crit_edge, %cond.end86.do.body312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add316 = add i32 %82, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %83 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 12) #4, !srcloc !32
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool321.not = icmp eq i32 %85, 0
  br i1 %tobool321.not, label %do.body312.sw.epilog_crit_edge, label %do.body312.sw.epilog.sink.split_crit_edge

do.body312.sw.epilog.sink.split_crit_edge:        ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body312.sw.epilog_crit_edge:                   ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body339:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %port342 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %86 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port342, align 4
  %add343 = add i32 %87, 2
  %and344 = and i32 %add343, 1048575
  %add345 = or i32 %and344, -18874368
  %88 = inttoptr i32 %add345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 12) #4, !srcloc !32
  %delay347 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %89 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool348.not = icmp eq i32 %90, 0
  br i1 %tobool348.not, label %do.body339.do.body365_crit_edge, label %cond.false360

do.body339.do.body365_crit_edge:                  ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body365

cond.false360:                                    ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #4
  br label %do.body365

do.body365:                                       ; preds = %cond.false360, %do.body339.do.body365_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %92 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port342, align 4
  %and370 = and i32 %93, 1048575
  %add371 = or i32 %and370, -18874368
  %94 = inttoptr i32 %add371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 -112) #4, !srcloc !32
  %95 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool374.not = icmp eq i32 %96, 0
  br i1 %tobool374.not, label %do.body365.do.body391_crit_edge, label %cond.false386

do.body365.do.body391_crit_edge:                  ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body391

cond.false386:                                    ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #4
  br label %do.body391

do.body391:                                       ; preds = %cond.false386, %do.body365.do.body391_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %98 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port342, align 4
  %add395 = add i32 %99, 2
  %and396 = and i32 %add395, 1048575
  %add397 = or i32 %and396, -18874368
  %100 = inttoptr i32 %add397 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 8) #4, !srcloc !32
  %101 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool400.not = icmp eq i32 %102, 0
  br i1 %tobool400.not, label %do.body391.do.body417_crit_edge, label %cond.false412

do.body391.do.body417_crit_edge:                  ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body417

cond.false412:                                    ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %102) #4
  br label %do.body417

do.body417:                                       ; preds = %cond.false412, %do.body391.do.body417_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %104 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port342, align 4
  %add421 = add i32 %105, 2
  %and422 = and i32 %add421, 1048575
  %add423 = or i32 %and422, -18874368
  %106 = inttoptr i32 %add423 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 12) #4, !srcloc !32
  %107 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool426.not = icmp eq i32 %108, 0
  br i1 %tobool426.not, label %do.body417.do.body443_crit_edge, label %cond.false438

do.body417.do.body443_crit_edge:                  ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body443

cond.false438:                                    ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %109(i32 noundef %108) #4
  br label %do.body443

do.body443:                                       ; preds = %cond.false438, %do.body417.do.body443_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  %110 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port342, align 4
  %add447 = add i32 %111, 2
  %and448 = and i32 %add447, 1048575
  %add449 = or i32 %and448, -18874368
  %112 = inttoptr i32 %add449 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 -20) #4, !srcloc !32
  %113 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool452.not = icmp eq i32 %114, 0
  br i1 %tobool452.not, label %do.body443.do.body469_crit_edge, label %cond.false464

do.body443.do.body469_crit_edge:                  ; preds = %do.body443
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body469

cond.false464:                                    ; preds = %do.body443
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %114) #4
  br label %do.body469

do.body469:                                       ; preds = %cond.false464, %do.body443.do.body469_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %116 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port342, align 4
  %add473 = add i32 %117, 2
  %and474 = and i32 %add473, 1048575
  %add475 = or i32 %and474, -18874368
  %118 = inttoptr i32 %add475 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 -18) #4, !srcloc !32
  %119 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool478.not = icmp eq i32 %120, 0
  br i1 %tobool478.not, label %do.body469.cond.end494_crit_edge, label %cond.false490

do.body469.cond.end494_crit_edge:                 ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end494

cond.false490:                                    ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %120) #4
  br label %cond.end494

cond.end494:                                      ; preds = %cond.false490, %do.body469.cond.end494_crit_edge
  %div496 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp4971118 = icmp sgt i32 %count, 1
  br i1 %cmp4971118, label %cond.end494.do.body500_crit_edge, label %cond.end494.do.body618_crit_edge

cond.end494.do.body618_crit_edge:                 ; preds = %cond.end494
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body618

cond.end494.do.body500_crit_edge:                 ; preds = %cond.end494
  br label %do.body500

do.body500:                                       ; preds = %cond.end597.do.body500_crit_edge, %cond.end494.do.body500_crit_edge
  %k.11119 = phi i32 [ %inc616, %cond.end597.do.body500_crit_edge ], [ 0, %cond.end494.do.body500_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %122 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port342, align 4
  %add504 = add i32 %123, 2
  %and505 = and i32 %add504, 1048575
  %add506 = or i32 %and505, -18874368
  %124 = inttoptr i32 %add506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 -17) #4, !srcloc !32
  %125 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool509.not = icmp eq i32 %126, 0
  br i1 %tobool509.not, label %do.body500.cond.end543_crit_edge, label %cond.false521

do.body500.cond.end543_crit_edge:                 ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end543

cond.false521:                                    ; preds = %do.body500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #4
  %128 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr1112 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1112)
  %tobool527.not = icmp eq i32 %.pr1112, 0
  br i1 %tobool527.not, label %cond.false521.cond.end543_crit_edge, label %cond.false539

cond.false521.cond.end543_crit_edge:              ; preds = %cond.false521
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end543

cond.false539:                                    ; preds = %cond.false521
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %.pr1112) #4
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false539, %cond.false521.cond.end543_crit_edge, %do.body500.cond.end543_crit_edge
  %130 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port342, align 4
  %and547 = and i32 %131, 1048575
  %add548 = or i32 %and547, -18874368
  %132 = inttoptr i32 %add548 to ptr
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %134 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port342, align 4
  %add558 = add i32 %135, 2
  %and559 = and i32 %add558, 1048575
  %add560 = or i32 %and559, -18874368
  %136 = inttoptr i32 %add560 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 -18) #4, !srcloc !32
  %137 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool563.not = icmp eq i32 %138, 0
  br i1 %tobool563.not, label %cond.end543.cond.end597_crit_edge, label %cond.false575

cond.end543.cond.end597_crit_edge:                ; preds = %cond.end543
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end597

cond.false575:                                    ; preds = %cond.end543
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #4
  %140 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr1114 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1114)
  %tobool581.not = icmp eq i32 %.pr1114, 0
  br i1 %tobool581.not, label %cond.false575.cond.end597_crit_edge, label %cond.false593

cond.false575.cond.end597_crit_edge:              ; preds = %cond.false575
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end597

cond.false593:                                    ; preds = %cond.false575
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %.pr1114) #4
  br label %cond.end597

cond.end597:                                      ; preds = %cond.false593, %cond.false575.cond.end597_crit_edge, %cond.end543.cond.end597_crit_edge
  %142 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port342, align 4
  %and601 = and i32 %143, 1048575
  %add602 = or i32 %and601, -18874368
  %144 = inttoptr i32 %add602 to ptr
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %144) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  %mul609 = shl nuw i32 %k.11119, 1
  %arrayidx610 = getelementptr i8, ptr %buf, i32 %mul609
  %146 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %133, ptr %arrayidx610, align 1
  %add613 = or i32 %mul609, 1
  %arrayidx614 = getelementptr i8, ptr %buf, i32 %add613
  %147 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %145, ptr %arrayidx614, align 1
  %inc616 = add nuw nsw i32 %k.11119, 1
  %exitcond1122.not = icmp eq i32 %inc616, %div496
  br i1 %exitcond1122.not, label %cond.end597.do.body618_crit_edge, label %cond.end597.do.body500_crit_edge

cond.end597.do.body500_crit_edge:                 ; preds = %cond.end597
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body500

cond.end597.do.body618_crit_edge:                 ; preds = %cond.end597
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body618

do.body618:                                       ; preds = %cond.end597.do.body618_crit_edge, %cond.end494.do.body618_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %148 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port342, align 4
  %add622 = add i32 %149, 2
  %and623 = and i32 %add622, 1048575
  %add624 = or i32 %and623, -18874368
  %150 = inttoptr i32 %add624 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 -20) #4, !srcloc !32
  %151 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool627.not = icmp eq i32 %152, 0
  br i1 %tobool627.not, label %do.body618.do.body644_crit_edge, label %cond.false639

do.body618.do.body644_crit_edge:                  ; preds = %do.body618
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body644

cond.false639:                                    ; preds = %do.body618
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %152) #4
  br label %do.body644

do.body644:                                       ; preds = %cond.false639, %do.body618.do.body644_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %154 = ptrtoint ptr %port342 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port342, align 4
  %add648 = add i32 %155, 2
  %and649 = and i32 %add648, 1048575
  %add650 = or i32 %and649, -18874368
  %156 = inttoptr i32 %add650 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 12) #4, !srcloc !32
  %157 = ptrtoint ptr %delay347 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %delay347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool653.not = icmp eq i32 %158, 0
  br i1 %tobool653.not, label %do.body644.sw.epilog_crit_edge, label %do.body644.sw.epilog.sink.split_crit_edge

do.body644.sw.epilog.sink.split_crit_edge:        ; preds = %do.body644
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body644.sw.epilog_crit_edge:                   ; preds = %do.body644
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body671:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %port674 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %159 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port674, align 4
  %add675 = add i32 %160, 2
  %and676 = and i32 %add675, 1048575
  %add677 = or i32 %and676, -18874368
  %161 = inttoptr i32 %add677 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 12) #4, !srcloc !32
  %delay679 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %162 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool680.not = icmp eq i32 %163, 0
  br i1 %tobool680.not, label %do.body671.do.body697_crit_edge, label %cond.false692

do.body671.do.body697_crit_edge:                  ; preds = %do.body671
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body697

cond.false692:                                    ; preds = %do.body671
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #4
  br label %do.body697

do.body697:                                       ; preds = %cond.false692, %do.body671.do.body697_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %165 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port674, align 4
  %and702 = and i32 %166, 1048575
  %add703 = or i32 %and702, -18874368
  %167 = inttoptr i32 %add703 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 -112) #4, !srcloc !32
  %168 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool706.not = icmp eq i32 %169, 0
  br i1 %tobool706.not, label %do.body697.do.body723_crit_edge, label %cond.false718

do.body697.do.body723_crit_edge:                  ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body723

cond.false718:                                    ; preds = %do.body697
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #4
  br label %do.body723

do.body723:                                       ; preds = %cond.false718, %do.body697.do.body723_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %171 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port674, align 4
  %add727 = add i32 %172, 2
  %and728 = and i32 %add727, 1048575
  %add729 = or i32 %and728, -18874368
  %173 = inttoptr i32 %add729 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 8) #4, !srcloc !32
  %174 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool732.not = icmp eq i32 %175, 0
  br i1 %tobool732.not, label %do.body723.do.body749_crit_edge, label %cond.false744

do.body723.do.body749_crit_edge:                  ; preds = %do.body723
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body749

cond.false744:                                    ; preds = %do.body723
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #4
  br label %do.body749

do.body749:                                       ; preds = %cond.false744, %do.body723.do.body749_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %177 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port674, align 4
  %add753 = add i32 %178, 2
  %and754 = and i32 %add753, 1048575
  %add755 = or i32 %and754, -18874368
  %179 = inttoptr i32 %add755 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 12) #4, !srcloc !32
  %180 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool758.not = icmp eq i32 %181, 0
  br i1 %tobool758.not, label %do.body749.do.body775_crit_edge, label %cond.false770

do.body749.do.body775_crit_edge:                  ; preds = %do.body749
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body775

cond.false770:                                    ; preds = %do.body749
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %181) #4
  br label %do.body775

do.body775:                                       ; preds = %cond.false770, %do.body749.do.body775_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %183 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port674, align 4
  %add779 = add i32 %184, 2
  %and780 = and i32 %add779, 1048575
  %add781 = or i32 %and780, -18874368
  %185 = inttoptr i32 %add781 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 -20) #4, !srcloc !32
  %186 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool784.not = icmp eq i32 %187, 0
  br i1 %tobool784.not, label %do.body775.cond.end800_crit_edge, label %cond.false796

do.body775.cond.end800_crit_edge:                 ; preds = %do.body775
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end800

cond.false796:                                    ; preds = %do.body775
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #4
  br label %cond.end800

cond.end800:                                      ; preds = %cond.false796, %do.body775.cond.end800_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8021116 = icmp sgt i32 %count, 0
  br i1 %cmp8021116, label %cond.end800.for.body804_crit_edge, label %cond.end800.do.body838_crit_edge

cond.end800.do.body838_crit_edge:                 ; preds = %cond.end800
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body838

cond.end800.for.body804_crit_edge:                ; preds = %cond.end800
  br label %for.body804

for.body804:                                      ; preds = %cond.end822.for.body804_crit_edge, %cond.end800.for.body804_crit_edge
  %k.21117 = phi i32 [ %inc836, %cond.end822.for.body804_crit_edge ], [ 0, %cond.end800.for.body804_crit_edge ]
  %189 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool806.not = icmp eq i32 %190, 0
  br i1 %tobool806.not, label %for.body804.cond.end822_crit_edge, label %cond.false818

for.body804.cond.end822_crit_edge:                ; preds = %for.body804
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end822

cond.false818:                                    ; preds = %for.body804
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %191(i32 noundef %190) #4
  br label %cond.end822

cond.end822:                                      ; preds = %cond.false818, %for.body804.cond.end822_crit_edge
  %192 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port674, align 4
  %add825 = add i32 %193, 4
  %and826 = and i32 %add825, 1048575
  %add827 = or i32 %and826, -18874368
  %194 = inttoptr i32 %add827 to ptr
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %194) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  %arrayidx834 = getelementptr i8, ptr %buf, i32 %k.21117
  %196 = ptrtoint ptr %arrayidx834 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx834, align 1
  %inc836 = add nuw nsw i32 %k.21117, 1
  %exitcond.not = icmp eq i32 %inc836, %count
  br i1 %exitcond.not, label %cond.end822.do.body838_crit_edge, label %cond.end822.for.body804_crit_edge

cond.end822.for.body804_crit_edge:                ; preds = %cond.end822
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body804

cond.end822.do.body838_crit_edge:                 ; preds = %cond.end822
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body838

do.body838:                                       ; preds = %cond.end822.do.body838_crit_edge, %cond.end800.do.body838_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %197 = ptrtoint ptr %port674 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port674, align 4
  %add842 = add i32 %198, 2
  %and843 = and i32 %add842, 1048575
  %add844 = or i32 %and843, -18874368
  %199 = inttoptr i32 %add844 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 12) #4, !srcloc !32
  %200 = ptrtoint ptr %delay679 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %delay679, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool847.not = icmp eq i32 %201, 0
  br i1 %tobool847.not, label %do.body838.sw.epilog_crit_edge, label %do.body838.sw.epilog.sink.split_crit_edge

do.body838.sw.epilog.sink.split_crit_edge:        ; preds = %do.body838
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body838.sw.epilog_crit_edge:                   ; preds = %do.body838
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body838.sw.epilog.sink.split_crit_edge, %do.body644.sw.epilog.sink.split_crit_edge, %do.body312.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %85, %do.body312.sw.epilog.sink.split_crit_edge ], [ %158, %do.body644.sw.epilog.sink.split_crit_edge ], [ %201, %do.body838.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body838.sw.epilog_crit_edge, %do.body644.sw.epilog_crit_edge, %do.body312.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_connect(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %cond.end10.cond.end31_crit_edge, label %cond.false27

cond.end10.cond.end31_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end31

cond.false27:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.end10.cond.end31_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add34 = add i32 %12, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %13 = inttoptr i32 %add36 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 12) #4, !srcloc !32
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.do.body65_crit_edge, label %cond.false60

cond.end31.do.body65_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body65

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #4
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %cond.end31.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #4, !srcloc !32
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool73.not = icmp eq i32 %26, 0
  br i1 %tobool73.not, label %do.body65.do.body90_crit_edge, label %cond.false85

do.body65.do.body90_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body90

cond.false85:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #4
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body65.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add93 = add i32 %29, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 10) #4, !srcloc !32
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body90.cond.end114_crit_edge, label %cond.false110

do.body90.cond.end114_crit_edge:                  ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end114

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #4
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false110, %do.body90.cond.end114_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp115 = icmp eq i32 %35, 2
  br i1 %cmp115, label %do.body117, label %cond.end114.if.end_crit_edge

cond.end114.if.end_crit_edge:                     ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body117:                                       ; preds = %cond.end114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add120 = add i32 %37, 2
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %38 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 12) #4, !srcloc !32
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool125.not = icmp eq i32 %40, 0
  br i1 %tobool125.not, label %do.body117.do.body142_crit_edge, label %cond.false137

do.body117.do.body142_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body142

cond.false137:                                    ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %do.body142

do.body142:                                       ; preds = %cond.false137, %do.body117.do.body142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %and146 = and i32 %43, 1048575
  %add147 = or i32 %and146, -18874368
  %44 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 9) #4, !srcloc !32
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool150.not = icmp eq i32 %46, 0
  br i1 %tobool150.not, label %do.body142.do.body167_crit_edge, label %cond.false162

do.body142.do.body167_crit_edge:                  ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body167

cond.false162:                                    ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  br label %do.body167

do.body167:                                       ; preds = %cond.false162, %do.body142.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add170 = add i32 %49, 2
  %and171 = and i32 %add170, 1048575
  %add172 = or i32 %and171, -18874368
  %50 = inttoptr i32 %add172 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 8) #4, !srcloc !32
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool175.not = icmp eq i32 %52, 0
  br i1 %tobool175.not, label %do.body167.do.body192_crit_edge, label %cond.false187

do.body167.do.body192_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body192

cond.false187:                                    ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %do.body192

do.body192:                                       ; preds = %cond.false187, %do.body167.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add195 = add i32 %55, 2
  %and196 = and i32 %add195, 1048575
  %add197 = or i32 %and196, -18874368
  %56 = inttoptr i32 %add197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 12) #4, !srcloc !32
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool200.not = icmp eq i32 %58, 0
  br i1 %tobool200.not, label %do.body192.if.end_crit_edge, label %cond.false212

do.body192.if.end_crit_edge:                      ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false212:                                    ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %if.end

if.end:                                           ; preds = %cond.false212, %do.body192.if.end_crit_edge, %cond.end114.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #4, !srcloc !32
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #4
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 10) #4, !srcloc !32
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %do.body12.do.body36_crit_edge, label %cond.false31

do.body12.do.body36_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

cond.false31:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body36

do.body36:                                        ; preds = %cond.false31, %do.body12.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add39 = add i32 %13, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 8) #4, !srcloc !32
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %do.body36.do.body60_crit_edge, label %cond.false55

do.body36.do.body60_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body60

cond.false55:                                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body60

do.body60:                                        ; preds = %cond.false55, %do.body36.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add63 = add i32 %19, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 12) #4, !srcloc !32
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %do.body60.do.body84_crit_edge, label %cond.false79

do.body60.do.body84_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body84

cond.false79:                                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body84

do.body84:                                        ; preds = %cond.false79, %do.body60.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %24 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %25 to i8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and88 = and i32 %27, 1048575
  %add89 = or i32 %and88, -18874368
  %28 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv) #4, !srcloc !32
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool92.not = icmp eq i32 %30, 0
  br i1 %tobool92.not, label %do.body84.do.body109_crit_edge, label %cond.false104

do.body84.do.body109_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109

cond.false104:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #4
  br label %do.body109

do.body109:                                       ; preds = %cond.false104, %do.body84.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %32 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved_r2, align 4
  %conv111 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add113 = add i32 %35, 2
  %and114 = and i32 %add113, 1048575
  %add115 = or i32 %and114, -18874368
  %36 = inttoptr i32 %add115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %conv111) #4, !srcloc !32
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool118.not = icmp eq i32 %38, 0
  br i1 %tobool118.not, label %do.body109.cond.end134_crit_edge, label %cond.false130

do.body109.cond.end134_crit_edge:                 ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end134

cond.false130:                                    ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #4
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false130, %do.body109.cond.end134_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit3_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @__const.fit3_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/fit3.c", i32 209, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_fit3__162_210_fit3_init6, !4, !"__initcall__kmod_fit3__162_210_fit3_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/fit3.c", i32 210, i32 1}
!5 = !{ptr @__exitcall_fit3_exit, !6, !"__exitcall_fit3_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/fit3.c", i32 211, i32 1}
!7 = !{ptr @fit3, !8, !"fit3", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/fit3.c", i32 183, i32 27}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/fit3.c", i32 174, i32 36}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/fit3.c", i32 174, i32 44}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/fit3.c", i32 174, i32 52}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/fit3.c", i32 176, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fit3_log_adapter._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @fit3_log_adapter._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2152104029}
!32 = !{i64 4532708}
!33 = !{i64 2152105048}
!34 = !{i64 2152106064}
!35 = !{i64 2152107080}
!36 = !{i64 2152108096}
!37 = !{i64 2152109112}
!38 = !{i64 2152110122}
!39 = !{i64 2152111138}
!40 = !{i64 2152112154}
!41 = !{i64 2152113173}
!42 = !{i64 2152114189}
!43 = !{i64 2152115205}
!44 = !{i64 2152116221}
!45 = !{i64 2152117231}
!46 = !{i64 2152118247}
!47 = !{i64 2152119263}
!48 = !{i64 2152120303}
!49 = !{i64 2152121319}
!50 = !{i64 2152122335}
!51 = !{i64 2152123351}
!52 = !{i64 4533103}
!53 = !{i64 2152125046}
!54 = !{i64 2152125320}
!55 = !{i64 2152127015}
!56 = !{i64 2152127289}
!57 = !{i64 2152128339}
!58 = !{i64 2152129379}
!59 = !{i64 2152130395}
!60 = !{i64 2152131411}
!61 = !{i64 2152132430}
!62 = !{i64 2152133449}
!63 = !{i64 2152134468}
!64 = !{i64 2152136163}
!65 = !{i64 2152136437}
!66 = !{i64 2152137453}
!67 = !{i64 2152142554}
!68 = !{i64 2152143570}
!69 = !{i64 2152144586}
!70 = !{i64 2152145605}
!71 = !{i64 2152147300}
!72 = !{i64 2152148253}
!73 = !{i64 2152148527}
!74 = !{i64 2152181709}
!75 = !{i64 2152182719}
!76 = !{i64 2152183735}
!77 = !{i64 2152184751}
!78 = !{i64 2152185788}
!79 = !{i64 2152186804}
!80 = !{i64 2152187841}
!81 = !{i64 2152188857}
!82 = !{i64 2152189873}
!83 = !{i64 2152190883}
!84 = !{i64 2152191899}
!85 = !{i64 2152192915}
!86 = !{i64 2152193940}
!87 = !{i64 2152194956}
!88 = !{i64 2152149543}
!89 = !{i64 2152150562}
!90 = !{i64 2152151578}
!91 = !{i64 2152152594}
!92 = !{i64 2152153610}
!93 = !{i64 2152155305}
!94 = !{i64 2152155579}
!95 = !{i64 2152157274}
!96 = !{i64 2152157548}
!97 = !{i64 2152159243}
!98 = !{i64 2152159517}
!99 = !{i64 2152161212}
!100 = !{i64 2152161554}
!101 = !{i64 2152162570}
!102 = !{i64 2152163589}
!103 = !{i64 2152164605}
!104 = !{i64 2152165621}
!105 = !{i64 2152166640}
!106 = !{i64 2152167659}
!107 = !{i64 2152168678}
!108 = !{i64 2152170373}
!109 = !{i64 2152170650}
!110 = !{i64 2152172345}
!111 = !{i64 2152172622}
!112 = !{i64 2152173638}
!113 = !{i64 2152174654}
!114 = !{i64 2152175673}
!115 = !{i64 2152176689}
!116 = !{i64 2152177705}
!117 = !{i64 2152178724}
!118 = !{i64 2152180419}
!119 = !{i64 2152180693}
!120 = !{i64 2152196651}
!121 = !{i64 2152197604}
!122 = !{i64 2152197878}
!123 = !{i64 2152198888}
!124 = !{i64 2152199904}
!125 = !{i64 2152200920}
!126 = !{i64 2152201936}
!127 = !{i64 2152202952}
!128 = !{i64 2152203968}
!129 = !{i64 2152204984}
!130 = !{i64 2152206000}
!131 = !{i64 2152207016}
!132 = !{i64 2152208032}
!133 = !{i64 2152209075}
!134 = !{i64 2152210118}
