; ModuleID = '/llk/IR_all_yes/drivers/block/paride/on20.c_pt.bc'
source_filename = "../drivers/block/paride/on20.c"
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

@on20 = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"on20\00\00\00\00", i32 0, i32 2, i32 2, i32 1, i32 1, ptr @on20_write_regr, ptr @on20_read_regr, ptr @on20_write_block, ptr @on20_read_block, ptr @on20_connect, ptr @on20_disconnect, ptr null, ptr null, ptr null, ptr @on20_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"on20.file=drivers/block/paride/on20\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"on20.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_on20__162_152_on20_init6 = internal global ptr @on20_init, section ".initcall6.init", align 4
@__exitcall_on20_exit = internal global ptr @on20_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@__const.on20_log_adapter.mode_string = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.1], align 4
@on20_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: on20 %s, OnSpec 90c20 at 0x%x, \00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"on20_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/on20.c\00", [36 x i8] zeroinitializer }, align 32
@on20_log_adapter._entry_ptr = internal global ptr @on20_log_adapter._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@on20_log_adapter._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@on20_log_adapter._entry_ptr.8 = internal global ptr @on20_log_adapter._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [5 x i8] c"on20\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 125, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 116, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 116, i32 44 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 118, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [31 x i8] c"../drivers/block/paride/on20.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 120, i32 9 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_on20_exit, ptr @__initcall__kmod_on20__162_152_on20_init6, ptr @on20_exit, ptr @on20_log_adapter._entry, ptr @on20_log_adapter._entry.6, ptr @on20_log_adapter._entry_ptr, ptr @on20_log_adapter._entry_ptr.8, ptr @on20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on20_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on20_log_adapter._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @on20_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @paride_unregister(ptr noundef nonnull @on20) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @on20_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @on20) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_write_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %regr, 2
  %add = add i32 %cont, 1
  %add1 = add i32 %add, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add2 = add i32 %1, 2
  %and = and i32 %add2, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #4, !srcloc !34
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %cond.false9

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

cond.false9:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #4
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %entry.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and19 = and i32 %7, 1048575
  %add20 = or i32 %and19, -18874368
  %8 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #4, !srcloc !34
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %do.body14.do.body39_crit_edge, label %cond.false34

do.body14.do.body39_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

cond.false34:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body14.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add43 = add i32 %13, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %14 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 5) #4, !srcloc !34
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool48.not = icmp eq i32 %16, 0
  br i1 %tobool48.not, label %do.body39.do.body64_crit_edge, label %cond.false59

do.body39.do.body64_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

cond.false59:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body64

do.body64:                                        ; preds = %cond.false59, %do.body39.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add68 = add i32 %19, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %20 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 13) #4, !srcloc !34
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool73.not = icmp eq i32 %22, 0
  br i1 %tobool73.not, label %do.body64.do.body89_crit_edge, label %cond.false84

do.body64.do.body89_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

cond.false84:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body64.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add93 = add i32 %25, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %26 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #4, !srcloc !34
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool98.not = icmp eq i32 %28, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add118 = add i32 %31, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %32 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 13) #4, !srcloc !34
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool123.not = icmp eq i32 %34, 0
  br i1 %tobool123.not, label %do.body114.do.body139_crit_edge, label %cond.false134

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add143 = add i32 %37, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %38 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 5) #4, !srcloc !34
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool148.not = icmp eq i32 %40, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add168 = add i32 %43, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %44 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #4, !srcloc !34
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool173.not = icmp eq i32 %46, 0
  br i1 %tobool173.not, label %do.body164.do.body189_crit_edge, label %cond.false184

do.body164.do.body189_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body189

cond.false184:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  br label %do.body189

do.body189:                                       ; preds = %cond.false184, %do.body164.do.body189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add193 = add i32 %49, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %50 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #4, !srcloc !34
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool198.not = icmp eq i32 %52, 0
  br i1 %tobool198.not, label %do.body189.do.body214_crit_edge, label %cond.false209

do.body189.do.body214_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body214

cond.false209:                                    ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %do.body214

do.body214:                                       ; preds = %cond.false209, %do.body189.do.body214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %add1 to i8
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and219 = and i32 %55, 1048575
  %add220 = or i32 %and219, -18874368
  %56 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv) #4, !srcloc !34
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool223.not = icmp eq i32 %58, 0
  br i1 %tobool223.not, label %do.body214.do.body240_crit_edge, label %cond.false235

do.body214.do.body240_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body240

cond.false235:                                    ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %do.body240

do.body240:                                       ; preds = %cond.false235, %do.body214.do.body240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add244 = add i32 %61, 2
  %and245 = and i32 %add244, 1048575
  %add246 = or i32 %and245, -18874368
  %62 = inttoptr i32 %add246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #4, !srcloc !34
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool249.not = icmp eq i32 %64, 0
  br i1 %tobool249.not, label %do.body240.do.body266_crit_edge, label %cond.false261

do.body240.do.body266_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body266

cond.false261:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body240.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add270 = add i32 %67, 2
  %and271 = and i32 %add270, 1048575
  %add272 = or i32 %and271, -18874368
  %68 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 7) #4, !srcloc !34
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool275.not = icmp eq i32 %70, 0
  br i1 %tobool275.not, label %do.body266.do.body292_crit_edge, label %cond.false287

do.body266.do.body292_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body292

cond.false287:                                    ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #4
  br label %do.body292

do.body292:                                       ; preds = %cond.false287, %do.body266.do.body292_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add296 = add i32 %73, 2
  %and297 = and i32 %add296, 1048575
  %add298 = or i32 %and297, -18874368
  %74 = inttoptr i32 %add298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #4, !srcloc !34
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool301.not = icmp eq i32 %76, 0
  br i1 %tobool301.not, label %do.body292.do.body318_crit_edge, label %cond.false313

do.body292.do.body318_crit_edge:                  ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body318

cond.false313:                                    ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #4
  br label %do.body318

do.body318:                                       ; preds = %cond.false313, %do.body292.do.body318_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add322 = add i32 %79, 2
  %and323 = and i32 %add322, 1048575
  %add324 = or i32 %and323, -18874368
  %80 = inttoptr i32 %add324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 4) #4, !srcloc !34
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool327.not = icmp eq i32 %82, 0
  br i1 %tobool327.not, label %do.body318.do.body344_crit_edge, label %cond.false339

do.body318.do.body344_crit_edge:                  ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body344

cond.false339:                                    ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body344

do.body344:                                       ; preds = %cond.false339, %do.body318.do.body344_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add348 = add i32 %85, 2
  %and349 = and i32 %add348, 1048575
  %add350 = or i32 %and349, -18874368
  %86 = inttoptr i32 %add350 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #4, !srcloc !34
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool353.not = icmp eq i32 %88, 0
  br i1 %tobool353.not, label %do.body344.do.body370_crit_edge, label %cond.false365

do.body344.do.body370_crit_edge:                  ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body370

cond.false365:                                    ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  br label %do.body370

do.body370:                                       ; preds = %cond.false365, %do.body344.do.body370_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and375 = and i32 %91, 1048575
  %add376 = or i32 %and375, -18874368
  %92 = inttoptr i32 %add376 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 0) #4, !srcloc !34
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool379.not = icmp eq i32 %94, 0
  br i1 %tobool379.not, label %do.body370.do.body396_crit_edge, label %cond.false391

do.body370.do.body396_crit_edge:                  ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body396

cond.false391:                                    ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #4
  br label %do.body396

do.body396:                                       ; preds = %cond.false391, %do.body370.do.body396_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add400 = add i32 %97, 2
  %and401 = and i32 %add400, 1048575
  %add402 = or i32 %and401, -18874368
  %98 = inttoptr i32 %add402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 5) #4, !srcloc !34
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool405.not = icmp eq i32 %100, 0
  br i1 %tobool405.not, label %do.body396.do.body422_crit_edge, label %cond.false417

do.body396.do.body422_crit_edge:                  ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body422

cond.false417:                                    ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  br label %do.body422

do.body422:                                       ; preds = %cond.false417, %do.body396.do.body422_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add426 = add i32 %103, 2
  %and427 = and i32 %add426, 1048575
  %add428 = or i32 %and427, -18874368
  %104 = inttoptr i32 %add428 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 13) #4, !srcloc !34
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool431.not = icmp eq i32 %106, 0
  br i1 %tobool431.not, label %do.body422.do.body448_crit_edge, label %cond.false443

do.body422.do.body448_crit_edge:                  ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body448

cond.false443:                                    ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #4
  br label %do.body448

do.body448:                                       ; preds = %cond.false443, %do.body422.do.body448_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add452 = add i32 %109, 2
  %and453 = and i32 %add452, 1048575
  %add454 = or i32 %and453, -18874368
  %110 = inttoptr i32 %add454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 5) #4, !srcloc !34
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool457.not = icmp eq i32 %112, 0
  br i1 %tobool457.not, label %do.body448.do.body474_crit_edge, label %cond.false469

do.body448.do.body474_crit_edge:                  ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body474

cond.false469:                                    ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  br label %do.body474

do.body474:                                       ; preds = %cond.false469, %do.body448.do.body474_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add478 = add i32 %115, 2
  %and479 = and i32 %add478, 1048575
  %add480 = or i32 %and479, -18874368
  %116 = inttoptr i32 %add480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 13) #4, !srcloc !34
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool483.not = icmp eq i32 %118, 0
  br i1 %tobool483.not, label %do.body474.do.body500_crit_edge, label %cond.false495

do.body474.do.body500_crit_edge:                  ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body500

cond.false495:                                    ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #4
  br label %do.body500

do.body500:                                       ; preds = %cond.false495, %do.body474.do.body500_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add504 = add i32 %121, 2
  %and505 = and i32 %add504, 1048575
  %add506 = or i32 %and505, -18874368
  %122 = inttoptr i32 %add506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 5) #4, !srcloc !34
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool509.not = icmp eq i32 %124, 0
  br i1 %tobool509.not, label %do.body500.do.body526_crit_edge, label %cond.false521

do.body500.do.body526_crit_edge:                  ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body526

cond.false521:                                    ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  br label %do.body526

do.body526:                                       ; preds = %cond.false521, %do.body500.do.body526_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add530 = add i32 %127, 2
  %and531 = and i32 %add530, 1048575
  %add532 = or i32 %and531, -18874368
  %128 = inttoptr i32 %add532 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #4, !srcloc !34
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool535.not = icmp eq i32 %130, 0
  br i1 %tobool535.not, label %do.body526.do.body552_crit_edge, label %cond.false547

do.body526.do.body552_crit_edge:                  ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body552

cond.false547:                                    ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #4
  br label %do.body552

do.body552:                                       ; preds = %cond.false547, %do.body526.do.body552_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add556 = add i32 %133, 2
  %and557 = and i32 %add556, 1048575
  %add558 = or i32 %and557, -18874368
  %134 = inttoptr i32 %add558 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 4) #4, !srcloc !34
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool561.not = icmp eq i32 %136, 0
  br i1 %tobool561.not, label %do.body552.do.body578_crit_edge, label %cond.false573

do.body552.do.body578_crit_edge:                  ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body578

cond.false573:                                    ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #4
  br label %do.body578

do.body578:                                       ; preds = %cond.false573, %do.body552.do.body578_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %conv581 = trunc i32 %val to i8
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port, align 4
  %and584 = and i32 %139, 1048575
  %add585 = or i32 %and584, -18874368
  %140 = inttoptr i32 %add585 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 %conv581) #4, !srcloc !34
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool588.not = icmp eq i32 %142, 0
  br i1 %tobool588.not, label %do.body578.do.body605_crit_edge, label %cond.false600

do.body578.do.body605_crit_edge:                  ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body605

cond.false600:                                    ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #4
  br label %do.body605

do.body605:                                       ; preds = %cond.false600, %do.body578.do.body605_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port, align 4
  %add609 = add i32 %145, 2
  %and610 = and i32 %add609, 1048575
  %add611 = or i32 %and610, -18874368
  %146 = inttoptr i32 %add611 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 5) #4, !srcloc !34
  %147 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool614.not = icmp eq i32 %148, 0
  br i1 %tobool614.not, label %do.body605.do.body631_crit_edge, label %cond.false626

do.body605.do.body631_crit_edge:                  ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body631

cond.false626:                                    ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #4
  br label %do.body631

do.body631:                                       ; preds = %cond.false626, %do.body605.do.body631_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port, align 4
  %add635 = add i32 %151, 2
  %and636 = and i32 %add635, 1048575
  %add637 = or i32 %and636, -18874368
  %152 = inttoptr i32 %add637 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 7) #4, !srcloc !34
  %153 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool640.not = icmp eq i32 %154, 0
  br i1 %tobool640.not, label %do.body631.do.body657_crit_edge, label %cond.false652

do.body631.do.body657_crit_edge:                  ; preds = %do.body631
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body657

cond.false652:                                    ; preds = %do.body631
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #4
  br label %do.body657

do.body657:                                       ; preds = %cond.false652, %do.body631.do.body657_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %add661 = add i32 %157, 2
  %and662 = and i32 %add661, 1048575
  %add663 = or i32 %and662, -18874368
  %158 = inttoptr i32 %add663 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 5) #4, !srcloc !34
  %159 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool666.not = icmp eq i32 %160, 0
  br i1 %tobool666.not, label %do.body657.do.body683_crit_edge, label %cond.false678

do.body657.do.body683_crit_edge:                  ; preds = %do.body657
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body683

cond.false678:                                    ; preds = %do.body657
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #4
  br label %do.body683

do.body683:                                       ; preds = %cond.false678, %do.body657.do.body683_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %162 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port, align 4
  %add687 = add i32 %163, 2
  %and688 = and i32 %add687, 1048575
  %add689 = or i32 %and688, -18874368
  %164 = inttoptr i32 %add689 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 4) #4, !srcloc !34
  %165 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool692.not = icmp eq i32 %166, 0
  br i1 %tobool692.not, label %do.body683.do.body709_crit_edge, label %cond.false704

do.body683.do.body709_crit_edge:                  ; preds = %do.body683
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body709

cond.false704:                                    ; preds = %do.body683
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %166) #4
  br label %do.body709

do.body709:                                       ; preds = %cond.false704, %do.body683.do.body709_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %168 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port, align 4
  %add713 = add i32 %169, 2
  %and714 = and i32 %add713, 1048575
  %add715 = or i32 %and714, -18874368
  %170 = inttoptr i32 %add715 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 4) #4, !srcloc !34
  %171 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool718.not = icmp eq i32 %172, 0
  br i1 %tobool718.not, label %do.body709.do.body735_crit_edge, label %cond.false730

do.body709.do.body735_crit_edge:                  ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body735

cond.false730:                                    ; preds = %do.body709
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #4
  br label %do.body735

do.body735:                                       ; preds = %cond.false730, %do.body709.do.body735_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %174 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %port, align 4
  %and740 = and i32 %175, 1048575
  %add741 = or i32 %and740, -18874368
  %176 = inttoptr i32 %add741 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 0) #4, !srcloc !34
  %177 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool744.not = icmp eq i32 %178, 0
  br i1 %tobool744.not, label %do.body735.do.body761_crit_edge, label %cond.false756

do.body735.do.body761_crit_edge:                  ; preds = %do.body735
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body761

cond.false756:                                    ; preds = %do.body735
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %179(i32 noundef %178) #4
  br label %do.body761

do.body761:                                       ; preds = %cond.false756, %do.body735.do.body761_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %180 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port, align 4
  %add765 = add i32 %181, 2
  %and766 = and i32 %add765, 1048575
  %add767 = or i32 %and766, -18874368
  %182 = inttoptr i32 %add767 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 5) #4, !srcloc !34
  %183 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool770.not = icmp eq i32 %184, 0
  br i1 %tobool770.not, label %do.body761.do.body787_crit_edge, label %cond.false782

do.body761.do.body787_crit_edge:                  ; preds = %do.body761
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body787

cond.false782:                                    ; preds = %do.body761
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %185(i32 noundef %184) #4
  br label %do.body787

do.body787:                                       ; preds = %cond.false782, %do.body761.do.body787_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %186 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %port, align 4
  %add791 = add i32 %187, 2
  %and792 = and i32 %add791, 1048575
  %add793 = or i32 %and792, -18874368
  %188 = inttoptr i32 %add793 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 13) #4, !srcloc !34
  %189 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool796.not = icmp eq i32 %190, 0
  br i1 %tobool796.not, label %do.body787.do.body813_crit_edge, label %cond.false808

do.body787.do.body813_crit_edge:                  ; preds = %do.body787
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body813

cond.false808:                                    ; preds = %do.body787
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %191(i32 noundef %190) #4
  br label %do.body813

do.body813:                                       ; preds = %cond.false808, %do.body787.do.body813_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %192 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port, align 4
  %add817 = add i32 %193, 2
  %and818 = and i32 %add817, 1048575
  %add819 = or i32 %and818, -18874368
  %194 = inttoptr i32 %add819 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 5) #4, !srcloc !34
  %195 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool822.not = icmp eq i32 %196, 0
  br i1 %tobool822.not, label %do.body813.do.body839_crit_edge, label %cond.false834

do.body813.do.body839_crit_edge:                  ; preds = %do.body813
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body839

cond.false834:                                    ; preds = %do.body813
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #4
  br label %do.body839

do.body839:                                       ; preds = %cond.false834, %do.body813.do.body839_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %198 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port, align 4
  %add843 = add i32 %199, 2
  %and844 = and i32 %add843, 1048575
  %add845 = or i32 %and844, -18874368
  %200 = inttoptr i32 %add845 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 13) #4, !srcloc !34
  %201 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool848.not = icmp eq i32 %202, 0
  br i1 %tobool848.not, label %do.body839.do.body865_crit_edge, label %cond.false860

do.body839.do.body865_crit_edge:                  ; preds = %do.body839
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body865

cond.false860:                                    ; preds = %do.body839
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %203(i32 noundef %202) #4
  br label %do.body865

do.body865:                                       ; preds = %cond.false860, %do.body839.do.body865_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %204 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %port, align 4
  %add869 = add i32 %205, 2
  %and870 = and i32 %add869, 1048575
  %add871 = or i32 %and870, -18874368
  %206 = inttoptr i32 %add871 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 5) #4, !srcloc !34
  %207 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool874.not = icmp eq i32 %208, 0
  br i1 %tobool874.not, label %do.body865.do.body891_crit_edge, label %cond.false886

do.body865.do.body891_crit_edge:                  ; preds = %do.body865
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body891

cond.false886:                                    ; preds = %do.body865
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %208) #4
  br label %do.body891

do.body891:                                       ; preds = %cond.false886, %do.body865.do.body891_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %210 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port, align 4
  %add895 = add i32 %211, 2
  %and896 = and i32 %add895, 1048575
  %add897 = or i32 %and896, -18874368
  %212 = inttoptr i32 %add897 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 4) #4, !srcloc !34
  %213 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool900.not = icmp eq i32 %214, 0
  br i1 %tobool900.not, label %do.body891.do.body917_crit_edge, label %cond.false912

do.body891.do.body917_crit_edge:                  ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body917

cond.false912:                                    ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %215(i32 noundef %214) #4
  br label %do.body917

do.body917:                                       ; preds = %cond.false912, %do.body891.do.body917_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %216 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %port, align 4
  %add921 = add i32 %217, 2
  %and922 = and i32 %add921, 1048575
  %add923 = or i32 %and922, -18874368
  %218 = inttoptr i32 %add923 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 4) #4, !srcloc !34
  %219 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool926.not = icmp eq i32 %220, 0
  br i1 %tobool926.not, label %do.body917.do.body943_crit_edge, label %cond.false938

do.body917.do.body943_crit_edge:                  ; preds = %do.body917
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body943

cond.false938:                                    ; preds = %do.body917
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %221(i32 noundef %220) #4
  br label %do.body943

do.body943:                                       ; preds = %cond.false938, %do.body917.do.body943_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %222 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %port, align 4
  %and949 = and i32 %223, 1048575
  %add950 = or i32 %and949, -18874368
  %224 = inttoptr i32 %add950 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 %conv581) #4, !srcloc !34
  %225 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool953.not = icmp eq i32 %226, 0
  br i1 %tobool953.not, label %do.body943.do.body970_crit_edge, label %cond.false965

do.body943.do.body970_crit_edge:                  ; preds = %do.body943
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body970

cond.false965:                                    ; preds = %do.body943
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #4
  br label %do.body970

do.body970:                                       ; preds = %cond.false965, %do.body943.do.body970_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %228 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %port, align 4
  %add974 = add i32 %229, 2
  %and975 = and i32 %add974, 1048575
  %add976 = or i32 %and975, -18874368
  %230 = inttoptr i32 %add976 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %230, i8 5) #4, !srcloc !34
  %231 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool979.not = icmp eq i32 %232, 0
  br i1 %tobool979.not, label %do.body970.do.body996_crit_edge, label %cond.false991

do.body970.do.body996_crit_edge:                  ; preds = %do.body970
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body996

cond.false991:                                    ; preds = %do.body970
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %233(i32 noundef %232) #4
  br label %do.body996

do.body996:                                       ; preds = %cond.false991, %do.body970.do.body996_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %234 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port, align 4
  %add1000 = add i32 %235, 2
  %and1001 = and i32 %add1000, 1048575
  %add1002 = or i32 %and1001, -18874368
  %236 = inttoptr i32 %add1002 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 7) #4, !srcloc !34
  %237 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool1005.not = icmp eq i32 %238, 0
  br i1 %tobool1005.not, label %do.body996.do.body1022_crit_edge, label %cond.false1017

do.body996.do.body1022_crit_edge:                 ; preds = %do.body996
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1022

cond.false1017:                                   ; preds = %do.body996
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %239(i32 noundef %238) #4
  br label %do.body1022

do.body1022:                                      ; preds = %cond.false1017, %do.body996.do.body1022_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %240 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port, align 4
  %add1026 = add i32 %241, 2
  %and1027 = and i32 %add1026, 1048575
  %add1028 = or i32 %and1027, -18874368
  %242 = inttoptr i32 %add1028 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 5) #4, !srcloc !34
  %243 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool1031.not = icmp eq i32 %244, 0
  br i1 %tobool1031.not, label %do.body1022.do.body1048_crit_edge, label %cond.false1043

do.body1022.do.body1048_crit_edge:                ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1048

cond.false1043:                                   ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %245(i32 noundef %244) #4
  br label %do.body1048

do.body1048:                                      ; preds = %cond.false1043, %do.body1022.do.body1048_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %246 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port, align 4
  %add1052 = add i32 %247, 2
  %and1053 = and i32 %add1052, 1048575
  %add1054 = or i32 %and1053, -18874368
  %248 = inttoptr i32 %add1054 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 4) #4, !srcloc !34
  %249 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool1057.not = icmp eq i32 %250, 0
  br i1 %tobool1057.not, label %do.body1048.cond.end1073_crit_edge, label %cond.false1069

do.body1048.cond.end1073_crit_edge:               ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end1073

cond.false1069:                                   ; preds = %do.body1048
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %251(i32 noundef %250) #4
  br label %cond.end1073

cond.end1073:                                     ; preds = %cond.false1069, %do.body1048.cond.end1073_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @on20_read_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %regr, 2
  %add = add i32 %cont, 1
  %add1 = add i32 %add, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add2 = add i32 %1, 2
  %and = and i32 %add2, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #4, !srcloc !34
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %cond.false9

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

cond.false9:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #4
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %entry.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and19 = and i32 %7, 1048575
  %add20 = or i32 %and19, -18874368
  %8 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #4, !srcloc !34
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %do.body14.do.body39_crit_edge, label %cond.false34

do.body14.do.body39_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

cond.false34:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body39

do.body39:                                        ; preds = %cond.false34, %do.body14.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add43 = add i32 %13, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %14 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 5) #4, !srcloc !34
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool48.not = icmp eq i32 %16, 0
  br i1 %tobool48.not, label %do.body39.do.body64_crit_edge, label %cond.false59

do.body39.do.body64_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

cond.false59:                                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body64

do.body64:                                        ; preds = %cond.false59, %do.body39.do.body64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add68 = add i32 %19, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %20 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 13) #4, !srcloc !34
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool73.not = icmp eq i32 %22, 0
  br i1 %tobool73.not, label %do.body64.do.body89_crit_edge, label %cond.false84

do.body64.do.body89_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body89

cond.false84:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body64.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add93 = add i32 %25, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %26 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #4, !srcloc !34
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool98.not = icmp eq i32 %28, 0
  br i1 %tobool98.not, label %do.body89.do.body114_crit_edge, label %cond.false109

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add118 = add i32 %31, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %32 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 13) #4, !srcloc !34
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool123.not = icmp eq i32 %34, 0
  br i1 %tobool123.not, label %do.body114.do.body139_crit_edge, label %cond.false134

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add143 = add i32 %37, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %38 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 5) #4, !srcloc !34
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool148.not = icmp eq i32 %40, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add168 = add i32 %43, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %44 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #4, !srcloc !34
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool173.not = icmp eq i32 %46, 0
  br i1 %tobool173.not, label %do.body164.do.body189_crit_edge, label %cond.false184

do.body164.do.body189_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body189

cond.false184:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  br label %do.body189

do.body189:                                       ; preds = %cond.false184, %do.body164.do.body189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add193 = add i32 %49, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %50 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #4, !srcloc !34
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool198.not = icmp eq i32 %52, 0
  br i1 %tobool198.not, label %do.body189.do.body214_crit_edge, label %cond.false209

do.body189.do.body214_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body214

cond.false209:                                    ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %do.body214

do.body214:                                       ; preds = %cond.false209, %do.body189.do.body214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %add1 to i8
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and219 = and i32 %55, 1048575
  %add220 = or i32 %and219, -18874368
  %56 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv) #4, !srcloc !34
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool223.not = icmp eq i32 %58, 0
  br i1 %tobool223.not, label %do.body214.do.body240_crit_edge, label %cond.false235

do.body214.do.body240_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body240

cond.false235:                                    ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %do.body240

do.body240:                                       ; preds = %cond.false235, %do.body214.do.body240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add244 = add i32 %61, 2
  %and245 = and i32 %add244, 1048575
  %add246 = or i32 %and245, -18874368
  %62 = inttoptr i32 %add246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #4, !srcloc !34
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool249.not = icmp eq i32 %64, 0
  br i1 %tobool249.not, label %do.body240.do.body266_crit_edge, label %cond.false261

do.body240.do.body266_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body266

cond.false261:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body240.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add270 = add i32 %67, 2
  %and271 = and i32 %add270, 1048575
  %add272 = or i32 %and271, -18874368
  %68 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 7) #4, !srcloc !34
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool275.not = icmp eq i32 %70, 0
  br i1 %tobool275.not, label %do.body266.do.body292_crit_edge, label %cond.false287

do.body266.do.body292_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body292

cond.false287:                                    ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #4
  br label %do.body292

do.body292:                                       ; preds = %cond.false287, %do.body266.do.body292_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add296 = add i32 %73, 2
  %and297 = and i32 %add296, 1048575
  %add298 = or i32 %and297, -18874368
  %74 = inttoptr i32 %add298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #4, !srcloc !34
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool301.not = icmp eq i32 %76, 0
  br i1 %tobool301.not, label %do.body292.do.body318_crit_edge, label %cond.false313

do.body292.do.body318_crit_edge:                  ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body318

cond.false313:                                    ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #4
  br label %do.body318

do.body318:                                       ; preds = %cond.false313, %do.body292.do.body318_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add322 = add i32 %79, 2
  %and323 = and i32 %add322, 1048575
  %add324 = or i32 %and323, -18874368
  %80 = inttoptr i32 %add324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 4) #4, !srcloc !34
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool327.not = icmp eq i32 %82, 0
  br i1 %tobool327.not, label %do.body318.do.body344_crit_edge, label %cond.false339

do.body318.do.body344_crit_edge:                  ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body344

cond.false339:                                    ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body344

do.body344:                                       ; preds = %cond.false339, %do.body318.do.body344_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add348 = add i32 %85, 2
  %and349 = and i32 %add348, 1048575
  %add350 = or i32 %and349, -18874368
  %86 = inttoptr i32 %add350 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #4, !srcloc !34
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool353.not = icmp eq i32 %88, 0
  br i1 %tobool353.not, label %do.body344.do.body370_crit_edge, label %cond.false365

do.body344.do.body370_crit_edge:                  ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body370

cond.false365:                                    ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  br label %do.body370

do.body370:                                       ; preds = %cond.false365, %do.body344.do.body370_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and375 = and i32 %91, 1048575
  %add376 = or i32 %and375, -18874368
  %92 = inttoptr i32 %add376 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 0) #4, !srcloc !34
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool379.not = icmp eq i32 %94, 0
  br i1 %tobool379.not, label %do.body370.do.body396_crit_edge, label %cond.false391

do.body370.do.body396_crit_edge:                  ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body396

cond.false391:                                    ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #4
  br label %do.body396

do.body396:                                       ; preds = %cond.false391, %do.body370.do.body396_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add400 = add i32 %97, 2
  %and401 = and i32 %add400, 1048575
  %add402 = or i32 %and401, -18874368
  %98 = inttoptr i32 %add402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 5) #4, !srcloc !34
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool405.not = icmp eq i32 %100, 0
  br i1 %tobool405.not, label %do.body396.do.body422_crit_edge, label %cond.false417

do.body396.do.body422_crit_edge:                  ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body422

cond.false417:                                    ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  br label %do.body422

do.body422:                                       ; preds = %cond.false417, %do.body396.do.body422_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add426 = add i32 %103, 2
  %and427 = and i32 %add426, 1048575
  %add428 = or i32 %and427, -18874368
  %104 = inttoptr i32 %add428 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 13) #4, !srcloc !34
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool431.not = icmp eq i32 %106, 0
  br i1 %tobool431.not, label %do.body422.do.body448_crit_edge, label %cond.false443

do.body422.do.body448_crit_edge:                  ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body448

cond.false443:                                    ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #4
  br label %do.body448

do.body448:                                       ; preds = %cond.false443, %do.body422.do.body448_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add452 = add i32 %109, 2
  %and453 = and i32 %add452, 1048575
  %add454 = or i32 %and453, -18874368
  %110 = inttoptr i32 %add454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 5) #4, !srcloc !34
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool457.not = icmp eq i32 %112, 0
  br i1 %tobool457.not, label %do.body448.do.body474_crit_edge, label %cond.false469

do.body448.do.body474_crit_edge:                  ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body474

cond.false469:                                    ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  br label %do.body474

do.body474:                                       ; preds = %cond.false469, %do.body448.do.body474_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add478 = add i32 %115, 2
  %and479 = and i32 %add478, 1048575
  %add480 = or i32 %and479, -18874368
  %116 = inttoptr i32 %add480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 13) #4, !srcloc !34
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool483.not = icmp eq i32 %118, 0
  br i1 %tobool483.not, label %do.body474.do.body500_crit_edge, label %cond.false495

do.body474.do.body500_crit_edge:                  ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body500

cond.false495:                                    ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #4
  br label %do.body500

do.body500:                                       ; preds = %cond.false495, %do.body474.do.body500_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add504 = add i32 %121, 2
  %and505 = and i32 %add504, 1048575
  %add506 = or i32 %and505, -18874368
  %122 = inttoptr i32 %add506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 5) #4, !srcloc !34
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool509.not = icmp eq i32 %124, 0
  br i1 %tobool509.not, label %do.body500.do.body526_crit_edge, label %cond.false521

do.body500.do.body526_crit_edge:                  ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body526

cond.false521:                                    ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  br label %do.body526

do.body526:                                       ; preds = %cond.false521, %do.body500.do.body526_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add530 = add i32 %127, 2
  %and531 = and i32 %add530, 1048575
  %add532 = or i32 %and531, -18874368
  %128 = inttoptr i32 %add532 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #4, !srcloc !34
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool535.not = icmp eq i32 %130, 0
  br i1 %tobool535.not, label %do.body526.cond.end551_crit_edge, label %cond.false547

do.body526.cond.end551_crit_edge:                 ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end551

cond.false547:                                    ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #4
  br label %cond.end551

cond.end551:                                      ; preds = %cond.false547, %do.body526.cond.end551_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %132 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mode, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %133, label %cond.end551.cleanup_crit_edge [
    i32 0, label %do.body552
    i32 1, label %do.body843
  ]

cond.end551.cleanup_crit_edge:                    ; preds = %cond.end551
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body552:                                       ; preds = %cond.end551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %135 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port, align 4
  %add556 = add i32 %136, 2
  %and557 = and i32 %add556, 1048575
  %add558 = or i32 %and557, -18874368
  %137 = inttoptr i32 %add558 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 4) #4, !srcloc !34
  %138 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool561.not = icmp eq i32 %139, 0
  br i1 %tobool561.not, label %do.body552.do.body578_crit_edge, label %cond.false573

do.body552.do.body578_crit_edge:                  ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body578

cond.false573:                                    ; preds = %do.body552
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #4
  br label %do.body578

do.body578:                                       ; preds = %cond.false573, %do.body552.do.body578_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %141 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port, align 4
  %add582 = add i32 %142, 2
  %and583 = and i32 %add582, 1048575
  %add584 = or i32 %and583, -18874368
  %143 = inttoptr i32 %add584 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 6) #4, !srcloc !34
  %144 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool587.not = icmp eq i32 %145, 0
  br i1 %tobool587.not, label %do.body578.cond.end621_crit_edge, label %cond.false599

do.body578.cond.end621_crit_edge:                 ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end621

cond.false599:                                    ; preds = %do.body578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #4
  %147 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool605.not = icmp eq i32 %.pr, 0
  br i1 %tobool605.not, label %cond.false599.cond.end621_crit_edge, label %cond.false617

cond.false599.cond.end621_crit_edge:              ; preds = %cond.false599
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end621

cond.false617:                                    ; preds = %cond.false599
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %.pr) #4
  br label %cond.end621

cond.end621:                                      ; preds = %cond.false617, %cond.false599.cond.end621_crit_edge, %do.body578.cond.end621_crit_edge
  %149 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port, align 4
  %add623 = add i32 %150, 1
  %and624 = and i32 %add623, 1048575
  %add625 = or i32 %and624, -18874368
  %151 = inttoptr i32 %add625 to ptr
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %151) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %153 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port, align 4
  %add634 = add i32 %154, 2
  %and635 = and i32 %add634, 1048575
  %add636 = or i32 %and635, -18874368
  %155 = inttoptr i32 %add636 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %155, i8 4) #4, !srcloc !34
  %156 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool639.not = icmp eq i32 %157, 0
  br i1 %tobool639.not, label %cond.end621.do.body656_crit_edge, label %cond.false651

cond.end621.do.body656_crit_edge:                 ; preds = %cond.end621
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body656

cond.false651:                                    ; preds = %cond.end621
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %157) #4
  br label %do.body656

do.body656:                                       ; preds = %cond.false651, %cond.end621.do.body656_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %add660 = add i32 %160, 2
  %and661 = and i32 %add660, 1048575
  %add662 = or i32 %and661, -18874368
  %161 = inttoptr i32 %add662 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 6) #4, !srcloc !34
  %162 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool665.not = icmp eq i32 %163, 0
  br i1 %tobool665.not, label %do.body656.cond.end699_crit_edge, label %cond.false677

do.body656.cond.end699_crit_edge:                 ; preds = %do.body656
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end699

cond.false677:                                    ; preds = %do.body656
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #4
  %165 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr1278 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1278)
  %tobool683.not = icmp eq i32 %.pr1278, 0
  br i1 %tobool683.not, label %cond.false677.cond.end699_crit_edge, label %cond.false695

cond.false677.cond.end699_crit_edge:              ; preds = %cond.false677
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end699

cond.false695:                                    ; preds = %cond.false677
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %.pr1278) #4
  br label %cond.end699

cond.end699:                                      ; preds = %cond.false695, %cond.false677.cond.end699_crit_edge, %do.body656.cond.end699_crit_edge
  %167 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port, align 4
  %add702 = add i32 %168, 1
  %and703 = and i32 %add702, 1048575
  %add704 = or i32 %and703, -18874368
  %169 = inttoptr i32 %add704 to ptr
  %170 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %169) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port, align 4
  %add714 = add i32 %172, 2
  %and715 = and i32 %add714, 1048575
  %add716 = or i32 %and715, -18874368
  %173 = inttoptr i32 %add716 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 4) #4, !srcloc !34
  %174 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool719.not = icmp eq i32 %175, 0
  br i1 %tobool719.not, label %cond.end699.do.body736_crit_edge, label %cond.false731

cond.end699.do.body736_crit_edge:                 ; preds = %cond.end699
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body736

cond.false731:                                    ; preds = %cond.end699
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #4
  br label %do.body736

do.body736:                                       ; preds = %cond.false731, %cond.end699.do.body736_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %177 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port, align 4
  %add740 = add i32 %178, 2
  %and741 = and i32 %add740, 1048575
  %add742 = or i32 %and741, -18874368
  %179 = inttoptr i32 %add742 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 6) #4, !srcloc !34
  %180 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool745.not = icmp eq i32 %181, 0
  br i1 %tobool745.not, label %do.body736.do.body762_crit_edge, label %cond.false757

do.body736.do.body762_crit_edge:                  ; preds = %do.body736
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body762

cond.false757:                                    ; preds = %do.body736
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %181) #4
  br label %do.body762

do.body762:                                       ; preds = %cond.false757, %do.body736.do.body762_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %183 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port, align 4
  %add766 = add i32 %184, 2
  %and767 = and i32 %add766, 1048575
  %add768 = or i32 %and767, -18874368
  %185 = inttoptr i32 %add768 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 4) #4, !srcloc !34
  %186 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool771.not = icmp eq i32 %187, 0
  br i1 %tobool771.not, label %do.body762.do.body788_crit_edge, label %cond.false783

do.body762.do.body788_crit_edge:                  ; preds = %do.body762
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body788

cond.false783:                                    ; preds = %do.body762
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #4
  br label %do.body788

do.body788:                                       ; preds = %cond.false783, %do.body762.do.body788_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %189 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port, align 4
  %add792 = add i32 %190, 2
  %and793 = and i32 %add792, 1048575
  %add794 = or i32 %and793, -18874368
  %191 = inttoptr i32 %add794 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %191, i8 6) #4, !srcloc !34
  %192 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool797.not = icmp eq i32 %193, 0
  br i1 %tobool797.not, label %do.body788.do.body814_crit_edge, label %cond.false809

do.body788.do.body814_crit_edge:                  ; preds = %do.body788
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body814

cond.false809:                                    ; preds = %do.body788
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %194(i32 noundef %193) #4
  br label %do.body814

do.body814:                                       ; preds = %cond.false809, %do.body788.do.body814_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  tail call void @arm_heavy_mb() #4
  %195 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port, align 4
  %add818 = add i32 %196, 2
  %and819 = and i32 %add818, 1048575
  %add820 = or i32 %and819, -18874368
  %197 = inttoptr i32 %add820 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 4) #4, !srcloc !34
  %198 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool823.not = icmp eq i32 %199, 0
  br i1 %tobool823.not, label %do.body814.cond.end839_crit_edge, label %cond.false835

do.body814.cond.end839_crit_edge:                 ; preds = %do.body814
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end839

cond.false835:                                    ; preds = %do.body814
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %200(i32 noundef %199) #4
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false835, %do.body814.cond.end839_crit_edge
  %201 = lshr i8 %152, 4
  %202 = and i8 %170, -16
  %or1276 = or i8 %202, %201
  %or = zext i8 %or1276 to i32
  br label %cleanup

do.body843:                                       ; preds = %cond.end551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %203 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port, align 4
  %add847 = add i32 %204, 2
  %and848 = and i32 %add847, 1048575
  %add849 = or i32 %and848, -18874368
  %205 = inttoptr i32 %add849 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 4) #4, !srcloc !34
  %206 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool852.not = icmp eq i32 %207, 0
  br i1 %tobool852.not, label %do.body843.do.body869_crit_edge, label %cond.false864

do.body843.do.body869_crit_edge:                  ; preds = %do.body843
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body869

cond.false864:                                    ; preds = %do.body843
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #4
  br label %do.body869

do.body869:                                       ; preds = %cond.false864, %do.body843.do.body869_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %209 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port, align 4
  %add873 = add i32 %210, 2
  %and874 = and i32 %add873, 1048575
  %add875 = or i32 %and874, -18874368
  %211 = inttoptr i32 %add875 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 38) #4, !srcloc !34
  %212 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool878.not = icmp eq i32 %213, 0
  br i1 %tobool878.not, label %do.body869.cond.end912_crit_edge, label %cond.false890

do.body869.cond.end912_crit_edge:                 ; preds = %do.body869
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end912

cond.false890:                                    ; preds = %do.body869
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #4
  %215 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pr1280 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1280)
  %tobool896.not = icmp eq i32 %.pr1280, 0
  br i1 %tobool896.not, label %cond.false890.cond.end912_crit_edge, label %cond.false908

cond.false890.cond.end912_crit_edge:              ; preds = %cond.false890
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end912

cond.false908:                                    ; preds = %cond.false890
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %216(i32 noundef %.pr1280) #4
  br label %cond.end912

cond.end912:                                      ; preds = %cond.false908, %cond.false890.cond.end912_crit_edge, %do.body869.cond.end912_crit_edge
  %217 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %port, align 4
  %and916 = and i32 %218, 1048575
  %add917 = or i32 %and916, -18874368
  %219 = inttoptr i32 %add917 to ptr
  %220 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %219) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %conv921 = zext i8 %220 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %221 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port, align 4
  %add927 = add i32 %222, 2
  %and928 = and i32 %add927, 1048575
  %add929 = or i32 %and928, -18874368
  %223 = inttoptr i32 %add929 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 4) #4, !srcloc !34
  %224 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool932.not = icmp eq i32 %225, 0
  br i1 %tobool932.not, label %cond.end912.do.body949_crit_edge, label %cond.false944

cond.end912.do.body949_crit_edge:                 ; preds = %cond.end912
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body949

cond.false944:                                    ; preds = %cond.end912
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #4
  br label %do.body949

do.body949:                                       ; preds = %cond.false944, %cond.end912.do.body949_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %227 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port, align 4
  %add953 = add i32 %228, 2
  %and954 = and i32 %add953, 1048575
  %add955 = or i32 %and954, -18874368
  %229 = inttoptr i32 %add955 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 38) #4, !srcloc !34
  %230 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool958.not = icmp eq i32 %231, 0
  br i1 %tobool958.not, label %do.body949.do.body975_crit_edge, label %cond.false970

do.body949.do.body975_crit_edge:                  ; preds = %do.body949
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body975

cond.false970:                                    ; preds = %do.body949
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #4
  br label %do.body975

do.body975:                                       ; preds = %cond.false970, %do.body949.do.body975_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %233 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port, align 4
  %add979 = add i32 %234, 2
  %and980 = and i32 %add979, 1048575
  %add981 = or i32 %and980, -18874368
  %235 = inttoptr i32 %add981 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 4) #4, !srcloc !34
  %236 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool984.not = icmp eq i32 %237, 0
  br i1 %tobool984.not, label %do.body975.cleanup_crit_edge, label %cond.false996

do.body975.cleanup_crit_edge:                     ; preds = %do.body975
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false996:                                    ; preds = %do.body975
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false996, %do.body975.cleanup_crit_edge, %cond.end839, %cond.end551.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %cond.end839 ], [ %conv921, %do.body975.cleanup_crit_edge ], [ %conv921, %cond.false996 ], [ -1, %cond.end551.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_write_block(ptr noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and17 = and i32 %7, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #4, !srcloc !34
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 5) #4, !srcloc !34
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add66 = add i32 %19, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %20 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 13) #4, !srcloc !34
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add91 = add i32 %25, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %26 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #4, !srcloc !34
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool96.not = icmp eq i32 %28, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add116 = add i32 %31, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %32 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 13) #4, !srcloc !34
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool121.not = icmp eq i32 %34, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #4
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add141 = add i32 %37, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %38 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 5) #4, !srcloc !34
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool146.not = icmp eq i32 %40, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add166 = add i32 %43, 2
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %44 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #4, !srcloc !34
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool171.not = icmp eq i32 %46, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add191 = add i32 %49, 2
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %50 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #4, !srcloc !34
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool196.not = icmp eq i32 %52, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and217 = and i32 %55, 1048575
  %add218 = or i32 %and217, -18874368
  %56 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 1) #4, !srcloc !34
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool221.not = icmp eq i32 %58, 0
  br i1 %tobool221.not, label %do.body212.do.body237_crit_edge, label %cond.false232

do.body212.do.body237_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body237

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %do.body237

do.body237:                                       ; preds = %cond.false232, %do.body212.do.body237_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add241 = add i32 %61, 2
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %62 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #4, !srcloc !34
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool246.not = icmp eq i32 %64, 0
  br i1 %tobool246.not, label %do.body237.do.body262_crit_edge, label %cond.false257

do.body237.do.body262_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body262

cond.false257:                                    ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %do.body262

do.body262:                                       ; preds = %cond.false257, %do.body237.do.body262_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add266 = add i32 %67, 2
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %68 = inttoptr i32 %add268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 7) #4, !srcloc !34
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool271.not = icmp eq i32 %70, 0
  br i1 %tobool271.not, label %do.body262.do.body287_crit_edge, label %cond.false282

do.body262.do.body287_crit_edge:                  ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body287

cond.false282:                                    ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #4
  br label %do.body287

do.body287:                                       ; preds = %cond.false282, %do.body262.do.body287_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add291 = add i32 %73, 2
  %and292 = and i32 %add291, 1048575
  %add293 = or i32 %and292, -18874368
  %74 = inttoptr i32 %add293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #4, !srcloc !34
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool296.not = icmp eq i32 %76, 0
  br i1 %tobool296.not, label %do.body287.do.body312_crit_edge, label %cond.false307

do.body287.do.body312_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body312

cond.false307:                                    ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #4
  br label %do.body312

do.body312:                                       ; preds = %cond.false307, %do.body287.do.body312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add316 = add i32 %79, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %80 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 4) #4, !srcloc !34
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool321.not = icmp eq i32 %82, 0
  br i1 %tobool321.not, label %do.body312.do.body337_crit_edge, label %cond.false332

do.body312.do.body337_crit_edge:                  ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body337

cond.false332:                                    ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body312.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add341 = add i32 %85, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %86 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #4, !srcloc !34
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool346.not = icmp eq i32 %88, 0
  br i1 %tobool346.not, label %do.body337.do.body362_crit_edge, label %cond.false357

do.body337.do.body362_crit_edge:                  ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body362

cond.false357:                                    ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %do.body337.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and367 = and i32 %91, 1048575
  %add368 = or i32 %and367, -18874368
  %92 = inttoptr i32 %add368 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 0) #4, !srcloc !34
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool371.not = icmp eq i32 %94, 0
  br i1 %tobool371.not, label %do.body362.do.body387_crit_edge, label %cond.false382

do.body362.do.body387_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body387

cond.false382:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #4
  br label %do.body387

do.body387:                                       ; preds = %cond.false382, %do.body362.do.body387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add391 = add i32 %97, 2
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %98 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 5) #4, !srcloc !34
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool396.not = icmp eq i32 %100, 0
  br i1 %tobool396.not, label %do.body387.do.body412_crit_edge, label %cond.false407

do.body387.do.body412_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body412

cond.false407:                                    ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body387.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add416 = add i32 %103, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %104 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 13) #4, !srcloc !34
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool421.not = icmp eq i32 %106, 0
  br i1 %tobool421.not, label %do.body412.do.body437_crit_edge, label %cond.false432

do.body412.do.body437_crit_edge:                  ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body437

cond.false432:                                    ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #4
  br label %do.body437

do.body437:                                       ; preds = %cond.false432, %do.body412.do.body437_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add441 = add i32 %109, 2
  %and442 = and i32 %add441, 1048575
  %add443 = or i32 %and442, -18874368
  %110 = inttoptr i32 %add443 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 5) #4, !srcloc !34
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool446.not = icmp eq i32 %112, 0
  br i1 %tobool446.not, label %do.body437.do.body462_crit_edge, label %cond.false457

do.body437.do.body462_crit_edge:                  ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body462

cond.false457:                                    ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  br label %do.body462

do.body462:                                       ; preds = %cond.false457, %do.body437.do.body462_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add466 = add i32 %115, 2
  %and467 = and i32 %add466, 1048575
  %add468 = or i32 %and467, -18874368
  %116 = inttoptr i32 %add468 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 13) #4, !srcloc !34
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool471.not = icmp eq i32 %118, 0
  br i1 %tobool471.not, label %do.body462.do.body487_crit_edge, label %cond.false482

do.body462.do.body487_crit_edge:                  ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body487

cond.false482:                                    ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #4
  br label %do.body487

do.body487:                                       ; preds = %cond.false482, %do.body462.do.body487_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add491 = add i32 %121, 2
  %and492 = and i32 %add491, 1048575
  %add493 = or i32 %and492, -18874368
  %122 = inttoptr i32 %add493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 5) #4, !srcloc !34
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool496.not = icmp eq i32 %124, 0
  br i1 %tobool496.not, label %do.body487.do.body512_crit_edge, label %cond.false507

do.body487.do.body512_crit_edge:                  ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body512

cond.false507:                                    ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  br label %do.body512

do.body512:                                       ; preds = %cond.false507, %do.body487.do.body512_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add516 = add i32 %127, 2
  %and517 = and i32 %add516, 1048575
  %add518 = or i32 %and517, -18874368
  %128 = inttoptr i32 %add518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #4, !srcloc !34
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool521.not = icmp eq i32 %130, 0
  br i1 %tobool521.not, label %do.body512.cond.end536_crit_edge, label %cond.false532

do.body512.cond.end536_crit_edge:                 ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end536

cond.false532:                                    ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #4
  br label %cond.end536

cond.end536:                                      ; preds = %cond.false532, %do.body512.cond.end536_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp537820 = icmp sgt i32 %count, 0
  br i1 %cmp537820, label %cond.end536.do.body538_crit_edge, label %cond.end536.do.body613_crit_edge

cond.end536.do.body613_crit_edge:                 ; preds = %cond.end536
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body613

cond.end536.do.body538_crit_edge:                 ; preds = %cond.end536
  br label %do.body538

do.body538:                                       ; preds = %for.inc.do.body538_crit_edge, %cond.end536.do.body538_crit_edge
  %k.0821 = phi i32 [ %inc, %for.inc.do.body538_crit_edge ], [ 0, %cond.end536.do.body538_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add542 = add i32 %133, 2
  %and543 = and i32 %add542, 1048575
  %add544 = or i32 %and543, -18874368
  %134 = inttoptr i32 %add544 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 5) #4, !srcloc !34
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool547.not = icmp eq i32 %136, 0
  br i1 %tobool547.not, label %do.body538.do.body563_crit_edge, label %cond.false558

do.body538.do.body563_crit_edge:                  ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body563

cond.false558:                                    ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #4
  br label %do.body563

do.body563:                                       ; preds = %cond.false558, %do.body538.do.body563_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.0821
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx, align 1
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port, align 4
  %and568 = and i32 %141, 1048575
  %add569 = or i32 %and568, -18874368
  %142 = inttoptr i32 %add569 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 %139) #4, !srcloc !34
  %143 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool572.not = icmp eq i32 %144, 0
  br i1 %tobool572.not, label %do.body563.do.body588_crit_edge, label %cond.false583

do.body563.do.body588_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body588

cond.false583:                                    ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #4
  br label %do.body588

do.body588:                                       ; preds = %cond.false583, %do.body563.do.body588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void @arm_heavy_mb() #4
  %146 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %port, align 4
  %add592 = add i32 %147, 2
  %and593 = and i32 %add592, 1048575
  %add594 = or i32 %and593, -18874368
  %148 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 7) #4, !srcloc !34
  %149 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool597.not = icmp eq i32 %150, 0
  br i1 %tobool597.not, label %do.body588.for.inc_crit_edge, label %cond.false608

do.body588.for.inc_crit_edge:                     ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cond.false608:                                    ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %150) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false608, %do.body588.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0821, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.do.body613_crit_edge, label %for.inc.do.body538_crit_edge

for.inc.do.body538_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body538

for.inc.do.body613_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body613

do.body613:                                       ; preds = %for.inc.do.body613_crit_edge, %cond.end536.do.body613_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %152 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port, align 4
  %add617 = add i32 %153, 2
  %and618 = and i32 %add617, 1048575
  %add619 = or i32 %and618, -18874368
  %154 = inttoptr i32 %add619 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 4) #4, !srcloc !34
  %155 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool622.not = icmp eq i32 %156, 0
  br i1 %tobool622.not, label %do.body613.cond.end637_crit_edge, label %cond.false633

do.body613.cond.end637_crit_edge:                 ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end637

cond.false633:                                    ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %157(i32 noundef %156) #4
  br label %cond.end637

cond.end637:                                      ; preds = %cond.false633, %do.body613.cond.end637_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_read_block(ptr noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and17 = and i32 %7, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #4, !srcloc !34
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #4
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 5) #4, !srcloc !34
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add66 = add i32 %19, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %20 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 13) #4, !srcloc !34
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #4
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add91 = add i32 %25, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %26 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 5) #4, !srcloc !34
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool96.not = icmp eq i32 %28, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add116 = add i32 %31, 2
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %32 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 13) #4, !srcloc !34
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool121.not = icmp eq i32 %34, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #4
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add141 = add i32 %37, 2
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %38 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 5) #4, !srcloc !34
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool146.not = icmp eq i32 %40, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #4
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add166 = add i32 %43, 2
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %44 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 4) #4, !srcloc !34
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool171.not = icmp eq i32 %46, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add191 = add i32 %49, 2
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %50 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #4, !srcloc !34
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool196.not = icmp eq i32 %52, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #4
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and217 = and i32 %55, 1048575
  %add218 = or i32 %and217, -18874368
  %56 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 1) #4, !srcloc !34
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool221.not = icmp eq i32 %58, 0
  br i1 %tobool221.not, label %do.body212.do.body237_crit_edge, label %cond.false232

do.body212.do.body237_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body237

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %do.body237

do.body237:                                       ; preds = %cond.false232, %do.body212.do.body237_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add241 = add i32 %61, 2
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %62 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #4, !srcloc !34
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool246.not = icmp eq i32 %64, 0
  br i1 %tobool246.not, label %do.body237.do.body262_crit_edge, label %cond.false257

do.body237.do.body262_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body262

cond.false257:                                    ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %do.body262

do.body262:                                       ; preds = %cond.false257, %do.body237.do.body262_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add266 = add i32 %67, 2
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %68 = inttoptr i32 %add268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 7) #4, !srcloc !34
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool271.not = icmp eq i32 %70, 0
  br i1 %tobool271.not, label %do.body262.do.body287_crit_edge, label %cond.false282

do.body262.do.body287_crit_edge:                  ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body287

cond.false282:                                    ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #4
  br label %do.body287

do.body287:                                       ; preds = %cond.false282, %do.body262.do.body287_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add291 = add i32 %73, 2
  %and292 = and i32 %add291, 1048575
  %add293 = or i32 %and292, -18874368
  %74 = inttoptr i32 %add293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #4, !srcloc !34
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool296.not = icmp eq i32 %76, 0
  br i1 %tobool296.not, label %do.body287.do.body312_crit_edge, label %cond.false307

do.body287.do.body312_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body312

cond.false307:                                    ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #4
  br label %do.body312

do.body312:                                       ; preds = %cond.false307, %do.body287.do.body312_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add316 = add i32 %79, 2
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %80 = inttoptr i32 %add318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 4) #4, !srcloc !34
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool321.not = icmp eq i32 %82, 0
  br i1 %tobool321.not, label %do.body312.do.body337_crit_edge, label %cond.false332

do.body312.do.body337_crit_edge:                  ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body337

cond.false332:                                    ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body337

do.body337:                                       ; preds = %cond.false332, %do.body312.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add341 = add i32 %85, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %86 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 4) #4, !srcloc !34
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool346.not = icmp eq i32 %88, 0
  br i1 %tobool346.not, label %do.body337.do.body362_crit_edge, label %cond.false357

do.body337.do.body362_crit_edge:                  ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body362

cond.false357:                                    ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %do.body337.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and367 = and i32 %91, 1048575
  %add368 = or i32 %and367, -18874368
  %92 = inttoptr i32 %add368 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 0) #4, !srcloc !34
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool371.not = icmp eq i32 %94, 0
  br i1 %tobool371.not, label %do.body362.do.body387_crit_edge, label %cond.false382

do.body362.do.body387_crit_edge:                  ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body387

cond.false382:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #4
  br label %do.body387

do.body387:                                       ; preds = %cond.false382, %do.body362.do.body387_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add391 = add i32 %97, 2
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %98 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 5) #4, !srcloc !34
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool396.not = icmp eq i32 %100, 0
  br i1 %tobool396.not, label %do.body387.do.body412_crit_edge, label %cond.false407

do.body387.do.body412_crit_edge:                  ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body412

cond.false407:                                    ; preds = %do.body387
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body387.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add416 = add i32 %103, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %104 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 13) #4, !srcloc !34
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool421.not = icmp eq i32 %106, 0
  br i1 %tobool421.not, label %do.body412.do.body437_crit_edge, label %cond.false432

do.body412.do.body437_crit_edge:                  ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body437

cond.false432:                                    ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #4
  br label %do.body437

do.body437:                                       ; preds = %cond.false432, %do.body412.do.body437_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add441 = add i32 %109, 2
  %and442 = and i32 %add441, 1048575
  %add443 = or i32 %and442, -18874368
  %110 = inttoptr i32 %add443 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 5) #4, !srcloc !34
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool446.not = icmp eq i32 %112, 0
  br i1 %tobool446.not, label %do.body437.do.body462_crit_edge, label %cond.false457

do.body437.do.body462_crit_edge:                  ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body462

cond.false457:                                    ; preds = %do.body437
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  br label %do.body462

do.body462:                                       ; preds = %cond.false457, %do.body437.do.body462_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add466 = add i32 %115, 2
  %and467 = and i32 %add466, 1048575
  %add468 = or i32 %and467, -18874368
  %116 = inttoptr i32 %add468 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 13) #4, !srcloc !34
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool471.not = icmp eq i32 %118, 0
  br i1 %tobool471.not, label %do.body462.do.body487_crit_edge, label %cond.false482

do.body462.do.body487_crit_edge:                  ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body487

cond.false482:                                    ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #4
  br label %do.body487

do.body487:                                       ; preds = %cond.false482, %do.body462.do.body487_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %add491 = add i32 %121, 2
  %and492 = and i32 %add491, 1048575
  %add493 = or i32 %and492, -18874368
  %122 = inttoptr i32 %add493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 5) #4, !srcloc !34
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool496.not = icmp eq i32 %124, 0
  br i1 %tobool496.not, label %do.body487.do.body512_crit_edge, label %cond.false507

do.body487.do.body512_crit_edge:                  ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body512

cond.false507:                                    ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  br label %do.body512

do.body512:                                       ; preds = %cond.false507, %do.body487.do.body512_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add516 = add i32 %127, 2
  %and517 = and i32 %add516, 1048575
  %add518 = or i32 %and517, -18874368
  %128 = inttoptr i32 %add518 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 4) #4, !srcloc !34
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool521.not = icmp eq i32 %130, 0
  br i1 %tobool521.not, label %do.body512.cond.end536_crit_edge, label %cond.false532

do.body512.cond.end536_crit_edge:                 ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end536

cond.false532:                                    ; preds = %do.body512
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #4
  br label %cond.end536

cond.end536:                                      ; preds = %cond.false532, %do.body512.cond.end536_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5371037 = icmp sgt i32 %count, 0
  br i1 %cmp5371037, label %for.body.lr.ph, label %cond.end536.do.body778_crit_edge

cond.end536.do.body778_crit_edge:                 ; preds = %cond.end536
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body778

for.body.lr.ph:                                   ; preds = %cond.end536
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %k.01038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %132 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool538.not = icmp eq i32 %133, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %134 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port, align 4
  %add618 = add i32 %135, 2
  %and619 = and i32 %add618, 1048575
  %add620 = or i32 %and619, -18874368
  %136 = inttoptr i32 %add620 to ptr
  br i1 %tobool538.not, label %do.body614, label %do.body539

do.body539:                                       ; preds = %for.body
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 4) #4, !srcloc !34
  %137 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool548.not = icmp eq i32 %138, 0
  br i1 %tobool548.not, label %do.body539.do.body564_crit_edge, label %cond.false559

do.body539.do.body564_crit_edge:                  ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body564

cond.false559:                                    ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %139(i32 noundef %138) #4
  br label %do.body564

do.body564:                                       ; preds = %cond.false559, %do.body539.do.body564_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port, align 4
  %add568 = add i32 %141, 2
  %and569 = and i32 %add568, 1048575
  %add570 = or i32 %and569, -18874368
  %142 = inttoptr i32 %add570 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 38) #4, !srcloc !34
  %143 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool573.not = icmp eq i32 %144, 0
  br i1 %tobool573.not, label %do.body564.cond.end605_crit_edge, label %cond.false584

do.body564.cond.end605_crit_edge:                 ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end605

cond.false584:                                    ; preds = %do.body564
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #4
  %146 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool590.not = icmp eq i32 %.pr, 0
  br i1 %tobool590.not, label %cond.false584.cond.end605_crit_edge, label %cond.false601

cond.false584.cond.end605_crit_edge:              ; preds = %cond.false584
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end605

cond.false601:                                    ; preds = %cond.false584
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %.pr) #4
  br label %cond.end605

cond.end605:                                      ; preds = %cond.false601, %cond.false584.cond.end605_crit_edge, %do.body564.cond.end605_crit_edge
  %148 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port, align 4
  %and608 = and i32 %149, 1048575
  %add609 = or i32 %and608, -18874368
  %150 = inttoptr i32 %add609 to ptr
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %150) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  br label %for.inc

do.body614:                                       ; preds = %for.body
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 6) #4, !srcloc !34
  %152 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool623.not = icmp eq i32 %153, 0
  br i1 %tobool623.not, label %do.body614.cond.end657_crit_edge, label %cond.false635

do.body614.cond.end657_crit_edge:                 ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end657

cond.false635:                                    ; preds = %do.body614
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #4
  %155 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr1033 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1033)
  %tobool641.not = icmp eq i32 %.pr1033, 0
  br i1 %tobool641.not, label %cond.false635.cond.end657_crit_edge, label %cond.false653

cond.false635.cond.end657_crit_edge:              ; preds = %cond.false635
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end657

cond.false653:                                    ; preds = %cond.false635
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %.pr1033) #4
  br label %cond.end657

cond.end657:                                      ; preds = %cond.false653, %cond.false635.cond.end657_crit_edge, %do.body614.cond.end657_crit_edge
  %157 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %port, align 4
  %add660 = add i32 %158, 1
  %and661 = and i32 %add660, 1048575
  %add662 = or i32 %and661, -18874368
  %159 = inttoptr i32 %add662 to ptr
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  tail call void @arm_heavy_mb() #4
  %161 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port, align 4
  %add672 = add i32 %162, 2
  %and673 = and i32 %add672, 1048575
  %add674 = or i32 %and673, -18874368
  %163 = inttoptr i32 %add674 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 4) #4, !srcloc !34
  %164 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool677.not = icmp eq i32 %165, 0
  br i1 %tobool677.not, label %cond.end657.do.body694_crit_edge, label %cond.false689

cond.end657.do.body694_crit_edge:                 ; preds = %cond.end657
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body694

cond.false689:                                    ; preds = %cond.end657
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #4
  br label %do.body694

do.body694:                                       ; preds = %cond.false689, %cond.end657.do.body694_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  %167 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port, align 4
  %add698 = add i32 %168, 2
  %and699 = and i32 %add698, 1048575
  %add700 = or i32 %and699, -18874368
  %169 = inttoptr i32 %add700 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 6) #4, !srcloc !34
  %170 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool703.not = icmp eq i32 %171, 0
  br i1 %tobool703.not, label %do.body694.cond.end737_crit_edge, label %cond.false715

do.body694.cond.end737_crit_edge:                 ; preds = %do.body694
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end737

cond.false715:                                    ; preds = %do.body694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %172(i32 noundef %171) #4
  %173 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pr1035 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1035)
  %tobool721.not = icmp eq i32 %.pr1035, 0
  br i1 %tobool721.not, label %cond.false715.cond.end737_crit_edge, label %cond.false733

cond.false715.cond.end737_crit_edge:              ; preds = %cond.false715
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end737

cond.false733:                                    ; preds = %cond.false715
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %174(i32 noundef %.pr1035) #4
  br label %cond.end737

cond.end737:                                      ; preds = %cond.false733, %cond.false715.cond.end737_crit_edge, %do.body694.cond.end737_crit_edge
  %175 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port, align 4
  %add740 = add i32 %176, 1
  %and741 = and i32 %add740, 1048575
  %add742 = or i32 %and741, -18874368
  %177 = inttoptr i32 %add742 to ptr
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %177) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !170
  tail call void @arm_heavy_mb() #4
  %179 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port, align 4
  %add752 = add i32 %180, 2
  %and753 = and i32 %add752, 1048575
  %add754 = or i32 %and753, -18874368
  %181 = inttoptr i32 %add754 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 4) #4, !srcloc !34
  %182 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool757.not = icmp eq i32 %183, 0
  br i1 %tobool757.not, label %cond.end737.cond.end773_crit_edge, label %cond.false769

cond.end737.cond.end773_crit_edge:                ; preds = %cond.end737
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end773

cond.false769:                                    ; preds = %cond.end737
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #4
  br label %cond.end773

cond.end773:                                      ; preds = %cond.false769, %cond.end737.cond.end773_crit_edge
  %185 = lshr i8 %160, 4
  %186 = and i8 %178, -16
  %or1031 = or i8 %186, %185
  br label %for.inc

for.inc:                                          ; preds = %cond.end773, %cond.end605
  %.sink = phi i8 [ %151, %cond.end605 ], [ %or1031, %cond.end773 ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01038
  %187 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %.sink, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.01038, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.do.body778_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.body778_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body778

do.body778:                                       ; preds = %for.inc.do.body778_crit_edge, %cond.end536.do.body778_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  tail call void @arm_heavy_mb() #4
  %188 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port, align 4
  %add782 = add i32 %189, 2
  %and783 = and i32 %add782, 1048575
  %add784 = or i32 %and783, -18874368
  %190 = inttoptr i32 %add784 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 4) #4, !srcloc !34
  %191 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool787.not = icmp eq i32 %192, 0
  br i1 %tobool787.not, label %do.body778.cond.end803_crit_edge, label %cond.false799

do.body778.cond.end803_crit_edge:                 ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end803

cond.false799:                                    ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #4
  br label %cond.end803

cond.end803:                                      ; preds = %cond.false799, %do.body778.cond.end803_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_connect(ptr noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !172
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !173
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !174
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !175
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !176
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add93 = add i32 %29, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 12) #4, !srcloc !34
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body90.do.body115_crit_edge, label %cond.false110

do.body90.do.body115_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body115

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #4
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body90.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !177
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add118 = add i32 %35, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 4) #4, !srcloc !34
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #4
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !178
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add143 = add i32 %41, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 6) #4, !srcloc !34
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not = icmp eq i32 %44, 0
  br i1 %tobool148.not, label %do.body140.do.body165_crit_edge, label %cond.false160

do.body140.do.body165_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body165

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  br label %do.body165

do.body165:                                       ; preds = %cond.false160, %do.body140.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  tail call void @arm_heavy_mb() #4
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add168 = add i32 %47, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 4) #4, !srcloc !34
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool173.not = icmp eq i32 %50, 0
  br i1 %tobool173.not, label %do.body165.do.body190_crit_edge, label %cond.false185

do.body165.do.body190_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body190

cond.false185:                                    ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #4
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body165.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !180
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add193 = add i32 %53, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 6) #4, !srcloc !34
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool198.not = icmp eq i32 %56, 0
  br i1 %tobool198.not, label %do.body190.do.body215_crit_edge, label %cond.false210

do.body190.do.body215_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body215

cond.false210:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #4
  br label %do.body215

do.body215:                                       ; preds = %cond.false210, %do.body190.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !181
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add218 = add i32 %59, 2
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 4) #4, !srcloc !34
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool223.not = icmp eq i32 %62, 0
  br i1 %tobool223.not, label %do.body215.cond.end239_crit_edge, label %cond.false235

do.body215.cond.end239_crit_edge:                 ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end239

cond.false235:                                    ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #4
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false235, %do.body215.cond.end239_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %64 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool240.not = icmp eq i32 %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add944 = add i32 %67, 2
  %and945 = and i32 %add944, 1048575
  %add946 = or i32 %and945, -18874368
  %68 = inttoptr i32 %add946 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 4) #4
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool949.not = icmp eq i32 %70, 0
  br i1 %tobool240.not, label %do.body941, label %do.body241

do.body241:                                       ; preds = %cond.end239
  br i1 %tobool949.not, label %do.body241.do.body266_crit_edge, label %cond.false261

do.body241.do.body266_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body266

cond.false261:                                    ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #4
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body241.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %and270 = and i32 %73, 1048575
  %add271 = or i32 %and270, -18874368
  %74 = inttoptr i32 %add271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 2) #4, !srcloc !34
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool274.not = icmp eq i32 %76, 0
  br i1 %tobool274.not, label %do.body266.do.body291_crit_edge, label %cond.false286

do.body266.do.body291_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body291

cond.false286:                                    ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #4
  br label %do.body291

do.body291:                                       ; preds = %cond.false286, %do.body266.do.body291_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add294 = add i32 %79, 2
  %and295 = and i32 %add294, 1048575
  %add296 = or i32 %and295, -18874368
  %80 = inttoptr i32 %add296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 5) #4, !srcloc !34
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool299.not = icmp eq i32 %82, 0
  br i1 %tobool299.not, label %do.body291.do.body316_crit_edge, label %cond.false311

do.body291.do.body316_crit_edge:                  ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body316

cond.false311:                                    ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #4
  br label %do.body316

do.body316:                                       ; preds = %cond.false311, %do.body291.do.body316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add319 = add i32 %85, 2
  %and320 = and i32 %add319, 1048575
  %add321 = or i32 %and320, -18874368
  %86 = inttoptr i32 %add321 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 13) #4, !srcloc !34
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool324.not = icmp eq i32 %88, 0
  br i1 %tobool324.not, label %do.body316.do.body341_crit_edge, label %cond.false336

do.body316.do.body341_crit_edge:                  ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body341

cond.false336:                                    ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #4
  br label %do.body341

do.body341:                                       ; preds = %cond.false336, %do.body316.do.body341_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !185
  tail call void @arm_heavy_mb() #4
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add344 = add i32 %91, 2
  %and345 = and i32 %add344, 1048575
  %add346 = or i32 %and345, -18874368
  %92 = inttoptr i32 %add346 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 5) #4, !srcloc !34
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool349.not = icmp eq i32 %94, 0
  br i1 %tobool349.not, label %do.body341.do.body366_crit_edge, label %cond.false361

do.body341.do.body366_crit_edge:                  ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body366

cond.false361:                                    ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #4
  br label %do.body366

do.body366:                                       ; preds = %cond.false361, %do.body341.do.body366_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !186
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add369 = add i32 %97, 2
  %and370 = and i32 %add369, 1048575
  %add371 = or i32 %and370, -18874368
  %98 = inttoptr i32 %add371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 13) #4, !srcloc !34
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool374.not = icmp eq i32 %100, 0
  br i1 %tobool374.not, label %do.body366.do.body391_crit_edge, label %cond.false386

do.body366.do.body391_crit_edge:                  ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body391

cond.false386:                                    ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %101(i32 noundef %100) #4
  br label %do.body391

do.body391:                                       ; preds = %cond.false386, %do.body366.do.body391_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !187
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add394 = add i32 %103, 2
  %and395 = and i32 %add394, 1048575
  %add396 = or i32 %and395, -18874368
  %104 = inttoptr i32 %add396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 5) #4, !srcloc !34
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool399.not = icmp eq i32 %106, 0
  br i1 %tobool399.not, label %do.body391.do.body416_crit_edge, label %cond.false411

do.body391.do.body416_crit_edge:                  ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body416

cond.false411:                                    ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #4
  br label %do.body416

do.body416:                                       ; preds = %cond.false411, %do.body391.do.body416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %add419 = add i32 %109, 2
  %and420 = and i32 %add419, 1048575
  %add421 = or i32 %and420, -18874368
  %110 = inttoptr i32 %add421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 4) #4, !srcloc !34
  %111 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool424.not = icmp eq i32 %112, 0
  br i1 %tobool424.not, label %do.body416.do.body441_crit_edge, label %cond.false436

do.body416.do.body441_crit_edge:                  ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body441

cond.false436:                                    ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %113(i32 noundef %112) #4
  br label %do.body441

do.body441:                                       ; preds = %cond.false436, %do.body416.do.body441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !189
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %add444 = add i32 %115, 2
  %and445 = and i32 %add444, 1048575
  %add446 = or i32 %and445, -18874368
  %116 = inttoptr i32 %add446 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 4) #4, !srcloc !34
  %117 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool449.not = icmp eq i32 %118, 0
  br i1 %tobool449.not, label %do.body441.do.body466_crit_edge, label %cond.false461

do.body441.do.body466_crit_edge:                  ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body466

cond.false461:                                    ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %119(i32 noundef %118) #4
  br label %do.body466

do.body466:                                       ; preds = %cond.false461, %do.body441.do.body466_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !190
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %and470 = and i32 %121, 1048575
  %add471 = or i32 %and470, -18874368
  %122 = inttoptr i32 %add471 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 8) #4, !srcloc !34
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool474.not = icmp eq i32 %124, 0
  br i1 %tobool474.not, label %do.body466.do.body491_crit_edge, label %cond.false486

do.body466.do.body491_crit_edge:                  ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body491

cond.false486:                                    ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #4
  br label %do.body491

do.body491:                                       ; preds = %cond.false486, %do.body466.do.body491_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !191
  tail call void @arm_heavy_mb() #4
  %126 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port, align 4
  %add494 = add i32 %127, 2
  %and495 = and i32 %add494, 1048575
  %add496 = or i32 %and495, -18874368
  %128 = inttoptr i32 %add496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 5) #4, !srcloc !34
  %129 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool499.not = icmp eq i32 %130, 0
  br i1 %tobool499.not, label %do.body491.do.body516_crit_edge, label %cond.false511

do.body491.do.body516_crit_edge:                  ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body516

cond.false511:                                    ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %130) #4
  br label %do.body516

do.body516:                                       ; preds = %cond.false511, %do.body491.do.body516_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !192
  tail call void @arm_heavy_mb() #4
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add519 = add i32 %133, 2
  %and520 = and i32 %add519, 1048575
  %add521 = or i32 %and520, -18874368
  %134 = inttoptr i32 %add521 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 7) #4, !srcloc !34
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool524.not = icmp eq i32 %136, 0
  br i1 %tobool524.not, label %do.body516.do.body541_crit_edge, label %cond.false536

do.body516.do.body541_crit_edge:                  ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body541

cond.false536:                                    ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #4
  br label %do.body541

do.body541:                                       ; preds = %cond.false536, %do.body516.do.body541_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !193
  tail call void @arm_heavy_mb() #4
  %138 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port, align 4
  %add544 = add i32 %139, 2
  %and545 = and i32 %add544, 1048575
  %add546 = or i32 %and545, -18874368
  %140 = inttoptr i32 %add546 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 5) #4, !srcloc !34
  %141 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool549.not = icmp eq i32 %142, 0
  br i1 %tobool549.not, label %do.body541.do.body566_crit_edge, label %cond.false561

do.body541.do.body566_crit_edge:                  ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body566

cond.false561:                                    ; preds = %do.body541
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #4
  br label %do.body566

do.body566:                                       ; preds = %cond.false561, %do.body541.do.body566_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !194
  tail call void @arm_heavy_mb() #4
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port, align 4
  %add569 = add i32 %145, 2
  %and570 = and i32 %add569, 1048575
  %add571 = or i32 %and570, -18874368
  %146 = inttoptr i32 %add571 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 4) #4, !srcloc !34
  %147 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool574.not = icmp eq i32 %148, 0
  br i1 %tobool574.not, label %do.body566.do.body591_crit_edge, label %cond.false586

do.body566.do.body591_crit_edge:                  ; preds = %do.body566
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body591

cond.false586:                                    ; preds = %do.body566
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #4
  br label %do.body591

do.body591:                                       ; preds = %cond.false586, %do.body566.do.body591_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !195
  tail call void @arm_heavy_mb() #4
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port, align 4
  %add594 = add i32 %151, 2
  %and595 = and i32 %add594, 1048575
  %add596 = or i32 %and595, -18874368
  %152 = inttoptr i32 %add596 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 4) #4, !srcloc !34
  %153 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool599.not = icmp eq i32 %154, 0
  br i1 %tobool599.not, label %do.body591.do.body616_crit_edge, label %cond.false611

do.body591.do.body616_crit_edge:                  ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body616

cond.false611:                                    ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #4
  br label %do.body616

do.body616:                                       ; preds = %cond.false611, %do.body591.do.body616_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !196
  tail call void @arm_heavy_mb() #4
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %and620 = and i32 %157, 1048575
  %add621 = or i32 %and620, -18874368
  %158 = inttoptr i32 %add621 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 2) #4, !srcloc !34
  %159 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool624.not = icmp eq i32 %160, 0
  br i1 %tobool624.not, label %do.body616.do.body641_crit_edge, label %cond.false636

do.body616.do.body641_crit_edge:                  ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body641

cond.false636:                                    ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #4
  br label %do.body641

do.body641:                                       ; preds = %cond.false636, %do.body616.do.body641_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !197
  tail call void @arm_heavy_mb() #4
  %162 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port, align 4
  %add644 = add i32 %163, 2
  %and645 = and i32 %add644, 1048575
  %add646 = or i32 %and645, -18874368
  %164 = inttoptr i32 %add646 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 5) #4, !srcloc !34
  %165 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool649.not = icmp eq i32 %166, 0
  br i1 %tobool649.not, label %do.body641.do.body666_crit_edge, label %cond.false661

do.body641.do.body666_crit_edge:                  ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body666

cond.false661:                                    ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %166) #4
  br label %do.body666

do.body666:                                       ; preds = %cond.false661, %do.body641.do.body666_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !198
  tail call void @arm_heavy_mb() #4
  %168 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port, align 4
  %add669 = add i32 %169, 2
  %and670 = and i32 %add669, 1048575
  %add671 = or i32 %and670, -18874368
  %170 = inttoptr i32 %add671 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 13) #4, !srcloc !34
  %171 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool674.not = icmp eq i32 %172, 0
  br i1 %tobool674.not, label %do.body666.do.body691_crit_edge, label %cond.false686

do.body666.do.body691_crit_edge:                  ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body691

cond.false686:                                    ; preds = %do.body666
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #4
  br label %do.body691

do.body691:                                       ; preds = %cond.false686, %do.body666.do.body691_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !199
  tail call void @arm_heavy_mb() #4
  %174 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %port, align 4
  %add694 = add i32 %175, 2
  %and695 = and i32 %add694, 1048575
  %add696 = or i32 %and695, -18874368
  %176 = inttoptr i32 %add696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 5) #4, !srcloc !34
  %177 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool699.not = icmp eq i32 %178, 0
  br i1 %tobool699.not, label %do.body691.do.body716_crit_edge, label %cond.false711

do.body691.do.body716_crit_edge:                  ; preds = %do.body691
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body716

cond.false711:                                    ; preds = %do.body691
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %179(i32 noundef %178) #4
  br label %do.body716

do.body716:                                       ; preds = %cond.false711, %do.body691.do.body716_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !200
  tail call void @arm_heavy_mb() #4
  %180 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port, align 4
  %add719 = add i32 %181, 2
  %and720 = and i32 %add719, 1048575
  %add721 = or i32 %and720, -18874368
  %182 = inttoptr i32 %add721 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 13) #4, !srcloc !34
  %183 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool724.not = icmp eq i32 %184, 0
  br i1 %tobool724.not, label %do.body716.do.body741_crit_edge, label %cond.false736

do.body716.do.body741_crit_edge:                  ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body741

cond.false736:                                    ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %185(i32 noundef %184) #4
  br label %do.body741

do.body741:                                       ; preds = %cond.false736, %do.body716.do.body741_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !201
  tail call void @arm_heavy_mb() #4
  %186 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %port, align 4
  %add744 = add i32 %187, 2
  %and745 = and i32 %add744, 1048575
  %add746 = or i32 %and745, -18874368
  %188 = inttoptr i32 %add746 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 5) #4, !srcloc !34
  %189 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool749.not = icmp eq i32 %190, 0
  br i1 %tobool749.not, label %do.body741.do.body766_crit_edge, label %cond.false761

do.body741.do.body766_crit_edge:                  ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body766

cond.false761:                                    ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %191(i32 noundef %190) #4
  br label %do.body766

do.body766:                                       ; preds = %cond.false761, %do.body741.do.body766_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !202
  tail call void @arm_heavy_mb() #4
  %192 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port, align 4
  %add769 = add i32 %193, 2
  %and770 = and i32 %add769, 1048575
  %add771 = or i32 %and770, -18874368
  %194 = inttoptr i32 %add771 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 4) #4, !srcloc !34
  %195 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool774.not = icmp eq i32 %196, 0
  br i1 %tobool774.not, label %do.body766.do.body791_crit_edge, label %cond.false786

do.body766.do.body791_crit_edge:                  ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body791

cond.false786:                                    ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #4
  br label %do.body791

do.body791:                                       ; preds = %cond.false786, %do.body766.do.body791_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !203
  tail call void @arm_heavy_mb() #4
  %198 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port, align 4
  %add794 = add i32 %199, 2
  %and795 = and i32 %add794, 1048575
  %add796 = or i32 %and795, -18874368
  %200 = inttoptr i32 %add796 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 4) #4, !srcloc !34
  %201 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool799.not = icmp eq i32 %202, 0
  br i1 %tobool799.not, label %do.body791.do.body816_crit_edge, label %cond.false811

do.body791.do.body816_crit_edge:                  ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body816

cond.false811:                                    ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %203(i32 noundef %202) #4
  br label %do.body816

do.body816:                                       ; preds = %cond.false811, %do.body791.do.body816_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !204
  tail call void @arm_heavy_mb() #4
  %204 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %port, align 4
  %and820 = and i32 %205, 1048575
  %add821 = or i32 %and820, -18874368
  %206 = inttoptr i32 %add821 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 9) #4, !srcloc !34
  %207 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool824.not = icmp eq i32 %208, 0
  br i1 %tobool824.not, label %do.body816.do.body841_crit_edge, label %cond.false836

do.body816.do.body841_crit_edge:                  ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body841

cond.false836:                                    ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %208) #4
  br label %do.body841

do.body841:                                       ; preds = %cond.false836, %do.body816.do.body841_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !205
  tail call void @arm_heavy_mb() #4
  %210 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port, align 4
  %add844 = add i32 %211, 2
  %and845 = and i32 %add844, 1048575
  %add846 = or i32 %and845, -18874368
  %212 = inttoptr i32 %add846 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 5) #4, !srcloc !34
  %213 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool849.not = icmp eq i32 %214, 0
  br i1 %tobool849.not, label %do.body841.do.body866_crit_edge, label %cond.false861

do.body841.do.body866_crit_edge:                  ; preds = %do.body841
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body866

cond.false861:                                    ; preds = %do.body841
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %215(i32 noundef %214) #4
  br label %do.body866

do.body866:                                       ; preds = %cond.false861, %do.body841.do.body866_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !206
  tail call void @arm_heavy_mb() #4
  %216 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %port, align 4
  %add869 = add i32 %217, 2
  %and870 = and i32 %add869, 1048575
  %add871 = or i32 %and870, -18874368
  %218 = inttoptr i32 %add871 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 7) #4, !srcloc !34
  %219 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool874.not = icmp eq i32 %220, 0
  br i1 %tobool874.not, label %do.body866.do.body891_crit_edge, label %cond.false886

do.body866.do.body891_crit_edge:                  ; preds = %do.body866
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body891

cond.false886:                                    ; preds = %do.body866
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %221(i32 noundef %220) #4
  br label %do.body891

do.body891:                                       ; preds = %cond.false886, %do.body866.do.body891_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !207
  tail call void @arm_heavy_mb() #4
  %222 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %port, align 4
  %add894 = add i32 %223, 2
  %and895 = and i32 %add894, 1048575
  %add896 = or i32 %and895, -18874368
  %224 = inttoptr i32 %add896 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 5) #4, !srcloc !34
  %225 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool899.not = icmp eq i32 %226, 0
  br i1 %tobool899.not, label %do.body891.do.body916_crit_edge, label %cond.false911

do.body891.do.body916_crit_edge:                  ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body916

cond.false911:                                    ; preds = %do.body891
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #4
  br label %do.body916

do.body916:                                       ; preds = %cond.false911, %do.body891.do.body916_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !208
  tail call void @arm_heavy_mb() #4
  %228 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %port, align 4
  %add919 = add i32 %229, 2
  %and920 = and i32 %add919, 1048575
  %add921 = or i32 %and920, -18874368
  %230 = inttoptr i32 %add921 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %230, i8 4) #4, !srcloc !34
  %231 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool924.not = icmp eq i32 %232, 0
  br i1 %tobool924.not, label %do.body916.if.end_crit_edge, label %do.body916.if.end.sink.split_crit_edge

do.body916.if.end.sink.split_crit_edge:           ; preds = %do.body916
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

do.body916.if.end_crit_edge:                      ; preds = %do.body916
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body941:                                       ; preds = %cond.end239
  br i1 %tobool949.not, label %do.body941.do.body966_crit_edge, label %cond.false961

do.body941.do.body966_crit_edge:                  ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body966

cond.false961:                                    ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %233(i32 noundef %70) #4
  br label %do.body966

do.body966:                                       ; preds = %cond.false961, %do.body941.do.body966_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !209
  tail call void @arm_heavy_mb() #4
  %234 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port, align 4
  %and970 = and i32 %235, 1048575
  %add971 = or i32 %and970, -18874368
  %236 = inttoptr i32 %add971 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 2) #4, !srcloc !34
  %237 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool974.not = icmp eq i32 %238, 0
  br i1 %tobool974.not, label %do.body966.do.body991_crit_edge, label %cond.false986

do.body966.do.body991_crit_edge:                  ; preds = %do.body966
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body991

cond.false986:                                    ; preds = %do.body966
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %239(i32 noundef %238) #4
  br label %do.body991

do.body991:                                       ; preds = %cond.false986, %do.body966.do.body991_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !210
  tail call void @arm_heavy_mb() #4
  %240 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port, align 4
  %add994 = add i32 %241, 2
  %and995 = and i32 %add994, 1048575
  %add996 = or i32 %and995, -18874368
  %242 = inttoptr i32 %add996 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %242, i8 5) #4, !srcloc !34
  %243 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool999.not = icmp eq i32 %244, 0
  br i1 %tobool999.not, label %do.body991.do.body1016_crit_edge, label %cond.false1011

do.body991.do.body1016_crit_edge:                 ; preds = %do.body991
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1016

cond.false1011:                                   ; preds = %do.body991
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %245(i32 noundef %244) #4
  br label %do.body1016

do.body1016:                                      ; preds = %cond.false1011, %do.body991.do.body1016_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !211
  tail call void @arm_heavy_mb() #4
  %246 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %port, align 4
  %add1019 = add i32 %247, 2
  %and1020 = and i32 %add1019, 1048575
  %add1021 = or i32 %and1020, -18874368
  %248 = inttoptr i32 %add1021 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 13) #4, !srcloc !34
  %249 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool1024.not = icmp eq i32 %250, 0
  br i1 %tobool1024.not, label %do.body1016.do.body1041_crit_edge, label %cond.false1036

do.body1016.do.body1041_crit_edge:                ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1041

cond.false1036:                                   ; preds = %do.body1016
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %251(i32 noundef %250) #4
  br label %do.body1041

do.body1041:                                      ; preds = %cond.false1036, %do.body1016.do.body1041_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !212
  tail call void @arm_heavy_mb() #4
  %252 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %port, align 4
  %add1044 = add i32 %253, 2
  %and1045 = and i32 %add1044, 1048575
  %add1046 = or i32 %and1045, -18874368
  %254 = inttoptr i32 %add1046 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %254, i8 5) #4, !srcloc !34
  %255 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool1049.not = icmp eq i32 %256, 0
  br i1 %tobool1049.not, label %do.body1041.do.body1066_crit_edge, label %cond.false1061

do.body1041.do.body1066_crit_edge:                ; preds = %do.body1041
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1066

cond.false1061:                                   ; preds = %do.body1041
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %257(i32 noundef %256) #4
  br label %do.body1066

do.body1066:                                      ; preds = %cond.false1061, %do.body1041.do.body1066_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !213
  tail call void @arm_heavy_mb() #4
  %258 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %port, align 4
  %add1069 = add i32 %259, 2
  %and1070 = and i32 %add1069, 1048575
  %add1071 = or i32 %and1070, -18874368
  %260 = inttoptr i32 %add1071 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 13) #4, !srcloc !34
  %261 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool1074.not = icmp eq i32 %262, 0
  br i1 %tobool1074.not, label %do.body1066.do.body1091_crit_edge, label %cond.false1086

do.body1066.do.body1091_crit_edge:                ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1091

cond.false1086:                                   ; preds = %do.body1066
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %263(i32 noundef %262) #4
  br label %do.body1091

do.body1091:                                      ; preds = %cond.false1086, %do.body1066.do.body1091_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !214
  tail call void @arm_heavy_mb() #4
  %264 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %port, align 4
  %add1094 = add i32 %265, 2
  %and1095 = and i32 %add1094, 1048575
  %add1096 = or i32 %and1095, -18874368
  %266 = inttoptr i32 %add1096 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %266, i8 5) #4, !srcloc !34
  %267 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool1099.not = icmp eq i32 %268, 0
  br i1 %tobool1099.not, label %do.body1091.do.body1116_crit_edge, label %cond.false1111

do.body1091.do.body1116_crit_edge:                ; preds = %do.body1091
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1116

cond.false1111:                                   ; preds = %do.body1091
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %269(i32 noundef %268) #4
  br label %do.body1116

do.body1116:                                      ; preds = %cond.false1111, %do.body1091.do.body1116_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !215
  tail call void @arm_heavy_mb() #4
  %270 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %port, align 4
  %add1119 = add i32 %271, 2
  %and1120 = and i32 %add1119, 1048575
  %add1121 = or i32 %and1120, -18874368
  %272 = inttoptr i32 %add1121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 4) #4, !srcloc !34
  %273 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool1124.not = icmp eq i32 %274, 0
  br i1 %tobool1124.not, label %do.body1116.do.body1141_crit_edge, label %cond.false1136

do.body1116.do.body1141_crit_edge:                ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1141

cond.false1136:                                   ; preds = %do.body1116
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %275(i32 noundef %274) #4
  br label %do.body1141

do.body1141:                                      ; preds = %cond.false1136, %do.body1116.do.body1141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !216
  tail call void @arm_heavy_mb() #4
  %276 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %port, align 4
  %add1144 = add i32 %277, 2
  %and1145 = and i32 %add1144, 1048575
  %add1146 = or i32 %and1145, -18874368
  %278 = inttoptr i32 %add1146 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 4) #4, !srcloc !34
  %279 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool1149.not = icmp eq i32 %280, 0
  br i1 %tobool1149.not, label %do.body1141.do.body1166_crit_edge, label %cond.false1161

do.body1141.do.body1166_crit_edge:                ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1166

cond.false1161:                                   ; preds = %do.body1141
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %281(i32 noundef %280) #4
  br label %do.body1166

do.body1166:                                      ; preds = %cond.false1161, %do.body1141.do.body1166_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !217
  tail call void @arm_heavy_mb() #4
  %282 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %port, align 4
  %and1170 = and i32 %283, 1048575
  %add1171 = or i32 %and1170, -18874368
  %284 = inttoptr i32 %add1171 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %284, i8 0) #4, !srcloc !34
  %285 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool1174.not = icmp eq i32 %286, 0
  br i1 %tobool1174.not, label %do.body1166.do.body1191_crit_edge, label %cond.false1186

do.body1166.do.body1191_crit_edge:                ; preds = %do.body1166
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1191

cond.false1186:                                   ; preds = %do.body1166
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %287(i32 noundef %286) #4
  br label %do.body1191

do.body1191:                                      ; preds = %cond.false1186, %do.body1166.do.body1191_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !218
  tail call void @arm_heavy_mb() #4
  %288 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %port, align 4
  %add1194 = add i32 %289, 2
  %and1195 = and i32 %add1194, 1048575
  %add1196 = or i32 %and1195, -18874368
  %290 = inttoptr i32 %add1196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %290, i8 5) #4, !srcloc !34
  %291 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool1199.not = icmp eq i32 %292, 0
  br i1 %tobool1199.not, label %do.body1191.do.body1216_crit_edge, label %cond.false1211

do.body1191.do.body1216_crit_edge:                ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1216

cond.false1211:                                   ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %293(i32 noundef %292) #4
  br label %do.body1216

do.body1216:                                      ; preds = %cond.false1211, %do.body1191.do.body1216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !219
  tail call void @arm_heavy_mb() #4
  %294 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %port, align 4
  %add1219 = add i32 %295, 2
  %and1220 = and i32 %add1219, 1048575
  %add1221 = or i32 %and1220, -18874368
  %296 = inttoptr i32 %add1221 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %296, i8 7) #4, !srcloc !34
  %297 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool1224.not = icmp eq i32 %298, 0
  br i1 %tobool1224.not, label %do.body1216.do.body1241_crit_edge, label %cond.false1236

do.body1216.do.body1241_crit_edge:                ; preds = %do.body1216
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1241

cond.false1236:                                   ; preds = %do.body1216
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %299(i32 noundef %298) #4
  br label %do.body1241

do.body1241:                                      ; preds = %cond.false1236, %do.body1216.do.body1241_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !220
  tail call void @arm_heavy_mb() #4
  %300 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %port, align 4
  %add1244 = add i32 %301, 2
  %and1245 = and i32 %add1244, 1048575
  %add1246 = or i32 %and1245, -18874368
  %302 = inttoptr i32 %add1246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %302, i8 5) #4, !srcloc !34
  %303 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool1249.not = icmp eq i32 %304, 0
  br i1 %tobool1249.not, label %do.body1241.do.body1266_crit_edge, label %cond.false1261

do.body1241.do.body1266_crit_edge:                ; preds = %do.body1241
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1266

cond.false1261:                                   ; preds = %do.body1241
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %305(i32 noundef %304) #4
  br label %do.body1266

do.body1266:                                      ; preds = %cond.false1261, %do.body1241.do.body1266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !221
  tail call void @arm_heavy_mb() #4
  %306 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %port, align 4
  %add1269 = add i32 %307, 2
  %and1270 = and i32 %add1269, 1048575
  %add1271 = or i32 %and1270, -18874368
  %308 = inttoptr i32 %add1271 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 4) #4, !srcloc !34
  %309 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool1274.not = icmp eq i32 %310, 0
  br i1 %tobool1274.not, label %do.body1266.do.body1291_crit_edge, label %cond.false1286

do.body1266.do.body1291_crit_edge:                ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1291

cond.false1286:                                   ; preds = %do.body1266
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %311(i32 noundef %310) #4
  br label %do.body1291

do.body1291:                                      ; preds = %cond.false1286, %do.body1266.do.body1291_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !222
  tail call void @arm_heavy_mb() #4
  %312 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %port, align 4
  %add1294 = add i32 %313, 2
  %and1295 = and i32 %add1294, 1048575
  %add1296 = or i32 %and1295, -18874368
  %314 = inttoptr i32 %add1296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %314, i8 4) #4, !srcloc !34
  %315 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool1299.not = icmp eq i32 %316, 0
  br i1 %tobool1299.not, label %do.body1291.do.body1316_crit_edge, label %cond.false1311

do.body1291.do.body1316_crit_edge:                ; preds = %do.body1291
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1316

cond.false1311:                                   ; preds = %do.body1291
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %317(i32 noundef %316) #4
  br label %do.body1316

do.body1316:                                      ; preds = %cond.false1311, %do.body1291.do.body1316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !223
  tail call void @arm_heavy_mb() #4
  %318 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %port, align 4
  %and1320 = and i32 %319, 1048575
  %add1321 = or i32 %and1320, -18874368
  %320 = inttoptr i32 %add1321 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %320, i8 2) #4, !srcloc !34
  %321 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool1324.not = icmp eq i32 %322, 0
  br i1 %tobool1324.not, label %do.body1316.do.body1341_crit_edge, label %cond.false1336

do.body1316.do.body1341_crit_edge:                ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1341

cond.false1336:                                   ; preds = %do.body1316
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %323(i32 noundef %322) #4
  br label %do.body1341

do.body1341:                                      ; preds = %cond.false1336, %do.body1316.do.body1341_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !224
  tail call void @arm_heavy_mb() #4
  %324 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %port, align 4
  %add1344 = add i32 %325, 2
  %and1345 = and i32 %add1344, 1048575
  %add1346 = or i32 %and1345, -18874368
  %326 = inttoptr i32 %add1346 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 5) #4, !srcloc !34
  %327 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool1349.not = icmp eq i32 %328, 0
  br i1 %tobool1349.not, label %do.body1341.do.body1366_crit_edge, label %cond.false1361

do.body1341.do.body1366_crit_edge:                ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1366

cond.false1361:                                   ; preds = %do.body1341
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %329(i32 noundef %328) #4
  br label %do.body1366

do.body1366:                                      ; preds = %cond.false1361, %do.body1341.do.body1366_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !225
  tail call void @arm_heavy_mb() #4
  %330 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %port, align 4
  %add1369 = add i32 %331, 2
  %and1370 = and i32 %add1369, 1048575
  %add1371 = or i32 %and1370, -18874368
  %332 = inttoptr i32 %add1371 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 13) #4, !srcloc !34
  %333 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool1374.not = icmp eq i32 %334, 0
  br i1 %tobool1374.not, label %do.body1366.do.body1391_crit_edge, label %cond.false1386

do.body1366.do.body1391_crit_edge:                ; preds = %do.body1366
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1391

cond.false1386:                                   ; preds = %do.body1366
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %335(i32 noundef %334) #4
  br label %do.body1391

do.body1391:                                      ; preds = %cond.false1386, %do.body1366.do.body1391_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !226
  tail call void @arm_heavy_mb() #4
  %336 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %port, align 4
  %add1394 = add i32 %337, 2
  %and1395 = and i32 %add1394, 1048575
  %add1396 = or i32 %and1395, -18874368
  %338 = inttoptr i32 %add1396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %338, i8 5) #4, !srcloc !34
  %339 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool1399.not = icmp eq i32 %340, 0
  br i1 %tobool1399.not, label %do.body1391.do.body1416_crit_edge, label %cond.false1411

do.body1391.do.body1416_crit_edge:                ; preds = %do.body1391
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1416

cond.false1411:                                   ; preds = %do.body1391
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %341(i32 noundef %340) #4
  br label %do.body1416

do.body1416:                                      ; preds = %cond.false1411, %do.body1391.do.body1416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !227
  tail call void @arm_heavy_mb() #4
  %342 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %port, align 4
  %add1419 = add i32 %343, 2
  %and1420 = and i32 %add1419, 1048575
  %add1421 = or i32 %and1420, -18874368
  %344 = inttoptr i32 %add1421 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 13) #4, !srcloc !34
  %345 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool1424.not = icmp eq i32 %346, 0
  br i1 %tobool1424.not, label %do.body1416.do.body1441_crit_edge, label %cond.false1436

do.body1416.do.body1441_crit_edge:                ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1441

cond.false1436:                                   ; preds = %do.body1416
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %347(i32 noundef %346) #4
  br label %do.body1441

do.body1441:                                      ; preds = %cond.false1436, %do.body1416.do.body1441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !228
  tail call void @arm_heavy_mb() #4
  %348 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %port, align 4
  %add1444 = add i32 %349, 2
  %and1445 = and i32 %add1444, 1048575
  %add1446 = or i32 %and1445, -18874368
  %350 = inttoptr i32 %add1446 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %350, i8 5) #4, !srcloc !34
  %351 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool1449.not = icmp eq i32 %352, 0
  br i1 %tobool1449.not, label %do.body1441.do.body1466_crit_edge, label %cond.false1461

do.body1441.do.body1466_crit_edge:                ; preds = %do.body1441
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1466

cond.false1461:                                   ; preds = %do.body1441
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %353(i32 noundef %352) #4
  br label %do.body1466

do.body1466:                                      ; preds = %cond.false1461, %do.body1441.do.body1466_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !229
  tail call void @arm_heavy_mb() #4
  %354 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %port, align 4
  %add1469 = add i32 %355, 2
  %and1470 = and i32 %add1469, 1048575
  %add1471 = or i32 %and1470, -18874368
  %356 = inttoptr i32 %add1471 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %356, i8 4) #4, !srcloc !34
  %357 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool1474.not = icmp eq i32 %358, 0
  br i1 %tobool1474.not, label %do.body1466.do.body1491_crit_edge, label %cond.false1486

do.body1466.do.body1491_crit_edge:                ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1491

cond.false1486:                                   ; preds = %do.body1466
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %359(i32 noundef %358) #4
  br label %do.body1491

do.body1491:                                      ; preds = %cond.false1486, %do.body1466.do.body1491_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !230
  tail call void @arm_heavy_mb() #4
  %360 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %port, align 4
  %add1494 = add i32 %361, 2
  %and1495 = and i32 %add1494, 1048575
  %add1496 = or i32 %and1495, -18874368
  %362 = inttoptr i32 %add1496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 4) #4, !srcloc !34
  %363 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool1499.not = icmp eq i32 %364, 0
  br i1 %tobool1499.not, label %do.body1491.do.body1516_crit_edge, label %cond.false1511

do.body1491.do.body1516_crit_edge:                ; preds = %do.body1491
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1516

cond.false1511:                                   ; preds = %do.body1491
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %365(i32 noundef %364) #4
  br label %do.body1516

do.body1516:                                      ; preds = %cond.false1511, %do.body1491.do.body1516_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !231
  tail call void @arm_heavy_mb() #4
  %366 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %port, align 4
  %and1520 = and i32 %367, 1048575
  %add1521 = or i32 %and1520, -18874368
  %368 = inttoptr i32 %add1521 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %368, i8 8) #4, !srcloc !34
  %369 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool1524.not = icmp eq i32 %370, 0
  br i1 %tobool1524.not, label %do.body1516.do.body1541_crit_edge, label %cond.false1536

do.body1516.do.body1541_crit_edge:                ; preds = %do.body1516
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1541

cond.false1536:                                   ; preds = %do.body1516
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %371 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %371(i32 noundef %370) #4
  br label %do.body1541

do.body1541:                                      ; preds = %cond.false1536, %do.body1516.do.body1541_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !232
  tail call void @arm_heavy_mb() #4
  %372 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %port, align 4
  %add1544 = add i32 %373, 2
  %and1545 = and i32 %add1544, 1048575
  %add1546 = or i32 %and1545, -18874368
  %374 = inttoptr i32 %add1546 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %374, i8 5) #4, !srcloc !34
  %375 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool1549.not = icmp eq i32 %376, 0
  br i1 %tobool1549.not, label %do.body1541.do.body1566_crit_edge, label %cond.false1561

do.body1541.do.body1566_crit_edge:                ; preds = %do.body1541
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1566

cond.false1561:                                   ; preds = %do.body1541
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %377(i32 noundef %376) #4
  br label %do.body1566

do.body1566:                                      ; preds = %cond.false1561, %do.body1541.do.body1566_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !233
  tail call void @arm_heavy_mb() #4
  %378 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %port, align 4
  %add1569 = add i32 %379, 2
  %and1570 = and i32 %add1569, 1048575
  %add1571 = or i32 %and1570, -18874368
  %380 = inttoptr i32 %add1571 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %380, i8 7) #4, !srcloc !34
  %381 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %tobool1574.not = icmp eq i32 %382, 0
  br i1 %tobool1574.not, label %do.body1566.do.body1591_crit_edge, label %cond.false1586

do.body1566.do.body1591_crit_edge:                ; preds = %do.body1566
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1591

cond.false1586:                                   ; preds = %do.body1566
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %383(i32 noundef %382) #4
  br label %do.body1591

do.body1591:                                      ; preds = %cond.false1586, %do.body1566.do.body1591_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !234
  tail call void @arm_heavy_mb() #4
  %384 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %port, align 4
  %add1594 = add i32 %385, 2
  %and1595 = and i32 %add1594, 1048575
  %add1596 = or i32 %and1595, -18874368
  %386 = inttoptr i32 %add1596 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %386, i8 5) #4, !srcloc !34
  %387 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool1599.not = icmp eq i32 %388, 0
  br i1 %tobool1599.not, label %do.body1591.do.body1616_crit_edge, label %cond.false1611

do.body1591.do.body1616_crit_edge:                ; preds = %do.body1591
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1616

cond.false1611:                                   ; preds = %do.body1591
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %389(i32 noundef %388) #4
  br label %do.body1616

do.body1616:                                      ; preds = %cond.false1611, %do.body1591.do.body1616_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !235
  tail call void @arm_heavy_mb() #4
  %390 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %port, align 4
  %add1619 = add i32 %391, 2
  %and1620 = and i32 %add1619, 1048575
  %add1621 = or i32 %and1620, -18874368
  %392 = inttoptr i32 %add1621 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %392, i8 4) #4, !srcloc !34
  %393 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %tobool1624.not = icmp eq i32 %394, 0
  br i1 %tobool1624.not, label %do.body1616.if.end_crit_edge, label %do.body1616.if.end.sink.split_crit_edge

do.body1616.if.end.sink.split_crit_edge:          ; preds = %do.body1616
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

do.body1616.if.end_crit_edge:                     ; preds = %do.body1616
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.sink.split:                                ; preds = %do.body1616.if.end.sink.split_crit_edge, %do.body916.if.end.sink.split_crit_edge
  %.sink = phi i32 [ %232, %do.body916.if.end.sink.split_crit_edge ], [ %394, %do.body1616.if.end.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %395(i32 noundef %.sink) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %do.body1616.if.end_crit_edge, %do.body916.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !236
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !237
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 7) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !238
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add39 = add i32 %13, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !239
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add63 = add i32 %19, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 12) #4, !srcloc !34
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !240
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add87 = add i32 %25, 2
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #4, !srcloc !34
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool92.not = icmp eq i32 %28, 0
  br i1 %tobool92.not, label %do.body84.do.body108_crit_edge, label %cond.false103

do.body84.do.body108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body108

cond.false103:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body108

do.body108:                                       ; preds = %cond.false103, %do.body84.do.body108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !241
  tail call void @arm_heavy_mb() #4
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %30 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %31 to i8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and112 = and i32 %33, 1048575
  %add113 = or i32 %and112, -18874368
  %34 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv) #4, !srcloc !34
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool116.not = icmp eq i32 %36, 0
  br i1 %tobool116.not, label %do.body108.do.body133_crit_edge, label %cond.false128

do.body108.do.body133_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body133

cond.false128:                                    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #4
  br label %do.body133

do.body133:                                       ; preds = %cond.false128, %do.body108.do.body133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !242
  tail call void @arm_heavy_mb() #4
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %38 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saved_r2, align 4
  %conv135 = trunc i32 %39 to i8
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add137 = add i32 %41, 2
  %and138 = and i32 %add137, 1048575
  %add139 = or i32 %and138, -18874368
  %42 = inttoptr i32 %add139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv135) #4, !srcloc !34
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool142.not = icmp eq i32 %44, 0
  br i1 %tobool142.not, label %do.body133.cond.end158_crit_edge, label %cond.false154

do.body133.cond.end158_crit_edge:                 ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end158

cond.false154:                                    ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false154, %do.body133.cond.end158_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @on20_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %3) #7
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @__const.on20_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %5, ptr noundef %7, i32 noundef %9) #7
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/on20.c", i32 151, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_on20__162_152_on20_init6, !4, !"__initcall__kmod_on20__162_152_on20_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/on20.c", i32 152, i32 1}
!5 = !{ptr @__exitcall_on20_exit, !6, !"__exitcall_on20_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/on20.c", i32 153, i32 1}
!7 = !{ptr @on20, !8, !"on20", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/on20.c", i32 125, i32 27}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/on20.c", i32 116, i32 36}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/on20.c", i32 116, i32 44}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/on20.c", i32 118, i32 9}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @on20_log_adapter._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @on20_log_adapter._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/block/paride/on20.c", i32 120, i32 9}
!22 = !{ptr @on20_log_adapter._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @on20_log_adapter._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152146190}
!34 = !{i64 4531320}
!35 = !{i64 2152147200}
!36 = !{i64 2152148210}
!37 = !{i64 2152149226}
!38 = !{i64 2152150236}
!39 = !{i64 2152151252}
!40 = !{i64 2152152262}
!41 = !{i64 2152153272}
!42 = !{i64 2152154321}
!43 = !{i64 2152155331}
!44 = !{i64 2152156341}
!45 = !{i64 2152157351}
!46 = !{i64 2152158361}
!47 = !{i64 2152159371}
!48 = !{i64 2152160436}
!49 = !{i64 2152161446}
!50 = !{i64 2152162456}
!51 = !{i64 2152163472}
!52 = !{i64 2152164482}
!53 = !{i64 2152165498}
!54 = !{i64 2152166508}
!55 = !{i64 2152167518}
!56 = !{i64 2152168569}
!57 = !{i64 2152169585}
!58 = !{i64 2152170595}
!59 = !{i64 2152171605}
!60 = !{i64 2152172615}
!61 = !{i64 2152173625}
!62 = !{i64 2152174690}
!63 = !{i64 2152175700}
!64 = !{i64 2152176710}
!65 = !{i64 2152177726}
!66 = !{i64 2152178736}
!67 = !{i64 2152179752}
!68 = !{i64 2152180762}
!69 = !{i64 2152181772}
!70 = !{i64 2152182823}
!71 = !{i64 2152183839}
!72 = !{i64 2152184849}
!73 = !{i64 2152185859}
!74 = !{i64 2152186869}
!75 = !{i64 2152187879}
!76 = !{i64 2152102690}
!77 = !{i64 2152103700}
!78 = !{i64 2152104710}
!79 = !{i64 2152105726}
!80 = !{i64 2152106736}
!81 = !{i64 2152107752}
!82 = !{i64 2152108762}
!83 = !{i64 2152109772}
!84 = !{i64 2152110821}
!85 = !{i64 2152111831}
!86 = !{i64 2152112841}
!87 = !{i64 2152113851}
!88 = !{i64 2152114861}
!89 = !{i64 2152115871}
!90 = !{i64 2152116936}
!91 = !{i64 2152117946}
!92 = !{i64 2152118956}
!93 = !{i64 2152119972}
!94 = !{i64 2152120982}
!95 = !{i64 2152121998}
!96 = !{i64 2152123008}
!97 = !{i64 2152124018}
!98 = !{i64 2152125028}
!99 = !{i64 2152126038}
!100 = !{i64 4531715}
!101 = !{i64 2152127733}
!102 = !{i64 2152128001}
!103 = !{i64 2152129011}
!104 = !{i64 2152130706}
!105 = !{i64 2152130974}
!106 = !{i64 2152131984}
!107 = !{i64 2152132994}
!108 = !{i64 2152134004}
!109 = !{i64 2152135014}
!110 = !{i64 2152136053}
!111 = !{i64 2152141133}
!112 = !{i64 2152142828}
!113 = !{i64 2152143096}
!114 = !{i64 2152144115}
!115 = !{i64 2152145125}
!116 = !{i64 2152295422}
!117 = !{i64 2152296432}
!118 = !{i64 2152297442}
!119 = !{i64 2152298458}
!120 = !{i64 2152299468}
!121 = !{i64 2152300484}
!122 = !{i64 2152301494}
!123 = !{i64 2152302504}
!124 = !{i64 2152303553}
!125 = !{i64 2152304563}
!126 = !{i64 2152305573}
!127 = !{i64 2152306583}
!128 = !{i64 2152307593}
!129 = !{i64 2152308603}
!130 = !{i64 2152309668}
!131 = !{i64 2152310678}
!132 = !{i64 2152311688}
!133 = !{i64 2152312704}
!134 = !{i64 2152313714}
!135 = !{i64 2152314730}
!136 = !{i64 2152315740}
!137 = !{i64 2152316750}
!138 = !{i64 2152317760}
!139 = !{i64 2152318785}
!140 = !{i64 2152319795}
!141 = !{i64 2152320805}
!142 = !{i64 2152263062}
!143 = !{i64 2152264072}
!144 = !{i64 2152265082}
!145 = !{i64 2152266098}
!146 = !{i64 2152267108}
!147 = !{i64 2152268124}
!148 = !{i64 2152269134}
!149 = !{i64 2152270144}
!150 = !{i64 2152271193}
!151 = !{i64 2152272203}
!152 = !{i64 2152273213}
!153 = !{i64 2152274223}
!154 = !{i64 2152275233}
!155 = !{i64 2152276243}
!156 = !{i64 2152277308}
!157 = !{i64 2152278318}
!158 = !{i64 2152279328}
!159 = !{i64 2152280344}
!160 = !{i64 2152281354}
!161 = !{i64 2152282370}
!162 = !{i64 2152283380}
!163 = !{i64 2152284390}
!164 = !{i64 2152286419}
!165 = !{i64 2152288114}
!166 = !{i64 2152290077}
!167 = !{i64 2152290345}
!168 = !{i64 2152291355}
!169 = !{i64 2152293050}
!170 = !{i64 2152293318}
!171 = !{i64 2152294357}
!172 = !{i64 2152189574}
!173 = !{i64 2152190527}
!174 = !{i64 2152190795}
!175 = !{i64 2152191805}
!176 = !{i64 2152192821}
!177 = !{i64 2152193831}
!178 = !{i64 2152194841}
!179 = !{i64 2152195851}
!180 = !{i64 2152196861}
!181 = !{i64 2152197871}
!182 = !{i64 2152199946}
!183 = !{i64 2152200956}
!184 = !{i64 2152201972}
!185 = !{i64 2152202982}
!186 = !{i64 2152203998}
!187 = !{i64 2152205008}
!188 = !{i64 2152206018}
!189 = !{i64 2152207067}
!190 = !{i64 2152208077}
!191 = !{i64 2152209087}
!192 = !{i64 2152210097}
!193 = !{i64 2152211107}
!194 = !{i64 2152212117}
!195 = !{i64 2152213182}
!196 = !{i64 2152214192}
!197 = !{i64 2152215202}
!198 = !{i64 2152216218}
!199 = !{i64 2152217228}
!200 = !{i64 2152218244}
!201 = !{i64 2152219254}
!202 = !{i64 2152220264}
!203 = !{i64 2152221313}
!204 = !{i64 2152222323}
!205 = !{i64 2152223333}
!206 = !{i64 2152224343}
!207 = !{i64 2152225353}
!208 = !{i64 2152226363}
!209 = !{i64 2152228438}
!210 = !{i64 2152229448}
!211 = !{i64 2152230464}
!212 = !{i64 2152231474}
!213 = !{i64 2152232490}
!214 = !{i64 2152233500}
!215 = !{i64 2152234510}
!216 = !{i64 2152235559}
!217 = !{i64 2152236569}
!218 = !{i64 2152237579}
!219 = !{i64 2152238589}
!220 = !{i64 2152239599}
!221 = !{i64 2152240609}
!222 = !{i64 2152241674}
!223 = !{i64 2152242684}
!224 = !{i64 2152243694}
!225 = !{i64 2152244710}
!226 = !{i64 2152245720}
!227 = !{i64 2152246736}
!228 = !{i64 2152247746}
!229 = !{i64 2152248756}
!230 = !{i64 2152249805}
!231 = !{i64 2152250815}
!232 = !{i64 2152251825}
!233 = !{i64 2152252835}
!234 = !{i64 2152253845}
!235 = !{i64 2152254855}
!236 = !{i64 2152255865}
!237 = !{i64 2152256875}
!238 = !{i64 2152257885}
!239 = !{i64 2152258901}
!240 = !{i64 2152259911}
!241 = !{i64 2152260954}
!242 = !{i64 2152261997}
