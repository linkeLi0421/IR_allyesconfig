; ModuleID = '/llk/IR_all_yes/drivers/block/paride/fit2.c_pt.bc'
source_filename = "../drivers/block/paride/fit2.c"
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

@fit2 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"fit2\00\00\00\00", i32 0, i32 1, i32 2, i32 1, i32 1, ptr @fit2_write_regr, ptr @fit2_read_regr, ptr @fit2_write_block, ptr @fit2_read_block, ptr @fit2_connect, ptr @fit2_disconnect, ptr null, ptr null, ptr null, ptr @fit2_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"fit2.file=drivers/block/paride/fit2\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"fit2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_fit2__162_150_fit2_init6 = internal global ptr @fit2_init, section ".initcall6.init", align 4
@__exitcall_fit2_exit = internal global ptr @fit2_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fit2_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: fit2 %s, FIT 2000 adapter at 0x%x, delay %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fit2_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/fit2.c\00", [36 x i8] zeroinitializer }, align 32
@fit2_log_adapter._entry_ptr = internal global ptr @fit2_log_adapter._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"fit2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 123, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [31 x i8] c"../drivers/block/paride/fit2.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 118, i32 9 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_fit2_exit, ptr @__initcall__kmod_fit2__162_150_fit2_init6, ptr @fit2_exit, ptr @fit2_log_adapter._entry, ptr @fit2_log_adapter._entry_ptr, ptr @fit2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fit2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fit2_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fit2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @paride_unregister(ptr noundef nonnull @fit2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fit2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @fit2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cont)
  %cmp = icmp eq i32 %cont, 1
  br i1 %cmp, label %entry.cond.end163_crit_edge, label %do.body

entry.cond.end163_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end163

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #4, !srcloc !26
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body.do.body13_crit_edge, label %cond.false8

do.body.do.body13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

cond.false8:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #4
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %do.body.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %regr to i8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and17 = and i32 %7, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #4, !srcloc !26
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body13.do.body38_crit_edge, label %cond.false33

do.body13.do.body38_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

cond.false33:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body13.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #4, !srcloc !26
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %conv65 = trunc i32 %val to i8
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and68 = and i32 %19, 1048575
  %add69 = or i32 %and68, -18874368
  %20 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv65) #4, !srcloc !26
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool72.not = icmp eq i32 %22, 0
  br i1 %tobool72.not, label %do.body63.do.body89_crit_edge, label %cond.false84

do.body63.do.body89_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

cond.false84:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body63.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add92 = add i32 %25, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %26 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #4, !srcloc !26
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool97.not = icmp eq i32 %28, 0
  br i1 %tobool97.not, label %do.body89.do.body114_crit_edge, label %cond.false109

do.body89.do.body114_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body114

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body89.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and118 = and i32 %31, 1048575
  %add119 = or i32 %and118, -18874368
  %32 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #4, !srcloc !26
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool122.not = icmp eq i32 %34, 0
  br i1 %tobool122.not, label %do.body114.do.body139_crit_edge, label %cond.false134

do.body114.do.body139_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

cond.false134:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #4
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body114.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add142 = add i32 %37, 2
  %and143 = and i32 %add142, 1048575
  %add144 = or i32 %and143, -18874368
  %38 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 4) #4, !srcloc !26
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool147.not = icmp eq i32 %40, 0
  br i1 %tobool147.not, label %do.body139.cond.end163_crit_edge, label %cond.false159

do.body139.cond.end163_crit_edge:                 ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end163

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false159, %do.body139.cond.end163_crit_edge, %entry.cond.end163_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fit2_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cont)
  %tobool.not = icmp eq i32 %cont, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %regr)
  %cmp.not = icmp eq i32 %regr, 6
  br i1 %cmp.not, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = trunc i32 %regr to i8
  %phi.cast = add i8 %0, 16
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then.do.body_crit_edge
  %r.0 = phi i8 [ %phi.cast, %if.else ], [ 7, %if.then.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add3 = add i32 %2, 2
  %and = and i32 %add3, 1048575
  %add4 = or i32 %and, -18874368
  %3 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 12) #4, !srcloc !26
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %do.body.do.body17_crit_edge, label %cond.false12

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body17

cond.false12:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %6(i32 noundef %5) #4
  br label %do.body17

do.body17:                                        ; preds = %cond.false12, %do.body.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %and22 = and i32 %8, 1048575
  %add23 = or i32 %and22, -18874368
  %9 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %r.0) #4, !srcloc !26
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %do.body17.do.body43_crit_edge, label %cond.false38

do.body17.do.body43_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body43

cond.false38:                                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #4
  br label %do.body43

do.body43:                                        ; preds = %cond.false38, %do.body17.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add47 = add i32 %14, 2
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %15 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 4) #4, !srcloc !26
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool52.not = icmp eq i32 %17, 0
  br i1 %tobool52.not, label %do.body43.do.body69_crit_edge, label %cond.false64

do.body43.do.body69_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body69

cond.false64:                                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #4
  br label %do.body69

do.body69:                                        ; preds = %cond.false64, %do.body43.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add73 = add i32 %20, 2
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %21 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 5) #4, !srcloc !26
  %22 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool78.not = icmp eq i32 %23, 0
  br i1 %tobool78.not, label %do.body69.do.body95_crit_edge, label %cond.false90

do.body69.do.body95_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body95

cond.false90:                                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %23) #4
  br label %do.body95

do.body95:                                        ; preds = %cond.false90, %do.body69.do.body95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %and100 = and i32 %26, 1048575
  %add101 = or i32 %and100, -18874368
  %27 = inttoptr i32 %add101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #4, !srcloc !26
  %28 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool104.not = icmp eq i32 %29, 0
  br i1 %tobool104.not, label %do.body95.cond.end138_crit_edge, label %cond.false116

do.body95.cond.end138_crit_edge:                  ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end138

cond.false116:                                    ; preds = %do.body95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %29) #4
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
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
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %.pr) #4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false134, %cond.false116.cond.end138_crit_edge, %do.body95.cond.end138_crit_edge
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add140 = add i32 %34, 1
  %and141 = and i32 %add140, 1048575
  %add142 = or i32 %and141, -18874368
  %35 = inttoptr i32 %add142 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %and152 = and i32 %38, 1048575
  %add153 = or i32 %and152, -18874368
  %39 = inttoptr i32 %add153 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 1) #4, !srcloc !26
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool156.not = icmp eq i32 %41, 0
  br i1 %tobool156.not, label %cond.end138.cond.end190_crit_edge, label %cond.false168

cond.end138.cond.end190_crit_edge:                ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end190

cond.false168:                                    ; preds = %cond.end138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %41) #4
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr295 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr295)
  %tobool174.not = icmp eq i32 %.pr295, 0
  br i1 %tobool174.not, label %cond.false168.cond.end190_crit_edge, label %cond.false186

cond.false168.cond.end190_crit_edge:              ; preds = %cond.false168
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end190

cond.false186:                                    ; preds = %cond.false168
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %.pr295) #4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false186, %cond.false168.cond.end190_crit_edge, %cond.end138.cond.end190_crit_edge
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add193 = add i32 %46, 1
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %47 = inttoptr i32 %add195 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add205 = add i32 %50, 2
  %and206 = and i32 %add205, 1048575
  %add207 = or i32 %and206, -18874368
  %51 = inttoptr i32 %add207 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 4) #4, !srcloc !26
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool210.not = icmp eq i32 %53, 0
  br i1 %tobool210.not, label %cond.end190.cond.end226_crit_edge, label %cond.false222

cond.end190.cond.end226_crit_edge:                ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end226

cond.false222:                                    ; preds = %cond.end190
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %53) #4
  br label %cond.end226

cond.end226:                                      ; preds = %cond.false222, %cond.end190.cond.end226_crit_edge
  %55 = lshr i8 %36, 4
  %56 = and i8 %48, -16
  %or293 = or i8 %56, %55
  %or = zext i8 %or293 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.end226, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %cond.end226 ], [ 255, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #4, !srcloc !26
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and17 = and i32 %7, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #4, !srcloc !26
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.cond.end36_crit_edge, label %cond.false32

do.body12.cond.end36_crit_edge:                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end36

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %do.body12.cond.end36_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp37218 = icmp sgt i32 %count, 1
  br i1 %cmp37218, label %cond.end36.do.body38_crit_edge, label %cond.end36.do.body142_crit_edge

cond.end36.do.body142_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body142

cond.end36.do.body38_crit_edge:                   ; preds = %cond.end36
  br label %do.body38

do.body38:                                        ; preds = %for.inc.do.body38_crit_edge, %cond.end36.do.body38_crit_edge
  %k.0219 = phi i32 [ %inc, %for.inc.do.body38_crit_edge ], [ 0, %cond.end36.do.body38_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add42 = add i32 %13, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %14 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #4, !srcloc !26
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool47.not = icmp eq i32 %16, 0
  br i1 %tobool47.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %mul66 = shl nuw i32 %k.0219, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul66
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %and69 = and i32 %21, 1048575
  %add70 = or i32 %and69, -18874368
  %22 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %19) #4, !srcloc !26
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool73.not = icmp eq i32 %24, 0
  br i1 %tobool73.not, label %do.body63.do.body89_crit_edge, label %cond.false84

do.body63.do.body89_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

cond.false84:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #4
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body63.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add93 = add i32 %27, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %28 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 5) #4, !srcloc !26
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool98.not = icmp eq i32 %30, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

do.body89.do.body114_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body114

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #4
  br label %do.body114

do.body114:                                       ; preds = %cond.false109, %do.body89.do.body114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %add118 = or i32 %mul66, 1
  %arrayidx119 = getelementptr i8, ptr %buf, i32 %add118
  %32 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx119, align 1
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and122 = and i32 %35, 1048575
  %add123 = or i32 %and122, -18874368
  %36 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %33) #4, !srcloc !26
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool126.not = icmp eq i32 %38, 0
  br i1 %tobool126.not, label %do.body114.for.inc_crit_edge, label %cond.false137

do.body114.for.inc_crit_edge:                     ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cond.false137:                                    ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false137, %do.body114.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0219, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.do.body142_crit_edge, label %for.inc.do.body38_crit_edge

for.inc.do.body38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

for.inc.do.body142_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body142

do.body142:                                       ; preds = %for.inc.do.body142_crit_edge, %cond.end36.do.body142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add146 = add i32 %41, 2
  %and147 = and i32 %add146, 1048575
  %add148 = or i32 %and147, -18874368
  %42 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 4) #4, !srcloc !26
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool151.not = icmp eq i32 %44, 0
  br i1 %tobool151.not, label %do.body142.cond.end166_crit_edge, label %cond.false162

do.body142.cond.end166_crit_edge:                 ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end166

cond.false162:                                    ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false162, %do.body142.cond.end166_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_read_block(ptr noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 12) #4, !srcloc !26
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and17 = and i32 %7, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 16) #4, !srcloc !26
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.cond.end36_crit_edge, label %cond.false32

do.body12.cond.end36_crit_edge:                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end36

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %do.body12.cond.end36_crit_edge
  %div = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp37779 = icmp sgt i32 %count, 3
  br i1 %cmp37779, label %cond.end36.do.body38_crit_edge, label %cond.end36.do.body570_crit_edge

cond.end36.do.body570_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body570

cond.end36.do.body38_crit_edge:                   ; preds = %cond.end36
  br label %do.body38

do.body38:                                        ; preds = %cond.end543.do.body38_crit_edge, %cond.end36.do.body38_crit_edge
  %k.0780 = phi i32 [ %inc, %cond.end543.do.body38_crit_edge ], [ 0, %cond.end36.do.body38_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add42 = add i32 %13, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %14 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #4, !srcloc !26
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool47.not = icmp eq i32 %16, 0
  br i1 %tobool47.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add67 = add i32 %19, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %20 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 5) #4, !srcloc !26
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool72.not = icmp eq i32 %22, 0
  br i1 %tobool72.not, label %do.body63.do.body88_crit_edge, label %cond.false83

do.body63.do.body88_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88

cond.false83:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body88

do.body88:                                        ; preds = %cond.false83, %do.body63.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and93 = and i32 %25, 1048575
  %add94 = or i32 %and93, -18874368
  %26 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #4, !srcloc !26
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool97.not = icmp eq i32 %28, 0
  br i1 %tobool97.not, label %do.body88.cond.end129_crit_edge, label %cond.false108

do.body88.cond.end129_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end129

cond.false108:                                    ; preds = %do.body88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
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
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %.pr) #4
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false125, %cond.false108.cond.end129_crit_edge, %do.body88.cond.end129_crit_edge
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add131 = add i32 %33, 1
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %34 = inttoptr i32 %add133 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and142 = and i32 %37, 1048575
  %add143 = or i32 %and142, -18874368
  %38 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 1) #4, !srcloc !26
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool146.not = icmp eq i32 %40, 0
  br i1 %tobool146.not, label %cond.end129.cond.end180_crit_edge, label %cond.false158

cond.end129.cond.end180_crit_edge:                ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end180

cond.false158:                                    ; preds = %cond.end129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr765 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr765)
  %tobool164.not = icmp eq i32 %.pr765, 0
  br i1 %tobool164.not, label %cond.false158.cond.end180_crit_edge, label %cond.false176

cond.false158.cond.end180_crit_edge:              ; preds = %cond.false158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end180

cond.false176:                                    ; preds = %cond.false158
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %.pr765) #4
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false176, %cond.false158.cond.end180_crit_edge, %cond.end129.cond.end180_crit_edge
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add183 = add i32 %45, 1
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %46 = inttoptr i32 %add185 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and196 = and i32 %49, 1048575
  %add197 = or i32 %and196, -18874368
  %50 = inttoptr i32 %add197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 3) #4, !srcloc !26
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool200.not = icmp eq i32 %52, 0
  br i1 %tobool200.not, label %cond.end180.cond.end234_crit_edge, label %cond.false212

cond.end180.cond.end234_crit_edge:                ; preds = %cond.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end234

cond.false212:                                    ; preds = %cond.end180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr767 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr767)
  %tobool218.not = icmp eq i32 %.pr767, 0
  br i1 %tobool218.not, label %cond.false212.cond.end234_crit_edge, label %cond.false230

cond.false212.cond.end234_crit_edge:              ; preds = %cond.false212
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end234

cond.false230:                                    ; preds = %cond.false212
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %.pr767) #4
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false230, %cond.false212.cond.end234_crit_edge, %cond.end180.cond.end234_crit_edge
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add237 = add i32 %57, 1
  %and238 = and i32 %add237, 1048575
  %add239 = or i32 %and238, -18874368
  %58 = inttoptr i32 %add239 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %and250 = and i32 %61, 1048575
  %add251 = or i32 %and250, -18874368
  %62 = inttoptr i32 %add251 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 2) #4, !srcloc !26
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool254.not = icmp eq i32 %64, 0
  br i1 %tobool254.not, label %cond.end234.cond.end288_crit_edge, label %cond.false266

cond.end234.cond.end288_crit_edge:                ; preds = %cond.end234
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end288

cond.false266:                                    ; preds = %cond.end234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr769 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr769)
  %tobool272.not = icmp eq i32 %.pr769, 0
  br i1 %tobool272.not, label %cond.false266.cond.end288_crit_edge, label %cond.false284

cond.false266.cond.end288_crit_edge:              ; preds = %cond.false266
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end288

cond.false284:                                    ; preds = %cond.false266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %.pr769) #4
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false284, %cond.false266.cond.end288_crit_edge, %cond.end234.cond.end288_crit_edge
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add291 = add i32 %69, 1
  %and292 = and i32 %add291, 1048575
  %add293 = or i32 %and292, -18874368
  %70 = inttoptr i32 %add293 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %72 = lshr i8 %35, 4
  %73 = and i8 %47, -16
  %or760 = or i8 %73, %72
  %mul302 = shl i32 %k.0780, 2
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul302
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %or760, ptr %arrayidx, align 1
  %75 = lshr i8 %71, 4
  %76 = and i8 %59, -16
  %or307761 = or i8 %75, %76
  %add310 = or i32 %mul302, 1
  %arrayidx311 = getelementptr i8, ptr %buf, i32 %add310
  %77 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %or307761, ptr %arrayidx311, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add316 = add i32 %79, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %80 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 4) #4, !srcloc !26
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool321.not = icmp eq i32 %82, 0
  br i1 %tobool321.not, label %cond.end288.do.body338_crit_edge, label %cond.false333

cond.end288.do.body338_crit_edge:                 ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body338

cond.false333:                                    ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body338

do.body338:                                       ; preds = %cond.false333, %cond.end288.do.body338_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add342 = add i32 %85, 2
  %and343 = and i32 %add342, 1048575
  %add344 = or i32 %and343, -18874368
  %86 = inttoptr i32 %add344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 5) #4, !srcloc !26
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool347.not = icmp eq i32 %88, 0
  br i1 %tobool347.not, label %do.body338.cond.end381_crit_edge, label %cond.false359

do.body338.cond.end381_crit_edge:                 ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end381

cond.false359:                                    ; preds = %do.body338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  %90 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr771 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr771)
  %tobool365.not = icmp eq i32 %.pr771, 0
  br i1 %tobool365.not, label %cond.false359.cond.end381_crit_edge, label %cond.false377

cond.false359.cond.end381_crit_edge:              ; preds = %cond.false359
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end381

cond.false377:                                    ; preds = %cond.false359
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %.pr771) #4
  br label %cond.end381

cond.end381:                                      ; preds = %cond.false377, %cond.false359.cond.end381_crit_edge, %do.body338.cond.end381_crit_edge
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %add384 = add i32 %93, 1
  %and385 = and i32 %add384, 1048575
  %add386 = or i32 %and385, -18874368
  %94 = inttoptr i32 %add386 to ptr
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %94) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %and397 = and i32 %97, 1048575
  %add398 = or i32 %and397, -18874368
  %98 = inttoptr i32 %add398 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 3) #4, !srcloc !26
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool401.not = icmp eq i32 %100, 0
  br i1 %tobool401.not, label %cond.end381.cond.end435_crit_edge, label %cond.false413

cond.end381.cond.end435_crit_edge:                ; preds = %cond.end381
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end435

cond.false413:                                    ; preds = %cond.end381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr773 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr773)
  %tobool419.not = icmp eq i32 %.pr773, 0
  br i1 %tobool419.not, label %cond.false413.cond.end435_crit_edge, label %cond.false431

cond.false413.cond.end435_crit_edge:              ; preds = %cond.false413
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end435

cond.false431:                                    ; preds = %cond.false413
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %.pr773) #4
  br label %cond.end435

cond.end435:                                      ; preds = %cond.false431, %cond.false413.cond.end435_crit_edge, %cond.end381.cond.end435_crit_edge
  %104 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port, align 4
  %add438 = add i32 %105, 1
  %and439 = and i32 %add438, 1048575
  %add440 = or i32 %and439, -18874368
  %106 = inttoptr i32 %add440 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %and451 = and i32 %109, 1048575
  %add452 = or i32 %and451, -18874368
  %110 = inttoptr i32 %add452 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 1) #4, !srcloc !26
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool455.not = icmp eq i32 %112, 0
  br i1 %tobool455.not, label %cond.end435.cond.end489_crit_edge, label %cond.false467

cond.end435.cond.end489_crit_edge:                ; preds = %cond.end435
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end489

cond.false467:                                    ; preds = %cond.end435
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr775 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr775)
  %tobool473.not = icmp eq i32 %.pr775, 0
  br i1 %tobool473.not, label %cond.false467.cond.end489_crit_edge, label %cond.false485

cond.false467.cond.end489_crit_edge:              ; preds = %cond.false467
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end489

cond.false485:                                    ; preds = %cond.false467
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %.pr775) #4
  br label %cond.end489

cond.end489:                                      ; preds = %cond.false485, %cond.false467.cond.end489_crit_edge, %cond.end435.cond.end489_crit_edge
  %116 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port, align 4
  %add492 = add i32 %117, 1
  %and493 = and i32 %add492, 1048575
  %add494 = or i32 %and493, -18874368
  %118 = inttoptr i32 %add494 to ptr
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %118) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %and505 = and i32 %121, 1048575
  %add506 = or i32 %and505, -18874368
  %122 = inttoptr i32 %add506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 0) #4, !srcloc !26
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool509.not = icmp eq i32 %124, 0
  br i1 %tobool509.not, label %cond.end489.cond.end543_crit_edge, label %cond.false521

cond.end489.cond.end543_crit_edge:                ; preds = %cond.end489
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end543

cond.false521:                                    ; preds = %cond.end489
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  %126 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr777 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr777)
  %tobool527.not = icmp eq i32 %.pr777, 0
  br i1 %tobool527.not, label %cond.false521.cond.end543_crit_edge, label %cond.false539

cond.false521.cond.end543_crit_edge:              ; preds = %cond.false521
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end543

cond.false539:                                    ; preds = %cond.false521
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %.pr777) #4
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false539, %cond.false521.cond.end543_crit_edge, %cond.end489.cond.end543_crit_edge
  %128 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port, align 4
  %add546 = add i32 %129, 1
  %and547 = and i32 %add546, 1048575
  %add548 = or i32 %and547, -18874368
  %130 = inttoptr i32 %add548 to ptr
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %130) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %132 = lshr i8 %131, 4
  %133 = and i8 %119, -16
  %or557762 = or i8 %132, %133
  %add560 = or i32 %mul302, 2
  %arrayidx561 = getelementptr i8, ptr %buf, i32 %add560
  %134 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %or557762, ptr %arrayidx561, align 1
  %135 = lshr i8 %95, 4
  %136 = and i8 %107, -16
  %or565763 = or i8 %136, %135
  %add568 = or i32 %mul302, 3
  %arrayidx569 = getelementptr i8, ptr %buf, i32 %add568
  %137 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %or565763, ptr %arrayidx569, align 1
  %inc = add nuw nsw i32 %k.0780, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %cond.end543.do.body570_crit_edge, label %cond.end543.do.body38_crit_edge

cond.end543.do.body38_crit_edge:                  ; preds = %cond.end543
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

cond.end543.do.body570_crit_edge:                 ; preds = %cond.end543
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body570

do.body570:                                       ; preds = %cond.end543.do.body570_crit_edge, %cond.end36.do.body570_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port, align 4
  %add574 = add i32 %139, 2
  %and575 = and i32 %add574, 1048575
  %add576 = or i32 %and575, -18874368
  %140 = inttoptr i32 %add576 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 4) #4, !srcloc !26
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool579.not = icmp eq i32 %142, 0
  br i1 %tobool579.not, label %do.body570.cond.end595_crit_edge, label %cond.false591

do.body570.cond.end595_crit_edge:                 ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end595

cond.false591:                                    ; preds = %do.body570
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #4
  br label %cond.end595

cond.end595:                                      ; preds = %cond.false591, %do.body570.cond.end595_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -52) #4, !srcloc !26
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.cond.end64_crit_edge, label %cond.false60

cond.end31.cond.end64_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end64

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false60, %cond.end31.cond.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %0 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %1 to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !26
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #4
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %8 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saved_r2, align 4
  %conv15 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add17 = add i32 %11, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv15) #4, !srcloc !26
  %13 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %do.body13.cond.end38_crit_edge, label %cond.false34

do.body13.cond.end38_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end38

cond.false34:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %14) #4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false34, %do.body13.cond.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fit2_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %4 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #7
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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/fit2.c", i32 149, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_fit2__162_150_fit2_init6, !4, !"__initcall__kmod_fit2__162_150_fit2_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/fit2.c", i32 150, i32 1}
!5 = !{ptr @__exitcall_fit2_exit, !6, !"__exitcall_fit2_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/fit2.c", i32 151, i32 1}
!7 = !{ptr @fit2, !8, !"fit2", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/fit2.c", i32 123, i32 27}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/fit2.c", i32 118, i32 9}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fit2_log_adapter._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @fit2_log_adapter._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2152102799}
!26 = !{i64 4531478}
!27 = !{i64 2152103818}
!28 = !{i64 2152104828}
!29 = !{i64 2152105844}
!30 = !{i64 2152106854}
!31 = !{i64 2152107864}
!32 = !{i64 2152108874}
!33 = !{i64 2152109890}
!34 = !{i64 2152110900}
!35 = !{i64 2152111910}
!36 = !{i64 2152112920}
!37 = !{i64 2152113930}
!38 = !{i64 4531873}
!39 = !{i64 2152115625}
!40 = !{i64 2152115893}
!41 = !{i64 2152117588}
!42 = !{i64 2152117856}
!43 = !{i64 2152144857}
!44 = !{i64 2152145867}
!45 = !{i64 2152146877}
!46 = !{i64 2152147908}
!47 = !{i64 2152148918}
!48 = !{i64 2152149955}
!49 = !{i64 2152150965}
!50 = !{i64 2152118901}
!51 = !{i64 2152119920}
!52 = !{i64 2152120930}
!53 = !{i64 2152121940}
!54 = !{i64 2152122950}
!55 = !{i64 2152124645}
!56 = !{i64 2152124913}
!57 = !{i64 2152126608}
!58 = !{i64 2152126876}
!59 = !{i64 2152128571}
!60 = !{i64 2152128839}
!61 = !{i64 2152130534}
!62 = !{i64 2152130860}
!63 = !{i64 2152131870}
!64 = !{i64 2152133565}
!65 = !{i64 2152133833}
!66 = !{i64 2152135528}
!67 = !{i64 2152135796}
!68 = !{i64 2152141552}
!69 = !{i64 2152141820}
!70 = !{i64 2152143515}
!71 = !{i64 2152143841}
!72 = !{i64 2152152660}
!73 = !{i64 2152153613}
!74 = !{i64 2152153890}
!75 = !{i64 2152154933}
!76 = !{i64 2152155976}
