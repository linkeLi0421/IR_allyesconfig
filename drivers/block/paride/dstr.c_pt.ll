; ModuleID = '/llk/IR_all_yes/drivers/block/paride/dstr.c_pt.bc'
source_filename = "../drivers/block/paride/dstr.c"
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

@dstr = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"dstr\00\00\00\00", i32 0, i32 5, i32 2, i32 1, i32 1, ptr @dstr_write_regr, ptr @dstr_read_regr, ptr @dstr_write_block, ptr @dstr_read_block, ptr @dstr_connect, ptr @dstr_disconnect, ptr null, ptr null, ptr null, ptr @dstr_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"dstr.file=drivers/block/paride/dstr\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"dstr.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_dstr__162_232_dstr_init6 = internal global ptr @dstr_init, section ".initcall6.init", align 4
@__exitcall_dstr_exit = internal global ptr @dstr_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 64], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.dstr_log_adapter.mode_string = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4
@dstr_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: dstr %s, DataStor EP2000 at 0x%x, \00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dstr_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/dstr.c\00", [36 x i8] zeroinitializer }, align 32
@dstr_log_adapter._entry_ptr = internal global ptr @dstr_log_adapter._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@dstr_log_adapter._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dstr_log_adapter._entry_ptr.11 = internal global ptr @dstr_log_adapter._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"dstr\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 205, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 45, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 195, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 195, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 195, i32 52 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 196, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 196, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 198, i32 9 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [31 x i8] c"../drivers/block/paride/dstr.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 200, i32 9 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_dstr_exit, ptr @__initcall__kmod_dstr__162_232_dstr_init6, ptr @dstr_exit, ptr @dstr_log_adapter._entry, ptr @dstr_log_adapter._entry.9, ptr @dstr_log_adapter._entry_ptr, ptr @dstr_log_adapter._entry_ptr.11, ptr @dstr, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dstr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dstr_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dstr_log_adapter._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dstr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @dstr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dstr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @dstr) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_write_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -127) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add17 = add i32 %9, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 5) #5, !srcloc !42
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %do.body13.do.body38_crit_edge, label %cond.false33

do.body13.do.body38_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

cond.false33:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body13.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add42 = add i32 %15, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %16 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 13) #5, !srcloc !42
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool47.not = icmp eq i32 %18, 0
  br i1 %tobool47.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add67 = add i32 %21, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %22 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 5) #5, !srcloc !42
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool72.not = icmp eq i32 %24, 0
  br i1 %tobool72.not, label %do.body63.do.body88_crit_edge, label %cond.false83

do.body63.do.body88_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

cond.false83:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body88

do.body88:                                        ; preds = %cond.false83, %do.body63.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add92 = add i32 %27, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %28 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 4) #5, !srcloc !42
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool97.not = icmp eq i32 %30, 0
  br i1 %tobool97.not, label %do.body88.cond.end112_crit_edge, label %cond.false108

do.body88.cond.end112_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end112

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false108, %do.body88.cond.end112_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp113 = icmp sgt i32 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and119 = and i32 %35, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  br i1 %cmp113, label %do.body114, label %do.body139

do.body114:                                       ; preds = %cond.end112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 17) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body114.do.body164_crit_edge, label %do.body114.do.body164.sink.split_crit_edge

do.body114.do.body164.sink.split_crit_edge:       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164.sink.split

do.body114.do.body164_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

do.body139:                                       ; preds = %cond.end112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 1) #5, !srcloc !42
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool148.not = icmp eq i32 %40, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %do.body139.do.body164.sink.split_crit_edge

do.body139.do.body164.sink.split_crit_edge:       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164.sink.split

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

do.body164.sink.split:                            ; preds = %do.body139.do.body164.sink.split_crit_edge, %do.body114.do.body164.sink.split_crit_edge
  %.sink = phi i32 [ %38, %do.body114.do.body164.sink.split_crit_edge ], [ %40, %do.body139.do.body164.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %.sink) #5
  br label %do.body164

do.body164:                                       ; preds = %do.body164.sink.split, %do.body139.do.body164_crit_edge, %do.body114.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add168 = add i32 %43, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %44 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 5) #5, !srcloc !42
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool173.not = icmp eq i32 %46, 0
  br i1 %tobool173.not, label %do.body164.do.body189_crit_edge, label %cond.false184

do.body164.do.body189_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body189

cond.false184:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body189

do.body189:                                       ; preds = %cond.false184, %do.body164.do.body189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add193 = add i32 %49, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %50 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 7) #5, !srcloc !42
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool198.not = icmp eq i32 %52, 0
  br i1 %tobool198.not, label %do.body189.do.body214_crit_edge, label %cond.false209

do.body189.do.body214_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

cond.false209:                                    ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body214

do.body214:                                       ; preds = %cond.false209, %do.body189.do.body214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add218 = add i32 %55, 2
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %56 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 5) #5, !srcloc !42
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool223.not = icmp eq i32 %58, 0
  br i1 %tobool223.not, label %do.body214.do.body239_crit_edge, label %cond.false234

do.body214.do.body239_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body239

cond.false234:                                    ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body239

do.body239:                                       ; preds = %cond.false234, %do.body214.do.body239_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add243 = add i32 %61, 2
  %and244 = and i32 %add243, 1048575
  %add245 = or i32 %and244, -18874368
  %62 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 4) #5, !srcloc !42
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool248.not = icmp eq i32 %64, 0
  br i1 %tobool248.not, label %do.body239.do.body264_crit_edge, label %cond.false259

do.body239.do.body264_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body264

cond.false259:                                    ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body264

do.body264:                                       ; preds = %cond.false259, %do.body239.do.body264_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %and269 = and i32 %67, 1048575
  %add270 = or i32 %and269, -18874368
  %68 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv) #5, !srcloc !42
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool273.not = icmp eq i32 %70, 0
  br i1 %tobool273.not, label %do.body264.do.body290_crit_edge, label %cond.false285

do.body264.do.body290_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body290

cond.false285:                                    ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %do.body290

do.body290:                                       ; preds = %cond.false285, %do.body264.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add294 = add i32 %73, 2
  %and295 = and i32 %add294, 1048575
  %add296 = or i32 %and295, -18874368
  %74 = inttoptr i32 %add296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #5, !srcloc !42
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool299.not = icmp eq i32 %76, 0
  br i1 %tobool299.not, label %do.body290.do.body316_crit_edge, label %cond.false311

do.body290.do.body316_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body316

cond.false311:                                    ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body316

do.body316:                                       ; preds = %cond.false311, %do.body290.do.body316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add320 = add i32 %79, 2
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %80 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 13) #5, !srcloc !42
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool325.not = icmp eq i32 %82, 0
  br i1 %tobool325.not, label %do.body316.do.body342_crit_edge, label %cond.false337

do.body316.do.body342_crit_edge:                  ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body342

cond.false337:                                    ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body342

do.body342:                                       ; preds = %cond.false337, %do.body316.do.body342_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add346 = add i32 %85, 2
  %and347 = and i32 %add346, 1048575
  %add348 = or i32 %and347, -18874368
  %86 = inttoptr i32 %add348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 5) #5, !srcloc !42
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool351.not = icmp eq i32 %88, 0
  br i1 %tobool351.not, label %do.body342.do.body368_crit_edge, label %cond.false363

do.body342.do.body368_crit_edge:                  ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body368

cond.false363:                                    ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body368

do.body368:                                       ; preds = %cond.false363, %do.body342.do.body368_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add372 = add i32 %91, 2
  %and373 = and i32 %add372, 1048575
  %add374 = or i32 %and373, -18874368
  %92 = inttoptr i32 %add374 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 4) #5, !srcloc !42
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool377.not = icmp eq i32 %94, 0
  br i1 %tobool377.not, label %do.body368.cond.end393_crit_edge, label %cond.false389

do.body368.cond.end393_crit_edge:                 ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end393

cond.false389:                                    ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false389, %do.body368.cond.end393_crit_edge
  %96 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %97, label %cond.end393.sw.epilog_crit_edge [
    i32 0, label %cond.end393.do.body395_crit_edge
    i32 1, label %cond.end393.do.body395_crit_edge712
    i32 2, label %cond.end393.do.body527_crit_edge
    i32 3, label %cond.end393.do.body527_crit_edge713
    i32 4, label %cond.end393.do.body527_crit_edge714
  ]

cond.end393.do.body527_crit_edge714:              ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body527

cond.end393.do.body527_crit_edge713:              ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body527

cond.end393.do.body527_crit_edge:                 ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body527

cond.end393.do.body395_crit_edge712:              ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body395

cond.end393.do.body395_crit_edge:                 ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body395

cond.end393.sw.epilog_crit_edge:                  ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body395:                                       ; preds = %cond.end393.do.body395_crit_edge, %cond.end393.do.body395_crit_edge712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %conv398 = trunc i32 %val to i8
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %and401 = and i32 %100, 1048575
  %add402 = or i32 %and401, -18874368
  %101 = inttoptr i32 %add402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %conv398) #5, !srcloc !42
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool405.not = icmp eq i32 %103, 0
  br i1 %tobool405.not, label %do.body395.do.body422_crit_edge, label %cond.false417

do.body395.do.body422_crit_edge:                  ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body422

cond.false417:                                    ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  br label %do.body422

do.body422:                                       ; preds = %cond.false417, %do.body395.do.body422_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add426 = add i32 %106, 2
  %and427 = and i32 %add426, 1048575
  %add428 = or i32 %and427, -18874368
  %107 = inttoptr i32 %add428 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 5) #5, !srcloc !42
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool431.not = icmp eq i32 %109, 0
  br i1 %tobool431.not, label %do.body422.do.body448_crit_edge, label %cond.false443

do.body422.do.body448_crit_edge:                  ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body448

cond.false443:                                    ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #5
  br label %do.body448

do.body448:                                       ; preds = %cond.false443, %do.body422.do.body448_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add452 = add i32 %112, 2
  %and453 = and i32 %add452, 1048575
  %add454 = or i32 %and453, -18874368
  %113 = inttoptr i32 %add454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 7) #5, !srcloc !42
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool457.not = icmp eq i32 %115, 0
  br i1 %tobool457.not, label %do.body448.do.body474_crit_edge, label %cond.false469

do.body448.do.body474_crit_edge:                  ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body474

cond.false469:                                    ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body474

do.body474:                                       ; preds = %cond.false469, %do.body448.do.body474_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %add478 = add i32 %118, 2
  %and479 = and i32 %add478, 1048575
  %add480 = or i32 %and479, -18874368
  %119 = inttoptr i32 %add480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 5) #5, !srcloc !42
  %120 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool483.not = icmp eq i32 %121, 0
  br i1 %tobool483.not, label %do.body474.do.body500_crit_edge, label %cond.false495

do.body474.do.body500_crit_edge:                  ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body500

cond.false495:                                    ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #5
  br label %do.body500

do.body500:                                       ; preds = %cond.false495, %do.body474.do.body500_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %123 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port, align 4
  %add504 = add i32 %124, 2
  %and505 = and i32 %add504, 1048575
  %add506 = or i32 %and505, -18874368
  %125 = inttoptr i32 %add506 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 4) #5, !srcloc !42
  %126 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool509.not = icmp eq i32 %127, 0
  br i1 %tobool509.not, label %do.body500.sw.epilog_crit_edge, label %do.body500.sw.epilog.sink.split_crit_edge

do.body500.sw.epilog.sink.split_crit_edge:        ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body500.sw.epilog_crit_edge:                   ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body527:                                       ; preds = %cond.end393.do.body527_crit_edge, %cond.end393.do.body527_crit_edge713, %cond.end393.do.body527_crit_edge714
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %conv530 = trunc i32 %val to i8
  %128 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port, align 4
  %add532 = add i32 %129, 4
  %and533 = and i32 %add532, 1048575
  %add534 = or i32 %and533, -18874368
  %130 = inttoptr i32 %add534 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 %conv530) #5, !srcloc !42
  %131 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool537.not = icmp eq i32 %132, 0
  br i1 %tobool537.not, label %do.body527.sw.epilog_crit_edge, label %do.body527.sw.epilog.sink.split_crit_edge

do.body527.sw.epilog.sink.split_crit_edge:        ; preds = %do.body527
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body527.sw.epilog_crit_edge:                   ; preds = %do.body527
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body527.sw.epilog.sink.split_crit_edge, %do.body500.sw.epilog.sink.split_crit_edge
  %.sink710 = phi i32 [ %127, %do.body500.sw.epilog.sink.split_crit_edge ], [ %132, %do.body527.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %.sink710) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body527.sw.epilog_crit_edge, %do.body500.sw.epilog_crit_edge, %cond.end393.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dstr_read_regr(ptr noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -127) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %cond.false8

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add17 = add i32 %9, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 5) #5, !srcloc !42
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %do.body13.do.body38_crit_edge, label %cond.false33

do.body13.do.body38_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

cond.false33:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %do.body13.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add42 = add i32 %15, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %16 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 13) #5, !srcloc !42
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool47.not = icmp eq i32 %18, 0
  br i1 %tobool47.not, label %do.body38.do.body63_crit_edge, label %cond.false58

do.body38.do.body63_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %do.body38.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add67 = add i32 %21, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %22 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 5) #5, !srcloc !42
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool72.not = icmp eq i32 %24, 0
  br i1 %tobool72.not, label %do.body63.do.body88_crit_edge, label %cond.false83

do.body63.do.body88_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

cond.false83:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body88

do.body88:                                        ; preds = %cond.false83, %do.body63.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add92 = add i32 %27, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %28 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 4) #5, !srcloc !42
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool97.not = icmp eq i32 %30, 0
  br i1 %tobool97.not, label %do.body88.cond.end112_crit_edge, label %cond.false108

do.body88.cond.end112_crit_edge:                  ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end112

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false108, %do.body88.cond.end112_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool113.not = icmp eq i32 %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and144 = and i32 %35, 1048575
  %add145 = or i32 %and144, -18874368
  %36 = inttoptr i32 %add145 to ptr
  br i1 %tobool113.not, label %do.body139, label %do.body114

do.body114:                                       ; preds = %cond.end112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 17) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body114.do.body164_crit_edge, label %do.body114.do.body164.sink.split_crit_edge

do.body114.do.body164.sink.split_crit_edge:       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164.sink.split

do.body114.do.body164_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

do.body139:                                       ; preds = %cond.end112
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 1) #5, !srcloc !42
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool148.not = icmp eq i32 %40, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %do.body139.do.body164.sink.split_crit_edge

do.body139.do.body164.sink.split_crit_edge:       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164.sink.split

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

do.body164.sink.split:                            ; preds = %do.body139.do.body164.sink.split_crit_edge, %do.body114.do.body164.sink.split_crit_edge
  %.sink = phi i32 [ %38, %do.body114.do.body164.sink.split_crit_edge ], [ %40, %do.body139.do.body164.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %.sink) #5
  br label %do.body164

do.body164:                                       ; preds = %do.body164.sink.split, %do.body139.do.body164_crit_edge, %do.body114.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add168 = add i32 %43, 2
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %44 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 5) #5, !srcloc !42
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool173.not = icmp eq i32 %46, 0
  br i1 %tobool173.not, label %do.body164.do.body189_crit_edge, label %cond.false184

do.body164.do.body189_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body189

cond.false184:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body189

do.body189:                                       ; preds = %cond.false184, %do.body164.do.body189_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add193 = add i32 %49, 2
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %50 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 7) #5, !srcloc !42
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool198.not = icmp eq i32 %52, 0
  br i1 %tobool198.not, label %do.body189.do.body214_crit_edge, label %cond.false209

do.body189.do.body214_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

cond.false209:                                    ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body214

do.body214:                                       ; preds = %cond.false209, %do.body189.do.body214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add218 = add i32 %55, 2
  %and219 = and i32 %add218, 1048575
  %add220 = or i32 %and219, -18874368
  %56 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 5) #5, !srcloc !42
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool223.not = icmp eq i32 %58, 0
  br i1 %tobool223.not, label %do.body214.do.body239_crit_edge, label %cond.false234

do.body214.do.body239_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body239

cond.false234:                                    ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body239

do.body239:                                       ; preds = %cond.false234, %do.body214.do.body239_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add243 = add i32 %61, 2
  %and244 = and i32 %add243, 1048575
  %add245 = or i32 %and244, -18874368
  %62 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 4) #5, !srcloc !42
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool248.not = icmp eq i32 %64, 0
  br i1 %tobool248.not, label %do.body239.do.body264_crit_edge, label %cond.false259

do.body239.do.body264_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body264

cond.false259:                                    ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body264

do.body264:                                       ; preds = %cond.false259, %do.body239.do.body264_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %and269 = and i32 %67, 1048575
  %add270 = or i32 %and269, -18874368
  %68 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv) #5, !srcloc !42
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool273.not = icmp eq i32 %70, 0
  br i1 %tobool273.not, label %do.body264.do.body290_crit_edge, label %cond.false285

do.body264.do.body290_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body290

cond.false285:                                    ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %do.body290

do.body290:                                       ; preds = %cond.false285, %do.body264.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %add294 = add i32 %73, 2
  %and295 = and i32 %add294, 1048575
  %add296 = or i32 %and295, -18874368
  %74 = inttoptr i32 %add296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 5) #5, !srcloc !42
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool299.not = icmp eq i32 %76, 0
  br i1 %tobool299.not, label %do.body290.do.body316_crit_edge, label %cond.false311

do.body290.do.body316_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body316

cond.false311:                                    ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %76) #5
  br label %do.body316

do.body316:                                       ; preds = %cond.false311, %do.body290.do.body316_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add320 = add i32 %79, 2
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %80 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 13) #5, !srcloc !42
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool325.not = icmp eq i32 %82, 0
  br i1 %tobool325.not, label %do.body316.do.body342_crit_edge, label %cond.false337

do.body316.do.body342_crit_edge:                  ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body342

cond.false337:                                    ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %82) #5
  br label %do.body342

do.body342:                                       ; preds = %cond.false337, %do.body316.do.body342_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add346 = add i32 %85, 2
  %and347 = and i32 %add346, 1048575
  %add348 = or i32 %and347, -18874368
  %86 = inttoptr i32 %add348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 5) #5, !srcloc !42
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool351.not = icmp eq i32 %88, 0
  br i1 %tobool351.not, label %do.body342.do.body368_crit_edge, label %cond.false363

do.body342.do.body368_crit_edge:                  ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body368

cond.false363:                                    ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %do.body368

do.body368:                                       ; preds = %cond.false363, %do.body342.do.body368_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add372 = add i32 %91, 2
  %and373 = and i32 %add372, 1048575
  %add374 = or i32 %and373, -18874368
  %92 = inttoptr i32 %add374 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 4) #5, !srcloc !42
  %93 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool377.not = icmp eq i32 %94, 0
  br i1 %tobool377.not, label %do.body368.cond.end393_crit_edge, label %cond.false389

do.body368.cond.end393_crit_edge:                 ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end393

cond.false389:                                    ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #5
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false389, %do.body368.cond.end393_crit_edge
  %96 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %97, label %cond.end393.cleanup_crit_edge [
    i32 0, label %do.body395
    i32 1, label %do.body562
    i32 2, label %cond.end393.do.body669_crit_edge
    i32 3, label %cond.end393.do.body669_crit_edge966
    i32 4, label %cond.end393.do.body669_crit_edge967
  ]

cond.end393.do.body669_crit_edge967:              ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body669

cond.end393.do.body669_crit_edge966:              ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body669

cond.end393.do.body669_crit_edge:                 ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body669

cond.end393.cleanup_crit_edge:                    ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body395:                                       ; preds = %cond.end393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add399 = add i32 %100, 2
  %and400 = and i32 %add399, 1048575
  %add401 = or i32 %and400, -18874368
  %101 = inttoptr i32 %add401 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 6) #5, !srcloc !42
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool404.not = icmp eq i32 %103, 0
  br i1 %tobool404.not, label %do.body395.cond.end438_crit_edge, label %cond.false416

do.body395.cond.end438_crit_edge:                 ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end438

cond.false416:                                    ; preds = %do.body395
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #5
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool422.not = icmp eq i32 %.pr, 0
  br i1 %tobool422.not, label %cond.false416.cond.end438_crit_edge, label %cond.false434

cond.false416.cond.end438_crit_edge:              ; preds = %cond.false416
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end438

cond.false434:                                    ; preds = %cond.false416
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %.pr) #5
  br label %cond.end438

cond.end438:                                      ; preds = %cond.false434, %cond.false416.cond.end438_crit_edge, %do.body395.cond.end438_crit_edge
  %107 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port, align 4
  %add440 = add i32 %108, 1
  %and441 = and i32 %add440, 1048575
  %add442 = or i32 %and441, -18874368
  %109 = inttoptr i32 %add442 to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %conv445 = zext i8 %110 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add451 = add i32 %112, 2
  %and452 = and i32 %add451, 1048575
  %add453 = or i32 %and452, -18874368
  %113 = inttoptr i32 %add453 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 4) #5, !srcloc !42
  %114 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool456.not = icmp eq i32 %115, 0
  br i1 %tobool456.not, label %cond.end438.do.body473_crit_edge, label %cond.false468

cond.end438.do.body473_crit_edge:                 ; preds = %cond.end438
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body473

cond.false468:                                    ; preds = %cond.end438
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #5
  br label %do.body473

do.body473:                                       ; preds = %cond.false468, %cond.end438.do.body473_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %add477 = add i32 %118, 2
  %and478 = and i32 %add477, 1048575
  %add479 = or i32 %and478, -18874368
  %119 = inttoptr i32 %add479 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 6) #5, !srcloc !42
  %120 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool482.not = icmp eq i32 %121, 0
  br i1 %tobool482.not, label %do.body473.cond.end516_crit_edge, label %cond.false494

do.body473.cond.end516_crit_edge:                 ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end516

cond.false494:                                    ; preds = %do.body473
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #5
  %123 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr959 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr959)
  %tobool500.not = icmp eq i32 %.pr959, 0
  br i1 %tobool500.not, label %cond.false494.cond.end516_crit_edge, label %cond.false512

cond.false494.cond.end516_crit_edge:              ; preds = %cond.false494
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end516

cond.false512:                                    ; preds = %cond.false494
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %.pr959) #5
  br label %cond.end516

cond.end516:                                      ; preds = %cond.false512, %cond.false494.cond.end516_crit_edge, %do.body473.cond.end516_crit_edge
  %125 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port, align 4
  %add519 = add i32 %126, 1
  %and520 = and i32 %add519, 1048575
  %add521 = or i32 %and520, -18874368
  %127 = inttoptr i32 %add521 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %conv525 = zext i8 %128 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add531 = add i32 %130, 2
  %and532 = and i32 %add531, 1048575
  %add533 = or i32 %and532, -18874368
  %131 = inttoptr i32 %add533 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 4) #5, !srcloc !42
  %132 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool536.not = icmp eq i32 %133, 0
  br i1 %tobool536.not, label %cond.end516.cond.end552_crit_edge, label %cond.false548

cond.end516.cond.end552_crit_edge:                ; preds = %cond.end516
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end552

cond.false548:                                    ; preds = %cond.end516
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %134(i32 noundef %133) #5
  br label %cond.end552

cond.end552:                                      ; preds = %cond.false548, %cond.end516.cond.end552_crit_edge
  %135 = lshr i32 %conv445, 3
  %and553 = and i32 %135, 7
  %136 = lshr i32 %conv445, 4
  %shr554 = and i32 %136, 8
  %137 = or i32 %shr554, %and553
  %shl = shl nuw nsw i32 %conv525, 1
  %and556 = and i32 %shl, 112
  %neg558 = and i32 %conv525, 128
  %138 = or i32 %137, %neg558
  %139 = or i32 %138, %and556
  %or560 = xor i32 %139, 136
  br label %cleanup

do.body562:                                       ; preds = %cond.end393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port, align 4
  %and567 = and i32 %141, 1048575
  %add568 = or i32 %and567, -18874368
  %142 = inttoptr i32 %add568 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #5, !srcloc !42
  %143 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool571.not = icmp eq i32 %144, 0
  br i1 %tobool571.not, label %do.body562.do.body588_crit_edge, label %cond.false583

do.body562.do.body588_crit_edge:                  ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body588

cond.false583:                                    ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %145(i32 noundef %144) #5
  br label %do.body588

do.body588:                                       ; preds = %cond.false583, %do.body562.do.body588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %port, align 4
  %add592 = add i32 %147, 2
  %and593 = and i32 %add592, 1048575
  %add594 = or i32 %and593, -18874368
  %148 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 38) #5, !srcloc !42
  %149 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool597.not = icmp eq i32 %150, 0
  br i1 %tobool597.not, label %do.body588.cond.end631_crit_edge, label %cond.false609

do.body588.cond.end631_crit_edge:                 ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end631

cond.false609:                                    ; preds = %do.body588
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %150) #5
  %152 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pr961 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr961)
  %tobool615.not = icmp eq i32 %.pr961, 0
  br i1 %tobool615.not, label %cond.false609.cond.end631_crit_edge, label %cond.false627

cond.false609.cond.end631_crit_edge:              ; preds = %cond.false609
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end631

cond.false627:                                    ; preds = %cond.false609
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %.pr961) #5
  br label %cond.end631

cond.end631:                                      ; preds = %cond.false627, %cond.false609.cond.end631_crit_edge, %do.body588.cond.end631_crit_edge
  %154 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port, align 4
  %and635 = and i32 %155, 1048575
  %add636 = or i32 %and635, -18874368
  %156 = inttoptr i32 %add636 to ptr
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %156) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %conv640 = zext i8 %157 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %port, align 4
  %add646 = add i32 %159, 2
  %and647 = and i32 %add646, 1048575
  %add648 = or i32 %and647, -18874368
  %160 = inttoptr i32 %add648 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 4) #5, !srcloc !42
  %161 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool651.not = icmp eq i32 %162, 0
  br i1 %tobool651.not, label %cond.end631.cleanup_crit_edge, label %cond.false663

cond.end631.cleanup_crit_edge:                    ; preds = %cond.end631
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false663:                                    ; preds = %cond.end631
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %163(i32 noundef %162) #5
  br label %cleanup

do.body669:                                       ; preds = %cond.end393.do.body669_crit_edge, %cond.end393.do.body669_crit_edge966, %cond.end393.do.body669_crit_edge967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port, align 4
  %add673 = add i32 %165, 2
  %and674 = and i32 %add673, 1048575
  %add675 = or i32 %and674, -18874368
  %166 = inttoptr i32 %add675 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 36) #5, !srcloc !42
  %167 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool678.not = icmp eq i32 %168, 0
  br i1 %tobool678.not, label %do.body669.cond.end712_crit_edge, label %cond.false690

do.body669.cond.end712_crit_edge:                 ; preds = %do.body669
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end712

cond.false690:                                    ; preds = %do.body669
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %169(i32 noundef %168) #5
  %170 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pr963 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr963)
  %tobool696.not = icmp eq i32 %.pr963, 0
  br i1 %tobool696.not, label %cond.false690.cond.end712_crit_edge, label %cond.false708

cond.false690.cond.end712_crit_edge:              ; preds = %cond.false690
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end712

cond.false708:                                    ; preds = %cond.false690
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %171(i32 noundef %.pr963) #5
  br label %cond.end712

cond.end712:                                      ; preds = %cond.false708, %cond.false690.cond.end712_crit_edge, %do.body669.cond.end712_crit_edge
  %172 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %port, align 4
  %add715 = add i32 %173, 4
  %and716 = and i32 %add715, 1048575
  %add717 = or i32 %and716, -18874368
  %174 = inttoptr i32 %add717 to ptr
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %174) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %conv721 = zext i8 %175 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port, align 4
  %add727 = add i32 %177, 2
  %and728 = and i32 %add727, 1048575
  %add729 = or i32 %and728, -18874368
  %178 = inttoptr i32 %add729 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 4) #5, !srcloc !42
  %179 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool732.not = icmp eq i32 %180, 0
  br i1 %tobool732.not, label %cond.end712.cleanup_crit_edge, label %cond.false744

cond.end712.cleanup_crit_edge:                    ; preds = %cond.end712
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.false744:                                    ; preds = %cond.end712
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %181(i32 noundef %180) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false744, %cond.end712.cleanup_crit_edge, %cond.false663, %cond.end631.cleanup_crit_edge, %cond.end552, %cond.end393.cleanup_crit_edge
  %retval.0 = phi i32 [ %or560, %cond.end552 ], [ %conv640, %cond.end631.cleanup_crit_edge ], [ %conv640, %cond.false663 ], [ %conv721, %cond.end712.cleanup_crit_edge ], [ %conv721, %cond.false744 ], [ -1, %cond.end393.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_write_block(ptr noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -127) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add16 = add i32 %7, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 5) #5, !srcloc !42
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 13) #5, !srcloc !42
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add66 = add i32 %19, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %20 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 5) #5, !srcloc !42
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add91 = add i32 %25, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %26 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #5, !srcloc !42
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool96.not = icmp eq i32 %28, 0
  br i1 %tobool96.not, label %do.body87.cond.end111_crit_edge, label %cond.false107

do.body87.cond.end111_crit_edge:                  ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end111

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false107, %do.body87.cond.end111_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool112.not = icmp eq i32 %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and143 = and i32 %33, 1048575
  %add144 = or i32 %and143, -18874368
  %34 = inttoptr i32 %add144 to ptr
  br i1 %tobool112.not, label %do.body138, label %do.body113

do.body113:                                       ; preds = %cond.end111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 25) #5, !srcloc !42
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool122.not = icmp eq i32 %36, 0
  br i1 %tobool122.not, label %do.body113.do.body163_crit_edge, label %do.body113.do.body163.sink.split_crit_edge

do.body113.do.body163.sink.split_crit_edge:       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163.sink.split

do.body113.do.body163_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

do.body138:                                       ; preds = %cond.end111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 9) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool147.not = icmp eq i32 %38, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %do.body138.do.body163.sink.split_crit_edge

do.body138.do.body163.sink.split_crit_edge:       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163.sink.split

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

do.body163.sink.split:                            ; preds = %do.body138.do.body163.sink.split_crit_edge, %do.body113.do.body163.sink.split_crit_edge
  %.sink = phi i32 [ %36, %do.body113.do.body163.sink.split_crit_edge ], [ %38, %do.body138.do.body163.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %.sink) #5
  br label %do.body163

do.body163:                                       ; preds = %do.body163.sink.split, %do.body138.do.body163_crit_edge, %do.body113.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add167 = add i32 %41, 2
  %and168 = and i32 %add167, 1048575
  %add169 = or i32 %and168, -18874368
  %42 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 5) #5, !srcloc !42
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool172.not = icmp eq i32 %44, 0
  br i1 %tobool172.not, label %do.body163.do.body188_crit_edge, label %cond.false183

do.body163.do.body188_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body188

cond.false183:                                    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body188

do.body188:                                       ; preds = %cond.false183, %do.body163.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add192 = add i32 %47, 2
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %48 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 7) #5, !srcloc !42
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool197.not = icmp eq i32 %50, 0
  br i1 %tobool197.not, label %do.body188.do.body213_crit_edge, label %cond.false208

do.body188.do.body213_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cond.false208:                                    ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body213

do.body213:                                       ; preds = %cond.false208, %do.body188.do.body213_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add217 = add i32 %53, 2
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %54 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 5) #5, !srcloc !42
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool222.not = icmp eq i32 %56, 0
  br i1 %tobool222.not, label %do.body213.do.body238_crit_edge, label %cond.false233

do.body213.do.body238_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body238

cond.false233:                                    ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body238

do.body238:                                       ; preds = %cond.false233, %do.body213.do.body238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add242 = add i32 %59, 2
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %60 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 4) #5, !srcloc !42
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool247.not = icmp eq i32 %62, 0
  br i1 %tobool247.not, label %do.body238.do.body263_crit_edge, label %cond.false258

do.body238.do.body263_crit_edge:                  ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body263

cond.false258:                                    ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body263

do.body263:                                       ; preds = %cond.false258, %do.body238.do.body263_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %and268 = and i32 %65, 1048575
  %add269 = or i32 %and268, -18874368
  %66 = inttoptr i32 %add269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -126) #5, !srcloc !42
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool272.not = icmp eq i32 %68, 0
  br i1 %tobool272.not, label %do.body263.do.body288_crit_edge, label %cond.false283

do.body263.do.body288_crit_edge:                  ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body288

cond.false283:                                    ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body288

do.body288:                                       ; preds = %cond.false283, %do.body263.do.body288_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add292 = add i32 %71, 2
  %and293 = and i32 %add292, 1048575
  %add294 = or i32 %and293, -18874368
  %72 = inttoptr i32 %add294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 5) #5, !srcloc !42
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool297.not = icmp eq i32 %74, 0
  br i1 %tobool297.not, label %do.body288.do.body313_crit_edge, label %cond.false308

do.body288.do.body313_crit_edge:                  ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

cond.false308:                                    ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body313

do.body313:                                       ; preds = %cond.false308, %do.body288.do.body313_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add317 = add i32 %77, 2
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %78 = inttoptr i32 %add319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 13) #5, !srcloc !42
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool322.not = icmp eq i32 %80, 0
  br i1 %tobool322.not, label %do.body313.do.body338_crit_edge, label %cond.false333

do.body313.do.body338_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body338

cond.false333:                                    ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body338

do.body338:                                       ; preds = %cond.false333, %do.body313.do.body338_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add342 = add i32 %83, 2
  %and343 = and i32 %add342, 1048575
  %add344 = or i32 %and343, -18874368
  %84 = inttoptr i32 %add344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 5) #5, !srcloc !42
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool347.not = icmp eq i32 %86, 0
  br i1 %tobool347.not, label %do.body338.do.body363_crit_edge, label %cond.false358

do.body338.do.body363_crit_edge:                  ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

cond.false358:                                    ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body363

do.body363:                                       ; preds = %cond.false358, %do.body338.do.body363_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add367 = add i32 %89, 2
  %and368 = and i32 %add367, 1048575
  %add369 = or i32 %and368, -18874368
  %90 = inttoptr i32 %add369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !42
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool372.not = icmp eq i32 %92, 0
  br i1 %tobool372.not, label %do.body363.do.body388_crit_edge, label %cond.false383

do.body363.do.body388_crit_edge:                  ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body388

cond.false383:                                    ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body388

do.body388:                                       ; preds = %cond.false383, %do.body363.do.body388_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %add392 = add i32 %95, 2
  %and393 = and i32 %add392, 1048575
  %add394 = or i32 %and393, -18874368
  %96 = inttoptr i32 %add394 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 6) #5, !srcloc !42
  %97 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool397.not = icmp eq i32 %98, 0
  br i1 %tobool397.not, label %do.body388.do.body413_crit_edge, label %cond.false408

do.body388.do.body413_crit_edge:                  ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body413

cond.false408:                                    ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %do.body413

do.body413:                                       ; preds = %cond.false408, %do.body388.do.body413_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %add417 = add i32 %101, 2
  %and418 = and i32 %add417, 1048575
  %add419 = or i32 %and418, -18874368
  %102 = inttoptr i32 %add419 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 4) #5, !srcloc !42
  %103 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool422.not = icmp eq i32 %104, 0
  br i1 %tobool422.not, label %do.body413.do.body438_crit_edge, label %cond.false433

do.body413.do.body438_crit_edge:                  ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body438

cond.false433:                                    ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  br label %do.body438

do.body438:                                       ; preds = %cond.false433, %do.body413.do.body438_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port, align 4
  %add442 = add i32 %107, 2
  %and443 = and i32 %add442, 1048575
  %add444 = or i32 %and443, -18874368
  %108 = inttoptr i32 %add444 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 6) #5, !srcloc !42
  %109 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool447.not = icmp eq i32 %110, 0
  br i1 %tobool447.not, label %do.body438.do.body463_crit_edge, label %cond.false458

do.body438.do.body463_crit_edge:                  ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body463

cond.false458:                                    ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %do.body463

do.body463:                                       ; preds = %cond.false458, %do.body438.do.body463_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port, align 4
  %add467 = add i32 %113, 2
  %and468 = and i32 %add467, 1048575
  %add469 = or i32 %and468, -18874368
  %114 = inttoptr i32 %add469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 4) #5, !srcloc !42
  %115 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool472.not = icmp eq i32 %116, 0
  br i1 %tobool472.not, label %do.body463.do.body488_crit_edge, label %cond.false483

do.body463.do.body488_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body488

cond.false483:                                    ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %do.body488

do.body488:                                       ; preds = %cond.false483, %do.body463.do.body488_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port, align 4
  %and493 = and i32 %119, 1048575
  %add494 = or i32 %and493, -18874368
  %120 = inttoptr i32 %add494 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 32) #5, !srcloc !42
  %121 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool497.not = icmp eq i32 %122, 0
  br i1 %tobool497.not, label %do.body488.do.body513_crit_edge, label %cond.false508

do.body488.do.body513_crit_edge:                  ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body513

cond.false508:                                    ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #5
  br label %do.body513

do.body513:                                       ; preds = %cond.false508, %do.body488.do.body513_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port, align 4
  %add517 = add i32 %125, 2
  %and518 = and i32 %add517, 1048575
  %add519 = or i32 %and518, -18874368
  %126 = inttoptr i32 %add519 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 5) #5, !srcloc !42
  %127 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool522.not = icmp eq i32 %128, 0
  br i1 %tobool522.not, label %do.body513.do.body538_crit_edge, label %cond.false533

do.body513.do.body538_crit_edge:                  ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body538

cond.false533:                                    ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #5
  br label %do.body538

do.body538:                                       ; preds = %cond.false533, %do.body513.do.body538_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port, align 4
  %add542 = add i32 %131, 2
  %and543 = and i32 %add542, 1048575
  %add544 = or i32 %and543, -18874368
  %132 = inttoptr i32 %add544 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 13) #5, !srcloc !42
  %133 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool547.not = icmp eq i32 %134, 0
  br i1 %tobool547.not, label %do.body538.do.body563_crit_edge, label %cond.false558

do.body538.do.body563_crit_edge:                  ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body563

cond.false558:                                    ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #5
  br label %do.body563

do.body563:                                       ; preds = %cond.false558, %do.body538.do.body563_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port, align 4
  %add567 = add i32 %137, 2
  %and568 = and i32 %add567, 1048575
  %add569 = or i32 %and568, -18874368
  %138 = inttoptr i32 %add569 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 5) #5, !srcloc !42
  %139 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool572.not = icmp eq i32 %140, 0
  br i1 %tobool572.not, label %do.body563.do.body588_crit_edge, label %cond.false583

do.body563.do.body588_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body588

cond.false583:                                    ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #5
  br label %do.body588

do.body588:                                       ; preds = %cond.false583, %do.body563.do.body588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port, align 4
  %add592 = add i32 %143, 2
  %and593 = and i32 %add592, 1048575
  %add594 = or i32 %and593, -18874368
  %144 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 4) #5, !srcloc !42
  %145 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool597.not = icmp eq i32 %146, 0
  br i1 %tobool597.not, label %do.body588.cond.end612_crit_edge, label %cond.false608

do.body588.cond.end612_crit_edge:                 ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end612

cond.false608:                                    ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #5
  br label %cond.end612

cond.end612:                                      ; preds = %cond.false608, %do.body588.cond.end612_crit_edge
  %148 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mode, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %149, label %cond.end612.sw.epilog_crit_edge [
    i32 0, label %cond.end612.sw.bb_crit_edge
    i32 1, label %cond.end612.sw.bb_crit_edge1294
    i32 2, label %do.body741
    i32 3, label %do.body824
    i32 4, label %do.body907
  ]

cond.end612.sw.bb_crit_edge1294:                  ; preds = %cond.end612
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

cond.end612.sw.bb_crit_edge:                      ; preds = %cond.end612
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

cond.end612.sw.epilog_crit_edge:                  ; preds = %cond.end612
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end612.sw.bb_crit_edge, %cond.end612.sw.bb_crit_edge1294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6141286 = icmp sgt i32 %count, 0
  br i1 %cmp6141286, label %sw.bb.do.body615_crit_edge, label %sw.bb.do.body690_crit_edge

sw.bb.do.body690_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body690

sw.bb.do.body615_crit_edge:                       ; preds = %sw.bb
  br label %do.body615

do.body615:                                       ; preds = %for.inc.do.body615_crit_edge, %sw.bb.do.body615_crit_edge
  %k.01287 = phi i32 [ %inc, %for.inc.do.body615_crit_edge ], [ 0, %sw.bb.do.body615_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port, align 4
  %add619 = add i32 %152, 2
  %and620 = and i32 %add619, 1048575
  %add621 = or i32 %and620, -18874368
  %153 = inttoptr i32 %add621 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 5) #5, !srcloc !42
  %154 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool624.not = icmp eq i32 %155, 0
  br i1 %tobool624.not, label %do.body615.do.body640_crit_edge, label %cond.false635

do.body615.do.body640_crit_edge:                  ; preds = %do.body615
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body640

cond.false635:                                    ; preds = %do.body615
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %155) #5
  br label %do.body640

do.body640:                                       ; preds = %cond.false635, %do.body615.do.body640_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01287
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx, align 1
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %and645 = and i32 %160, 1048575
  %add646 = or i32 %and645, -18874368
  %161 = inttoptr i32 %add646 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 %158) #5, !srcloc !42
  %162 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool649.not = icmp eq i32 %163, 0
  br i1 %tobool649.not, label %do.body640.do.body665_crit_edge, label %cond.false660

do.body640.do.body665_crit_edge:                  ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body665

cond.false660:                                    ; preds = %do.body640
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #5
  br label %do.body665

do.body665:                                       ; preds = %cond.false660, %do.body640.do.body665_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %add669 = add i32 %166, 2
  %and670 = and i32 %add669, 1048575
  %add671 = or i32 %and670, -18874368
  %167 = inttoptr i32 %add671 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 7) #5, !srcloc !42
  %168 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool674.not = icmp eq i32 %169, 0
  br i1 %tobool674.not, label %do.body665.for.inc_crit_edge, label %cond.false685

do.body665.for.inc_crit_edge:                     ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false685:                                    ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false685, %do.body665.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.01287, 1
  %exitcond1290.not = icmp eq i32 %inc, %count
  br i1 %exitcond1290.not, label %for.inc.do.body690_crit_edge, label %for.inc.do.body615_crit_edge

for.inc.do.body615_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body615

for.inc.do.body690_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body690

do.body690:                                       ; preds = %for.inc.do.body690_crit_edge, %sw.bb.do.body690_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port, align 4
  %add694 = add i32 %172, 2
  %and695 = and i32 %add694, 1048575
  %add696 = or i32 %and695, -18874368
  %173 = inttoptr i32 %add696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 5) #5, !srcloc !42
  %174 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool699.not = icmp eq i32 %175, 0
  br i1 %tobool699.not, label %do.body690.do.body715_crit_edge, label %cond.false710

do.body690.do.body715_crit_edge:                  ; preds = %do.body690
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body715

cond.false710:                                    ; preds = %do.body690
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %175) #5
  br label %do.body715

do.body715:                                       ; preds = %cond.false710, %do.body690.do.body715_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port, align 4
  %add719 = add i32 %178, 2
  %and720 = and i32 %add719, 1048575
  %add721 = or i32 %and720, -18874368
  %179 = inttoptr i32 %add721 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 4) #5, !srcloc !42
  %180 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool724.not = icmp eq i32 %181, 0
  br i1 %tobool724.not, label %do.body715.sw.epilog_crit_edge, label %do.body715.sw.epilog.sink.split_crit_edge

do.body715.sw.epilog.sink.split_crit_edge:        ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body715.sw.epilog_crit_edge:                   ; preds = %do.body715
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body741:                                       ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %port, align 4
  %add745 = add i32 %183, 2
  %and746 = and i32 %add745, 1048575
  %add747 = or i32 %and746, -18874368
  %184 = inttoptr i32 %add747 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 -59) #5, !srcloc !42
  %185 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool750.not = icmp eq i32 %186, 0
  br i1 %tobool750.not, label %do.body741.cond.end765_crit_edge, label %cond.false761

do.body741.cond.end765_crit_edge:                 ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end765

cond.false761:                                    ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %187(i32 noundef %186) #5
  br label %cond.end765

cond.end765:                                      ; preds = %cond.false761, %do.body741.cond.end765_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7671284 = icmp sgt i32 %count, 0
  br i1 %cmp7671284, label %cond.end765.do.body769_crit_edge, label %cond.end765.do.body798_crit_edge

cond.end765.do.body798_crit_edge:                 ; preds = %cond.end765
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body798

cond.end765.do.body769_crit_edge:                 ; preds = %cond.end765
  br label %do.body769

do.body769:                                       ; preds = %for.inc795.do.body769_crit_edge, %cond.end765.do.body769_crit_edge
  %k.11285 = phi i32 [ %inc796, %for.inc795.do.body769_crit_edge ], [ 0, %cond.end765.do.body769_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %arrayidx772 = getelementptr i8, ptr %buf, i32 %k.11285
  %188 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx772, align 1
  %190 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %port, align 4
  %add774 = add i32 %191, 4
  %and775 = and i32 %add774, 1048575
  %add776 = or i32 %and775, -18874368
  %192 = inttoptr i32 %add776 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 %189) #5, !srcloc !42
  %193 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool779.not = icmp eq i32 %194, 0
  br i1 %tobool779.not, label %do.body769.for.inc795_crit_edge, label %cond.false790

do.body769.for.inc795_crit_edge:                  ; preds = %do.body769
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc795

cond.false790:                                    ; preds = %do.body769
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %195(i32 noundef %194) #5
  br label %for.inc795

for.inc795:                                       ; preds = %cond.false790, %do.body769.for.inc795_crit_edge
  %inc796 = add nuw nsw i32 %k.11285, 1
  %exitcond1289.not = icmp eq i32 %inc796, %count
  br i1 %exitcond1289.not, label %for.inc795.do.body798_crit_edge, label %for.inc795.do.body769_crit_edge

for.inc795.do.body769_crit_edge:                  ; preds = %for.inc795
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body769

for.inc795.do.body798_crit_edge:                  ; preds = %for.inc795
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body798

do.body798:                                       ; preds = %for.inc795.do.body798_crit_edge, %cond.end765.do.body798_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %196 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %port, align 4
  %add802 = add i32 %197, 2
  %and803 = and i32 %add802, 1048575
  %add804 = or i32 %and803, -18874368
  %198 = inttoptr i32 %add804 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %198, i8 -60) #5, !srcloc !42
  %199 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool807.not = icmp eq i32 %200, 0
  br i1 %tobool807.not, label %do.body798.sw.epilog_crit_edge, label %do.body798.sw.epilog.sink.split_crit_edge

do.body798.sw.epilog.sink.split_crit_edge:        ; preds = %do.body798
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body798.sw.epilog_crit_edge:                   ; preds = %do.body798
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body824:                                       ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %201 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %port, align 4
  %add828 = add i32 %202, 2
  %and829 = and i32 %add828, 1048575
  %add830 = or i32 %and829, -18874368
  %203 = inttoptr i32 %add830 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 -59) #5, !srcloc !42
  %204 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool833.not = icmp eq i32 %205, 0
  br i1 %tobool833.not, label %do.body824.cond.end848_crit_edge, label %cond.false844

do.body824.cond.end848_crit_edge:                 ; preds = %do.body824
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end848

cond.false844:                                    ; preds = %do.body824
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %206(i32 noundef %205) #5
  br label %cond.end848

cond.end848:                                      ; preds = %cond.false844, %do.body824.cond.end848_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp8501282 = icmp sgt i32 %count, 1
  br i1 %cmp8501282, label %cond.end848.do.body852_crit_edge, label %cond.end848.do.body881_crit_edge

cond.end848.do.body881_crit_edge:                 ; preds = %cond.end848
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body881

cond.end848.do.body852_crit_edge:                 ; preds = %cond.end848
  br label %do.body852

do.body852:                                       ; preds = %for.inc878.do.body852_crit_edge, %cond.end848.do.body852_crit_edge
  %k.21283 = phi i32 [ %inc879, %for.inc878.do.body852_crit_edge ], [ 0, %cond.end848.do.body852_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %arrayidx855 = getelementptr i16, ptr %buf, i32 %k.21283
  %207 = ptrtoint ptr %arrayidx855 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx855, align 2
  %209 = tail call i16 @llvm.bswap.i16(i16 %208)
  %210 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port, align 4
  %add857 = add i32 %211, 4
  %and858 = and i32 %add857, 1048575
  %add859 = or i32 %and858, -18874368
  %212 = inttoptr i32 %add859 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %212, i16 %209) #5, !srcloc !123
  %213 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool862.not = icmp eq i32 %214, 0
  br i1 %tobool862.not, label %do.body852.for.inc878_crit_edge, label %cond.false873

do.body852.for.inc878_crit_edge:                  ; preds = %do.body852
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc878

cond.false873:                                    ; preds = %do.body852
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %215(i32 noundef %214) #5
  br label %for.inc878

for.inc878:                                       ; preds = %cond.false873, %do.body852.for.inc878_crit_edge
  %inc879 = add nuw nsw i32 %k.21283, 1
  %exitcond1288.not = icmp eq i32 %inc879, %div
  br i1 %exitcond1288.not, label %for.inc878.do.body881_crit_edge, label %for.inc878.do.body852_crit_edge

for.inc878.do.body852_crit_edge:                  ; preds = %for.inc878
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body852

for.inc878.do.body881_crit_edge:                  ; preds = %for.inc878
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body881

do.body881:                                       ; preds = %for.inc878.do.body881_crit_edge, %cond.end848.do.body881_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %port, align 4
  %add885 = add i32 %217, 2
  %and886 = and i32 %add885, 1048575
  %add887 = or i32 %and886, -18874368
  %218 = inttoptr i32 %add887 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 -60) #5, !srcloc !42
  %219 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool890.not = icmp eq i32 %220, 0
  br i1 %tobool890.not, label %do.body881.sw.epilog_crit_edge, label %do.body881.sw.epilog.sink.split_crit_edge

do.body881.sw.epilog.sink.split_crit_edge:        ; preds = %do.body881
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body881.sw.epilog_crit_edge:                   ; preds = %do.body881
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body907:                                       ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port, align 4
  %add911 = add i32 %222, 2
  %and912 = and i32 %add911, 1048575
  %add913 = or i32 %and912, -18874368
  %223 = inttoptr i32 %add913 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 -59) #5, !srcloc !42
  %224 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool916.not = icmp eq i32 %225, 0
  br i1 %tobool916.not, label %do.body907.cond.end931_crit_edge, label %cond.false927

do.body907.cond.end931_crit_edge:                 ; preds = %do.body907
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end931

cond.false927:                                    ; preds = %do.body907
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #5
  br label %cond.end931

cond.end931:                                      ; preds = %cond.false927, %do.body907.cond.end931_crit_edge
  %div933 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp9341280 = icmp sgt i32 %count, 3
  br i1 %cmp9341280, label %cond.end931.do.body936_crit_edge, label %cond.end931.do.body965_crit_edge

cond.end931.do.body965_crit_edge:                 ; preds = %cond.end931
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body965

cond.end931.do.body936_crit_edge:                 ; preds = %cond.end931
  br label %do.body936

do.body936:                                       ; preds = %for.inc962.do.body936_crit_edge, %cond.end931.do.body936_crit_edge
  %k.31281 = phi i32 [ %inc963, %for.inc962.do.body936_crit_edge ], [ 0, %cond.end931.do.body936_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %arrayidx939 = getelementptr i32, ptr %buf, i32 %k.31281
  %227 = ptrtoint ptr %arrayidx939 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx939, align 4
  %229 = tail call i32 @llvm.bswap.i32(i32 %228)
  %230 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port, align 4
  %add941 = add i32 %231, 4
  %and942 = and i32 %add941, 1048575
  %add943 = or i32 %and942, -18874368
  %232 = inttoptr i32 %add943 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %232, i32 %229) #5, !srcloc !127
  %233 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool946.not = icmp eq i32 %234, 0
  br i1 %tobool946.not, label %do.body936.for.inc962_crit_edge, label %cond.false957

do.body936.for.inc962_crit_edge:                  ; preds = %do.body936
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc962

cond.false957:                                    ; preds = %do.body936
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %235(i32 noundef %234) #5
  br label %for.inc962

for.inc962:                                       ; preds = %cond.false957, %do.body936.for.inc962_crit_edge
  %inc963 = add nuw nsw i32 %k.31281, 1
  %exitcond.not = icmp eq i32 %inc963, %div933
  br i1 %exitcond.not, label %for.inc962.do.body965_crit_edge, label %for.inc962.do.body936_crit_edge

for.inc962.do.body936_crit_edge:                  ; preds = %for.inc962
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body936

for.inc962.do.body965_crit_edge:                  ; preds = %for.inc962
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body965

do.body965:                                       ; preds = %for.inc962.do.body965_crit_edge, %cond.end931.do.body965_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %236 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %port, align 4
  %add969 = add i32 %237, 2
  %and970 = and i32 %add969, 1048575
  %add971 = or i32 %and970, -18874368
  %238 = inttoptr i32 %add971 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 -60) #5, !srcloc !42
  %239 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool974.not = icmp eq i32 %240, 0
  br i1 %tobool974.not, label %do.body965.sw.epilog_crit_edge, label %do.body965.sw.epilog.sink.split_crit_edge

do.body965.sw.epilog.sink.split_crit_edge:        ; preds = %do.body965
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body965.sw.epilog_crit_edge:                   ; preds = %do.body965
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body965.sw.epilog.sink.split_crit_edge, %do.body881.sw.epilog.sink.split_crit_edge, %do.body798.sw.epilog.sink.split_crit_edge, %do.body715.sw.epilog.sink.split_crit_edge
  %.sink1292 = phi i32 [ %181, %do.body715.sw.epilog.sink.split_crit_edge ], [ %200, %do.body798.sw.epilog.sink.split_crit_edge ], [ %220, %do.body881.sw.epilog.sink.split_crit_edge ], [ %240, %do.body965.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %241(i32 noundef %.sink1292) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body965.sw.epilog_crit_edge, %do.body881.sw.epilog_crit_edge, %do.body798.sw.epilog_crit_edge, %do.body715.sw.epilog_crit_edge, %cond.end612.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_read_block(ptr noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -127) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add16 = add i32 %7, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 5) #5, !srcloc !42
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 13) #5, !srcloc !42
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add66 = add i32 %19, 2
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %20 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 5) #5, !srcloc !42
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add91 = add i32 %25, 2
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %26 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #5, !srcloc !42
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool96.not = icmp eq i32 %28, 0
  br i1 %tobool96.not, label %do.body87.cond.end111_crit_edge, label %cond.false107

do.body87.cond.end111_crit_edge:                  ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end111

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false107, %do.body87.cond.end111_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool112.not = icmp eq i32 %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and143 = and i32 %33, 1048575
  %add144 = or i32 %and143, -18874368
  %34 = inttoptr i32 %add144 to ptr
  br i1 %tobool112.not, label %do.body138, label %do.body113

do.body113:                                       ; preds = %cond.end111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 25) #5, !srcloc !42
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool122.not = icmp eq i32 %36, 0
  br i1 %tobool122.not, label %do.body113.do.body163_crit_edge, label %do.body113.do.body163.sink.split_crit_edge

do.body113.do.body163.sink.split_crit_edge:       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163.sink.split

do.body113.do.body163_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

do.body138:                                       ; preds = %cond.end111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 9) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool147.not = icmp eq i32 %38, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %do.body138.do.body163.sink.split_crit_edge

do.body138.do.body163.sink.split_crit_edge:       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163.sink.split

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

do.body163.sink.split:                            ; preds = %do.body138.do.body163.sink.split_crit_edge, %do.body113.do.body163.sink.split_crit_edge
  %.sink = phi i32 [ %36, %do.body113.do.body163.sink.split_crit_edge ], [ %38, %do.body138.do.body163.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %.sink) #5
  br label %do.body163

do.body163:                                       ; preds = %do.body163.sink.split, %do.body138.do.body163_crit_edge, %do.body113.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add167 = add i32 %41, 2
  %and168 = and i32 %add167, 1048575
  %add169 = or i32 %and168, -18874368
  %42 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 5) #5, !srcloc !42
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool172.not = icmp eq i32 %44, 0
  br i1 %tobool172.not, label %do.body163.do.body188_crit_edge, label %cond.false183

do.body163.do.body188_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body188

cond.false183:                                    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body188

do.body188:                                       ; preds = %cond.false183, %do.body163.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add192 = add i32 %47, 2
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %48 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 7) #5, !srcloc !42
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool197.not = icmp eq i32 %50, 0
  br i1 %tobool197.not, label %do.body188.do.body213_crit_edge, label %cond.false208

do.body188.do.body213_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cond.false208:                                    ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body213

do.body213:                                       ; preds = %cond.false208, %do.body188.do.body213_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add217 = add i32 %53, 2
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %54 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 5) #5, !srcloc !42
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool222.not = icmp eq i32 %56, 0
  br i1 %tobool222.not, label %do.body213.do.body238_crit_edge, label %cond.false233

do.body213.do.body238_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body238

cond.false233:                                    ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body238

do.body238:                                       ; preds = %cond.false233, %do.body213.do.body238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add242 = add i32 %59, 2
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %60 = inttoptr i32 %add244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 4) #5, !srcloc !42
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool247.not = icmp eq i32 %62, 0
  br i1 %tobool247.not, label %do.body238.do.body263_crit_edge, label %cond.false258

do.body238.do.body263_crit_edge:                  ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body263

cond.false258:                                    ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body263

do.body263:                                       ; preds = %cond.false258, %do.body238.do.body263_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %and268 = and i32 %65, 1048575
  %add269 = or i32 %and268, -18874368
  %66 = inttoptr i32 %add269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -126) #5, !srcloc !42
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool272.not = icmp eq i32 %68, 0
  br i1 %tobool272.not, label %do.body263.do.body288_crit_edge, label %cond.false283

do.body263.do.body288_crit_edge:                  ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body288

cond.false283:                                    ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body288

do.body288:                                       ; preds = %cond.false283, %do.body263.do.body288_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add292 = add i32 %71, 2
  %and293 = and i32 %add292, 1048575
  %add294 = or i32 %and293, -18874368
  %72 = inttoptr i32 %add294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 5) #5, !srcloc !42
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool297.not = icmp eq i32 %74, 0
  br i1 %tobool297.not, label %do.body288.do.body313_crit_edge, label %cond.false308

do.body288.do.body313_crit_edge:                  ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

cond.false308:                                    ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body313

do.body313:                                       ; preds = %cond.false308, %do.body288.do.body313_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add317 = add i32 %77, 2
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %78 = inttoptr i32 %add319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 13) #5, !srcloc !42
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool322.not = icmp eq i32 %80, 0
  br i1 %tobool322.not, label %do.body313.do.body338_crit_edge, label %cond.false333

do.body313.do.body338_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body338

cond.false333:                                    ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body338

do.body338:                                       ; preds = %cond.false333, %do.body313.do.body338_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add342 = add i32 %83, 2
  %and343 = and i32 %add342, 1048575
  %add344 = or i32 %and343, -18874368
  %84 = inttoptr i32 %add344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 5) #5, !srcloc !42
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool347.not = icmp eq i32 %86, 0
  br i1 %tobool347.not, label %do.body338.do.body363_crit_edge, label %cond.false358

do.body338.do.body363_crit_edge:                  ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

cond.false358:                                    ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body363

do.body363:                                       ; preds = %cond.false358, %do.body338.do.body363_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add367 = add i32 %89, 2
  %and368 = and i32 %add367, 1048575
  %add369 = or i32 %and368, -18874368
  %90 = inttoptr i32 %add369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !42
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool372.not = icmp eq i32 %92, 0
  br i1 %tobool372.not, label %do.body363.do.body388_crit_edge, label %cond.false383

do.body363.do.body388_crit_edge:                  ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body388

cond.false383:                                    ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body388

do.body388:                                       ; preds = %cond.false383, %do.body363.do.body388_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %add392 = add i32 %95, 2
  %and393 = and i32 %add392, 1048575
  %add394 = or i32 %and393, -18874368
  %96 = inttoptr i32 %add394 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 6) #5, !srcloc !42
  %97 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool397.not = icmp eq i32 %98, 0
  br i1 %tobool397.not, label %do.body388.do.body413_crit_edge, label %cond.false408

do.body388.do.body413_crit_edge:                  ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body413

cond.false408:                                    ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %do.body413

do.body413:                                       ; preds = %cond.false408, %do.body388.do.body413_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %add417 = add i32 %101, 2
  %and418 = and i32 %add417, 1048575
  %add419 = or i32 %and418, -18874368
  %102 = inttoptr i32 %add419 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 4) #5, !srcloc !42
  %103 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool422.not = icmp eq i32 %104, 0
  br i1 %tobool422.not, label %do.body413.do.body438_crit_edge, label %cond.false433

do.body413.do.body438_crit_edge:                  ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body438

cond.false433:                                    ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  br label %do.body438

do.body438:                                       ; preds = %cond.false433, %do.body413.do.body438_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port, align 4
  %add442 = add i32 %107, 2
  %and443 = and i32 %add442, 1048575
  %add444 = or i32 %and443, -18874368
  %108 = inttoptr i32 %add444 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 6) #5, !srcloc !42
  %109 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool447.not = icmp eq i32 %110, 0
  br i1 %tobool447.not, label %do.body438.do.body463_crit_edge, label %cond.false458

do.body438.do.body463_crit_edge:                  ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body463

cond.false458:                                    ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %do.body463

do.body463:                                       ; preds = %cond.false458, %do.body438.do.body463_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port, align 4
  %add467 = add i32 %113, 2
  %and468 = and i32 %add467, 1048575
  %add469 = or i32 %and468, -18874368
  %114 = inttoptr i32 %add469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 4) #5, !srcloc !42
  %115 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool472.not = icmp eq i32 %116, 0
  br i1 %tobool472.not, label %do.body463.do.body488_crit_edge, label %cond.false483

do.body463.do.body488_crit_edge:                  ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body488

cond.false483:                                    ; preds = %do.body463
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %do.body488

do.body488:                                       ; preds = %cond.false483, %do.body463.do.body488_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port, align 4
  %and493 = and i32 %119, 1048575
  %add494 = or i32 %and493, -18874368
  %120 = inttoptr i32 %add494 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 32) #5, !srcloc !42
  %121 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool497.not = icmp eq i32 %122, 0
  br i1 %tobool497.not, label %do.body488.do.body513_crit_edge, label %cond.false508

do.body488.do.body513_crit_edge:                  ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body513

cond.false508:                                    ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #5
  br label %do.body513

do.body513:                                       ; preds = %cond.false508, %do.body488.do.body513_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port, align 4
  %add517 = add i32 %125, 2
  %and518 = and i32 %add517, 1048575
  %add519 = or i32 %and518, -18874368
  %126 = inttoptr i32 %add519 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 5) #5, !srcloc !42
  %127 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool522.not = icmp eq i32 %128, 0
  br i1 %tobool522.not, label %do.body513.do.body538_crit_edge, label %cond.false533

do.body513.do.body538_crit_edge:                  ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body538

cond.false533:                                    ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #5
  br label %do.body538

do.body538:                                       ; preds = %cond.false533, %do.body513.do.body538_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port, align 4
  %add542 = add i32 %131, 2
  %and543 = and i32 %add542, 1048575
  %add544 = or i32 %and543, -18874368
  %132 = inttoptr i32 %add544 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 13) #5, !srcloc !42
  %133 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool547.not = icmp eq i32 %134, 0
  br i1 %tobool547.not, label %do.body538.do.body563_crit_edge, label %cond.false558

do.body538.do.body563_crit_edge:                  ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body563

cond.false558:                                    ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #5
  br label %do.body563

do.body563:                                       ; preds = %cond.false558, %do.body538.do.body563_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port, align 4
  %add567 = add i32 %137, 2
  %and568 = and i32 %add567, 1048575
  %add569 = or i32 %and568, -18874368
  %138 = inttoptr i32 %add569 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 5) #5, !srcloc !42
  %139 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool572.not = icmp eq i32 %140, 0
  br i1 %tobool572.not, label %do.body563.do.body588_crit_edge, label %cond.false583

do.body563.do.body588_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body588

cond.false583:                                    ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #5
  br label %do.body588

do.body588:                                       ; preds = %cond.false583, %do.body563.do.body588_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port, align 4
  %add592 = add i32 %143, 2
  %and593 = and i32 %add592, 1048575
  %add594 = or i32 %and593, -18874368
  %144 = inttoptr i32 %add594 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 4) #5, !srcloc !42
  %145 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool597.not = icmp eq i32 %146, 0
  br i1 %tobool597.not, label %do.body588.cond.end612_crit_edge, label %cond.false608

do.body588.cond.end612_crit_edge:                 ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end612

cond.false608:                                    ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #5
  br label %cond.end612

cond.end612:                                      ; preds = %cond.false608, %do.body588.cond.end612_crit_edge
  %148 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mode, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %149, label %cond.end612.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %do.body780
    i32 2, label %do.body922
    i32 3, label %do.body1012
    i32 4, label %do.body1102
  ]

cond.end612.sw.epilog_crit_edge:                  ; preds = %cond.end612
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.cond.preheader:                               ; preds = %cond.end612
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6141542 = icmp sgt i32 %count, 0
  br i1 %cmp6141542, label %for.cond.preheader.do.body615_crit_edge, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.cond.preheader.do.body615_crit_edge:          ; preds = %for.cond.preheader
  br label %do.body615

do.body615:                                       ; preds = %cond.end769.do.body615_crit_edge, %for.cond.preheader.do.body615_crit_edge
  %k.01543 = phi i32 [ %inc, %cond.end769.do.body615_crit_edge ], [ 0, %for.cond.preheader.do.body615_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port, align 4
  %add619 = add i32 %152, 2
  %and620 = and i32 %add619, 1048575
  %add621 = or i32 %and620, -18874368
  %153 = inttoptr i32 %add621 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 6) #5, !srcloc !42
  %154 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool624.not = icmp eq i32 %155, 0
  br i1 %tobool624.not, label %do.body615.cond.end656_crit_edge, label %cond.false635

do.body615.cond.end656_crit_edge:                 ; preds = %do.body615
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end656

cond.false635:                                    ; preds = %do.body615
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %155) #5
  %157 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool641.not = icmp eq i32 %.pr, 0
  br i1 %tobool641.not, label %cond.false635.cond.end656_crit_edge, label %cond.false652

cond.false635.cond.end656_crit_edge:              ; preds = %cond.false635
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end656

cond.false652:                                    ; preds = %cond.false635
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %158(i32 noundef %.pr) #5
  br label %cond.end656

cond.end656:                                      ; preds = %cond.false652, %cond.false635.cond.end656_crit_edge, %do.body615.cond.end656_crit_edge
  %159 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port, align 4
  %add658 = add i32 %160, 1
  %and659 = and i32 %add658, 1048575
  %add660 = or i32 %and659, -18874368
  %161 = inttoptr i32 %add660 to ptr
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %163 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %port, align 4
  %add668 = add i32 %164, 2
  %and669 = and i32 %add668, 1048575
  %add670 = or i32 %and669, -18874368
  %165 = inttoptr i32 %add670 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %165, i8 4) #5, !srcloc !42
  %166 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool673.not = icmp eq i32 %167, 0
  br i1 %tobool673.not, label %cond.end656.do.body690_crit_edge, label %cond.false685

cond.end656.do.body690_crit_edge:                 ; preds = %cond.end656
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body690

cond.false685:                                    ; preds = %cond.end656
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %168(i32 noundef %167) #5
  br label %do.body690

do.body690:                                       ; preds = %cond.false685, %cond.end656.do.body690_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %port, align 4
  %add694 = add i32 %170, 2
  %and695 = and i32 %add694, 1048575
  %add696 = or i32 %and695, -18874368
  %171 = inttoptr i32 %add696 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 6) #5, !srcloc !42
  %172 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool699.not = icmp eq i32 %173, 0
  br i1 %tobool699.not, label %do.body690.cond.end733_crit_edge, label %cond.false711

do.body690.cond.end733_crit_edge:                 ; preds = %do.body690
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end733

cond.false711:                                    ; preds = %do.body690
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %174(i32 noundef %173) #5
  %175 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %175)
  %.pr1530 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1530)
  %tobool717.not = icmp eq i32 %.pr1530, 0
  br i1 %tobool717.not, label %cond.false711.cond.end733_crit_edge, label %cond.false729

cond.false711.cond.end733_crit_edge:              ; preds = %cond.false711
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end733

cond.false729:                                    ; preds = %cond.false711
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %176(i32 noundef %.pr1530) #5
  br label %cond.end733

cond.end733:                                      ; preds = %cond.false729, %cond.false711.cond.end733_crit_edge, %do.body690.cond.end733_crit_edge
  %177 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port, align 4
  %add736 = add i32 %178, 1
  %and737 = and i32 %add736, 1048575
  %add738 = or i32 %and737, -18874368
  %179 = inttoptr i32 %add738 to ptr
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port, align 4
  %add748 = add i32 %182, 2
  %and749 = and i32 %add748, 1048575
  %add750 = or i32 %and749, -18874368
  %183 = inttoptr i32 %add750 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 4) #5, !srcloc !42
  %184 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool753.not = icmp eq i32 %185, 0
  br i1 %tobool753.not, label %cond.end733.cond.end769_crit_edge, label %cond.false765

cond.end733.cond.end769_crit_edge:                ; preds = %cond.end733
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end769

cond.false765:                                    ; preds = %cond.end733
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %186(i32 noundef %185) #5
  br label %cond.end769

cond.end769:                                      ; preds = %cond.false765, %cond.end733.cond.end769_crit_edge
  %187 = lshr i8 %162, 3
  %and770 = and i8 %187, 7
  %188 = lshr i8 %162, 4
  %shr771 = and i8 %188, 8
  %189 = or i8 %shr771, %and770
  %shl = shl i8 %180, 1
  %and773 = and i8 %shl, 112
  %neg775 = and i8 %180, -128
  %190 = or i8 %189, %neg775
  %191 = or i8 %190, %and773
  %or777 = xor i8 %191, -120
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01543
  %192 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %or777, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.01543, 1
  %exitcond1547.not = icmp eq i32 %inc, %count
  br i1 %exitcond1547.not, label %cond.end769.sw.epilog_crit_edge, label %cond.end769.do.body615_crit_edge

cond.end769.do.body615_crit_edge:                 ; preds = %cond.end769
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body615

cond.end769.sw.epilog_crit_edge:                  ; preds = %cond.end769
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body780:                                       ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %port, align 4
  %and785 = and i32 %194, 1048575
  %add786 = or i32 %and785, -18874368
  %195 = inttoptr i32 %add786 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 0) #5, !srcloc !42
  %196 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool789.not = icmp eq i32 %197, 0
  br i1 %tobool789.not, label %do.body780.cond.end805_crit_edge, label %cond.false801

do.body780.cond.end805_crit_edge:                 ; preds = %do.body780
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end805

cond.false801:                                    ; preds = %do.body780
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %198(i32 noundef %197) #5
  br label %cond.end805

cond.end805:                                      ; preds = %cond.false801, %do.body780.cond.end805_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8071540 = icmp sgt i32 %count, 0
  br i1 %cmp8071540, label %cond.end805.do.body810_crit_edge, label %cond.end805.do.body895_crit_edge

cond.end805.do.body895_crit_edge:                 ; preds = %cond.end805
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body895

cond.end805.do.body810_crit_edge:                 ; preds = %cond.end805
  br label %do.body810

do.body810:                                       ; preds = %for.inc892.do.body810_crit_edge, %cond.end805.do.body810_crit_edge
  %k.11541 = phi i32 [ %inc893, %for.inc892.do.body810_crit_edge ], [ 0, %cond.end805.do.body810_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %port, align 4
  %add814 = add i32 %200, 2
  %and815 = and i32 %add814, 1048575
  %add816 = or i32 %and815, -18874368
  %201 = inttoptr i32 %add816 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %201, i8 38) #5, !srcloc !42
  %202 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool819.not = icmp eq i32 %203, 0
  br i1 %tobool819.not, label %do.body810.cond.end853_crit_edge, label %cond.false831

do.body810.cond.end853_crit_edge:                 ; preds = %do.body810
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end853

cond.false831:                                    ; preds = %do.body810
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %204(i32 noundef %203) #5
  %205 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pr1532 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1532)
  %tobool837.not = icmp eq i32 %.pr1532, 0
  br i1 %tobool837.not, label %cond.false831.cond.end853_crit_edge, label %cond.false849

cond.false831.cond.end853_crit_edge:              ; preds = %cond.false831
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end853

cond.false849:                                    ; preds = %cond.false831
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %206(i32 noundef %.pr1532) #5
  br label %cond.end853

cond.end853:                                      ; preds = %cond.false849, %cond.false831.cond.end853_crit_edge, %do.body810.cond.end853_crit_edge
  %207 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %port, align 4
  %and857 = and i32 %208, 1048575
  %add858 = or i32 %and857, -18874368
  %209 = inttoptr i32 %add858 to ptr
  %210 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %209) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %arrayidx865 = getelementptr i8, ptr %buf, i32 %k.11541
  %211 = ptrtoint ptr %arrayidx865 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %arrayidx865, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port, align 4
  %add870 = add i32 %213, 2
  %and871 = and i32 %add870, 1048575
  %add872 = or i32 %and871, -18874368
  %214 = inttoptr i32 %add872 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %214, i8 36) #5, !srcloc !42
  %215 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool875.not = icmp eq i32 %216, 0
  br i1 %tobool875.not, label %cond.end853.for.inc892_crit_edge, label %cond.false887

cond.end853.for.inc892_crit_edge:                 ; preds = %cond.end853
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc892

cond.false887:                                    ; preds = %cond.end853
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %217(i32 noundef %216) #5
  br label %for.inc892

for.inc892:                                       ; preds = %cond.false887, %cond.end853.for.inc892_crit_edge
  %inc893 = add nuw nsw i32 %k.11541, 1
  %exitcond1546.not = icmp eq i32 %inc893, %count
  br i1 %exitcond1546.not, label %for.inc892.do.body895_crit_edge, label %for.inc892.do.body810_crit_edge

for.inc892.do.body810_crit_edge:                  ; preds = %for.inc892
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body810

for.inc892.do.body895_crit_edge:                  ; preds = %for.inc892
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body895

do.body895:                                       ; preds = %for.inc892.do.body895_crit_edge, %cond.end805.do.body895_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %port, align 4
  %add899 = add i32 %219, 2
  %and900 = and i32 %add899, 1048575
  %add901 = or i32 %and900, -18874368
  %220 = inttoptr i32 %add901 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 4) #5, !srcloc !42
  %221 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool904.not = icmp eq i32 %222, 0
  br i1 %tobool904.not, label %do.body895.sw.epilog_crit_edge, label %do.body895.sw.epilog.sink.split_crit_edge

do.body895.sw.epilog.sink.split_crit_edge:        ; preds = %do.body895
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body895.sw.epilog_crit_edge:                   ; preds = %do.body895
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body922:                                       ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port, align 4
  %add926 = add i32 %224, 2
  %and927 = and i32 %add926, 1048575
  %add928 = or i32 %and927, -18874368
  %225 = inttoptr i32 %add928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 36) #5, !srcloc !42
  %226 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool931.not = icmp eq i32 %227, 0
  br i1 %tobool931.not, label %do.body922.cond.end947_crit_edge, label %cond.false943

do.body922.cond.end947_crit_edge:                 ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end947

cond.false943:                                    ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %228(i32 noundef %227) #5
  br label %cond.end947

cond.end947:                                      ; preds = %cond.false943, %do.body922.cond.end947_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9491538 = icmp sgt i32 %count, 0
  br i1 %cmp9491538, label %cond.end947.for.body951_crit_edge, label %cond.end947.do.body985_crit_edge

cond.end947.do.body985_crit_edge:                 ; preds = %cond.end947
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body985

cond.end947.for.body951_crit_edge:                ; preds = %cond.end947
  br label %for.body951

for.body951:                                      ; preds = %cond.end969.for.body951_crit_edge, %cond.end947.for.body951_crit_edge
  %k.21539 = phi i32 [ %inc983, %cond.end969.for.body951_crit_edge ], [ 0, %cond.end947.for.body951_crit_edge ]
  %229 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool953.not = icmp eq i32 %230, 0
  br i1 %tobool953.not, label %for.body951.cond.end969_crit_edge, label %cond.false965

for.body951.cond.end969_crit_edge:                ; preds = %for.body951
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end969

cond.false965:                                    ; preds = %for.body951
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %231(i32 noundef %230) #5
  br label %cond.end969

cond.end969:                                      ; preds = %cond.false965, %for.body951.cond.end969_crit_edge
  %232 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %port, align 4
  %add972 = add i32 %233, 4
  %and973 = and i32 %add972, 1048575
  %add974 = or i32 %and973, -18874368
  %234 = inttoptr i32 %add974 to ptr
  %235 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %234) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  %arrayidx981 = getelementptr i8, ptr %buf, i32 %k.21539
  %236 = ptrtoint ptr %arrayidx981 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx981, align 1
  %inc983 = add nuw nsw i32 %k.21539, 1
  %exitcond1545.not = icmp eq i32 %inc983, %count
  br i1 %exitcond1545.not, label %cond.end969.do.body985_crit_edge, label %cond.end969.for.body951_crit_edge

cond.end969.for.body951_crit_edge:                ; preds = %cond.end969
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body951

cond.end969.do.body985_crit_edge:                 ; preds = %cond.end969
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body985

do.body985:                                       ; preds = %cond.end969.do.body985_crit_edge, %cond.end947.do.body985_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %237 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %port, align 4
  %add989 = add i32 %238, 2
  %and990 = and i32 %add989, 1048575
  %add991 = or i32 %and990, -18874368
  %239 = inttoptr i32 %add991 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %239, i8 4) #5, !srcloc !42
  %240 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool994.not = icmp eq i32 %241, 0
  br i1 %tobool994.not, label %do.body985.sw.epilog_crit_edge, label %do.body985.sw.epilog.sink.split_crit_edge

do.body985.sw.epilog.sink.split_crit_edge:        ; preds = %do.body985
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body985.sw.epilog_crit_edge:                   ; preds = %do.body985
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1012:                                      ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %242 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %port, align 4
  %add1016 = add i32 %243, 2
  %and1017 = and i32 %add1016, 1048575
  %add1018 = or i32 %and1017, -18874368
  %244 = inttoptr i32 %add1018 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 36) #5, !srcloc !42
  %245 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool1021.not = icmp eq i32 %246, 0
  br i1 %tobool1021.not, label %do.body1012.cond.end1037_crit_edge, label %cond.false1033

do.body1012.cond.end1037_crit_edge:               ; preds = %do.body1012
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1037

cond.false1033:                                   ; preds = %do.body1012
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %247(i32 noundef %246) #5
  br label %cond.end1037

cond.end1037:                                     ; preds = %cond.false1033, %do.body1012.cond.end1037_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp10391536 = icmp sgt i32 %count, 1
  br i1 %cmp10391536, label %cond.end1037.for.body1041_crit_edge, label %cond.end1037.do.body1075_crit_edge

cond.end1037.do.body1075_crit_edge:               ; preds = %cond.end1037
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1075

cond.end1037.for.body1041_crit_edge:              ; preds = %cond.end1037
  br label %for.body1041

for.body1041:                                     ; preds = %cond.end1059.for.body1041_crit_edge, %cond.end1037.for.body1041_crit_edge
  %k.31537 = phi i32 [ %inc1073, %cond.end1059.for.body1041_crit_edge ], [ 0, %cond.end1037.for.body1041_crit_edge ]
  %248 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool1043.not = icmp eq i32 %249, 0
  br i1 %tobool1043.not, label %for.body1041.cond.end1059_crit_edge, label %cond.false1055

for.body1041.cond.end1059_crit_edge:              ; preds = %for.body1041
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1059

cond.false1055:                                   ; preds = %for.body1041
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %249) #5
  br label %cond.end1059

cond.end1059:                                     ; preds = %cond.false1055, %for.body1041.cond.end1059_crit_edge
  %251 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port, align 4
  %add1062 = add i32 %252, 4
  %and1063 = and i32 %add1062, 1048575
  %add1064 = or i32 %and1063, -18874368
  %253 = inttoptr i32 %add1064 to ptr
  %254 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %253) #5, !srcloc !167
  %255 = tail call i16 @llvm.bswap.i16(i16 %254)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %arrayidx1071 = getelementptr i16, ptr %buf, i32 %k.31537
  %256 = ptrtoint ptr %arrayidx1071 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %255, ptr %arrayidx1071, align 2
  %inc1073 = add nuw nsw i32 %k.31537, 1
  %exitcond1544.not = icmp eq i32 %inc1073, %div
  br i1 %exitcond1544.not, label %cond.end1059.do.body1075_crit_edge, label %cond.end1059.for.body1041_crit_edge

cond.end1059.for.body1041_crit_edge:              ; preds = %cond.end1059
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1041

cond.end1059.do.body1075_crit_edge:               ; preds = %cond.end1059
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1075

do.body1075:                                      ; preds = %cond.end1059.do.body1075_crit_edge, %cond.end1037.do.body1075_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %257 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %port, align 4
  %add1079 = add i32 %258, 2
  %and1080 = and i32 %add1079, 1048575
  %add1081 = or i32 %and1080, -18874368
  %259 = inttoptr i32 %add1081 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %259, i8 4) #5, !srcloc !42
  %260 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool1084.not = icmp eq i32 %261, 0
  br i1 %tobool1084.not, label %do.body1075.sw.epilog_crit_edge, label %do.body1075.sw.epilog.sink.split_crit_edge

do.body1075.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1075
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1075.sw.epilog_crit_edge:                  ; preds = %do.body1075
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1102:                                      ; preds = %cond.end612
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %262 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %port, align 4
  %add1106 = add i32 %263, 2
  %and1107 = and i32 %add1106, 1048575
  %add1108 = or i32 %and1107, -18874368
  %264 = inttoptr i32 %add1108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 36) #5, !srcloc !42
  %265 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool1111.not = icmp eq i32 %266, 0
  br i1 %tobool1111.not, label %do.body1102.cond.end1127_crit_edge, label %cond.false1123

do.body1102.cond.end1127_crit_edge:               ; preds = %do.body1102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1127

cond.false1123:                                   ; preds = %do.body1102
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %267 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %267(i32 noundef %266) #5
  br label %cond.end1127

cond.end1127:                                     ; preds = %cond.false1123, %do.body1102.cond.end1127_crit_edge
  %div1129 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp11301534 = icmp sgt i32 %count, 3
  br i1 %cmp11301534, label %cond.end1127.for.body1132_crit_edge, label %cond.end1127.do.body1164_crit_edge

cond.end1127.do.body1164_crit_edge:               ; preds = %cond.end1127
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1164

cond.end1127.for.body1132_crit_edge:              ; preds = %cond.end1127
  br label %for.body1132

for.body1132:                                     ; preds = %cond.end1150.for.body1132_crit_edge, %cond.end1127.for.body1132_crit_edge
  %k.41535 = phi i32 [ %inc1162, %cond.end1150.for.body1132_crit_edge ], [ 0, %cond.end1127.for.body1132_crit_edge ]
  %268 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool1134.not = icmp eq i32 %269, 0
  br i1 %tobool1134.not, label %for.body1132.cond.end1150_crit_edge, label %cond.false1146

for.body1132.cond.end1150_crit_edge:              ; preds = %for.body1132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1150

cond.false1146:                                   ; preds = %for.body1132
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %270(i32 noundef %269) #5
  br label %cond.end1150

cond.end1150:                                     ; preds = %cond.false1146, %for.body1132.cond.end1150_crit_edge
  %271 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %port, align 4
  %add1153 = add i32 %272, 4
  %and1154 = and i32 %add1153, 1048575
  %add1155 = or i32 %and1154, -18874368
  %273 = inttoptr i32 %add1155 to ptr
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %273) #5, !srcloc !171
  %275 = tail call i32 @llvm.bswap.i32(i32 %274)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  %arrayidx1160 = getelementptr i32, ptr %buf, i32 %k.41535
  %276 = ptrtoint ptr %arrayidx1160 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %arrayidx1160, align 4
  %inc1162 = add nuw nsw i32 %k.41535, 1
  %exitcond.not = icmp eq i32 %inc1162, %div1129
  br i1 %exitcond.not, label %cond.end1150.do.body1164_crit_edge, label %cond.end1150.for.body1132_crit_edge

cond.end1150.for.body1132_crit_edge:              ; preds = %cond.end1150
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1132

cond.end1150.do.body1164_crit_edge:               ; preds = %cond.end1150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1164

do.body1164:                                      ; preds = %cond.end1150.do.body1164_crit_edge, %cond.end1127.do.body1164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %277 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port, align 4
  %add1168 = add i32 %278, 2
  %and1169 = and i32 %add1168, 1048575
  %add1170 = or i32 %and1169, -18874368
  %279 = inttoptr i32 %add1170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 4) #5, !srcloc !42
  %280 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool1173.not = icmp eq i32 %281, 0
  br i1 %tobool1173.not, label %do.body1164.sw.epilog_crit_edge, label %do.body1164.sw.epilog.sink.split_crit_edge

do.body1164.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1164
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1164.sw.epilog_crit_edge:                  ; preds = %do.body1164
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body1164.sw.epilog.sink.split_crit_edge, %do.body1075.sw.epilog.sink.split_crit_edge, %do.body985.sw.epilog.sink.split_crit_edge, %do.body895.sw.epilog.sink.split_crit_edge
  %.sink1549 = phi i32 [ %222, %do.body895.sw.epilog.sink.split_crit_edge ], [ %241, %do.body985.sw.epilog.sink.split_crit_edge ], [ %261, %do.body1075.sw.epilog.sink.split_crit_edge ], [ %281, %do.body1164.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %282(i32 noundef %.sink1549) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body1164.sw.epilog_crit_edge, %do.body1075.sw.epilog_crit_edge, %do.body985.sw.epilog_crit_edge, %do.body895.sw.epilog_crit_edge, %cond.end769.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %cond.end612.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_connect(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end31

cond.false27:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #5
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false27, %cond.end10.cond.end31_crit_edge
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add34 = add i32 %12, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %13 = inttoptr i32 %add36 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !42
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.do.body65_crit_edge, label %cond.false60

cond.end31.do.body65_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body65

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %do.body65

do.body65:                                        ; preds = %cond.false60, %cond.end31.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and69 = and i32 %23, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -1) #5, !srcloc !42
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool73.not = icmp eq i32 %26, 0
  br i1 %tobool73.not, label %do.body65.do.body90_crit_edge, label %cond.false85

do.body65.do.body90_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

cond.false85:                                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #5
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body65.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add93 = add i32 %29, 2
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 12) #5, !srcloc !42
  %31 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool98.not = icmp eq i32 %32, 0
  br i1 %tobool98.not, label %do.body90.do.body115_crit_edge, label %cond.false110

do.body90.do.body115_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %32) #5
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body90.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add118 = add i32 %35, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 4) #5, !srcloc !42
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool123.not = icmp eq i32 %38, 0
  br i1 %tobool123.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %38) #5
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and144 = and i32 %41, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -86) #5, !srcloc !42
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not = icmp eq i32 %44, 0
  br i1 %tobool148.not, label %do.body140.do.body165_crit_edge, label %cond.false160

do.body140.do.body165_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body165

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #5
  br label %do.body165

do.body165:                                       ; preds = %cond.false160, %do.body140.do.body165_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and169 = and i32 %47, 1048575
  %add170 = or i32 %and169, -18874368
  %48 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 85) #5, !srcloc !42
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool173.not = icmp eq i32 %50, 0
  br i1 %tobool173.not, label %do.body165.do.body190_crit_edge, label %cond.false185

do.body165.do.body190_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190

cond.false185:                                    ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #5
  br label %do.body190

do.body190:                                       ; preds = %cond.false185, %do.body165.do.body190_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %and194 = and i32 %53, 1048575
  %add195 = or i32 %and194, -18874368
  %54 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #5, !srcloc !42
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool198.not = icmp eq i32 %56, 0
  br i1 %tobool198.not, label %do.body190.do.body215_crit_edge, label %cond.false210

do.body190.do.body215_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body215

cond.false210:                                    ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #5
  br label %do.body215

do.body215:                                       ; preds = %cond.false210, %do.body190.do.body215_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %and219 = and i32 %59, 1048575
  %add220 = or i32 %and219, -18874368
  %60 = inttoptr i32 %add220 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 -1) #5, !srcloc !42
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool223.not = icmp eq i32 %62, 0
  br i1 %tobool223.not, label %do.body215.do.body240_crit_edge, label %cond.false235

do.body215.do.body240_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body240

cond.false235:                                    ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #5
  br label %do.body240

do.body240:                                       ; preds = %cond.false235, %do.body215.do.body240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %and244 = and i32 %65, 1048575
  %add245 = or i32 %and244, -18874368
  %66 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -121) #5, !srcloc !42
  %67 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool248.not = icmp eq i32 %68, 0
  br i1 %tobool248.not, label %do.body240.do.body265_crit_edge, label %cond.false260

do.body240.do.body265_crit_edge:                  ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body265

cond.false260:                                    ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #5
  br label %do.body265

do.body265:                                       ; preds = %cond.false260, %do.body240.do.body265_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %and269 = and i32 %71, 1048575
  %add270 = or i32 %and269, -18874368
  %72 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 120) #5, !srcloc !42
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool273.not = icmp eq i32 %74, 0
  br i1 %tobool273.not, label %do.body265.do.body290_crit_edge, label %cond.false285

do.body265.do.body290_crit_edge:                  ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body290

cond.false285:                                    ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #5
  br label %do.body290

do.body290:                                       ; preds = %cond.false285, %do.body265.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %and294 = and i32 %77, 1048575
  %add295 = or i32 %and294, -18874368
  %78 = inttoptr i32 %add295 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -32) #5, !srcloc !42
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool298.not = icmp eq i32 %80, 0
  br i1 %tobool298.not, label %do.body290.do.body315_crit_edge, label %cond.false310

do.body290.do.body315_crit_edge:                  ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

cond.false310:                                    ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %do.body315

do.body315:                                       ; preds = %cond.false310, %do.body290.do.body315_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add318 = add i32 %83, 2
  %and319 = and i32 %add318, 1048575
  %add320 = or i32 %and319, -18874368
  %84 = inttoptr i32 %add320 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 5) #5, !srcloc !42
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool323.not = icmp eq i32 %86, 0
  br i1 %tobool323.not, label %do.body315.do.body340_crit_edge, label %cond.false335

do.body315.do.body340_crit_edge:                  ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body340

cond.false335:                                    ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %do.body340

do.body340:                                       ; preds = %cond.false335, %do.body315.do.body340_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add343 = add i32 %89, 2
  %and344 = and i32 %add343, 1048575
  %add345 = or i32 %and344, -18874368
  %90 = inttoptr i32 %add345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 4) #5, !srcloc !42
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool348.not = icmp eq i32 %92, 0
  br i1 %tobool348.not, label %do.body340.do.body365_crit_edge, label %cond.false360

do.body340.do.body365_crit_edge:                  ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body365

cond.false360:                                    ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #5
  br label %do.body365

do.body365:                                       ; preds = %cond.false360, %do.body340.do.body365_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %and369 = and i32 %95, 1048575
  %add370 = or i32 %and369, -18874368
  %96 = inttoptr i32 %add370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 -1) #5, !srcloc !42
  %97 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool373.not = icmp eq i32 %98, 0
  br i1 %tobool373.not, label %do.body365.cond.end389_crit_edge, label %cond.false385

do.body365.cond.end389_crit_edge:                 ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end389

cond.false385:                                    ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #5
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false385, %do.body365.cond.end389_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #5, !srcloc !42
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %cond.false7

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 2
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 12) #5, !srcloc !42
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not = icmp eq i32 %10, 0
  br i1 %tobool20.not, label %do.body12.do.body36_crit_edge, label %cond.false31

do.body12.do.body36_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36

cond.false31:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #5
  br label %do.body36

do.body36:                                        ; preds = %cond.false31, %do.body12.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add39 = add i32 %13, 2
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 4) #5, !srcloc !42
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %do.body36.do.body60_crit_edge, label %cond.false55

do.body36.do.body60_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

cond.false55:                                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  br label %do.body60

do.body60:                                        ; preds = %cond.false55, %do.body36.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and64 = and i32 %19, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -86) #5, !srcloc !42
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool68.not = icmp eq i32 %22, 0
  br i1 %tobool68.not, label %do.body60.do.body84_crit_edge, label %cond.false79

do.body60.do.body84_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body84

cond.false79:                                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %22) #5
  br label %do.body84

do.body84:                                        ; preds = %cond.false79, %do.body60.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and88 = and i32 %25, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 85) #5, !srcloc !42
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool92.not = icmp eq i32 %28, 0
  br i1 %tobool92.not, label %do.body84.do.body108_crit_edge, label %cond.false103

do.body84.do.body108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body108

cond.false103:                                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #5
  br label %do.body108

do.body108:                                       ; preds = %cond.false103, %do.body84.do.body108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and112 = and i32 %31, 1048575
  %add113 = or i32 %and112, -18874368
  %32 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #5, !srcloc !42
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool116.not = icmp eq i32 %34, 0
  br i1 %tobool116.not, label %do.body108.do.body132_crit_edge, label %cond.false127

do.body108.do.body132_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body132

cond.false127:                                    ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #5
  br label %do.body132

do.body132:                                       ; preds = %cond.false127, %do.body108.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and136 = and i32 %37, 1048575
  %add137 = or i32 %and136, -18874368
  %38 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -1) #5, !srcloc !42
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool140.not = icmp eq i32 %40, 0
  br i1 %tobool140.not, label %do.body132.do.body156_crit_edge, label %cond.false151

do.body132.do.body156_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

cond.false151:                                    ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #5
  br label %do.body156

do.body156:                                       ; preds = %cond.false151, %do.body132.do.body156_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %and160 = and i32 %43, 1048575
  %add161 = or i32 %and160, -18874368
  %44 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 -121) #5, !srcloc !42
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool164.not = icmp eq i32 %46, 0
  br i1 %tobool164.not, label %do.body156.do.body180_crit_edge, label %cond.false175

do.body156.do.body180_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body180

cond.false175:                                    ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #5
  br label %do.body180

do.body180:                                       ; preds = %cond.false175, %do.body156.do.body180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and184 = and i32 %49, 1048575
  %add185 = or i32 %and184, -18874368
  %50 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 120) #5, !srcloc !42
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool188.not = icmp eq i32 %52, 0
  br i1 %tobool188.not, label %do.body180.do.body204_crit_edge, label %cond.false199

do.body180.do.body204_crit_edge:                  ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body204

cond.false199:                                    ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #5
  br label %do.body204

do.body204:                                       ; preds = %cond.false199, %do.body180.do.body204_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and208 = and i32 %55, 1048575
  %add209 = or i32 %and208, -18874368
  %56 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 48) #5, !srcloc !42
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool212.not = icmp eq i32 %58, 0
  br i1 %tobool212.not, label %do.body204.do.body228_crit_edge, label %cond.false223

do.body204.do.body228_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body228

cond.false223:                                    ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #5
  br label %do.body228

do.body228:                                       ; preds = %cond.false223, %do.body204.do.body228_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add231 = add i32 %61, 2
  %and232 = and i32 %add231, 1048575
  %add233 = or i32 %and232, -18874368
  %62 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 5) #5, !srcloc !42
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool236.not = icmp eq i32 %64, 0
  br i1 %tobool236.not, label %do.body228.do.body252_crit_edge, label %cond.false247

do.body228.do.body252_crit_edge:                  ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body252

cond.false247:                                    ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #5
  br label %do.body252

do.body252:                                       ; preds = %cond.false247, %do.body228.do.body252_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add255 = add i32 %67, 2
  %and256 = and i32 %add255, 1048575
  %add257 = or i32 %and256, -18874368
  %68 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 4) #5, !srcloc !42
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool260.not = icmp eq i32 %70, 0
  br i1 %tobool260.not, label %do.body252.do.body276_crit_edge, label %cond.false271

do.body252.do.body276_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body276

cond.false271:                                    ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #5
  br label %do.body276

do.body276:                                       ; preds = %cond.false271, %do.body252.do.body276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %72 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %73 to i8
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %and280 = and i32 %75, 1048575
  %add281 = or i32 %and280, -18874368
  %76 = inttoptr i32 %add281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %conv) #5, !srcloc !42
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool284.not = icmp eq i32 %78, 0
  br i1 %tobool284.not, label %do.body276.do.body301_crit_edge, label %cond.false296

do.body276.do.body301_crit_edge:                  ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body301

cond.false296:                                    ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %do.body301

do.body301:                                       ; preds = %cond.false296, %do.body276.do.body301_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %80 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %saved_r2, align 4
  %conv303 = trunc i32 %81 to i8
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add305 = add i32 %83, 2
  %and306 = and i32 %add305, 1048575
  %add307 = or i32 %and306, -18874368
  %84 = inttoptr i32 %add307 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %conv303) #5, !srcloc !42
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool310.not = icmp eq i32 %86, 0
  br i1 %tobool310.not, label %do.body301.cond.end326_crit_edge, label %cond.false322

do.body301.cond.end326_crit_edge:                 ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end326

cond.false322:                                    ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #5
  br label %cond.end326

cond.end326:                                      ; preds = %cond.false322, %do.body301.cond.end326_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dstr_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @__const.dstr_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/dstr.c", i32 231, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_dstr__162_232_dstr_init6, !4, !"__initcall__kmod_dstr__162_232_dstr_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/dstr.c", i32 232, i32 1}
!5 = !{ptr @__exitcall_dstr_exit, !6, !"__exitcall_dstr_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/dstr.c", i32 233, i32 1}
!7 = !{ptr @dstr, !8, !"dstr", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/dstr.c", i32 205, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/dstr.c", i32 45, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/dstr.c", i32 195, i32 36}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/dstr.c", i32 195, i32 44}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/dstr.c", i32 195, i32 52}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/dstr.c", i32 196, i32 8}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/dstr.c", i32 196, i32 17}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/dstr.c", i32 198, i32 9}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dstr_log_adapter._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @dstr_log_adapter._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/paride/dstr.c", i32 200, i32 9}
!30 = !{ptr @dstr_log_adapter._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dstr_log_adapter._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2152133945}
!42 = !{i64 4533367}
!43 = !{i64 2152134982}
!44 = !{i64 2152135998}
!45 = !{i64 2152137008}
!46 = !{i64 2152138018}
!47 = !{i64 2152145143}
!48 = !{i64 2152146153}
!49 = !{i64 2152147163}
!50 = !{i64 2152148173}
!51 = !{i64 2152149183}
!52 = !{i64 2152150220}
!53 = !{i64 2152151236}
!54 = !{i64 2152152246}
!55 = !{i64 2152153256}
!56 = !{i64 2152154272}
!57 = !{i64 2152155282}
!58 = !{i64 2152156292}
!59 = !{i64 2152157302}
!60 = !{i64 2152158312}
!61 = !{i64 2152159328}
!62 = !{i64 2152104691}
!63 = !{i64 2152105728}
!64 = !{i64 2152106744}
!65 = !{i64 2152107754}
!66 = !{i64 2152108764}
!67 = !{i64 2152111828}
!68 = !{i64 2152112838}
!69 = !{i64 2152113848}
!70 = !{i64 2152114858}
!71 = !{i64 2152115868}
!72 = !{i64 2152116905}
!73 = !{i64 2152117921}
!74 = !{i64 2152118931}
!75 = !{i64 2152119941}
!76 = !{i64 2152120951}
!77 = !{i64 4533762}
!78 = !{i64 2152122646}
!79 = !{i64 2152122914}
!80 = !{i64 2152123924}
!81 = !{i64 2152125619}
!82 = !{i64 2152125887}
!83 = !{i64 2152126962}
!84 = !{i64 2152127981}
!85 = !{i64 2152129676}
!86 = !{i64 2152129944}
!87 = !{i64 2152130963}
!88 = !{i64 2152132658}
!89 = !{i64 2152132926}
!90 = !{i64 2152237073}
!91 = !{i64 2152238110}
!92 = !{i64 2152239126}
!93 = !{i64 2152240136}
!94 = !{i64 2152241146}
!95 = !{i64 2152244210}
!96 = !{i64 2152245220}
!97 = !{i64 2152246230}
!98 = !{i64 2152247240}
!99 = !{i64 2152248259}
!100 = !{i64 2152249296}
!101 = !{i64 2152250312}
!102 = !{i64 2152251322}
!103 = !{i64 2152252332}
!104 = !{i64 2152253367}
!105 = !{i64 2152254377}
!106 = !{i64 2152255387}
!107 = !{i64 2152256397}
!108 = !{i64 2152257416}
!109 = !{i64 2152258453}
!110 = !{i64 2152259469}
!111 = !{i64 2152260479}
!112 = !{i64 2152261489}
!113 = !{i64 2152262499}
!114 = !{i64 2152263524}
!115 = !{i64 2152264534}
!116 = !{i64 2152265544}
!117 = !{i64 2152266554}
!118 = !{i64 2152267573}
!119 = !{i64 2152268598}
!120 = !{i64 2152269617}
!121 = !{i64 2152270636}
!122 = !{i64 2152271687}
!123 = !{i64 4532944}
!124 = !{i64 2152272824}
!125 = !{i64 2152273843}
!126 = !{i64 2152274894}
!127 = !{i64 4533564}
!128 = !{i64 2152276031}
!129 = !{i64 2152190962}
!130 = !{i64 2152191999}
!131 = !{i64 2152193015}
!132 = !{i64 2152194025}
!133 = !{i64 2152195035}
!134 = !{i64 2152198099}
!135 = !{i64 2152199109}
!136 = !{i64 2152200119}
!137 = !{i64 2152201129}
!138 = !{i64 2152202148}
!139 = !{i64 2152203185}
!140 = !{i64 2152204201}
!141 = !{i64 2152205211}
!142 = !{i64 2152206221}
!143 = !{i64 2152207256}
!144 = !{i64 2152208266}
!145 = !{i64 2152209276}
!146 = !{i64 2152210286}
!147 = !{i64 2152211305}
!148 = !{i64 2152212342}
!149 = !{i64 2152213358}
!150 = !{i64 2152214368}
!151 = !{i64 2152215378}
!152 = !{i64 2152216388}
!153 = !{i64 2152218083}
!154 = !{i64 2152218351}
!155 = !{i64 2152219361}
!156 = !{i64 2152221056}
!157 = !{i64 2152221324}
!158 = !{i64 2152222399}
!159 = !{i64 2152223418}
!160 = !{i64 2152225113}
!161 = !{i64 2152225390}
!162 = !{i64 2152226400}
!163 = !{i64 2152227419}
!164 = !{i64 2152229114}
!165 = !{i64 2152229382}
!166 = !{i64 2152230401}
!167 = !{i64 4533144}
!168 = !{i64 2152232448}
!169 = !{i64 2152232716}
!170 = !{i64 2152233735}
!171 = !{i64 4533982}
!172 = !{i64 2152235786}
!173 = !{i64 2152236054}
!174 = !{i64 2152161023}
!175 = !{i64 2152161976}
!176 = !{i64 2152162244}
!177 = !{i64 2152163371}
!178 = !{i64 2152164387}
!179 = !{i64 2152165397}
!180 = !{i64 2152166416}
!181 = !{i64 2152167435}
!182 = !{i64 2152168445}
!183 = !{i64 2152169464}
!184 = !{i64 2152170483}
!185 = !{i64 2152171502}
!186 = !{i64 2152172521}
!187 = !{i64 2152173531}
!188 = !{i64 2152174541}
!189 = !{i64 2152175560}
!190 = !{i64 2152176687}
!191 = !{i64 2152177703}
!192 = !{i64 2152178713}
!193 = !{i64 2152179732}
!194 = !{i64 2152180751}
!195 = !{i64 2152181761}
!196 = !{i64 2152182780}
!197 = !{i64 2152183799}
!198 = !{i64 2152184818}
!199 = !{i64 2152185837}
!200 = !{i64 2152186847}
!201 = !{i64 2152187857}
!202 = !{i64 2152188900}
!203 = !{i64 2152189943}
