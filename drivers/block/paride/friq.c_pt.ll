; ModuleID = '/llk/IR_all_yes/drivers/block/paride/friq.c_pt.bc'
source_filename = "../drivers/block/paride/friq.c"
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

@friq = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"friq\00\00\00\00", i32 0, i32 5, i32 2, i32 1, i32 1, ptr @friq_write_regr, ptr @friq_read_regr, ptr @friq_write_block, ptr @friq_read_block, ptr @friq_connect, ptr @friq_disconnect, ptr null, ptr null, ptr @friq_test_proto, ptr @friq_log_adapter, ptr null, ptr @friq_release_proto, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"friq.file=drivers/block/paride/friq\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"friq.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_friq__162_275_friq_init6 = internal global ptr @friq_init, section ".initcall6.init", align 4
@__exitcall_friq_exit = internal global ptr @friq_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@friq_test_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: friq: port 0x%x, mode %d, test=(%d,%d,%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"friq_test_proto\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/friq.c\00", [36 x i8] zeroinitializer }, align 32
@friq_test_proto._entry_ptr = internal global ptr @friq_test_proto._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.friq_log_adapter.mode_string = private unnamed_addr constant [6 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 4
@friq_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: friq %s, Freecom IQ ASIC-2 adapter at 0x%x, \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"friq_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@friq_log_adapter._entry_ptr = internal global ptr @friq_log_adapter._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@friq_log_adapter._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@friq_log_adapter._entry_ptr.13 = internal global ptr @friq_log_adapter._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"friq\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 246, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 49, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 211, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 221, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 221, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 224, i32 9 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [31 x i8] c"../drivers/block/paride/friq.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 226, i32 9 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_friq_exit, ptr @__initcall__kmod_friq__162_275_friq_init6, ptr @friq_exit, ptr @friq_log_adapter._entry, ptr @friq_log_adapter._entry.11, ptr @friq_log_adapter._entry_ptr, ptr @friq_log_adapter._entry_ptr.13, ptr @friq_test_proto._entry, ptr @friq_test_proto._entry_ptr, ptr @friq, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friq to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friq_test_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friq_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friq_log_adapter._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @friq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @paride_unregister(ptr noundef nonnull @friq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @friq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @friq) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add1 = add i32 %3, 2
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and18 = and i32 %9, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %and43 = and i32 %15, 1048575
  %add44 = or i32 %and43, -18874368
  %16 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %and68 = and i32 %21, 1048575
  %add69 = or i32 %and68, -18874368
  %22 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 115) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and93 = and i32 %27, 1048575
  %add94 = or i32 %and93, -18874368
  %28 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 115) #5, !srcloc !47
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool97.not = icmp eq i32 %30, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and118 = and i32 %33, 1048575
  %add119 = or i32 %and118, -18874368
  %34 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -55) #5, !srcloc !47
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool122.not = icmp eq i32 %36, 0
  br i1 %tobool122.not, label %do.body113.do.body138_crit_edge, label %cond.false133

do.body113.do.body138_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body138

cond.false133:                                    ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body138

do.body138:                                       ; preds = %cond.false133, %do.body113.do.body138_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %and143 = and i32 %39, 1048575
  %add144 = or i32 %and143, -18874368
  %40 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -55) #5, !srcloc !47
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool147.not = icmp eq i32 %42, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %cond.false158

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

cond.false158:                                    ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body163

do.body163:                                       ; preds = %cond.false158, %do.body138.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and168 = and i32 %45, 1048575
  %add169 = or i32 %and168, -18874368
  %46 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 38) #5, !srcloc !47
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool172.not = icmp eq i32 %48, 0
  br i1 %tobool172.not, label %do.body163.do.body188_crit_edge, label %cond.false183

do.body163.do.body188_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body188

cond.false183:                                    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body188

do.body188:                                       ; preds = %cond.false183, %do.body163.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %and193 = and i32 %51, 1048575
  %add194 = or i32 %and193, -18874368
  %52 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 38) #5, !srcloc !47
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool197.not = icmp eq i32 %54, 0
  br i1 %tobool197.not, label %do.body188.do.body213_crit_edge, label %cond.false208

do.body188.do.body213_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cond.false208:                                    ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body213

do.body213:                                       ; preds = %cond.false208, %do.body188.do.body213_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and218 = and i32 %57, 1048575
  %add219 = or i32 %and218, -18874368
  %58 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv) #5, !srcloc !47
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool222.not = icmp eq i32 %60, 0
  br i1 %tobool222.not, label %do.body213.do.body239_crit_edge, label %cond.false234

do.body213.do.body239_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body239

cond.false234:                                    ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body239

do.body239:                                       ; preds = %cond.false234, %do.body213.do.body239_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %and245 = and i32 %63, 1048575
  %add246 = or i32 %and245, -18874368
  %64 = inttoptr i32 %add246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv) #5, !srcloc !47
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool249.not = icmp eq i32 %66, 0
  br i1 %tobool249.not, label %do.body239.do.body266_crit_edge, label %cond.false261

do.body239.do.body266_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body266

cond.false261:                                    ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body239.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %conv269 = trunc i32 %val to i8
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and272 = and i32 %69, 1048575
  %add273 = or i32 %and272, -18874368
  %70 = inttoptr i32 %add273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %conv269) #5, !srcloc !47
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool276.not = icmp eq i32 %72, 0
  br i1 %tobool276.not, label %do.body266.do.body293_crit_edge, label %cond.false288

do.body266.do.body293_crit_edge:                  ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body293

cond.false288:                                    ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body293

do.body293:                                       ; preds = %cond.false288, %do.body266.do.body293_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add297 = add i32 %75, 2
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %76 = inttoptr i32 %add299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 5) #5, !srcloc !47
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool302.not = icmp eq i32 %78, 0
  br i1 %tobool302.not, label %do.body293.do.body319_crit_edge, label %cond.false314

do.body293.do.body319_crit_edge:                  ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body319

cond.false314:                                    ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %do.body319

do.body319:                                       ; preds = %cond.false314, %do.body293.do.body319_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add323 = add i32 %81, 2
  %and324 = and i32 %add323, 1048575
  %add325 = or i32 %and324, -18874368
  %82 = inttoptr i32 %add325 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 7) #5, !srcloc !47
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool328.not = icmp eq i32 %84, 0
  br i1 %tobool328.not, label %do.body319.do.body345_crit_edge, label %cond.false340

do.body319.do.body345_crit_edge:                  ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body345

cond.false340:                                    ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %do.body345

do.body345:                                       ; preds = %cond.false340, %do.body319.do.body345_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 4
  %add349 = add i32 %87, 2
  %and350 = and i32 %add349, 1048575
  %add351 = or i32 %and350, -18874368
  %88 = inttoptr i32 %add351 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 5) #5, !srcloc !47
  %89 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool354.not = icmp eq i32 %90, 0
  br i1 %tobool354.not, label %do.body345.do.body371_crit_edge, label %cond.false366

do.body345.do.body371_crit_edge:                  ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body371

cond.false366:                                    ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #5
  br label %do.body371

do.body371:                                       ; preds = %cond.false366, %do.body345.do.body371_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %add375 = add i32 %93, 2
  %and376 = and i32 %add375, 1048575
  %add377 = or i32 %and376, -18874368
  %94 = inttoptr i32 %add377 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 4) #5, !srcloc !47
  %95 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool380.not = icmp eq i32 %96, 0
  br i1 %tobool380.not, label %do.body371.cond.end396_crit_edge, label %cond.false392

do.body371.cond.end396_crit_edge:                 ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end396

cond.false392:                                    ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #5
  br label %cond.end396

cond.end396:                                      ; preds = %cond.false392, %do.body371.cond.end396_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friq_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add1 = add i32 %3, 2
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and18 = and i32 %9, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %and43 = and i32 %15, 1048575
  %add44 = or i32 %and43, -18874368
  %16 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %and68 = and i32 %21, 1048575
  %add69 = or i32 %and68, -18874368
  %22 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 115) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and93 = and i32 %27, 1048575
  %add94 = or i32 %and93, -18874368
  %28 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 115) #5, !srcloc !47
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool97.not = icmp eq i32 %30, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and118 = and i32 %33, 1048575
  %add119 = or i32 %and118, -18874368
  %34 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -55) #5, !srcloc !47
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool122.not = icmp eq i32 %36, 0
  br i1 %tobool122.not, label %do.body113.do.body138_crit_edge, label %cond.false133

do.body113.do.body138_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body138

cond.false133:                                    ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body138

do.body138:                                       ; preds = %cond.false133, %do.body113.do.body138_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %and143 = and i32 %39, 1048575
  %add144 = or i32 %and143, -18874368
  %40 = inttoptr i32 %add144 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -55) #5, !srcloc !47
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool147.not = icmp eq i32 %42, 0
  br i1 %tobool147.not, label %do.body138.do.body163_crit_edge, label %cond.false158

do.body138.do.body163_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

cond.false158:                                    ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body163

do.body163:                                       ; preds = %cond.false158, %do.body138.do.body163_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and168 = and i32 %45, 1048575
  %add169 = or i32 %and168, -18874368
  %46 = inttoptr i32 %add169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 38) #5, !srcloc !47
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool172.not = icmp eq i32 %48, 0
  br i1 %tobool172.not, label %do.body163.do.body188_crit_edge, label %cond.false183

do.body163.do.body188_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body188

cond.false183:                                    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body188

do.body188:                                       ; preds = %cond.false183, %do.body163.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %and193 = and i32 %51, 1048575
  %add194 = or i32 %and193, -18874368
  %52 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 38) #5, !srcloc !47
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool197.not = icmp eq i32 %54, 0
  br i1 %tobool197.not, label %do.body188.do.body213_crit_edge, label %cond.false208

do.body188.do.body213_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body213

cond.false208:                                    ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body213

do.body213:                                       ; preds = %cond.false208, %do.body188.do.body213_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %add to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and218 = and i32 %57, 1048575
  %add219 = or i32 %and218, -18874368
  %58 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv) #5, !srcloc !47
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool222.not = icmp eq i32 %60, 0
  br i1 %tobool222.not, label %do.body213.do.body239_crit_edge, label %cond.false234

do.body213.do.body239_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body239

cond.false234:                                    ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body239

do.body239:                                       ; preds = %cond.false234, %do.body213.do.body239_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %and245 = and i32 %63, 1048575
  %add246 = or i32 %and245, -18874368
  %64 = inttoptr i32 %add246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv) #5, !srcloc !47
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool249.not = icmp eq i32 %66, 0
  br i1 %tobool249.not, label %do.body239.do.body266_crit_edge, label %cond.false261

do.body239.do.body266_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body266

cond.false261:                                    ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body266

do.body266:                                       ; preds = %cond.false261, %do.body239.do.body266_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add270 = add i32 %69, 2
  %and271 = and i32 %add270, 1048575
  %add272 = or i32 %and271, -18874368
  %70 = inttoptr i32 %add272 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 6) #5, !srcloc !47
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool275.not = icmp eq i32 %72, 0
  br i1 %tobool275.not, label %do.body266.cond.end309_crit_edge, label %cond.false287

do.body266.cond.end309_crit_edge:                 ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end309

cond.false287:                                    ; preds = %do.body266
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool293.not = icmp eq i32 %.pr, 0
  br i1 %tobool293.not, label %cond.false287.cond.end309_crit_edge, label %cond.false305

cond.false287.cond.end309_crit_edge:              ; preds = %cond.false287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end309

cond.false305:                                    ; preds = %cond.false287
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %.pr) #5
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false305, %cond.false287.cond.end309_crit_edge, %do.body266.cond.end309_crit_edge
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add311 = add i32 %77, 1
  %and312 = and i32 %add311, 1048575
  %add313 = or i32 %and312, -18874368
  %78 = inttoptr i32 %add313 to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add322 = add i32 %81, 2
  %and323 = and i32 %add322, 1048575
  %add324 = or i32 %and323, -18874368
  %82 = inttoptr i32 %add324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 4) #5, !srcloc !47
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool327.not = icmp eq i32 %84, 0
  br i1 %tobool327.not, label %cond.end309.cond.end361_crit_edge, label %cond.false339

cond.end309.cond.end361_crit_edge:                ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end361

cond.false339:                                    ; preds = %cond.end309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  %86 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr513 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr513)
  %tobool345.not = icmp eq i32 %.pr513, 0
  br i1 %tobool345.not, label %cond.false339.cond.end361_crit_edge, label %cond.false357

cond.false339.cond.end361_crit_edge:              ; preds = %cond.false339
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end361

cond.false357:                                    ; preds = %cond.false339
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %.pr513) #5
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false357, %cond.false339.cond.end361_crit_edge, %cond.end309.cond.end361_crit_edge
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %add364 = add i32 %89, 1
  %and365 = and i32 %add364, 1048575
  %add366 = or i32 %and365, -18874368
  %90 = inttoptr i32 %add366 to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %add376 = add i32 %93, 2
  %and377 = and i32 %add376, 1048575
  %add378 = or i32 %and377, -18874368
  %94 = inttoptr i32 %add378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 4) #5, !srcloc !47
  %95 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool381.not = icmp eq i32 %96, 0
  br i1 %tobool381.not, label %cond.end361.cond.end397_crit_edge, label %cond.false393

cond.end361.cond.end397_crit_edge:                ; preds = %cond.end361
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end397

cond.false393:                                    ; preds = %cond.end361
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #5
  br label %cond.end397

cond.end397:                                      ; preds = %cond.false393, %cond.end361.cond.end397_crit_edge
  %98 = lshr i8 %79, 4
  %99 = and i8 %91, -16
  %or511 = or i8 %99, %98
  %or = zext i8 %or511 to i32
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge1897
    i32 2, label %do.body389
    i32 3, label %do.body747
    i32 4, label %do.body1105
  ]

entry.do.body_crit_edge1897:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge1897
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 4) #5, !srcloc !47
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -1) #5, !srcloc !47
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and42 = and i32 %16, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -1) #5, !srcloc !47
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and67 = and i32 %22, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 115) #5, !srcloc !47
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and92 = and i32 %28, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 115) #5, !srcloc !47
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %and117 = and i32 %34, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -55) #5, !srcloc !47
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and142 = and i32 %40, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -55) #5, !srcloc !47
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 38) #5, !srcloc !47
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %and192 = and i32 %52, 1048575
  %add193 = or i32 %and192, -18874368
  %53 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 38) #5, !srcloc !47
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool196.not = icmp eq i32 %55, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %and217 = and i32 %58, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 8) #5, !srcloc !47
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %do.body212.do.body237_crit_edge, label %cond.false232

do.body212.do.body237_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body237

cond.false232:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body237

do.body237:                                       ; preds = %cond.false232, %do.body212.do.body237_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %and242 = and i32 %64, 1048575
  %add243 = or i32 %and242, -18874368
  %65 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 8) #5, !srcloc !47
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool246.not = icmp eq i32 %67, 0
  br i1 %tobool246.not, label %do.body237.do.body262_crit_edge, label %cond.false257

do.body237.do.body262_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body262

cond.false257:                                    ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body262

do.body262:                                       ; preds = %cond.false257, %do.body237.do.body262_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add266 = add i32 %70, 2
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %71 = inttoptr i32 %add268 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 5) #5, !srcloc !47
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool271.not = icmp eq i32 %73, 0
  br i1 %tobool271.not, label %do.body262.cond.end286_crit_edge, label %cond.false282

do.body262.cond.end286_crit_edge:                 ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end286

cond.false282:                                    ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false282, %do.body262.cond.end286_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2871891 = icmp sgt i32 %count, 0
  br i1 %cmp2871891, label %cond.end286.do.body288_crit_edge, label %cond.end286.do.body363_crit_edge

cond.end286.do.body363_crit_edge:                 ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

cond.end286.do.body288_crit_edge:                 ; preds = %cond.end286
  br label %do.body288

do.body288:                                       ; preds = %for.inc.do.body288_crit_edge, %cond.end286.do.body288_crit_edge
  %k.01892 = phi i32 [ %inc, %for.inc.do.body288_crit_edge ], [ 0, %cond.end286.do.body288_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.01892
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx, align 1
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %and293 = and i32 %78, 1048575
  %add294 = or i32 %and293, -18874368
  %79 = inttoptr i32 %add294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %76) #5, !srcloc !47
  %80 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool297.not = icmp eq i32 %81, 0
  br i1 %tobool297.not, label %do.body288.do.body313_crit_edge, label %cond.false308

do.body288.do.body313_crit_edge:                  ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

cond.false308:                                    ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #5
  br label %do.body313

do.body313:                                       ; preds = %cond.false308, %do.body288.do.body313_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add317 = add i32 %84, 2
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %85 = inttoptr i32 %add319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 7) #5, !srcloc !47
  %86 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool322.not = icmp eq i32 %87, 0
  br i1 %tobool322.not, label %do.body313.do.body338_crit_edge, label %cond.false333

do.body313.do.body338_crit_edge:                  ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body338

cond.false333:                                    ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %87) #5
  br label %do.body338

do.body338:                                       ; preds = %cond.false333, %do.body313.do.body338_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add342 = add i32 %90, 2
  %and343 = and i32 %add342, 1048575
  %add344 = or i32 %and343, -18874368
  %91 = inttoptr i32 %add344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 5) #5, !srcloc !47
  %92 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool347.not = icmp eq i32 %93, 0
  br i1 %tobool347.not, label %do.body338.for.inc_crit_edge, label %cond.false358

do.body338.for.inc_crit_edge:                     ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false358:                                    ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #5
  br label %for.inc

for.inc:                                          ; preds = %cond.false358, %do.body338.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.01892, 1
  %exitcond1895.not = icmp eq i32 %inc, %count
  br i1 %exitcond1895.not, label %for.inc.do.body363_crit_edge, label %for.inc.do.body288_crit_edge

for.inc.do.body288_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body288

for.inc.do.body363_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

do.body363:                                       ; preds = %for.inc.do.body363_crit_edge, %cond.end286.do.body363_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %95 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port, align 4
  %add367 = add i32 %96, 2
  %and368 = and i32 %add367, 1048575
  %add369 = or i32 %and368, -18874368
  %97 = inttoptr i32 %add369 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 4) #5, !srcloc !47
  %98 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool372.not = icmp eq i32 %99, 0
  br i1 %tobool372.not, label %do.body363.sw.epilog_crit_edge, label %do.body363.sw.epilog.sink.split_crit_edge

do.body363.sw.epilog.sink.split_crit_edge:        ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body363.sw.epilog_crit_edge:                   ; preds = %do.body363
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body389:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %port392 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %100 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port392, align 4
  %add393 = add i32 %101, 2
  %and394 = and i32 %add393, 1048575
  %add395 = or i32 %and394, -18874368
  %102 = inttoptr i32 %add395 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 4) #5, !srcloc !47
  %delay397 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %103 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool398.not = icmp eq i32 %104, 0
  br i1 %tobool398.not, label %do.body389.do.body414_crit_edge, label %cond.false409

do.body389.do.body414_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body414

cond.false409:                                    ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #5
  br label %do.body414

do.body414:                                       ; preds = %cond.false409, %do.body389.do.body414_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port392, align 4
  %and419 = and i32 %107, 1048575
  %add420 = or i32 %and419, -18874368
  %108 = inttoptr i32 %add420 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 -1) #5, !srcloc !47
  %109 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool423.not = icmp eq i32 %110, 0
  br i1 %tobool423.not, label %do.body414.do.body439_crit_edge, label %cond.false434

do.body414.do.body439_crit_edge:                  ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body439

cond.false434:                                    ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #5
  br label %do.body439

do.body439:                                       ; preds = %cond.false434, %do.body414.do.body439_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %112 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port392, align 4
  %and444 = and i32 %113, 1048575
  %add445 = or i32 %and444, -18874368
  %114 = inttoptr i32 %add445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 -1) #5, !srcloc !47
  %115 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool448.not = icmp eq i32 %116, 0
  br i1 %tobool448.not, label %do.body439.do.body464_crit_edge, label %cond.false459

do.body439.do.body464_crit_edge:                  ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body464

cond.false459:                                    ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #5
  br label %do.body464

do.body464:                                       ; preds = %cond.false459, %do.body439.do.body464_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port392, align 4
  %and469 = and i32 %119, 1048575
  %add470 = or i32 %and469, -18874368
  %120 = inttoptr i32 %add470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 115) #5, !srcloc !47
  %121 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool473.not = icmp eq i32 %122, 0
  br i1 %tobool473.not, label %do.body464.do.body489_crit_edge, label %cond.false484

do.body464.do.body489_crit_edge:                  ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body489

cond.false484:                                    ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #5
  br label %do.body489

do.body489:                                       ; preds = %cond.false484, %do.body464.do.body489_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port392, align 4
  %and494 = and i32 %125, 1048575
  %add495 = or i32 %and494, -18874368
  %126 = inttoptr i32 %add495 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 115) #5, !srcloc !47
  %127 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool498.not = icmp eq i32 %128, 0
  br i1 %tobool498.not, label %do.body489.do.body514_crit_edge, label %cond.false509

do.body489.do.body514_crit_edge:                  ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body514

cond.false509:                                    ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #5
  br label %do.body514

do.body514:                                       ; preds = %cond.false509, %do.body489.do.body514_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port392, align 4
  %and519 = and i32 %131, 1048575
  %add520 = or i32 %and519, -18874368
  %132 = inttoptr i32 %add520 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 -55) #5, !srcloc !47
  %133 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool523.not = icmp eq i32 %134, 0
  br i1 %tobool523.not, label %do.body514.do.body539_crit_edge, label %cond.false534

do.body514.do.body539_crit_edge:                  ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body539

cond.false534:                                    ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #5
  br label %do.body539

do.body539:                                       ; preds = %cond.false534, %do.body514.do.body539_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port392, align 4
  %and544 = and i32 %137, 1048575
  %add545 = or i32 %and544, -18874368
  %138 = inttoptr i32 %add545 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 -55) #5, !srcloc !47
  %139 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool548.not = icmp eq i32 %140, 0
  br i1 %tobool548.not, label %do.body539.do.body564_crit_edge, label %cond.false559

do.body539.do.body564_crit_edge:                  ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body564

cond.false559:                                    ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #5
  br label %do.body564

do.body564:                                       ; preds = %cond.false559, %do.body539.do.body564_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port392, align 4
  %and569 = and i32 %143, 1048575
  %add570 = or i32 %and569, -18874368
  %144 = inttoptr i32 %add570 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 38) #5, !srcloc !47
  %145 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool573.not = icmp eq i32 %146, 0
  br i1 %tobool573.not, label %do.body564.do.body589_crit_edge, label %cond.false584

do.body564.do.body589_crit_edge:                  ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body589

cond.false584:                                    ; preds = %do.body564
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #5
  br label %do.body589

do.body589:                                       ; preds = %cond.false584, %do.body564.do.body589_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port392, align 4
  %and594 = and i32 %149, 1048575
  %add595 = or i32 %and594, -18874368
  %150 = inttoptr i32 %add595 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 38) #5, !srcloc !47
  %151 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool598.not = icmp eq i32 %152, 0
  br i1 %tobool598.not, label %do.body589.do.body614_crit_edge, label %cond.false609

do.body589.do.body614_crit_edge:                  ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body614

cond.false609:                                    ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %152) #5
  br label %do.body614

do.body614:                                       ; preds = %cond.false609, %do.body589.do.body614_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port392, align 4
  %and619 = and i32 %155, 1048575
  %add620 = or i32 %and619, -18874368
  %156 = inttoptr i32 %add620 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 -56) #5, !srcloc !47
  %157 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool623.not = icmp eq i32 %158, 0
  br i1 %tobool623.not, label %do.body614.do.body639_crit_edge, label %cond.false634

do.body614.do.body639_crit_edge:                  ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body639

cond.false634:                                    ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %159(i32 noundef %158) #5
  br label %do.body639

do.body639:                                       ; preds = %cond.false634, %do.body614.do.body639_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port392, align 4
  %and644 = and i32 %161, 1048575
  %add645 = or i32 %and644, -18874368
  %162 = inttoptr i32 %add645 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 -56) #5, !srcloc !47
  %163 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool648.not = icmp eq i32 %164, 0
  br i1 %tobool648.not, label %do.body639.do.body664_crit_edge, label %cond.false659

do.body639.do.body664_crit_edge:                  ; preds = %do.body639
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body664

cond.false659:                                    ; preds = %do.body639
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %165(i32 noundef %164) #5
  br label %do.body664

do.body664:                                       ; preds = %cond.false659, %do.body639.do.body664_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %port392, align 4
  %add668 = add i32 %167, 2
  %and669 = and i32 %add668, 1048575
  %add670 = or i32 %and669, -18874368
  %168 = inttoptr i32 %add670 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %168, i8 5) #5, !srcloc !47
  %169 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool673.not = icmp eq i32 %170, 0
  br i1 %tobool673.not, label %do.body664.cond.end688_crit_edge, label %cond.false684

do.body664.cond.end688_crit_edge:                 ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end688

cond.false684:                                    ; preds = %do.body664
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %171(i32 noundef %170) #5
  br label %cond.end688

cond.end688:                                      ; preds = %cond.false684, %do.body664.cond.end688_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6901889 = icmp sgt i32 %count, 0
  br i1 %cmp6901889, label %cond.end688.do.body692_crit_edge, label %cond.end688.do.body721_crit_edge

cond.end688.do.body721_crit_edge:                 ; preds = %cond.end688
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body721

cond.end688.do.body692_crit_edge:                 ; preds = %cond.end688
  br label %do.body692

do.body692:                                       ; preds = %for.inc718.do.body692_crit_edge, %cond.end688.do.body692_crit_edge
  %k.11890 = phi i32 [ %inc719, %for.inc718.do.body692_crit_edge ], [ 0, %cond.end688.do.body692_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %arrayidx695 = getelementptr i8, ptr %buf, i32 %k.11890
  %172 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx695, align 1
  %174 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %port392, align 4
  %add697 = add i32 %175, 4
  %and698 = and i32 %add697, 1048575
  %add699 = or i32 %and698, -18874368
  %176 = inttoptr i32 %add699 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 %173) #5, !srcloc !47
  %177 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool702.not = icmp eq i32 %178, 0
  br i1 %tobool702.not, label %do.body692.for.inc718_crit_edge, label %cond.false713

do.body692.for.inc718_crit_edge:                  ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc718

cond.false713:                                    ; preds = %do.body692
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %179(i32 noundef %178) #5
  br label %for.inc718

for.inc718:                                       ; preds = %cond.false713, %do.body692.for.inc718_crit_edge
  %inc719 = add nuw nsw i32 %k.11890, 1
  %exitcond1894.not = icmp eq i32 %inc719, %count
  br i1 %exitcond1894.not, label %for.inc718.do.body721_crit_edge, label %for.inc718.do.body692_crit_edge

for.inc718.do.body692_crit_edge:                  ; preds = %for.inc718
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body692

for.inc718.do.body721_crit_edge:                  ; preds = %for.inc718
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body721

do.body721:                                       ; preds = %for.inc718.do.body721_crit_edge, %cond.end688.do.body721_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %port392 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port392, align 4
  %add725 = add i32 %181, 2
  %and726 = and i32 %add725, 1048575
  %add727 = or i32 %and726, -18874368
  %182 = inttoptr i32 %add727 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %182, i8 4) #5, !srcloc !47
  %183 = ptrtoint ptr %delay397 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %delay397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool730.not = icmp eq i32 %184, 0
  br i1 %tobool730.not, label %do.body721.sw.epilog_crit_edge, label %do.body721.sw.epilog.sink.split_crit_edge

do.body721.sw.epilog.sink.split_crit_edge:        ; preds = %do.body721
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body721.sw.epilog_crit_edge:                   ; preds = %do.body721
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body747:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %port750 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %185 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port750, align 4
  %add751 = add i32 %186, 2
  %and752 = and i32 %add751, 1048575
  %add753 = or i32 %and752, -18874368
  %187 = inttoptr i32 %add753 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 4) #5, !srcloc !47
  %delay755 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %188 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool756.not = icmp eq i32 %189, 0
  br i1 %tobool756.not, label %do.body747.do.body772_crit_edge, label %cond.false767

do.body747.do.body772_crit_edge:                  ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body772

cond.false767:                                    ; preds = %do.body747
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %190(i32 noundef %189) #5
  br label %do.body772

do.body772:                                       ; preds = %cond.false767, %do.body747.do.body772_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %port750, align 4
  %and777 = and i32 %192, 1048575
  %add778 = or i32 %and777, -18874368
  %193 = inttoptr i32 %add778 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %193, i8 -1) #5, !srcloc !47
  %194 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool781.not = icmp eq i32 %195, 0
  br i1 %tobool781.not, label %do.body772.do.body797_crit_edge, label %cond.false792

do.body772.do.body797_crit_edge:                  ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body797

cond.false792:                                    ; preds = %do.body772
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %196(i32 noundef %195) #5
  br label %do.body797

do.body797:                                       ; preds = %cond.false792, %do.body772.do.body797_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port750, align 4
  %and802 = and i32 %198, 1048575
  %add803 = or i32 %and802, -18874368
  %199 = inttoptr i32 %add803 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %199, i8 -1) #5, !srcloc !47
  %200 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool806.not = icmp eq i32 %201, 0
  br i1 %tobool806.not, label %do.body797.do.body822_crit_edge, label %cond.false817

do.body797.do.body822_crit_edge:                  ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body822

cond.false817:                                    ; preds = %do.body797
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %202(i32 noundef %201) #5
  br label %do.body822

do.body822:                                       ; preds = %cond.false817, %do.body797.do.body822_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port750, align 4
  %and827 = and i32 %204, 1048575
  %add828 = or i32 %and827, -18874368
  %205 = inttoptr i32 %add828 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 115) #5, !srcloc !47
  %206 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool831.not = icmp eq i32 %207, 0
  br i1 %tobool831.not, label %do.body822.do.body847_crit_edge, label %cond.false842

do.body822.do.body847_crit_edge:                  ; preds = %do.body822
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body847

cond.false842:                                    ; preds = %do.body822
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %208(i32 noundef %207) #5
  br label %do.body847

do.body847:                                       ; preds = %cond.false842, %do.body822.do.body847_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %port750, align 4
  %and852 = and i32 %210, 1048575
  %add853 = or i32 %and852, -18874368
  %211 = inttoptr i32 %add853 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 115) #5, !srcloc !47
  %212 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool856.not = icmp eq i32 %213, 0
  br i1 %tobool856.not, label %do.body847.do.body872_crit_edge, label %cond.false867

do.body847.do.body872_crit_edge:                  ; preds = %do.body847
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body872

cond.false867:                                    ; preds = %do.body847
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %214(i32 noundef %213) #5
  br label %do.body872

do.body872:                                       ; preds = %cond.false867, %do.body847.do.body872_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port750, align 4
  %and877 = and i32 %216, 1048575
  %add878 = or i32 %and877, -18874368
  %217 = inttoptr i32 %add878 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 -55) #5, !srcloc !47
  %218 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool881.not = icmp eq i32 %219, 0
  br i1 %tobool881.not, label %do.body872.do.body897_crit_edge, label %cond.false892

do.body872.do.body897_crit_edge:                  ; preds = %do.body872
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body897

cond.false892:                                    ; preds = %do.body872
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #5
  br label %do.body897

do.body897:                                       ; preds = %cond.false892, %do.body872.do.body897_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port750, align 4
  %and902 = and i32 %222, 1048575
  %add903 = or i32 %and902, -18874368
  %223 = inttoptr i32 %add903 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 -55) #5, !srcloc !47
  %224 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool906.not = icmp eq i32 %225, 0
  br i1 %tobool906.not, label %do.body897.do.body922_crit_edge, label %cond.false917

do.body897.do.body922_crit_edge:                  ; preds = %do.body897
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body922

cond.false917:                                    ; preds = %do.body897
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %226(i32 noundef %225) #5
  br label %do.body922

do.body922:                                       ; preds = %cond.false917, %do.body897.do.body922_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %port750, align 4
  %and927 = and i32 %228, 1048575
  %add928 = or i32 %and927, -18874368
  %229 = inttoptr i32 %add928 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %229, i8 38) #5, !srcloc !47
  %230 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool931.not = icmp eq i32 %231, 0
  br i1 %tobool931.not, label %do.body922.do.body947_crit_edge, label %cond.false942

do.body922.do.body947_crit_edge:                  ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body947

cond.false942:                                    ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %232(i32 noundef %231) #5
  br label %do.body947

do.body947:                                       ; preds = %cond.false942, %do.body922.do.body947_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %233 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port750, align 4
  %and952 = and i32 %234, 1048575
  %add953 = or i32 %and952, -18874368
  %235 = inttoptr i32 %add953 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 38) #5, !srcloc !47
  %236 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool956.not = icmp eq i32 %237, 0
  br i1 %tobool956.not, label %do.body947.do.body972_crit_edge, label %cond.false967

do.body947.do.body972_crit_edge:                  ; preds = %do.body947
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body972

cond.false967:                                    ; preds = %do.body947
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %238(i32 noundef %237) #5
  br label %do.body972

do.body972:                                       ; preds = %cond.false967, %do.body947.do.body972_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port750, align 4
  %and977 = and i32 %240, 1048575
  %add978 = or i32 %and977, -18874368
  %241 = inttoptr i32 %add978 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 -56) #5, !srcloc !47
  %242 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool981.not = icmp eq i32 %243, 0
  br i1 %tobool981.not, label %do.body972.do.body997_crit_edge, label %cond.false992

do.body972.do.body997_crit_edge:                  ; preds = %do.body972
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body997

cond.false992:                                    ; preds = %do.body972
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %244(i32 noundef %243) #5
  br label %do.body997

do.body997:                                       ; preds = %cond.false992, %do.body972.do.body997_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %245 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %port750, align 4
  %and1002 = and i32 %246, 1048575
  %add1003 = or i32 %and1002, -18874368
  %247 = inttoptr i32 %add1003 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 -56) #5, !srcloc !47
  %248 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool1006.not = icmp eq i32 %249, 0
  br i1 %tobool1006.not, label %do.body997.do.body1022_crit_edge, label %cond.false1017

do.body997.do.body1022_crit_edge:                 ; preds = %do.body997
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1022

cond.false1017:                                   ; preds = %do.body997
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %250(i32 noundef %249) #5
  br label %do.body1022

do.body1022:                                      ; preds = %cond.false1017, %do.body997.do.body1022_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port750, align 4
  %add1026 = add i32 %252, 2
  %and1027 = and i32 %add1026, 1048575
  %add1028 = or i32 %and1027, -18874368
  %253 = inttoptr i32 %add1028 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %253, i8 5) #5, !srcloc !47
  %254 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool1031.not = icmp eq i32 %255, 0
  br i1 %tobool1031.not, label %do.body1022.cond.end1046_crit_edge, label %cond.false1042

do.body1022.cond.end1046_crit_edge:               ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1046

cond.false1042:                                   ; preds = %do.body1022
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %256(i32 noundef %255) #5
  br label %cond.end1046

cond.end1046:                                     ; preds = %cond.false1042, %do.body1022.cond.end1046_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp10481887 = icmp sgt i32 %count, 1
  br i1 %cmp10481887, label %cond.end1046.do.body1050_crit_edge, label %cond.end1046.do.body1079_crit_edge

cond.end1046.do.body1079_crit_edge:               ; preds = %cond.end1046
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1079

cond.end1046.do.body1050_crit_edge:               ; preds = %cond.end1046
  br label %do.body1050

do.body1050:                                      ; preds = %for.inc1076.do.body1050_crit_edge, %cond.end1046.do.body1050_crit_edge
  %k.21888 = phi i32 [ %inc1077, %for.inc1076.do.body1050_crit_edge ], [ 0, %cond.end1046.do.body1050_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %arrayidx1053 = getelementptr i16, ptr %buf, i32 %k.21888
  %257 = ptrtoint ptr %arrayidx1053 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %arrayidx1053, align 2
  %259 = tail call i16 @llvm.bswap.i16(i16 %258)
  %260 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %port750, align 4
  %add1055 = add i32 %261, 4
  %and1056 = and i32 %add1055, 1048575
  %add1057 = or i32 %and1056, -18874368
  %262 = inttoptr i32 %add1057 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %262, i16 %259) #5, !srcloc !123
  %263 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool1060.not = icmp eq i32 %264, 0
  br i1 %tobool1060.not, label %do.body1050.for.inc1076_crit_edge, label %cond.false1071

do.body1050.for.inc1076_crit_edge:                ; preds = %do.body1050
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc1076

cond.false1071:                                   ; preds = %do.body1050
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %265(i32 noundef %264) #5
  br label %for.inc1076

for.inc1076:                                      ; preds = %cond.false1071, %do.body1050.for.inc1076_crit_edge
  %inc1077 = add nuw nsw i32 %k.21888, 1
  %exitcond1893.not = icmp eq i32 %inc1077, %div
  br i1 %exitcond1893.not, label %for.inc1076.do.body1079_crit_edge, label %for.inc1076.do.body1050_crit_edge

for.inc1076.do.body1050_crit_edge:                ; preds = %for.inc1076
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1050

for.inc1076.do.body1079_crit_edge:                ; preds = %for.inc1076
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1079

do.body1079:                                      ; preds = %for.inc1076.do.body1079_crit_edge, %cond.end1046.do.body1079_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %266 = ptrtoint ptr %port750 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %port750, align 4
  %add1083 = add i32 %267, 2
  %and1084 = and i32 %add1083, 1048575
  %add1085 = or i32 %and1084, -18874368
  %268 = inttoptr i32 %add1085 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %268, i8 4) #5, !srcloc !47
  %269 = ptrtoint ptr %delay755 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %delay755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool1088.not = icmp eq i32 %270, 0
  br i1 %tobool1088.not, label %do.body1079.sw.epilog_crit_edge, label %do.body1079.sw.epilog.sink.split_crit_edge

do.body1079.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1079
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1079.sw.epilog_crit_edge:                  ; preds = %do.body1079
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1105:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %port1108 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %271 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %port1108, align 4
  %add1109 = add i32 %272, 2
  %and1110 = and i32 %add1109, 1048575
  %add1111 = or i32 %and1110, -18874368
  %273 = inttoptr i32 %add1111 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %273, i8 4) #5, !srcloc !47
  %delay1113 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %274 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool1114.not = icmp eq i32 %275, 0
  br i1 %tobool1114.not, label %do.body1105.do.body1130_crit_edge, label %cond.false1125

do.body1105.do.body1130_crit_edge:                ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1130

cond.false1125:                                   ; preds = %do.body1105
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %276(i32 noundef %275) #5
  br label %do.body1130

do.body1130:                                      ; preds = %cond.false1125, %do.body1105.do.body1130_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %277 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %port1108, align 4
  %and1135 = and i32 %278, 1048575
  %add1136 = or i32 %and1135, -18874368
  %279 = inttoptr i32 %add1136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 -1) #5, !srcloc !47
  %280 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool1139.not = icmp eq i32 %281, 0
  br i1 %tobool1139.not, label %do.body1130.do.body1155_crit_edge, label %cond.false1150

do.body1130.do.body1155_crit_edge:                ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1155

cond.false1150:                                   ; preds = %do.body1130
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %282(i32 noundef %281) #5
  br label %do.body1155

do.body1155:                                      ; preds = %cond.false1150, %do.body1130.do.body1155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port1108, align 4
  %and1160 = and i32 %284, 1048575
  %add1161 = or i32 %and1160, -18874368
  %285 = inttoptr i32 %add1161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %285, i8 -1) #5, !srcloc !47
  %286 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool1164.not = icmp eq i32 %287, 0
  br i1 %tobool1164.not, label %do.body1155.do.body1180_crit_edge, label %cond.false1175

do.body1155.do.body1180_crit_edge:                ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1180

cond.false1175:                                   ; preds = %do.body1155
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %288(i32 noundef %287) #5
  br label %do.body1180

do.body1180:                                      ; preds = %cond.false1175, %do.body1155.do.body1180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %289 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %port1108, align 4
  %and1185 = and i32 %290, 1048575
  %add1186 = or i32 %and1185, -18874368
  %291 = inttoptr i32 %add1186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %291, i8 115) #5, !srcloc !47
  %292 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool1189.not = icmp eq i32 %293, 0
  br i1 %tobool1189.not, label %do.body1180.do.body1205_crit_edge, label %cond.false1200

do.body1180.do.body1205_crit_edge:                ; preds = %do.body1180
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1205

cond.false1200:                                   ; preds = %do.body1180
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %294(i32 noundef %293) #5
  br label %do.body1205

do.body1205:                                      ; preds = %cond.false1200, %do.body1180.do.body1205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %295 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %port1108, align 4
  %and1210 = and i32 %296, 1048575
  %add1211 = or i32 %and1210, -18874368
  %297 = inttoptr i32 %add1211 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %297, i8 115) #5, !srcloc !47
  %298 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool1214.not = icmp eq i32 %299, 0
  br i1 %tobool1214.not, label %do.body1205.do.body1230_crit_edge, label %cond.false1225

do.body1205.do.body1230_crit_edge:                ; preds = %do.body1205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1230

cond.false1225:                                   ; preds = %do.body1205
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %300(i32 noundef %299) #5
  br label %do.body1230

do.body1230:                                      ; preds = %cond.false1225, %do.body1205.do.body1230_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %301 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %port1108, align 4
  %and1235 = and i32 %302, 1048575
  %add1236 = or i32 %and1235, -18874368
  %303 = inttoptr i32 %add1236 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %303, i8 -55) #5, !srcloc !47
  %304 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool1239.not = icmp eq i32 %305, 0
  br i1 %tobool1239.not, label %do.body1230.do.body1255_crit_edge, label %cond.false1250

do.body1230.do.body1255_crit_edge:                ; preds = %do.body1230
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1255

cond.false1250:                                   ; preds = %do.body1230
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %306 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %306(i32 noundef %305) #5
  br label %do.body1255

do.body1255:                                      ; preds = %cond.false1250, %do.body1230.do.body1255_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %port1108, align 4
  %and1260 = and i32 %308, 1048575
  %add1261 = or i32 %and1260, -18874368
  %309 = inttoptr i32 %add1261 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %309, i8 -55) #5, !srcloc !47
  %310 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool1264.not = icmp eq i32 %311, 0
  br i1 %tobool1264.not, label %do.body1255.do.body1280_crit_edge, label %cond.false1275

do.body1255.do.body1280_crit_edge:                ; preds = %do.body1255
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1280

cond.false1275:                                   ; preds = %do.body1255
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %312(i32 noundef %311) #5
  br label %do.body1280

do.body1280:                                      ; preds = %cond.false1275, %do.body1255.do.body1280_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %313 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %port1108, align 4
  %and1285 = and i32 %314, 1048575
  %add1286 = or i32 %and1285, -18874368
  %315 = inttoptr i32 %add1286 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %315, i8 38) #5, !srcloc !47
  %316 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool1289.not = icmp eq i32 %317, 0
  br i1 %tobool1289.not, label %do.body1280.do.body1305_crit_edge, label %cond.false1300

do.body1280.do.body1305_crit_edge:                ; preds = %do.body1280
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1305

cond.false1300:                                   ; preds = %do.body1280
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %318(i32 noundef %317) #5
  br label %do.body1305

do.body1305:                                      ; preds = %cond.false1300, %do.body1280.do.body1305_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %319 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %port1108, align 4
  %and1310 = and i32 %320, 1048575
  %add1311 = or i32 %and1310, -18874368
  %321 = inttoptr i32 %add1311 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %321, i8 38) #5, !srcloc !47
  %322 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %tobool1314.not = icmp eq i32 %323, 0
  br i1 %tobool1314.not, label %do.body1305.do.body1330_crit_edge, label %cond.false1325

do.body1305.do.body1330_crit_edge:                ; preds = %do.body1305
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1330

cond.false1325:                                   ; preds = %do.body1305
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %324 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %324(i32 noundef %323) #5
  br label %do.body1330

do.body1330:                                      ; preds = %cond.false1325, %do.body1305.do.body1330_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %325 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %port1108, align 4
  %and1335 = and i32 %326, 1048575
  %add1336 = or i32 %and1335, -18874368
  %327 = inttoptr i32 %add1336 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %327, i8 -56) #5, !srcloc !47
  %328 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool1339.not = icmp eq i32 %329, 0
  br i1 %tobool1339.not, label %do.body1330.do.body1355_crit_edge, label %cond.false1350

do.body1330.do.body1355_crit_edge:                ; preds = %do.body1330
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1355

cond.false1350:                                   ; preds = %do.body1330
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %330(i32 noundef %329) #5
  br label %do.body1355

do.body1355:                                      ; preds = %cond.false1350, %do.body1330.do.body1355_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %331 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %port1108, align 4
  %and1360 = and i32 %332, 1048575
  %add1361 = or i32 %and1360, -18874368
  %333 = inttoptr i32 %add1361 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %333, i8 -56) #5, !srcloc !47
  %334 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool1364.not = icmp eq i32 %335, 0
  br i1 %tobool1364.not, label %do.body1355.do.body1380_crit_edge, label %cond.false1375

do.body1355.do.body1380_crit_edge:                ; preds = %do.body1355
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1380

cond.false1375:                                   ; preds = %do.body1355
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %336(i32 noundef %335) #5
  br label %do.body1380

do.body1380:                                      ; preds = %cond.false1375, %do.body1355.do.body1380_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %337 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %port1108, align 4
  %add1384 = add i32 %338, 2
  %and1385 = and i32 %add1384, 1048575
  %add1386 = or i32 %and1385, -18874368
  %339 = inttoptr i32 %add1386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %339, i8 5) #5, !srcloc !47
  %340 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool1389.not = icmp eq i32 %341, 0
  br i1 %tobool1389.not, label %do.body1380.cond.end1404_crit_edge, label %cond.false1400

do.body1380.cond.end1404_crit_edge:               ; preds = %do.body1380
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1404

cond.false1400:                                   ; preds = %do.body1380
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %342 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %342(i32 noundef %341) #5
  br label %cond.end1404

cond.end1404:                                     ; preds = %cond.false1400, %do.body1380.cond.end1404_crit_edge
  %div1406 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp14071885 = icmp sgt i32 %count, 3
  br i1 %cmp14071885, label %cond.end1404.do.body1409_crit_edge, label %cond.end1404.do.body1438_crit_edge

cond.end1404.do.body1438_crit_edge:               ; preds = %cond.end1404
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1438

cond.end1404.do.body1409_crit_edge:               ; preds = %cond.end1404
  br label %do.body1409

do.body1409:                                      ; preds = %for.inc1435.do.body1409_crit_edge, %cond.end1404.do.body1409_crit_edge
  %k.31886 = phi i32 [ %inc1436, %for.inc1435.do.body1409_crit_edge ], [ 0, %cond.end1404.do.body1409_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %arrayidx1412 = getelementptr i32, ptr %buf, i32 %k.31886
  %343 = ptrtoint ptr %arrayidx1412 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx1412, align 4
  %345 = tail call i32 @llvm.bswap.i32(i32 %344)
  %346 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %port1108, align 4
  %add1414 = add i32 %347, 4
  %and1415 = and i32 %add1414, 1048575
  %add1416 = or i32 %and1415, -18874368
  %348 = inttoptr i32 %add1416 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %348, i32 %345) #5, !srcloc !138
  %349 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool1419.not = icmp eq i32 %350, 0
  br i1 %tobool1419.not, label %do.body1409.for.inc1435_crit_edge, label %cond.false1430

do.body1409.for.inc1435_crit_edge:                ; preds = %do.body1409
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc1435

cond.false1430:                                   ; preds = %do.body1409
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %351 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %351(i32 noundef %350) #5
  br label %for.inc1435

for.inc1435:                                      ; preds = %cond.false1430, %do.body1409.for.inc1435_crit_edge
  %inc1436 = add nuw nsw i32 %k.31886, 1
  %exitcond.not = icmp eq i32 %inc1436, %div1406
  br i1 %exitcond.not, label %for.inc1435.do.body1438_crit_edge, label %for.inc1435.do.body1409_crit_edge

for.inc1435.do.body1409_crit_edge:                ; preds = %for.inc1435
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1409

for.inc1435.do.body1438_crit_edge:                ; preds = %for.inc1435
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1438

do.body1438:                                      ; preds = %for.inc1435.do.body1438_crit_edge, %cond.end1404.do.body1438_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %352 = ptrtoint ptr %port1108 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %port1108, align 4
  %add1442 = add i32 %353, 2
  %and1443 = and i32 %add1442, 1048575
  %add1444 = or i32 %and1443, -18874368
  %354 = inttoptr i32 %add1444 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %354, i8 4) #5, !srcloc !47
  %355 = ptrtoint ptr %delay1113 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %delay1113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool1447.not = icmp eq i32 %356, 0
  br i1 %tobool1447.not, label %do.body1438.sw.epilog_crit_edge, label %do.body1438.sw.epilog.sink.split_crit_edge

do.body1438.sw.epilog.sink.split_crit_edge:       ; preds = %do.body1438
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body1438.sw.epilog_crit_edge:                  ; preds = %do.body1438
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body1438.sw.epilog.sink.split_crit_edge, %do.body1079.sw.epilog.sink.split_crit_edge, %do.body721.sw.epilog.sink.split_crit_edge, %do.body363.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %99, %do.body363.sw.epilog.sink.split_crit_edge ], [ %184, %do.body721.sw.epilog.sink.split_crit_edge ], [ %270, %do.body1079.sw.epilog.sink.split_crit_edge ], [ %356, %do.body1438.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %357 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %357(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body1438.sw.epilog_crit_edge, %do.body1079.sw.epilog_crit_edge, %do.body721.sw.epilog_crit_edge, %do.body363.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @friq_read_block_int(ptr noundef %pi, ptr noundef %buf, i32 noundef %count, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #5, !srcloc !47
  %19 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool48.not = icmp eq i32 %20, 0
  br i1 %tobool48.not, label %cond.end31.cond.end64_crit_edge, label %cond.false60

cond.end31.cond.end64_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end64

cond.false60:                                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #5
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false60, %cond.end31.cond.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and40 = and i32 %13, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -1) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %and64 = and i32 %19, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 115) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and88 = and i32 %25, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 115) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %and112 = and i32 %31, 1048575
  %add113 = or i32 %and112, -18874368
  %32 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 -55) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %and136 = and i32 %37, 1048575
  %add137 = or i32 %and136, -18874368
  %38 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -55) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %and160 = and i32 %43, 1048575
  %add161 = or i32 %and160, -18874368
  %44 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 38) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and184 = and i32 %49, 1048575
  %add185 = or i32 %and184, -18874368
  %50 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 38) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and208 = and i32 %55, 1048575
  %add209 = or i32 %and208, -18874368
  %56 = inttoptr i32 %add209 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 32) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %and232 = and i32 %61, 1048575
  %add233 = or i32 %and232, -18874368
  %62 = inttoptr i32 %add233 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 32) #5, !srcloc !47
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %66 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saved_r0, align 4
  %conv = trunc i32 %67 to i8
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and256 = and i32 %69, 1048575
  %add257 = or i32 %and256, -18874368
  %70 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %conv) #5, !srcloc !47
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool260.not = icmp eq i32 %72, 0
  br i1 %tobool260.not, label %do.body252.do.body277_crit_edge, label %cond.false272

do.body252.do.body277_crit_edge:                  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body277

cond.false272:                                    ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body277

do.body277:                                       ; preds = %cond.false272, %do.body252.do.body277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %74 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %saved_r2, align 4
  %conv279 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add281 = add i32 %77, 2
  %and282 = and i32 %add281, 1048575
  %add283 = or i32 %and282, -18874368
  %78 = inttoptr i32 %add283 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv279) #5, !srcloc !47
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool286.not = icmp eq i32 %80, 0
  br i1 %tobool286.not, label %do.body277.cond.end302_crit_edge, label %cond.false298

do.body277.cond.end302_crit_edge:                 ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end302

cond.false298:                                    ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #5
  br label %cond.end302

cond.end302:                                      ; preds = %cond.false298, %do.body277.cond.end302_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @friq_test_proto(ptr nocapture noundef %pi, ptr nocapture noundef %scratch, i32 noundef %verbose) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and16 = and i32 %9, 1048575
  %add17 = or i32 %and16, -18874368
  %10 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -1) #5, !srcloc !47
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %cond.end10.cond.end36_crit_edge, label %cond.false32

cond.end10.cond.end36_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end36

cond.false32:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.end10.cond.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add41 = add i32 %16, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 4) #5, !srcloc !47
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %cond.end36.do.body63_crit_edge, label %cond.false58

cond.end36.do.body63_crit_edge:                   ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

cond.false58:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body63

do.body63:                                        ; preds = %cond.false58, %cond.end36.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and68 = and i32 %22, 1048575
  %add69 = or i32 %and68, -18874368
  %23 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -1) #5, !srcloc !47
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool72.not = icmp eq i32 %25, 0
  br i1 %tobool72.not, label %do.body63.do.body89_crit_edge, label %cond.false84

do.body63.do.body89_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body89

cond.false84:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %do.body63.do.body89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and94 = and i32 %28, 1048575
  %add95 = or i32 %and94, -18874368
  %29 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 -1) #5, !srcloc !47
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool98.not = icmp eq i32 %31, 0
  br i1 %tobool98.not, label %do.body89.do.body115_crit_edge, label %cond.false110

do.body89.do.body115_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body115

cond.false110:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body89.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %and120 = and i32 %34, 1048575
  %add121 = or i32 %and120, -18874368
  %35 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 115) #5, !srcloc !47
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool124.not = icmp eq i32 %37, 0
  br i1 %tobool124.not, label %do.body115.do.body141_crit_edge, label %cond.false136

do.body115.do.body141_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body141

cond.false136:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body141

do.body141:                                       ; preds = %cond.false136, %do.body115.do.body141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and146 = and i32 %40, 1048575
  %add147 = or i32 %and146, -18874368
  %41 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 115) #5, !srcloc !47
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool150.not = icmp eq i32 %43, 0
  br i1 %tobool150.not, label %do.body141.do.body167_crit_edge, label %cond.false162

do.body141.do.body167_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body167

cond.false162:                                    ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body167

do.body167:                                       ; preds = %cond.false162, %do.body141.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and172 = and i32 %46, 1048575
  %add173 = or i32 %and172, -18874368
  %47 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 -55) #5, !srcloc !47
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool176.not = icmp eq i32 %49, 0
  br i1 %tobool176.not, label %do.body167.do.body193_crit_edge, label %cond.false188

do.body167.do.body193_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body193

cond.false188:                                    ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body193

do.body193:                                       ; preds = %cond.false188, %do.body167.do.body193_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %and198 = and i32 %52, 1048575
  %add199 = or i32 %and198, -18874368
  %53 = inttoptr i32 %add199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 -55) #5, !srcloc !47
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool202.not = icmp eq i32 %55, 0
  br i1 %tobool202.not, label %do.body193.do.body219_crit_edge, label %cond.false214

do.body193.do.body219_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body219

cond.false214:                                    ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body219

do.body219:                                       ; preds = %cond.false214, %do.body193.do.body219_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %and224 = and i32 %58, 1048575
  %add225 = or i32 %and224, -18874368
  %59 = inttoptr i32 %add225 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 38) #5, !srcloc !47
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool228.not = icmp eq i32 %61, 0
  br i1 %tobool228.not, label %do.body219.do.body245_crit_edge, label %cond.false240

do.body219.do.body245_crit_edge:                  ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

cond.false240:                                    ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body245

do.body245:                                       ; preds = %cond.false240, %do.body219.do.body245_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %and250 = and i32 %64, 1048575
  %add251 = or i32 %and250, -18874368
  %65 = inttoptr i32 %add251 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 38) #5, !srcloc !47
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool254.not = icmp eq i32 %67, 0
  br i1 %tobool254.not, label %do.body245.do.body271_crit_edge, label %cond.false266

do.body245.do.body271_crit_edge:                  ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body271

cond.false266:                                    ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %do.body271

do.body271:                                       ; preds = %cond.false266, %do.body245.do.body271_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %and276 = and i32 %70, 1048575
  %add277 = or i32 %and276, -18874368
  %71 = inttoptr i32 %add277 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 61) #5, !srcloc !47
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool280.not = icmp eq i32 %73, 0
  br i1 %tobool280.not, label %do.body271.do.body297_crit_edge, label %cond.false292

do.body271.do.body297_crit_edge:                  ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body297

cond.false292:                                    ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  br label %do.body297

do.body297:                                       ; preds = %cond.false292, %do.body271.do.body297_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and302 = and i32 %76, 1048575
  %add303 = or i32 %and302, -18874368
  %77 = inttoptr i32 %add303 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 61) #5, !srcloc !47
  %78 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool306.not = icmp eq i32 %79, 0
  br i1 %tobool306.not, label %do.body297.cond.end322_crit_edge, label %cond.false318

do.body297.cond.end322_crit_edge:                 ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end322

cond.false318:                                    ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #5
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false318, %do.body297.cond.end322_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 107374000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %saved_r0, align 4
  %conv327 = trunc i32 %83 to i8
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %and330 = and i32 %85, 1048575
  %add331 = or i32 %and330, -18874368
  %86 = inttoptr i32 %add331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv327) #5, !srcloc !47
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool334.not = icmp eq i32 %88, 0
  br i1 %tobool334.not, label %cond.end322.cond.end350_crit_edge, label %cond.false346

cond.end322.cond.end350_crit_edge:                ; preds = %cond.end322
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end350

cond.false346:                                    ; preds = %cond.end322
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #5
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false346, %cond.end322.cond.end350_crit_edge
  tail call void @friq_connect(ptr noundef %pi)
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 160)
  br label %for.body358

for.body358:                                      ; preds = %for.body358.for.body358_crit_edge, %cond.end350
  %e.sroa.0.0 = phi i32 [ 0, %cond.end350 ], [ %spec.select532, %for.body358.for.body358_crit_edge ]
  %k.0522 = phi i32 [ 0, %cond.end350 ], [ %inc364, %for.body358.for.body358_crit_edge ]
  %xor = xor i32 %k.0522, 170
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor)
  %xor359 = xor i32 %k.0522, 85
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor359)
  %call360 = tail call i32 @friq_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call360, i32 %xor)
  %cmp362.not = icmp ne i32 %call360, %xor
  %inc = zext i1 %cmp362.not to i32
  %spec.select532 = add i32 %e.sroa.0.0, %inc
  %inc364 = add nuw nsw i32 %k.0522, 1
  %exitcond.not = icmp eq i32 %inc364, 256
  br i1 %exitcond.not, label %for.inc365, label %for.body358.for.body358_crit_edge

for.body358.for.body358_crit_edge:                ; preds = %for.body358
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body358

for.inc365:                                       ; preds = %for.body358
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 6, i32 noundef 176)
  br label %for.body358.1

for.body358.1:                                    ; preds = %for.body358.1.for.body358.1_crit_edge, %for.inc365
  %e.sroa.7.0 = phi i32 [ 0, %for.inc365 ], [ %spec.select533, %for.body358.1.for.body358.1_crit_edge ]
  %k.0522.1 = phi i32 [ 0, %for.inc365 ], [ %inc364.1, %for.body358.1.for.body358.1_crit_edge ]
  %xor.1 = xor i32 %k.0522.1, 170
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2, i32 noundef %xor.1)
  %xor359.1 = xor i32 %k.0522.1, 85
  tail call void @friq_write_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 3, i32 noundef %xor359.1)
  %call360.1 = tail call i32 @friq_read_regr(ptr noundef %pi, i32 noundef 0, i32 noundef 2)
  call void @__sanitizer_cov_trace_cmp4(i32 %call360.1, i32 %xor.1)
  %cmp362.not.1 = icmp ne i32 %call360.1, %xor.1
  %inc.1 = zext i1 %cmp362.not.1 to i32
  %spec.select533 = add i32 %e.sroa.7.0, %inc.1
  %inc364.1 = add nuw nsw i32 %k.0522.1, 1
  %exitcond.1.not = icmp eq i32 %inc364.1, 256
  br i1 %exitcond.1.not, label %for.inc365.1, label %for.body358.1.for.body358.1_crit_edge

for.body358.1.for.body358.1_crit_edge:            ; preds = %for.body358.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body358.1

for.inc365.1:                                     ; preds = %for.body358.1
  tail call void @friq_disconnect(ptr noundef %pi)
  tail call void @friq_connect(ptr noundef %pi)
  tail call fastcc void @friq_read_block_int(ptr noundef %pi, ptr noundef %scratch, i32 noundef 512, i32 noundef 16)
  br label %for.body371

for.body371:                                      ; preds = %for.body371.for.body371_crit_edge, %for.inc365.1
  %k.1525 = phi i32 [ 0, %for.inc365.1 ], [ %inc380, %for.body371.for.body371_crit_edge ]
  %r.0524 = phi i32 [ 0, %for.inc365.1 ], [ %spec.select, %for.body371.for.body371_crit_edge ]
  %arrayidx372 = getelementptr i8, ptr %scratch, i32 %k.1525
  %90 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx372, align 1
  %conv373 = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %k.1525, i32 %conv373)
  %cmp374.not = icmp ne i32 %k.1525, %conv373
  %inc377 = zext i1 %cmp374.not to i32
  %spec.select = add i32 %r.0524, %inc377
  %inc380 = add nuw nsw i32 %k.1525, 1
  %exitcond527.not = icmp eq i32 %inc380, 128
  br i1 %exitcond527.not, label %for.end381, label %for.body371.for.body371_crit_edge

for.body371.for.body371_crit_edge:                ; preds = %for.body371
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body371

for.end381:                                       ; preds = %for.body371
  tail call void @friq_disconnect(ptr noundef %pi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool382.not = icmp eq i32 %verbose, 0
  br i1 %tobool382.not, label %for.end381.if.end392_crit_edge, label %do.end386

for.end381.if.end392_crit_edge:                   ; preds = %for.end381
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end392

do.end386:                                        ; preds = %for.end381
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %92 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device, align 4
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %96 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mode, align 4
  %call391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %spec.select532, i32 noundef %spec.select533, i32 noundef %spec.select) #8
  br label %if.end392

if.end392:                                        ; preds = %do.end386, %for.end381.if.end392_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool393.not = icmp eq i32 %spec.select, 0
  br i1 %tobool393.not, label %lor.rhs, label %if.end392.lor.end_crit_edge

if.end392.lor.end_crit_edge:                      ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %if.end392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select532)
  %tobool395.not = icmp eq i32 %spec.select532, 0
  br i1 %tobool395.not, label %lor.rhs.lor.end_crit_edge, label %land.rhs

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select533)
  %tobool397 = icmp ne i32 %spec.select533, 0
  %phi.cast = zext i1 %tobool397 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs.lor.end_crit_edge, %if.end392.lor.end_crit_edge
  %98 = phi i32 [ 1, %if.end392.lor.end_crit_edge ], [ 0, %lor.rhs.lor.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_log_adapter(ptr nocapture noundef %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %3) #8
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @__const.friq_log_adapter.mode_string, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %5, ptr noundef %7, i32 noundef %9) #8
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %private, align 4
  tail call void @friq_connect(ptr noundef %pi)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add = add i32 %12, 2
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %13 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 4) #5, !srcloc !47
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.do.body24_crit_edge, label %cond.false19

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

cond.false19:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #5
  br label %do.body24

do.body24:                                        ; preds = %cond.false19, %entry.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %and29 = and i32 %18, 1048575
  %add30 = or i32 %and29, -18874368
  %19 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -1) #5, !srcloc !47
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %do.body24.do.body49_crit_edge, label %cond.false44

do.body24.do.body49_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

cond.false44:                                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #5
  br label %do.body49

do.body49:                                        ; preds = %cond.false44, %do.body24.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %and54 = and i32 %24, 1048575
  %add55 = or i32 %and54, -18874368
  %25 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 -1) #5, !srcloc !47
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool58.not = icmp eq i32 %27, 0
  br i1 %tobool58.not, label %do.body49.do.body74_crit_edge, label %cond.false69

do.body49.do.body74_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

cond.false69:                                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %do.body74

do.body74:                                        ; preds = %cond.false69, %do.body49.do.body74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %and79 = and i32 %30, 1048575
  %add80 = or i32 %and79, -18874368
  %31 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 115) #5, !srcloc !47
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool83.not = icmp eq i32 %33, 0
  br i1 %tobool83.not, label %do.body74.do.body99_crit_edge, label %cond.false94

do.body74.do.body99_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body99

cond.false94:                                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #5
  br label %do.body99

do.body99:                                        ; preds = %cond.false94, %do.body74.do.body99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %and104 = and i32 %36, 1048575
  %add105 = or i32 %and104, -18874368
  %37 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 115) #5, !srcloc !47
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool108.not = icmp eq i32 %39, 0
  br i1 %tobool108.not, label %do.body99.do.body124_crit_edge, label %cond.false119

do.body99.do.body124_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body124

cond.false119:                                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #5
  br label %do.body124

do.body124:                                       ; preds = %cond.false119, %do.body99.do.body124_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %and129 = and i32 %42, 1048575
  %add130 = or i32 %and129, -18874368
  %43 = inttoptr i32 %add130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 -55) #5, !srcloc !47
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool133.not = icmp eq i32 %45, 0
  br i1 %tobool133.not, label %do.body124.do.body149_crit_edge, label %cond.false144

do.body124.do.body149_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body149

cond.false144:                                    ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #5
  br label %do.body149

do.body149:                                       ; preds = %cond.false144, %do.body124.do.body149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %and154 = and i32 %48, 1048575
  %add155 = or i32 %and154, -18874368
  %49 = inttoptr i32 %add155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 -55) #5, !srcloc !47
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool158.not = icmp eq i32 %51, 0
  br i1 %tobool158.not, label %do.body149.do.body174_crit_edge, label %cond.false169

do.body149.do.body174_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body174

cond.false169:                                    ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #5
  br label %do.body174

do.body174:                                       ; preds = %cond.false169, %do.body149.do.body174_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %and179 = and i32 %54, 1048575
  %add180 = or i32 %and179, -18874368
  %55 = inttoptr i32 %add180 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 38) #5, !srcloc !47
  %56 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool183.not = icmp eq i32 %57, 0
  br i1 %tobool183.not, label %do.body174.do.body199_crit_edge, label %cond.false194

do.body174.do.body199_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body199

cond.false194:                                    ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %58(i32 noundef %57) #5
  br label %do.body199

do.body199:                                       ; preds = %cond.false194, %do.body174.do.body199_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %and204 = and i32 %60, 1048575
  %add205 = or i32 %and204, -18874368
  %61 = inttoptr i32 %add205 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 38) #5, !srcloc !47
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool208.not = icmp eq i32 %63, 0
  br i1 %tobool208.not, label %do.body199.do.body224_crit_edge, label %cond.false219

do.body199.do.body224_crit_edge:                  ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body224

cond.false219:                                    ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #5
  br label %do.body224

do.body224:                                       ; preds = %cond.false219, %do.body199.do.body224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %and229 = and i32 %66, 1048575
  %add230 = or i32 %and229, -18874368
  %67 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -98) #5, !srcloc !47
  %68 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool233.not = icmp eq i32 %69, 0
  br i1 %tobool233.not, label %do.body224.do.body249_crit_edge, label %cond.false244

do.body224.do.body249_crit_edge:                  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body249

cond.false244:                                    ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %70(i32 noundef %69) #5
  br label %do.body249

do.body249:                                       ; preds = %cond.false244, %do.body224.do.body249_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %and254 = and i32 %72, 1048575
  %add255 = or i32 %and254, -18874368
  %73 = inttoptr i32 %add255 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 -98) #5, !srcloc !47
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool258.not = icmp eq i32 %75, 0
  br i1 %tobool258.not, label %do.body249.cond.end273_crit_edge, label %cond.false269

do.body249.cond.end273_crit_edge:                 ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end273

cond.false269:                                    ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #5
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false269, %do.body249.cond.end273_crit_edge
  tail call void @friq_disconnect(ptr noundef %pi)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @friq_release_proto(ptr noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @friq_connect(ptr noundef %pi)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #5, !srcloc !47
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then.do.body13_crit_edge, label %cond.false8

if.then.do.body13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13

cond.false8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #5
  br label %do.body13

do.body13:                                        ; preds = %cond.false8, %if.then.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and17 = and i32 %9, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -1) #5, !srcloc !47
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %do.body13.do.body37_crit_edge, label %cond.false32

do.body13.do.body37_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body13.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %and41 = and i32 %15, 1048575
  %add42 = or i32 %and41, -18874368
  %16 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -1) #5, !srcloc !47
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool45.not = icmp eq i32 %18, 0
  br i1 %tobool45.not, label %do.body37.do.body61_crit_edge, label %cond.false56

do.body37.do.body61_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

cond.false56:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #5
  br label %do.body61

do.body61:                                        ; preds = %cond.false56, %do.body37.do.body61_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %and65 = and i32 %21, 1048575
  %add66 = or i32 %and65, -18874368
  %22 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 115) #5, !srcloc !47
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool69.not = icmp eq i32 %24, 0
  br i1 %tobool69.not, label %do.body61.do.body85_crit_edge, label %cond.false80

do.body61.do.body85_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85

cond.false80:                                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #5
  br label %do.body85

do.body85:                                        ; preds = %cond.false80, %do.body61.do.body85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and89 = and i32 %27, 1048575
  %add90 = or i32 %and89, -18874368
  %28 = inttoptr i32 %add90 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 115) #5, !srcloc !47
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool93.not = icmp eq i32 %30, 0
  br i1 %tobool93.not, label %do.body85.do.body109_crit_edge, label %cond.false104

do.body85.do.body109_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109

cond.false104:                                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #5
  br label %do.body109

do.body109:                                       ; preds = %cond.false104, %do.body85.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and113 = and i32 %33, 1048575
  %add114 = or i32 %and113, -18874368
  %34 = inttoptr i32 %add114 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -55) #5, !srcloc !47
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool117.not = icmp eq i32 %36, 0
  br i1 %tobool117.not, label %do.body109.do.body133_crit_edge, label %cond.false128

do.body109.do.body133_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body133

cond.false128:                                    ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #5
  br label %do.body133

do.body133:                                       ; preds = %cond.false128, %do.body109.do.body133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %and137 = and i32 %39, 1048575
  %add138 = or i32 %and137, -18874368
  %40 = inttoptr i32 %add138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -55) #5, !srcloc !47
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool141.not = icmp eq i32 %42, 0
  br i1 %tobool141.not, label %do.body133.do.body157_crit_edge, label %cond.false152

do.body133.do.body157_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body157

cond.false152:                                    ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #5
  br label %do.body157

do.body157:                                       ; preds = %cond.false152, %do.body133.do.body157_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and161 = and i32 %45, 1048575
  %add162 = or i32 %and161, -18874368
  %46 = inttoptr i32 %add162 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 38) #5, !srcloc !47
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool165.not = icmp eq i32 %48, 0
  br i1 %tobool165.not, label %do.body157.do.body181_crit_edge, label %cond.false176

do.body157.do.body181_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body181

cond.false176:                                    ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #5
  br label %do.body181

do.body181:                                       ; preds = %cond.false176, %do.body157.do.body181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %and185 = and i32 %51, 1048575
  %add186 = or i32 %and185, -18874368
  %52 = inttoptr i32 %add186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 38) #5, !srcloc !47
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool189.not = icmp eq i32 %54, 0
  br i1 %tobool189.not, label %do.body181.do.body205_crit_edge, label %cond.false200

do.body181.do.body205_crit_edge:                  ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body205

cond.false200:                                    ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #5
  br label %do.body205

do.body205:                                       ; preds = %cond.false200, %do.body181.do.body205_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and209 = and i32 %57, 1048575
  %add210 = or i32 %and209, -18874368
  %58 = inttoptr i32 %add210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 29) #5, !srcloc !47
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool213.not = icmp eq i32 %60, 0
  br i1 %tobool213.not, label %do.body205.do.body229_crit_edge, label %cond.false224

do.body205.do.body229_crit_edge:                  ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body229

cond.false224:                                    ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #5
  br label %do.body229

do.body229:                                       ; preds = %cond.false224, %do.body205.do.body229_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %and233 = and i32 %63, 1048575
  %add234 = or i32 %and233, -18874368
  %64 = inttoptr i32 %add234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 29) #5, !srcloc !47
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool237.not = icmp eq i32 %66, 0
  br i1 %tobool237.not, label %do.body229.do.body253_crit_edge, label %cond.false248

do.body229.do.body253_crit_edge:                  ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body253

cond.false248:                                    ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #5
  br label %do.body253

do.body253:                                       ; preds = %cond.false248, %do.body229.do.body253_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add256 = add i32 %69, 2
  %and257 = and i32 %add256, 1048575
  %add258 = or i32 %and257, -18874368
  %70 = inttoptr i32 %add258 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 4) #5, !srcloc !47
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool261.not = icmp eq i32 %72, 0
  br i1 %tobool261.not, label %do.body253.do.body277_crit_edge, label %cond.false272

do.body253.do.body277_crit_edge:                  ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body277

cond.false272:                                    ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #5
  br label %do.body277

do.body277:                                       ; preds = %cond.false272, %do.body253.do.body277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %and281 = and i32 %75, 1048575
  %add282 = or i32 %and281, -18874368
  %76 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 -1) #5, !srcloc !47
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool285.not = icmp eq i32 %78, 0
  br i1 %tobool285.not, label %do.body277.do.body301_crit_edge, label %cond.false296

do.body277.do.body301_crit_edge:                  ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body301

cond.false296:                                    ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #5
  br label %do.body301

do.body301:                                       ; preds = %cond.false296, %do.body277.do.body301_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %and305 = and i32 %81, 1048575
  %add306 = or i32 %and305, -18874368
  %82 = inttoptr i32 %add306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 -1) #5, !srcloc !47
  %83 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool309.not = icmp eq i32 %84, 0
  br i1 %tobool309.not, label %do.body301.do.body325_crit_edge, label %cond.false320

do.body301.do.body325_crit_edge:                  ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body325

cond.false320:                                    ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #5
  br label %do.body325

do.body325:                                       ; preds = %cond.false320, %do.body301.do.body325_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 4
  %and329 = and i32 %87, 1048575
  %add330 = or i32 %and329, -18874368
  %88 = inttoptr i32 %add330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 115) #5, !srcloc !47
  %89 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool333.not = icmp eq i32 %90, 0
  br i1 %tobool333.not, label %do.body325.do.body349_crit_edge, label %cond.false344

do.body325.do.body349_crit_edge:                  ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body349

cond.false344:                                    ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %90) #5
  br label %do.body349

do.body349:                                       ; preds = %cond.false344, %do.body325.do.body349_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %and353 = and i32 %93, 1048575
  %add354 = or i32 %and353, -18874368
  %94 = inttoptr i32 %add354 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 115) #5, !srcloc !47
  %95 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool357.not = icmp eq i32 %96, 0
  br i1 %tobool357.not, label %do.body349.do.body373_crit_edge, label %cond.false368

do.body349.do.body373_crit_edge:                  ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body373

cond.false368:                                    ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %97(i32 noundef %96) #5
  br label %do.body373

do.body373:                                       ; preds = %cond.false368, %do.body349.do.body373_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port, align 4
  %and377 = and i32 %99, 1048575
  %add378 = or i32 %and377, -18874368
  %100 = inttoptr i32 %add378 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 -55) #5, !srcloc !47
  %101 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool381.not = icmp eq i32 %102, 0
  br i1 %tobool381.not, label %do.body373.do.body397_crit_edge, label %cond.false392

do.body373.do.body397_crit_edge:                  ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body397

cond.false392:                                    ; preds = %do.body373
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %103(i32 noundef %102) #5
  br label %do.body397

do.body397:                                       ; preds = %cond.false392, %do.body373.do.body397_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port, align 4
  %and401 = and i32 %105, 1048575
  %add402 = or i32 %and401, -18874368
  %106 = inttoptr i32 %add402 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 -55) #5, !srcloc !47
  %107 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool405.not = icmp eq i32 %108, 0
  br i1 %tobool405.not, label %do.body397.do.body421_crit_edge, label %cond.false416

do.body397.do.body421_crit_edge:                  ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body421

cond.false416:                                    ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %109(i32 noundef %108) #5
  br label %do.body421

do.body421:                                       ; preds = %cond.false416, %do.body397.do.body421_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port, align 4
  %and425 = and i32 %111, 1048575
  %add426 = or i32 %and425, -18874368
  %112 = inttoptr i32 %add426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 38) #5, !srcloc !47
  %113 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool429.not = icmp eq i32 %114, 0
  br i1 %tobool429.not, label %do.body421.do.body445_crit_edge, label %cond.false440

do.body421.do.body445_crit_edge:                  ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body445

cond.false440:                                    ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %115(i32 noundef %114) #5
  br label %do.body445

do.body445:                                       ; preds = %cond.false440, %do.body421.do.body445_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port, align 4
  %and449 = and i32 %117, 1048575
  %add450 = or i32 %and449, -18874368
  %118 = inttoptr i32 %add450 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 38) #5, !srcloc !47
  %119 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool453.not = icmp eq i32 %120, 0
  br i1 %tobool453.not, label %do.body445.do.body469_crit_edge, label %cond.false464

do.body445.do.body469_crit_edge:                  ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body469

cond.false464:                                    ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %121(i32 noundef %120) #5
  br label %do.body469

do.body469:                                       ; preds = %cond.false464, %do.body445.do.body469_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port, align 4
  %and473 = and i32 %123, 1048575
  %add474 = or i32 %and473, -18874368
  %124 = inttoptr i32 %add474 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 30) #5, !srcloc !47
  %125 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool477.not = icmp eq i32 %126, 0
  br i1 %tobool477.not, label %do.body469.do.body493_crit_edge, label %cond.false488

do.body469.do.body493_crit_edge:                  ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body493

cond.false488:                                    ; preds = %do.body469
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #5
  br label %do.body493

do.body493:                                       ; preds = %cond.false488, %do.body469.do.body493_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port, align 4
  %and497 = and i32 %129, 1048575
  %add498 = or i32 %and497, -18874368
  %130 = inttoptr i32 %add498 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 30) #5, !srcloc !47
  %131 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool501.not = icmp eq i32 %132, 0
  br i1 %tobool501.not, label %do.body493.cond.end516_crit_edge, label %cond.false512

do.body493.cond.end516_crit_edge:                 ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end516

cond.false512:                                    ; preds = %do.body493
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %133(i32 noundef %132) #5
  br label %cond.end516

cond.end516:                                      ; preds = %cond.false512, %do.body493.cond.end516_crit_edge
  tail call void @friq_disconnect(ptr noundef %pi)
  %134 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %private, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end516, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @friq_read_block_int(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count, i32 noundef %regr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb402
    i32 2, label %do.body863
    i32 3, label %do.body1332
    i32 4, label %do.body1801
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 4) #5, !srcloc !47
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.body12_crit_edge, label %cond.false7

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

cond.false7:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #5
  br label %do.body12

do.body12:                                        ; preds = %cond.false7, %do.body.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %and17 = and i32 %10, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -1) #5, !srcloc !47
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.body12.do.body37_crit_edge, label %cond.false32

do.body12.do.body37_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

cond.false32:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #5
  br label %do.body37

do.body37:                                        ; preds = %cond.false32, %do.body12.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and42 = and i32 %16, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -1) #5, !srcloc !47
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.do.body62_crit_edge, label %cond.false57

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #5
  br label %do.body62

do.body62:                                        ; preds = %cond.false57, %do.body37.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and67 = and i32 %22, 1048575
  %add68 = or i32 %and67, -18874368
  %23 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 115) #5, !srcloc !47
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %do.body62.do.body87_crit_edge, label %cond.false82

do.body62.do.body87_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

cond.false82:                                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %do.body87

do.body87:                                        ; preds = %cond.false82, %do.body62.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and92 = and i32 %28, 1048575
  %add93 = or i32 %and92, -18874368
  %29 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 115) #5, !srcloc !47
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool96.not = icmp eq i32 %31, 0
  br i1 %tobool96.not, label %do.body87.do.body112_crit_edge, label %cond.false107

do.body87.do.body112_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body112

cond.false107:                                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #5
  br label %do.body112

do.body112:                                       ; preds = %cond.false107, %do.body87.do.body112_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %and117 = and i32 %34, 1048575
  %add118 = or i32 %and117, -18874368
  %35 = inttoptr i32 %add118 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -55) #5, !srcloc !47
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool121.not = icmp eq i32 %37, 0
  br i1 %tobool121.not, label %do.body112.do.body137_crit_edge, label %cond.false132

do.body112.do.body137_crit_edge:                  ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body137

cond.false132:                                    ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #5
  br label %do.body137

do.body137:                                       ; preds = %cond.false132, %do.body112.do.body137_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and142 = and i32 %40, 1048575
  %add143 = or i32 %and142, -18874368
  %41 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -55) #5, !srcloc !47
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool146.not = icmp eq i32 %43, 0
  br i1 %tobool146.not, label %do.body137.do.body162_crit_edge, label %cond.false157

do.body137.do.body162_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

cond.false157:                                    ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #5
  br label %do.body162

do.body162:                                       ; preds = %cond.false157, %do.body137.do.body162_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 38) #5, !srcloc !47
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %do.body162.do.body187_crit_edge, label %cond.false182

do.body162.do.body187_crit_edge:                  ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body187

cond.false182:                                    ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #5
  br label %do.body187

do.body187:                                       ; preds = %cond.false182, %do.body162.do.body187_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %and192 = and i32 %52, 1048575
  %add193 = or i32 %and192, -18874368
  %53 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 38) #5, !srcloc !47
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool196.not = icmp eq i32 %55, 0
  br i1 %tobool196.not, label %do.body187.do.body212_crit_edge, label %cond.false207

do.body187.do.body212_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

cond.false207:                                    ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #5
  br label %do.body212

do.body212:                                       ; preds = %cond.false207, %do.body187.do.body212_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %regr to i8
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %and217 = and i32 %58, 1048575
  %add218 = or i32 %and217, -18874368
  %59 = inttoptr i32 %add218 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv) #5, !srcloc !47
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool221.not = icmp eq i32 %61, 0
  br i1 %tobool221.not, label %do.body212.do.body238_crit_edge, label %cond.false233

do.body212.do.body238_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body238

cond.false233:                                    ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #5
  br label %do.body238

do.body238:                                       ; preds = %cond.false233, %do.body212.do.body238_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %and244 = and i32 %64, 1048575
  %add245 = or i32 %and244, -18874368
  %65 = inttoptr i32 %add245 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %conv) #5, !srcloc !47
  %66 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool248.not = icmp eq i32 %67, 0
  br i1 %tobool248.not, label %do.body238.cond.end264_crit_edge, label %cond.false260

do.body238.cond.end264_crit_edge:                 ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end264

cond.false260:                                    ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #5
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false260, %do.body238.cond.end264_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2653000 = icmp sgt i32 %count, 0
  br i1 %cmp2653000, label %cond.end264.do.body267_crit_edge, label %cond.end264.do.body376_crit_edge

cond.end264.do.body376_crit_edge:                 ; preds = %cond.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body376

cond.end264.do.body267_crit_edge:                 ; preds = %cond.end264
  br label %do.body267

do.body267:                                       ; preds = %cond.end362.do.body267_crit_edge, %cond.end264.do.body267_crit_edge
  %k.03001 = phi i32 [ %inc, %cond.end362.do.body267_crit_edge ], [ 0, %cond.end264.do.body267_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %add271 = add i32 %70, 2
  %and272 = and i32 %add271, 1048575
  %add273 = or i32 %and272, -18874368
  %71 = inttoptr i32 %add273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 6) #5, !srcloc !47
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool276.not = icmp eq i32 %73, 0
  br i1 %tobool276.not, label %do.body267.cond.end310_crit_edge, label %cond.false288

do.body267.cond.end310_crit_edge:                 ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end310

cond.false288:                                    ; preds = %do.body267
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #5
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool294.not = icmp eq i32 %.pr, 0
  br i1 %tobool294.not, label %cond.false288.cond.end310_crit_edge, label %cond.false306

cond.false288.cond.end310_crit_edge:              ; preds = %cond.false288
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end310

cond.false306:                                    ; preds = %cond.false288
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %.pr) #5
  br label %cond.end310

cond.end310:                                      ; preds = %cond.false306, %cond.false288.cond.end310_crit_edge, %do.body267.cond.end310_crit_edge
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add312 = add i32 %78, 1
  %and313 = and i32 %add312, 1048575
  %add314 = or i32 %and313, -18874368
  %79 = inttoptr i32 %add314 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add323 = add i32 %82, 2
  %and324 = and i32 %add323, 1048575
  %add325 = or i32 %and324, -18874368
  %83 = inttoptr i32 %add325 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 4) #5, !srcloc !47
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool328.not = icmp eq i32 %85, 0
  br i1 %tobool328.not, label %cond.end310.cond.end362_crit_edge, label %cond.false340

cond.end310.cond.end362_crit_edge:                ; preds = %cond.end310
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end362

cond.false340:                                    ; preds = %cond.end310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #5
  %87 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr2981 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2981)
  %tobool346.not = icmp eq i32 %.pr2981, 0
  br i1 %tobool346.not, label %cond.false340.cond.end362_crit_edge, label %cond.false358

cond.false340.cond.end362_crit_edge:              ; preds = %cond.false340
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end362

cond.false358:                                    ; preds = %cond.false340
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %.pr2981) #5
  br label %cond.end362

cond.end362:                                      ; preds = %cond.false358, %cond.false340.cond.end362_crit_edge, %cond.end310.cond.end362_crit_edge
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add365 = add i32 %90, 1
  %and366 = and i32 %add365, 1048575
  %add367 = or i32 %and366, -18874368
  %91 = inttoptr i32 %add367 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  %93 = lshr i8 %80, 4
  %94 = and i8 %92, -16
  %or2979 = or i8 %94, %93
  %arrayidx = getelementptr i8, ptr %buf, i32 %k.03001
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %or2979, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %k.03001, 1
  %exitcond3006.not = icmp eq i32 %inc, %count
  br i1 %exitcond3006.not, label %cond.end362.do.body376_crit_edge, label %cond.end362.do.body267_crit_edge

cond.end362.do.body267_crit_edge:                 ; preds = %cond.end362
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body267

cond.end362.do.body376_crit_edge:                 ; preds = %cond.end362
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body376

do.body376:                                       ; preds = %cond.end362.do.body376_crit_edge, %cond.end264.do.body376_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add380 = add i32 %97, 2
  %and381 = and i32 %add380, 1048575
  %add382 = or i32 %and381, -18874368
  %98 = inttoptr i32 %add382 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 4) #5, !srcloc !47
  %99 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool385.not = icmp eq i32 %100, 0
  br i1 %tobool385.not, label %do.body376.sw.epilog_crit_edge, label %do.body376.sw.epilog.sink.split_crit_edge

do.body376.sw.epilog.sink.split_crit_edge:        ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body376.sw.epilog_crit_edge:                   ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb402:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  tail call void @arm_heavy_mb() #5
  %port406 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %101 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port406, align 4
  %add407 = add i32 %102, 2
  %and408 = and i32 %add407, 1048575
  %add409 = or i32 %and408, -18874368
  %103 = inttoptr i32 %add409 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 4) #5, !srcloc !47
  %delay411 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %104 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool412.not = icmp eq i32 %105, 0
  br i1 %tobool412.not, label %sw.bb402.do.body429_crit_edge, label %cond.false424

sw.bb402.do.body429_crit_edge:                    ; preds = %sw.bb402
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body429

cond.false424:                                    ; preds = %sw.bb402
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %105) #5
  br label %do.body429

do.body429:                                       ; preds = %cond.false424, %sw.bb402.do.body429_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port406, align 4
  %and434 = and i32 %108, 1048575
  %add435 = or i32 %and434, -18874368
  %109 = inttoptr i32 %add435 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 -1) #5, !srcloc !47
  %110 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool438.not = icmp eq i32 %111, 0
  br i1 %tobool438.not, label %do.body429.do.body455_crit_edge, label %cond.false450

do.body429.do.body455_crit_edge:                  ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body455

cond.false450:                                    ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %111) #5
  br label %do.body455

do.body455:                                       ; preds = %cond.false450, %do.body429.do.body455_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port406, align 4
  %and460 = and i32 %114, 1048575
  %add461 = or i32 %and460, -18874368
  %115 = inttoptr i32 %add461 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 -1) #5, !srcloc !47
  %116 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool464.not = icmp eq i32 %117, 0
  br i1 %tobool464.not, label %do.body455.do.body481_crit_edge, label %cond.false476

do.body455.do.body481_crit_edge:                  ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body481

cond.false476:                                    ; preds = %do.body455
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #5
  br label %do.body481

do.body481:                                       ; preds = %cond.false476, %do.body455.do.body481_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port406, align 4
  %and486 = and i32 %120, 1048575
  %add487 = or i32 %and486, -18874368
  %121 = inttoptr i32 %add487 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 115) #5, !srcloc !47
  %122 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool490.not = icmp eq i32 %123, 0
  br i1 %tobool490.not, label %do.body481.do.body507_crit_edge, label %cond.false502

do.body481.do.body507_crit_edge:                  ; preds = %do.body481
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body507

cond.false502:                                    ; preds = %do.body481
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #5
  br label %do.body507

do.body507:                                       ; preds = %cond.false502, %do.body481.do.body507_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port406, align 4
  %and512 = and i32 %126, 1048575
  %add513 = or i32 %and512, -18874368
  %127 = inttoptr i32 %add513 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 115) #5, !srcloc !47
  %128 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool516.not = icmp eq i32 %129, 0
  br i1 %tobool516.not, label %do.body507.do.body533_crit_edge, label %cond.false528

do.body507.do.body533_crit_edge:                  ; preds = %do.body507
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body533

cond.false528:                                    ; preds = %do.body507
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %129) #5
  br label %do.body533

do.body533:                                       ; preds = %cond.false528, %do.body507.do.body533_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %131 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port406, align 4
  %and538 = and i32 %132, 1048575
  %add539 = or i32 %and538, -18874368
  %133 = inttoptr i32 %add539 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 -55) #5, !srcloc !47
  %134 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool542.not = icmp eq i32 %135, 0
  br i1 %tobool542.not, label %do.body533.do.body559_crit_edge, label %cond.false554

do.body533.do.body559_crit_edge:                  ; preds = %do.body533
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body559

cond.false554:                                    ; preds = %do.body533
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #5
  br label %do.body559

do.body559:                                       ; preds = %cond.false554, %do.body533.do.body559_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port406, align 4
  %and564 = and i32 %138, 1048575
  %add565 = or i32 %and564, -18874368
  %139 = inttoptr i32 %add565 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 -55) #5, !srcloc !47
  %140 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool568.not = icmp eq i32 %141, 0
  br i1 %tobool568.not, label %do.body559.do.body585_crit_edge, label %cond.false580

do.body559.do.body585_crit_edge:                  ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body585

cond.false580:                                    ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #5
  br label %do.body585

do.body585:                                       ; preds = %cond.false580, %do.body559.do.body585_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %143 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port406, align 4
  %and590 = and i32 %144, 1048575
  %add591 = or i32 %and590, -18874368
  %145 = inttoptr i32 %add591 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 38) #5, !srcloc !47
  %146 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool594.not = icmp eq i32 %147, 0
  br i1 %tobool594.not, label %do.body585.do.body611_crit_edge, label %cond.false606

do.body585.do.body611_crit_edge:                  ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body611

cond.false606:                                    ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %148(i32 noundef %147) #5
  br label %do.body611

do.body611:                                       ; preds = %cond.false606, %do.body585.do.body611_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port406, align 4
  %and616 = and i32 %150, 1048575
  %add617 = or i32 %and616, -18874368
  %151 = inttoptr i32 %add617 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 38) #5, !srcloc !47
  %152 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool620.not = icmp eq i32 %153, 0
  br i1 %tobool620.not, label %do.body611.do.body637_crit_edge, label %cond.false632

do.body611.do.body637_crit_edge:                  ; preds = %do.body611
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body637

cond.false632:                                    ; preds = %do.body611
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #5
  br label %do.body637

do.body637:                                       ; preds = %cond.false632, %do.body611.do.body637_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %155 = trunc i32 %regr to i8
  %conv641 = add i8 %155, -64
  %156 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port406, align 4
  %and644 = and i32 %157, 1048575
  %add645 = or i32 %and644, -18874368
  %158 = inttoptr i32 %add645 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 %conv641) #5, !srcloc !47
  %159 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool648.not = icmp eq i32 %160, 0
  br i1 %tobool648.not, label %do.body637.do.body665_crit_edge, label %cond.false660

do.body637.do.body665_crit_edge:                  ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body665

cond.false660:                                    ; preds = %do.body637
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #5
  br label %do.body665

do.body665:                                       ; preds = %cond.false660, %do.body637.do.body665_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  tail call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port406, align 4
  %and672 = and i32 %163, 1048575
  %add673 = or i32 %and672, -18874368
  %164 = inttoptr i32 %add673 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 %conv641) #5, !srcloc !47
  %165 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool676.not = icmp eq i32 %166, 0
  br i1 %tobool676.not, label %do.body665.do.body693_crit_edge, label %cond.false688

do.body665.do.body693_crit_edge:                  ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body693

cond.false688:                                    ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %166) #5
  br label %do.body693

do.body693:                                       ; preds = %cond.false688, %do.body665.do.body693_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port406, align 4
  %and698 = and i32 %169, 1048575
  %add699 = or i32 %and698, -18874368
  %170 = inttoptr i32 %add699 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 -1) #5, !srcloc !47
  %171 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool702.not = icmp eq i32 %172, 0
  br i1 %tobool702.not, label %do.body693.cond.end718_crit_edge, label %cond.false714

do.body693.cond.end718_crit_edge:                 ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end718

cond.false714:                                    ; preds = %do.body693
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #5
  br label %cond.end718

cond.end718:                                      ; preds = %cond.false714, %do.body693.cond.end718_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7202997 = icmp sgt i32 %count, 0
  br i1 %cmp7202997, label %cond.end718.do.body723_crit_edge, label %cond.end718.do.body784_crit_edge

cond.end718.do.body784_crit_edge:                 ; preds = %cond.end718
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body784

cond.end718.do.body723_crit_edge:                 ; preds = %cond.end718
  br label %do.body723

do.body723:                                       ; preds = %cond.end768.do.body723_crit_edge, %cond.end718.do.body723_crit_edge
  %k.12999 = phi i32 [ %inc782, %cond.end768.do.body723_crit_edge ], [ 0, %cond.end718.do.body723_crit_edge ]
  %ph.02998 = phi i32 [ %sub, %cond.end768.do.body723_crit_edge ], [ 2, %cond.end718.do.body723_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %174 = trunc i32 %ph.02998 to i8
  %conv727 = add i8 %174, -92
  %175 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port406, align 4
  %add729 = add i32 %176, 2
  %and730 = and i32 %add729, 1048575
  %add731 = or i32 %and730, -18874368
  %177 = inttoptr i32 %add731 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 %conv727) #5, !srcloc !47
  %178 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool734.not = icmp eq i32 %179, 0
  br i1 %tobool734.not, label %do.body723.cond.end768_crit_edge, label %cond.false746

do.body723.cond.end768_crit_edge:                 ; preds = %do.body723
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end768

cond.false746:                                    ; preds = %do.body723
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %180(i32 noundef %179) #5
  %181 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pr2983 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2983)
  %tobool752.not = icmp eq i32 %.pr2983, 0
  br i1 %tobool752.not, label %cond.false746.cond.end768_crit_edge, label %cond.false764

cond.false746.cond.end768_crit_edge:              ; preds = %cond.false746
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end768

cond.false764:                                    ; preds = %cond.false746
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %.pr2983) #5
  br label %cond.end768

cond.end768:                                      ; preds = %cond.false764, %cond.false746.cond.end768_crit_edge, %do.body723.cond.end768_crit_edge
  %183 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port406, align 4
  %and772 = and i32 %184, 1048575
  %add773 = or i32 %and772, -18874368
  %185 = inttoptr i32 %add773 to ptr
  %186 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %185) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  %arrayidx780 = getelementptr i8, ptr %buf, i32 %k.12999
  %187 = ptrtoint ptr %arrayidx780 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %arrayidx780, align 1
  %sub = sub i32 2, %ph.02998
  %inc782 = add nuw nsw i32 %k.12999, 1
  %exitcond3005.not = icmp eq i32 %inc782, %count
  br i1 %exitcond3005.not, label %cond.end768.do.body784_crit_edge, label %cond.end768.do.body723_crit_edge

cond.end768.do.body723_crit_edge:                 ; preds = %cond.end768
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body723

cond.end768.do.body784_crit_edge:                 ; preds = %cond.end768
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body784

do.body784:                                       ; preds = %cond.end768.do.body784_crit_edge, %cond.end718.do.body784_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %port406, align 4
  %add788 = add i32 %189, 2
  %and789 = and i32 %add788, 1048575
  %add790 = or i32 %and789, -18874368
  %190 = inttoptr i32 %add790 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %190, i8 -84) #5, !srcloc !47
  %191 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool793.not = icmp eq i32 %192, 0
  br i1 %tobool793.not, label %do.body784.do.body810_crit_edge, label %cond.false805

do.body784.do.body810_crit_edge:                  ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body810

cond.false805:                                    ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %193(i32 noundef %192) #5
  br label %do.body810

do.body810:                                       ; preds = %cond.false805, %do.body784.do.body810_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port406, align 4
  %add814 = add i32 %195, 2
  %and815 = and i32 %add814, 1048575
  %add816 = or i32 %and815, -18874368
  %196 = inttoptr i32 %add816 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 -92) #5, !srcloc !47
  %197 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool819.not = icmp eq i32 %198, 0
  br i1 %tobool819.not, label %do.body810.do.body836_crit_edge, label %cond.false831

do.body810.do.body836_crit_edge:                  ; preds = %do.body810
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body836

cond.false831:                                    ; preds = %do.body810
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %199(i32 noundef %198) #5
  br label %do.body836

do.body836:                                       ; preds = %cond.false831, %do.body810.do.body836_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %port406 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port406, align 4
  %add840 = add i32 %201, 2
  %and841 = and i32 %add840, 1048575
  %add842 = or i32 %and841, -18874368
  %202 = inttoptr i32 %add842 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 4) #5, !srcloc !47
  %203 = ptrtoint ptr %delay411 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %delay411, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool845.not = icmp eq i32 %204, 0
  br i1 %tobool845.not, label %do.body836.sw.epilog_crit_edge, label %do.body836.sw.epilog.sink.split_crit_edge

do.body836.sw.epilog.sink.split_crit_edge:        ; preds = %do.body836
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body836.sw.epilog_crit_edge:                   ; preds = %do.body836
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body863:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %port866 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %205 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port866, align 4
  %add867 = add i32 %206, 2
  %and868 = and i32 %add867, 1048575
  %add869 = or i32 %and868, -18874368
  %207 = inttoptr i32 %add869 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %207, i8 4) #5, !srcloc !47
  %delay871 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %208 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool872.not = icmp eq i32 %209, 0
  br i1 %tobool872.not, label %do.body863.do.body889_crit_edge, label %cond.false884

do.body863.do.body889_crit_edge:                  ; preds = %do.body863
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body889

cond.false884:                                    ; preds = %do.body863
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %210 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %210(i32 noundef %209) #5
  br label %do.body889

do.body889:                                       ; preds = %cond.false884, %do.body863.do.body889_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %port866, align 4
  %and894 = and i32 %212, 1048575
  %add895 = or i32 %and894, -18874368
  %213 = inttoptr i32 %add895 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %213, i8 -1) #5, !srcloc !47
  %214 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool898.not = icmp eq i32 %215, 0
  br i1 %tobool898.not, label %do.body889.do.body915_crit_edge, label %cond.false910

do.body889.do.body915_crit_edge:                  ; preds = %do.body889
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body915

cond.false910:                                    ; preds = %do.body889
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %216(i32 noundef %215) #5
  br label %do.body915

do.body915:                                       ; preds = %cond.false910, %do.body889.do.body915_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %port866, align 4
  %and920 = and i32 %218, 1048575
  %add921 = or i32 %and920, -18874368
  %219 = inttoptr i32 %add921 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %219, i8 -1) #5, !srcloc !47
  %220 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool924.not = icmp eq i32 %221, 0
  br i1 %tobool924.not, label %do.body915.do.body941_crit_edge, label %cond.false936

do.body915.do.body941_crit_edge:                  ; preds = %do.body915
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body941

cond.false936:                                    ; preds = %do.body915
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %222(i32 noundef %221) #5
  br label %do.body941

do.body941:                                       ; preds = %cond.false936, %do.body915.do.body941_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port866, align 4
  %and946 = and i32 %224, 1048575
  %add947 = or i32 %and946, -18874368
  %225 = inttoptr i32 %add947 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 115) #5, !srcloc !47
  %226 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool950.not = icmp eq i32 %227, 0
  br i1 %tobool950.not, label %do.body941.do.body967_crit_edge, label %cond.false962

do.body941.do.body967_crit_edge:                  ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body967

cond.false962:                                    ; preds = %do.body941
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %228(i32 noundef %227) #5
  br label %do.body967

do.body967:                                       ; preds = %cond.false962, %do.body941.do.body967_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %229 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %port866, align 4
  %and972 = and i32 %230, 1048575
  %add973 = or i32 %and972, -18874368
  %231 = inttoptr i32 %add973 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 115) #5, !srcloc !47
  %232 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool976.not = icmp eq i32 %233, 0
  br i1 %tobool976.not, label %do.body967.do.body993_crit_edge, label %cond.false988

do.body967.do.body993_crit_edge:                  ; preds = %do.body967
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body993

cond.false988:                                    ; preds = %do.body967
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %234(i32 noundef %233) #5
  br label %do.body993

do.body993:                                       ; preds = %cond.false988, %do.body967.do.body993_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %235 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %port866, align 4
  %and998 = and i32 %236, 1048575
  %add999 = or i32 %and998, -18874368
  %237 = inttoptr i32 %add999 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %237, i8 -55) #5, !srcloc !47
  %238 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool1002.not = icmp eq i32 %239, 0
  br i1 %tobool1002.not, label %do.body993.do.body1019_crit_edge, label %cond.false1014

do.body993.do.body1019_crit_edge:                 ; preds = %do.body993
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1019

cond.false1014:                                   ; preds = %do.body993
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %240(i32 noundef %239) #5
  br label %do.body1019

do.body1019:                                      ; preds = %cond.false1014, %do.body993.do.body1019_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %241 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port866, align 4
  %and1024 = and i32 %242, 1048575
  %add1025 = or i32 %and1024, -18874368
  %243 = inttoptr i32 %add1025 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %243, i8 -55) #5, !srcloc !47
  %244 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool1028.not = icmp eq i32 %245, 0
  br i1 %tobool1028.not, label %do.body1019.do.body1045_crit_edge, label %cond.false1040

do.body1019.do.body1045_crit_edge:                ; preds = %do.body1019
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1045

cond.false1040:                                   ; preds = %do.body1019
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %246(i32 noundef %245) #5
  br label %do.body1045

do.body1045:                                      ; preds = %cond.false1040, %do.body1019.do.body1045_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %247 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %port866, align 4
  %and1050 = and i32 %248, 1048575
  %add1051 = or i32 %and1050, -18874368
  %249 = inttoptr i32 %add1051 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %249, i8 38) #5, !srcloc !47
  %250 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool1054.not = icmp eq i32 %251, 0
  br i1 %tobool1054.not, label %do.body1045.do.body1071_crit_edge, label %cond.false1066

do.body1045.do.body1071_crit_edge:                ; preds = %do.body1045
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1071

cond.false1066:                                   ; preds = %do.body1045
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %252(i32 noundef %251) #5
  br label %do.body1071

do.body1071:                                      ; preds = %cond.false1066, %do.body1045.do.body1071_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %253 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %port866, align 4
  %and1076 = and i32 %254, 1048575
  %add1077 = or i32 %and1076, -18874368
  %255 = inttoptr i32 %add1077 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 38) #5, !srcloc !47
  %256 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool1080.not = icmp eq i32 %257, 0
  br i1 %tobool1080.not, label %do.body1071.do.body1097_crit_edge, label %cond.false1092

do.body1071.do.body1097_crit_edge:                ; preds = %do.body1071
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1097

cond.false1092:                                   ; preds = %do.body1071
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %258(i32 noundef %257) #5
  br label %do.body1097

do.body1097:                                      ; preds = %cond.false1092, %do.body1071.do.body1097_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %259 = trunc i32 %regr to i8
  %conv1101 = xor i8 %259, -128
  %260 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %port866, align 4
  %and1104 = and i32 %261, 1048575
  %add1105 = or i32 %and1104, -18874368
  %262 = inttoptr i32 %add1105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %262, i8 %conv1101) #5, !srcloc !47
  %263 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool1108.not = icmp eq i32 %264, 0
  br i1 %tobool1108.not, label %do.body1097.do.body1125_crit_edge, label %cond.false1120

do.body1097.do.body1125_crit_edge:                ; preds = %do.body1097
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1125

cond.false1120:                                   ; preds = %do.body1097
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %265(i32 noundef %264) #5
  br label %do.body1125

do.body1125:                                      ; preds = %cond.false1120, %do.body1097.do.body1125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %266 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %port866, align 4
  %and1132 = and i32 %267, 1048575
  %add1133 = or i32 %and1132, -18874368
  %268 = inttoptr i32 %add1133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %268, i8 %conv1101) #5, !srcloc !47
  %269 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool1136.not = icmp eq i32 %270, 0
  br i1 %tobool1136.not, label %do.body1125.cond.end1152_crit_edge, label %cond.false1148

do.body1125.cond.end1152_crit_edge:               ; preds = %do.body1125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1152

cond.false1148:                                   ; preds = %do.body1125
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %271 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %271(i32 noundef %270) #5
  br label %cond.end1152

cond.end1152:                                     ; preds = %cond.false1148, %do.body1125.cond.end1152_crit_edge
  %sub1154 = add i32 %count, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1154)
  %cmp11552995 = icmp sgt i32 %sub1154, 0
  br i1 %cmp11552995, label %cond.end1152.for.body1157_crit_edge, label %cond.end1152.do.body1191_crit_edge

cond.end1152.do.body1191_crit_edge:               ; preds = %cond.end1152
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1191

cond.end1152.for.body1157_crit_edge:              ; preds = %cond.end1152
  br label %for.body1157

for.body1157:                                     ; preds = %cond.end1175.for.body1157_crit_edge, %cond.end1152.for.body1157_crit_edge
  %k.22996 = phi i32 [ %inc1189, %cond.end1175.for.body1157_crit_edge ], [ 0, %cond.end1152.for.body1157_crit_edge ]
  %272 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool1159.not = icmp eq i32 %273, 0
  br i1 %tobool1159.not, label %for.body1157.cond.end1175_crit_edge, label %cond.false1171

for.body1157.cond.end1175_crit_edge:              ; preds = %for.body1157
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1175

cond.false1171:                                   ; preds = %for.body1157
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %274(i32 noundef %273) #5
  br label %cond.end1175

cond.end1175:                                     ; preds = %cond.false1171, %for.body1157.cond.end1175_crit_edge
  %275 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %port866, align 4
  %add1178 = add i32 %276, 4
  %and1179 = and i32 %add1178, 1048575
  %add1180 = or i32 %and1179, -18874368
  %277 = inttoptr i32 %add1180 to ptr
  %278 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %277) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  %arrayidx1187 = getelementptr i8, ptr %buf, i32 %k.22996
  %279 = ptrtoint ptr %arrayidx1187 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %arrayidx1187, align 1
  %inc1189 = add nuw nsw i32 %k.22996, 1
  %exitcond3004.not = icmp eq i32 %inc1189, %sub1154
  br i1 %exitcond3004.not, label %cond.end1175.do.body1191_crit_edge, label %cond.end1175.for.body1157_crit_edge

cond.end1175.for.body1157_crit_edge:              ; preds = %cond.end1175
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1157

cond.end1175.do.body1191_crit_edge:               ; preds = %cond.end1175
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1191

do.body1191:                                      ; preds = %cond.end1175.do.body1191_crit_edge, %cond.end1152.do.body1191_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %280 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %port866, align 4
  %add1195 = add i32 %281, 2
  %and1196 = and i32 %add1195, 1048575
  %add1197 = or i32 %and1196, -18874368
  %282 = inttoptr i32 %add1197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %282, i8 -84) #5, !srcloc !47
  %283 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool1200.not = icmp eq i32 %284, 0
  br i1 %tobool1200.not, label %do.body1191.do.body1217_crit_edge, label %cond.false1212

do.body1191.do.body1217_crit_edge:                ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1217

cond.false1212:                                   ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %285(i32 noundef %284) #5
  br label %do.body1217

do.body1217:                                      ; preds = %cond.false1212, %do.body1191.do.body1217_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %286 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %port866, align 4
  %add1221 = add i32 %287, 2
  %and1222 = and i32 %add1221, 1048575
  %add1223 = or i32 %and1222, -18874368
  %288 = inttoptr i32 %add1223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %288, i8 -92) #5, !srcloc !47
  %289 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool1226.not = icmp eq i32 %290, 0
  br i1 %tobool1226.not, label %do.body1217.cond.end1260_crit_edge, label %cond.false1238

do.body1217.cond.end1260_crit_edge:               ; preds = %do.body1217
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1260

cond.false1238:                                   ; preds = %do.body1217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %291(i32 noundef %290) #5
  %292 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %292)
  %.pr2985 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2985)
  %tobool1244.not = icmp eq i32 %.pr2985, 0
  br i1 %tobool1244.not, label %cond.false1238.cond.end1260_crit_edge, label %cond.false1256

cond.false1238.cond.end1260_crit_edge:            ; preds = %cond.false1238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1260

cond.false1256:                                   ; preds = %cond.false1238
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %293(i32 noundef %.pr2985) #5
  br label %cond.end1260

cond.end1260:                                     ; preds = %cond.false1256, %cond.false1238.cond.end1260_crit_edge, %do.body1217.cond.end1260_crit_edge
  %294 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %port866, align 4
  %add1263 = add i32 %295, 4
  %and1264 = and i32 %add1263, 1048575
  %add1265 = or i32 %and1264, -18874368
  %296 = inttoptr i32 %add1265 to ptr
  %297 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %296) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  %arrayidx1273 = getelementptr i8, ptr %buf, i32 %sub1154
  %298 = ptrtoint ptr %arrayidx1273 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %arrayidx1273, align 1
  %299 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool1275.not = icmp eq i32 %300, 0
  br i1 %tobool1275.not, label %cond.end1260.cond.end1291_crit_edge, label %cond.false1287

cond.end1260.cond.end1291_crit_edge:              ; preds = %cond.end1260
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1291

cond.false1287:                                   ; preds = %cond.end1260
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %301(i32 noundef %300) #5
  br label %cond.end1291

cond.end1291:                                     ; preds = %cond.false1287, %cond.end1260.cond.end1291_crit_edge
  %302 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %port866, align 4
  %add1294 = add i32 %303, 4
  %and1295 = and i32 %add1294, 1048575
  %add1296 = or i32 %and1295, -18874368
  %304 = inttoptr i32 %add1296 to ptr
  %305 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %304) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  %sub1303 = add i32 %count, -1
  %arrayidx1304 = getelementptr i8, ptr %buf, i32 %sub1303
  %306 = ptrtoint ptr %arrayidx1304 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %arrayidx1304, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %port866 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %port866, align 4
  %add1309 = add i32 %308, 2
  %and1310 = and i32 %add1309, 1048575
  %add1311 = or i32 %and1310, -18874368
  %309 = inttoptr i32 %add1311 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %309, i8 4) #5, !srcloc !47
  %310 = ptrtoint ptr %delay871 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %delay871, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool1314.not = icmp eq i32 %311, 0
  br i1 %tobool1314.not, label %cond.end1291.sw.epilog_crit_edge, label %cond.end1291.sw.epilog.sink.split_crit_edge

cond.end1291.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1291
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1291.sw.epilog_crit_edge:                 ; preds = %cond.end1291
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1332:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %port1335 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %312 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %port1335, align 4
  %add1336 = add i32 %313, 2
  %and1337 = and i32 %add1336, 1048575
  %add1338 = or i32 %and1337, -18874368
  %314 = inttoptr i32 %add1338 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %314, i8 4) #5, !srcloc !47
  %delay1340 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %315 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool1341.not = icmp eq i32 %316, 0
  br i1 %tobool1341.not, label %do.body1332.do.body1358_crit_edge, label %cond.false1353

do.body1332.do.body1358_crit_edge:                ; preds = %do.body1332
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1358

cond.false1353:                                   ; preds = %do.body1332
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %317(i32 noundef %316) #5
  br label %do.body1358

do.body1358:                                      ; preds = %cond.false1353, %do.body1332.do.body1358_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %318 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %port1335, align 4
  %and1363 = and i32 %319, 1048575
  %add1364 = or i32 %and1363, -18874368
  %320 = inttoptr i32 %add1364 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %320, i8 -1) #5, !srcloc !47
  %321 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool1367.not = icmp eq i32 %322, 0
  br i1 %tobool1367.not, label %do.body1358.do.body1384_crit_edge, label %cond.false1379

do.body1358.do.body1384_crit_edge:                ; preds = %do.body1358
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1384

cond.false1379:                                   ; preds = %do.body1358
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %323(i32 noundef %322) #5
  br label %do.body1384

do.body1384:                                      ; preds = %cond.false1379, %do.body1358.do.body1384_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %324 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %port1335, align 4
  %and1389 = and i32 %325, 1048575
  %add1390 = or i32 %and1389, -18874368
  %326 = inttoptr i32 %add1390 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 -1) #5, !srcloc !47
  %327 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool1393.not = icmp eq i32 %328, 0
  br i1 %tobool1393.not, label %do.body1384.do.body1410_crit_edge, label %cond.false1405

do.body1384.do.body1410_crit_edge:                ; preds = %do.body1384
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1410

cond.false1405:                                   ; preds = %do.body1384
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %329(i32 noundef %328) #5
  br label %do.body1410

do.body1410:                                      ; preds = %cond.false1405, %do.body1384.do.body1410_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %330 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %port1335, align 4
  %and1415 = and i32 %331, 1048575
  %add1416 = or i32 %and1415, -18874368
  %332 = inttoptr i32 %add1416 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 115) #5, !srcloc !47
  %333 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool1419.not = icmp eq i32 %334, 0
  br i1 %tobool1419.not, label %do.body1410.do.body1436_crit_edge, label %cond.false1431

do.body1410.do.body1436_crit_edge:                ; preds = %do.body1410
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1436

cond.false1431:                                   ; preds = %do.body1410
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %335(i32 noundef %334) #5
  br label %do.body1436

do.body1436:                                      ; preds = %cond.false1431, %do.body1410.do.body1436_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %336 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %port1335, align 4
  %and1441 = and i32 %337, 1048575
  %add1442 = or i32 %and1441, -18874368
  %338 = inttoptr i32 %add1442 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %338, i8 115) #5, !srcloc !47
  %339 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool1445.not = icmp eq i32 %340, 0
  br i1 %tobool1445.not, label %do.body1436.do.body1462_crit_edge, label %cond.false1457

do.body1436.do.body1462_crit_edge:                ; preds = %do.body1436
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1462

cond.false1457:                                   ; preds = %do.body1436
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %341(i32 noundef %340) #5
  br label %do.body1462

do.body1462:                                      ; preds = %cond.false1457, %do.body1436.do.body1462_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %342 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %port1335, align 4
  %and1467 = and i32 %343, 1048575
  %add1468 = or i32 %and1467, -18874368
  %344 = inttoptr i32 %add1468 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 -55) #5, !srcloc !47
  %345 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool1471.not = icmp eq i32 %346, 0
  br i1 %tobool1471.not, label %do.body1462.do.body1488_crit_edge, label %cond.false1483

do.body1462.do.body1488_crit_edge:                ; preds = %do.body1462
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1488

cond.false1483:                                   ; preds = %do.body1462
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %347(i32 noundef %346) #5
  br label %do.body1488

do.body1488:                                      ; preds = %cond.false1483, %do.body1462.do.body1488_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %348 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %port1335, align 4
  %and1493 = and i32 %349, 1048575
  %add1494 = or i32 %and1493, -18874368
  %350 = inttoptr i32 %add1494 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %350, i8 -55) #5, !srcloc !47
  %351 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool1497.not = icmp eq i32 %352, 0
  br i1 %tobool1497.not, label %do.body1488.do.body1514_crit_edge, label %cond.false1509

do.body1488.do.body1514_crit_edge:                ; preds = %do.body1488
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1514

cond.false1509:                                   ; preds = %do.body1488
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %353(i32 noundef %352) #5
  br label %do.body1514

do.body1514:                                      ; preds = %cond.false1509, %do.body1488.do.body1514_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  tail call void @arm_heavy_mb() #5
  %354 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %port1335, align 4
  %and1519 = and i32 %355, 1048575
  %add1520 = or i32 %and1519, -18874368
  %356 = inttoptr i32 %add1520 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %356, i8 38) #5, !srcloc !47
  %357 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool1523.not = icmp eq i32 %358, 0
  br i1 %tobool1523.not, label %do.body1514.do.body1540_crit_edge, label %cond.false1535

do.body1514.do.body1540_crit_edge:                ; preds = %do.body1514
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1540

cond.false1535:                                   ; preds = %do.body1514
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %359(i32 noundef %358) #5
  br label %do.body1540

do.body1540:                                      ; preds = %cond.false1535, %do.body1514.do.body1540_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  tail call void @arm_heavy_mb() #5
  %360 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %port1335, align 4
  %and1545 = and i32 %361, 1048575
  %add1546 = or i32 %and1545, -18874368
  %362 = inttoptr i32 %add1546 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %362, i8 38) #5, !srcloc !47
  %363 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool1549.not = icmp eq i32 %364, 0
  br i1 %tobool1549.not, label %do.body1540.do.body1566_crit_edge, label %cond.false1561

do.body1540.do.body1566_crit_edge:                ; preds = %do.body1540
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1566

cond.false1561:                                   ; preds = %do.body1540
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %365(i32 noundef %364) #5
  br label %do.body1566

do.body1566:                                      ; preds = %cond.false1561, %do.body1540.do.body1566_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  tail call void @arm_heavy_mb() #5
  %366 = trunc i32 %regr to i8
  %conv1570 = xor i8 %366, -128
  %367 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %port1335, align 4
  %and1573 = and i32 %368, 1048575
  %add1574 = or i32 %and1573, -18874368
  %369 = inttoptr i32 %add1574 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %369, i8 %conv1570) #5, !srcloc !47
  %370 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool1577.not = icmp eq i32 %371, 0
  br i1 %tobool1577.not, label %do.body1566.do.body1594_crit_edge, label %cond.false1589

do.body1566.do.body1594_crit_edge:                ; preds = %do.body1566
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1594

cond.false1589:                                   ; preds = %do.body1566
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %372 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %372(i32 noundef %371) #5
  br label %do.body1594

do.body1594:                                      ; preds = %cond.false1589, %do.body1566.do.body1594_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  tail call void @arm_heavy_mb() #5
  %373 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %port1335, align 4
  %and1601 = and i32 %374, 1048575
  %add1602 = or i32 %and1601, -18874368
  %375 = inttoptr i32 %add1602 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %375, i8 %conv1570) #5, !srcloc !47
  %376 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool1605.not = icmp eq i32 %377, 0
  br i1 %tobool1605.not, label %do.body1594.cond.end1621_crit_edge, label %cond.false1617

do.body1594.cond.end1621_crit_edge:               ; preds = %do.body1594
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1621

cond.false1617:                                   ; preds = %do.body1594
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %378 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %378(i32 noundef %377) #5
  br label %cond.end1621

cond.end1621:                                     ; preds = %cond.false1617, %do.body1594.cond.end1621_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp16242993 = icmp sgt i32 %count, 3
  br i1 %cmp16242993, label %for.body1626.preheader, label %cond.end1621.do.body1660_crit_edge

cond.end1621.do.body1660_crit_edge:               ; preds = %cond.end1621
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1660

for.body1626.preheader:                           ; preds = %cond.end1621
  %div30073010 = lshr i32 %count, 1
  %379 = add nsw i32 %div30073010, -2
  br label %for.body1626

for.body1626:                                     ; preds = %cond.end1644.for.body1626_crit_edge, %for.body1626.preheader
  %k.32994 = phi i32 [ %inc1658, %cond.end1644.for.body1626_crit_edge ], [ 0, %for.body1626.preheader ]
  %380 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool1628.not = icmp eq i32 %381, 0
  br i1 %tobool1628.not, label %for.body1626.cond.end1644_crit_edge, label %cond.false1640

for.body1626.cond.end1644_crit_edge:              ; preds = %for.body1626
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1644

cond.false1640:                                   ; preds = %for.body1626
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %382 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %382(i32 noundef %381) #5
  br label %cond.end1644

cond.end1644:                                     ; preds = %cond.false1640, %for.body1626.cond.end1644_crit_edge
  %383 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %port1335, align 4
  %add1647 = add i32 %384, 4
  %and1648 = and i32 %add1647, 1048575
  %add1649 = or i32 %and1648, -18874368
  %385 = inttoptr i32 %add1649 to ptr
  %386 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %385) #5, !srcloc !264
  %387 = tail call i16 @llvm.bswap.i16(i16 %386)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  %arrayidx1656 = getelementptr i16, ptr %buf, i32 %k.32994
  %388 = ptrtoint ptr %arrayidx1656 to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %387, ptr %arrayidx1656, align 2
  %inc1658 = add nuw nsw i32 %k.32994, 1
  %exitcond3003.not = icmp eq i32 %k.32994, %379
  br i1 %exitcond3003.not, label %cond.end1644.do.body1660_crit_edge, label %cond.end1644.for.body1626_crit_edge

cond.end1644.for.body1626_crit_edge:              ; preds = %cond.end1644
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body1626

cond.end1644.do.body1660_crit_edge:               ; preds = %cond.end1644
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1660

do.body1660:                                      ; preds = %cond.end1644.do.body1660_crit_edge, %cond.end1621.do.body1660_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %389 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %port1335, align 4
  %add1664 = add i32 %390, 2
  %and1665 = and i32 %add1664, 1048575
  %add1666 = or i32 %and1665, -18874368
  %391 = inttoptr i32 %add1666 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %391, i8 -84) #5, !srcloc !47
  %392 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool1669.not = icmp eq i32 %393, 0
  br i1 %tobool1669.not, label %do.body1660.do.body1686_crit_edge, label %cond.false1681

do.body1660.do.body1686_crit_edge:                ; preds = %do.body1660
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1686

cond.false1681:                                   ; preds = %do.body1660
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %394 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %394(i32 noundef %393) #5
  br label %do.body1686

do.body1686:                                      ; preds = %cond.false1681, %do.body1660.do.body1686_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void @arm_heavy_mb() #5
  %395 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %port1335, align 4
  %add1690 = add i32 %396, 2
  %and1691 = and i32 %add1690, 1048575
  %add1692 = or i32 %and1691, -18874368
  %397 = inttoptr i32 %add1692 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %397, i8 -92) #5, !srcloc !47
  %398 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool1695.not = icmp eq i32 %399, 0
  br i1 %tobool1695.not, label %do.body1686.cond.end1729_crit_edge, label %cond.false1707

do.body1686.cond.end1729_crit_edge:               ; preds = %do.body1686
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1729

cond.false1707:                                   ; preds = %do.body1686
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %400(i32 noundef %399) #5
  %401 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %401)
  %.pr2987 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2987)
  %tobool1713.not = icmp eq i32 %.pr2987, 0
  br i1 %tobool1713.not, label %cond.false1707.cond.end1729_crit_edge, label %cond.false1725

cond.false1707.cond.end1729_crit_edge:            ; preds = %cond.false1707
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1729

cond.false1725:                                   ; preds = %cond.false1707
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %402 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %402(i32 noundef %.pr2987) #5
  br label %cond.end1729

cond.end1729:                                     ; preds = %cond.false1725, %cond.false1707.cond.end1729_crit_edge, %do.body1686.cond.end1729_crit_edge
  %403 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %port1335, align 4
  %add1732 = add i32 %404, 4
  %and1733 = and i32 %add1732, 1048575
  %add1734 = or i32 %and1733, -18874368
  %405 = inttoptr i32 %add1734 to ptr
  %406 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %405) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  %sub1741 = add i32 %count, -2
  %arrayidx1742 = getelementptr i8, ptr %buf, i32 %sub1741
  %407 = ptrtoint ptr %arrayidx1742 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %406, ptr %arrayidx1742, align 1
  %408 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool1744.not = icmp eq i32 %409, 0
  br i1 %tobool1744.not, label %cond.end1729.cond.end1760_crit_edge, label %cond.false1756

cond.end1729.cond.end1760_crit_edge:              ; preds = %cond.end1729
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end1760

cond.false1756:                                   ; preds = %cond.end1729
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %410(i32 noundef %409) #5
  br label %cond.end1760

cond.end1760:                                     ; preds = %cond.false1756, %cond.end1729.cond.end1760_crit_edge
  %411 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %port1335, align 4
  %add1763 = add i32 %412, 4
  %and1764 = and i32 %add1763, 1048575
  %add1765 = or i32 %and1764, -18874368
  %413 = inttoptr i32 %add1765 to ptr
  %414 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %413) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  %sub1772 = add i32 %count, -1
  %arrayidx1773 = getelementptr i8, ptr %buf, i32 %sub1772
  %415 = ptrtoint ptr %arrayidx1773 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %414, ptr %arrayidx1773, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  tail call void @arm_heavy_mb() #5
  %416 = ptrtoint ptr %port1335 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %port1335, align 4
  %add1778 = add i32 %417, 2
  %and1779 = and i32 %add1778, 1048575
  %add1780 = or i32 %and1779, -18874368
  %418 = inttoptr i32 %add1780 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %418, i8 4) #5, !srcloc !47
  %419 = ptrtoint ptr %delay1340 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %delay1340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %420)
  %tobool1783.not = icmp eq i32 %420, 0
  br i1 %tobool1783.not, label %cond.end1760.sw.epilog_crit_edge, label %cond.end1760.sw.epilog.sink.split_crit_edge

cond.end1760.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end1760
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end1760.sw.epilog_crit_edge:                 ; preds = %cond.end1760
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body1801:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %port1804 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %421 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %port1804, align 4
  %add1805 = add i32 %422, 2
  %and1806 = and i32 %add1805, 1048575
  %add1807 = or i32 %and1806, -18874368
  %423 = inttoptr i32 %add1807 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %423, i8 4) #5, !srcloc !47
  %delay1809 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %424 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool1810.not = icmp eq i32 %425, 0
  br i1 %tobool1810.not, label %do.body1801.do.body1827_crit_edge, label %cond.false1822

do.body1801.do.body1827_crit_edge:                ; preds = %do.body1801
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1827

cond.false1822:                                   ; preds = %do.body1801
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %426 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %426(i32 noundef %425) #5
  br label %do.body1827

do.body1827:                                      ; preds = %cond.false1822, %do.body1801.do.body1827_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  tail call void @arm_heavy_mb() #5
  %427 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %port1804, align 4
  %and1832 = and i32 %428, 1048575
  %add1833 = or i32 %and1832, -18874368
  %429 = inttoptr i32 %add1833 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %429, i8 -1) #5, !srcloc !47
  %430 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool1836.not = icmp eq i32 %431, 0
  br i1 %tobool1836.not, label %do.body1827.do.body1853_crit_edge, label %cond.false1848

do.body1827.do.body1853_crit_edge:                ; preds = %do.body1827
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1853

cond.false1848:                                   ; preds = %do.body1827
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %432 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %432(i32 noundef %431) #5
  br label %do.body1853

do.body1853:                                      ; preds = %cond.false1848, %do.body1827.do.body1853_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %433 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %port1804, align 4
  %and1858 = and i32 %434, 1048575
  %add1859 = or i32 %and1858, -18874368
  %435 = inttoptr i32 %add1859 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %435, i8 -1) #5, !srcloc !47
  %436 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %tobool1862.not = icmp eq i32 %437, 0
  br i1 %tobool1862.not, label %do.body1853.do.body1879_crit_edge, label %cond.false1874

do.body1853.do.body1879_crit_edge:                ; preds = %do.body1853
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1879

cond.false1874:                                   ; preds = %do.body1853
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %438 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %438(i32 noundef %437) #5
  br label %do.body1879

do.body1879:                                      ; preds = %cond.false1874, %do.body1853.do.body1879_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %439 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %port1804, align 4
  %and1884 = and i32 %440, 1048575
  %add1885 = or i32 %and1884, -18874368
  %441 = inttoptr i32 %add1885 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %441, i8 115) #5, !srcloc !47
  %442 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %tobool1888.not = icmp eq i32 %443, 0
  br i1 %tobool1888.not, label %do.body1879.do.body1905_crit_edge, label %cond.false1900

do.body1879.do.body1905_crit_edge:                ; preds = %do.body1879
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1905

cond.false1900:                                   ; preds = %do.body1879
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %444 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %444(i32 noundef %443) #5
  br label %do.body1905

do.body1905:                                      ; preds = %cond.false1900, %do.body1879.do.body1905_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void @arm_heavy_mb() #5
  %445 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %port1804, align 4
  %and1910 = and i32 %446, 1048575
  %add1911 = or i32 %and1910, -18874368
  %447 = inttoptr i32 %add1911 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %447, i8 115) #5, !srcloc !47
  %448 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %449)
  %tobool1914.not = icmp eq i32 %449, 0
  br i1 %tobool1914.not, label %do.body1905.do.body1931_crit_edge, label %cond.false1926

do.body1905.do.body1931_crit_edge:                ; preds = %do.body1905
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1931

cond.false1926:                                   ; preds = %do.body1905
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %450 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %450(i32 noundef %449) #5
  br label %do.body1931

do.body1931:                                      ; preds = %cond.false1926, %do.body1905.do.body1931_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void @arm_heavy_mb() #5
  %451 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %port1804, align 4
  %and1936 = and i32 %452, 1048575
  %add1937 = or i32 %and1936, -18874368
  %453 = inttoptr i32 %add1937 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %453, i8 -55) #5, !srcloc !47
  %454 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %tobool1940.not = icmp eq i32 %455, 0
  br i1 %tobool1940.not, label %do.body1931.do.body1957_crit_edge, label %cond.false1952

do.body1931.do.body1957_crit_edge:                ; preds = %do.body1931
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1957

cond.false1952:                                   ; preds = %do.body1931
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %456 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %456(i32 noundef %455) #5
  br label %do.body1957

do.body1957:                                      ; preds = %cond.false1952, %do.body1931.do.body1957_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void @arm_heavy_mb() #5
  %457 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %port1804, align 4
  %and1962 = and i32 %458, 1048575
  %add1963 = or i32 %and1962, -18874368
  %459 = inttoptr i32 %add1963 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %459, i8 -55) #5, !srcloc !47
  %460 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %461)
  %tobool1966.not = icmp eq i32 %461, 0
  br i1 %tobool1966.not, label %do.body1957.do.body1983_crit_edge, label %cond.false1978

do.body1957.do.body1983_crit_edge:                ; preds = %do.body1957
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body1983

cond.false1978:                                   ; preds = %do.body1957
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %462 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %462(i32 noundef %461) #5
  br label %do.body1983

do.body1983:                                      ; preds = %cond.false1978, %do.body1957.do.body1983_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  tail call void @arm_heavy_mb() #5
  %463 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %port1804, align 4
  %and1988 = and i32 %464, 1048575
  %add1989 = or i32 %and1988, -18874368
  %465 = inttoptr i32 %add1989 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %465, i8 38) #5, !srcloc !47
  %466 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %tobool1992.not = icmp eq i32 %467, 0
  br i1 %tobool1992.not, label %do.body1983.do.body2009_crit_edge, label %cond.false2004

do.body1983.do.body2009_crit_edge:                ; preds = %do.body1983
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2009

cond.false2004:                                   ; preds = %do.body1983
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %468 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %468(i32 noundef %467) #5
  br label %do.body2009

do.body2009:                                      ; preds = %cond.false2004, %do.body1983.do.body2009_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void @arm_heavy_mb() #5
  %469 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %port1804, align 4
  %and2014 = and i32 %470, 1048575
  %add2015 = or i32 %and2014, -18874368
  %471 = inttoptr i32 %add2015 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %471, i8 38) #5, !srcloc !47
  %472 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %473)
  %tobool2018.not = icmp eq i32 %473, 0
  br i1 %tobool2018.not, label %do.body2009.do.body2035_crit_edge, label %cond.false2030

do.body2009.do.body2035_crit_edge:                ; preds = %do.body2009
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2035

cond.false2030:                                   ; preds = %do.body2009
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %474 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %474(i32 noundef %473) #5
  br label %do.body2035

do.body2035:                                      ; preds = %cond.false2030, %do.body2009.do.body2035_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  tail call void @arm_heavy_mb() #5
  %475 = trunc i32 %regr to i8
  %conv2039 = xor i8 %475, -128
  %476 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %port1804, align 4
  %and2042 = and i32 %477, 1048575
  %add2043 = or i32 %and2042, -18874368
  %478 = inttoptr i32 %add2043 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %478, i8 %conv2039) #5, !srcloc !47
  %479 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %tobool2046.not = icmp eq i32 %480, 0
  br i1 %tobool2046.not, label %do.body2035.do.body2063_crit_edge, label %cond.false2058

do.body2035.do.body2063_crit_edge:                ; preds = %do.body2035
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2063

cond.false2058:                                   ; preds = %do.body2035
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %481 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %481(i32 noundef %480) #5
  br label %do.body2063

do.body2063:                                      ; preds = %cond.false2058, %do.body2035.do.body2063_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void @arm_heavy_mb() #5
  %482 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %port1804, align 4
  %and2070 = and i32 %483, 1048575
  %add2071 = or i32 %and2070, -18874368
  %484 = inttoptr i32 %add2071 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %484, i8 %conv2039) #5, !srcloc !47
  %485 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %tobool2074.not = icmp eq i32 %486, 0
  br i1 %tobool2074.not, label %do.body2063.cond.end2090_crit_edge, label %cond.false2086

do.body2063.cond.end2090_crit_edge:               ; preds = %do.body2063
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2090

cond.false2086:                                   ; preds = %do.body2063
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %487 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %487(i32 noundef %486) #5
  br label %cond.end2090

cond.end2090:                                     ; preds = %cond.false2086, %do.body2063.cond.end2090_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp20942991 = icmp sgt i32 %count, 7
  br i1 %cmp20942991, label %for.body2096.preheader, label %cond.end2090.for.end2127_crit_edge

cond.end2090.for.end2127_crit_edge:               ; preds = %cond.end2090
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end2127

for.body2096.preheader:                           ; preds = %cond.end2090
  %div209230083009 = lshr i32 %count, 2
  %488 = add nsw i32 %div209230083009, -2
  br label %for.body2096

for.body2096:                                     ; preds = %cond.end2114.for.body2096_crit_edge, %for.body2096.preheader
  %k.42992 = phi i32 [ %inc2126, %cond.end2114.for.body2096_crit_edge ], [ 0, %for.body2096.preheader ]
  %489 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool2098.not = icmp eq i32 %490, 0
  br i1 %tobool2098.not, label %for.body2096.cond.end2114_crit_edge, label %cond.false2110

for.body2096.cond.end2114_crit_edge:              ; preds = %for.body2096
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2114

cond.false2110:                                   ; preds = %for.body2096
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %491 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %491(i32 noundef %490) #5
  br label %cond.end2114

cond.end2114:                                     ; preds = %cond.false2110, %for.body2096.cond.end2114_crit_edge
  %492 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %port1804, align 4
  %add2117 = add i32 %493, 4
  %and2118 = and i32 %add2117, 1048575
  %add2119 = or i32 %and2118, -18874368
  %494 = inttoptr i32 %add2119 to ptr
  %495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %494) #5, !srcloc !282
  %496 = tail call i32 @llvm.bswap.i32(i32 %495)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  %arrayidx2124 = getelementptr i32, ptr %buf, i32 %k.42992
  %497 = ptrtoint ptr %arrayidx2124 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %496, ptr %arrayidx2124, align 4
  %inc2126 = add nuw nsw i32 %k.42992, 1
  %exitcond.not = icmp eq i32 %k.42992, %488
  br i1 %exitcond.not, label %cond.end2114.for.end2127_crit_edge, label %cond.end2114.for.body2096_crit_edge

cond.end2114.for.body2096_crit_edge:              ; preds = %cond.end2114
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body2096

cond.end2114.for.end2127_crit_edge:               ; preds = %cond.end2114
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end2127

for.end2127:                                      ; preds = %cond.end2114.for.end2127_crit_edge, %cond.end2090.for.end2127_crit_edge
  %498 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %tobool2129.not = icmp eq i32 %499, 0
  br i1 %tobool2129.not, label %for.end2127.cond.end2145_crit_edge, label %cond.false2141

for.end2127.cond.end2145_crit_edge:               ; preds = %for.end2127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2145

cond.false2141:                                   ; preds = %for.end2127
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %500 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %500(i32 noundef %499) #5
  br label %cond.end2145

cond.end2145:                                     ; preds = %cond.false2141, %for.end2127.cond.end2145_crit_edge
  %501 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %port1804, align 4
  %add2148 = add i32 %502, 4
  %and2149 = and i32 %add2148, 1048575
  %add2150 = or i32 %and2149, -18874368
  %503 = inttoptr i32 %add2150 to ptr
  %504 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %503) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  %sub2157 = add i32 %count, -4
  %arrayidx2158 = getelementptr i8, ptr %buf, i32 %sub2157
  %505 = ptrtoint ptr %arrayidx2158 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 %504, ptr %arrayidx2158, align 1
  %506 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %507)
  %tobool2160.not = icmp eq i32 %507, 0
  br i1 %tobool2160.not, label %cond.end2145.cond.end2176_crit_edge, label %cond.false2172

cond.end2145.cond.end2176_crit_edge:              ; preds = %cond.end2145
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2176

cond.false2172:                                   ; preds = %cond.end2145
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %508 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %508(i32 noundef %507) #5
  br label %cond.end2176

cond.end2176:                                     ; preds = %cond.false2172, %cond.end2145.cond.end2176_crit_edge
  %509 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %port1804, align 4
  %add2179 = add i32 %510, 4
  %and2180 = and i32 %add2179, 1048575
  %add2181 = or i32 %and2180, -18874368
  %511 = inttoptr i32 %add2181 to ptr
  %512 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %511) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  %sub2188 = add i32 %count, -3
  %arrayidx2189 = getelementptr i8, ptr %buf, i32 %sub2188
  %513 = ptrtoint ptr %arrayidx2189 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 %512, ptr %arrayidx2189, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !286
  tail call void @arm_heavy_mb() #5
  %514 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %port1804, align 4
  %add2194 = add i32 %515, 2
  %and2195 = and i32 %add2194, 1048575
  %add2196 = or i32 %and2195, -18874368
  %516 = inttoptr i32 %add2196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %516, i8 -84) #5, !srcloc !47
  %517 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %518)
  %tobool2199.not = icmp eq i32 %518, 0
  br i1 %tobool2199.not, label %cond.end2176.do.body2216_crit_edge, label %cond.false2211

cond.end2176.do.body2216_crit_edge:               ; preds = %cond.end2176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2216

cond.false2211:                                   ; preds = %cond.end2176
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %519 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %519(i32 noundef %518) #5
  br label %do.body2216

do.body2216:                                      ; preds = %cond.false2211, %cond.end2176.do.body2216_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  tail call void @arm_heavy_mb() #5
  %520 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %port1804, align 4
  %add2220 = add i32 %521, 2
  %and2221 = and i32 %add2220, 1048575
  %add2222 = or i32 %and2221, -18874368
  %522 = inttoptr i32 %add2222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %522, i8 -92) #5, !srcloc !47
  %523 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %tobool2225.not = icmp eq i32 %524, 0
  br i1 %tobool2225.not, label %do.body2216.cond.end2259_crit_edge, label %cond.false2237

do.body2216.cond.end2259_crit_edge:               ; preds = %do.body2216
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2259

cond.false2237:                                   ; preds = %do.body2216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %525 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %525(i32 noundef %524) #5
  %526 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %526)
  %.pr2989 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr2989)
  %tobool2243.not = icmp eq i32 %.pr2989, 0
  br i1 %tobool2243.not, label %cond.false2237.cond.end2259_crit_edge, label %cond.false2255

cond.false2237.cond.end2259_crit_edge:            ; preds = %cond.false2237
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2259

cond.false2255:                                   ; preds = %cond.false2237
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %527 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %527(i32 noundef %.pr2989) #5
  br label %cond.end2259

cond.end2259:                                     ; preds = %cond.false2255, %cond.false2237.cond.end2259_crit_edge, %do.body2216.cond.end2259_crit_edge
  %528 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %port1804, align 4
  %add2262 = add i32 %529, 4
  %and2263 = and i32 %add2262, 1048575
  %add2264 = or i32 %and2263, -18874368
  %530 = inttoptr i32 %add2264 to ptr
  %531 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %530) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !288
  %sub2271 = add i32 %count, -2
  %arrayidx2272 = getelementptr i8, ptr %buf, i32 %sub2271
  %532 = ptrtoint ptr %arrayidx2272 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %531, ptr %arrayidx2272, align 1
  %533 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %534)
  %tobool2274.not = icmp eq i32 %534, 0
  br i1 %tobool2274.not, label %cond.end2259.cond.end2290_crit_edge, label %cond.false2286

cond.end2259.cond.end2290_crit_edge:              ; preds = %cond.end2259
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end2290

cond.false2286:                                   ; preds = %cond.end2259
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %535 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %535(i32 noundef %534) #5
  br label %cond.end2290

cond.end2290:                                     ; preds = %cond.false2286, %cond.end2259.cond.end2290_crit_edge
  %536 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %port1804, align 4
  %add2293 = add i32 %537, 4
  %and2294 = and i32 %add2293, 1048575
  %add2295 = or i32 %and2294, -18874368
  %538 = inttoptr i32 %add2295 to ptr
  %539 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %538) #5, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !289
  %sub2302 = add i32 %count, -1
  %arrayidx2303 = getelementptr i8, ptr %buf, i32 %sub2302
  %540 = ptrtoint ptr %arrayidx2303 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %539, ptr %arrayidx2303, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !290
  tail call void @arm_heavy_mb() #5
  %541 = ptrtoint ptr %port1804 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %port1804, align 4
  %add2308 = add i32 %542, 2
  %and2309 = and i32 %add2308, 1048575
  %add2310 = or i32 %and2309, -18874368
  %543 = inttoptr i32 %add2310 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %543, i8 4) #5, !srcloc !47
  %544 = ptrtoint ptr %delay1809 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %delay1809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %545)
  %tobool2313.not = icmp eq i32 %545, 0
  br i1 %tobool2313.not, label %cond.end2290.sw.epilog_crit_edge, label %cond.end2290.sw.epilog.sink.split_crit_edge

cond.end2290.sw.epilog.sink.split_crit_edge:      ; preds = %cond.end2290
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

cond.end2290.sw.epilog_crit_edge:                 ; preds = %cond.end2290
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %cond.end2290.sw.epilog.sink.split_crit_edge, %cond.end1760.sw.epilog.sink.split_crit_edge, %cond.end1291.sw.epilog.sink.split_crit_edge, %do.body836.sw.epilog.sink.split_crit_edge, %do.body376.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %100, %do.body376.sw.epilog.sink.split_crit_edge ], [ %204, %do.body836.sw.epilog.sink.split_crit_edge ], [ %311, %cond.end1291.sw.epilog.sink.split_crit_edge ], [ %420, %cond.end1760.sw.epilog.sink.split_crit_edge ], [ %545, %cond.end2290.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %546 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %546(i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end2290.sw.epilog_crit_edge, %cond.end1760.sw.epilog_crit_edge, %cond.end1291.sw.epilog_crit_edge, %do.body836.sw.epilog_crit_edge, %do.body376.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/friq.c", i32 274, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_friq__162_275_friq_init6, !4, !"__initcall__kmod_friq__162_275_friq_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/friq.c", i32 275, i32 1}
!5 = !{ptr @__exitcall_friq_exit, !6, !"__exitcall_friq_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/friq.c", i32 276, i32 1}
!7 = !{ptr @friq, !8, !"friq", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/friq.c", i32 246, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/friq.c", i32 49, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/friq.c", i32 211, i32 13}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @friq_test_proto._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @friq_test_proto._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/friq.c", i32 221, i32 36}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/paride/friq.c", i32 221, i32 44}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/friq.c", i32 222, i32 8}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/paride/friq.c", i32 222, i32 16}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/friq.c", i32 222, i32 25}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/friq.c", i32 224, i32 9}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @friq_log_adapter._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @friq_log_adapter._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/friq.c", i32 226, i32 9}
!35 = !{ptr @friq_log_adapter._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @friq_log_adapter._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2152122251}
!47 = !{i64 4534589}
!48 = !{i64 2152123270}
!49 = !{i64 2152124289}
!50 = !{i64 2152125308}
!51 = !{i64 2152126327}
!52 = !{i64 2152127346}
!53 = !{i64 2152128365}
!54 = !{i64 2152129384}
!55 = !{i64 2152130403}
!56 = !{i64 2152131413}
!57 = !{i64 2152132423}
!58 = !{i64 2152133439}
!59 = !{i64 2152134449}
!60 = !{i64 2152135459}
!61 = !{i64 2152136469}
!62 = !{i64 2152137479}
!63 = !{i64 2152106004}
!64 = !{i64 2152107023}
!65 = !{i64 2152108042}
!66 = !{i64 2152109061}
!67 = !{i64 2152110080}
!68 = !{i64 2152111099}
!69 = !{i64 2152112118}
!70 = !{i64 2152113137}
!71 = !{i64 2152114156}
!72 = !{i64 2152115166}
!73 = !{i64 2152116176}
!74 = !{i64 2152117186}
!75 = !{i64 4534984}
!76 = !{i64 2152118881}
!77 = !{i64 2152119149}
!78 = !{i64 2152120844}
!79 = !{i64 2152121112}
!80 = !{i64 2152230694}
!81 = !{i64 2152231713}
!82 = !{i64 2152232732}
!83 = !{i64 2152233751}
!84 = !{i64 2152234770}
!85 = !{i64 2152235789}
!86 = !{i64 2152236808}
!87 = !{i64 2152237827}
!88 = !{i64 2152238846}
!89 = !{i64 2152239856}
!90 = !{i64 2152240866}
!91 = !{i64 2152241876}
!92 = !{i64 2152242901}
!93 = !{i64 2152243911}
!94 = !{i64 2152244921}
!95 = !{i64 2152245931}
!96 = !{i64 2152247047}
!97 = !{i64 2152248066}
!98 = !{i64 2152249085}
!99 = !{i64 2152250104}
!100 = !{i64 2152251123}
!101 = !{i64 2152252142}
!102 = !{i64 2152253161}
!103 = !{i64 2152254180}
!104 = !{i64 2152255199}
!105 = !{i64 2152256218}
!106 = !{i64 2152257237}
!107 = !{i64 2152258247}
!108 = !{i64 2152259272}
!109 = !{i64 2152260282}
!110 = !{i64 2152261398}
!111 = !{i64 2152262417}
!112 = !{i64 2152263436}
!113 = !{i64 2152264455}
!114 = !{i64 2152265474}
!115 = !{i64 2152266493}
!116 = !{i64 2152267512}
!117 = !{i64 2152268531}
!118 = !{i64 2152269550}
!119 = !{i64 2152270569}
!120 = !{i64 2152271588}
!121 = !{i64 2152272598}
!122 = !{i64 2152273649}
!123 = !{i64 4534166}
!124 = !{i64 2152274777}
!125 = !{i64 2152275893}
!126 = !{i64 2152276912}
!127 = !{i64 2152277931}
!128 = !{i64 2152278950}
!129 = !{i64 2152279969}
!130 = !{i64 2152280988}
!131 = !{i64 2152282007}
!132 = !{i64 2152283026}
!133 = !{i64 2152284045}
!134 = !{i64 2152285064}
!135 = !{i64 2152286083}
!136 = !{i64 2152287093}
!137 = !{i64 2152288144}
!138 = !{i64 4534786}
!139 = !{i64 2152289272}
!140 = !{i64 2152290967}
!141 = !{i64 2152291920}
!142 = !{i64 2152292188}
!143 = !{i64 2152293304}
!144 = !{i64 2152294323}
!145 = !{i64 2152295342}
!146 = !{i64 2152296361}
!147 = !{i64 2152297380}
!148 = !{i64 2152298399}
!149 = !{i64 2152299418}
!150 = !{i64 2152300437}
!151 = !{i64 2152301456}
!152 = !{i64 2152302475}
!153 = !{i64 2152303494}
!154 = !{i64 2152304537}
!155 = !{i64 2152305580}
!156 = !{i64 2152307275}
!157 = !{i64 2152307552}
!158 = !{i64 2152309210}
!159 = !{i64 2152310229}
!160 = !{i64 2152311248}
!161 = !{i64 2152312267}
!162 = !{i64 2152313286}
!163 = !{i64 2152314305}
!164 = !{i64 2152315324}
!165 = !{i64 2152316343}
!166 = !{i64 2152317362}
!167 = !{i64 2152318381}
!168 = !{i64 2152319400}
!169 = !{i64 2152320991}
!170 = !{i64 2152326616}
!171 = !{i64 2152327635}
!172 = !{i64 2152328654}
!173 = !{i64 2152329673}
!174 = !{i64 2152330692}
!175 = !{i64 2152331711}
!176 = !{i64 2152332730}
!177 = !{i64 2152333749}
!178 = !{i64 2152334768}
!179 = !{i64 2152335787}
!180 = !{i64 2152336806}
!181 = !{i64 2152337922}
!182 = !{i64 2152338941}
!183 = !{i64 2152339960}
!184 = !{i64 2152340979}
!185 = !{i64 2152341998}
!186 = !{i64 2152343017}
!187 = !{i64 2152344036}
!188 = !{i64 2152345055}
!189 = !{i64 2152346074}
!190 = !{i64 2152347093}
!191 = !{i64 2152348112}
!192 = !{i64 2152349228}
!193 = !{i64 2152350247}
!194 = !{i64 2152351266}
!195 = !{i64 2152352285}
!196 = !{i64 2152353304}
!197 = !{i64 2152354323}
!198 = !{i64 2152355342}
!199 = !{i64 2152356361}
!200 = !{i64 2152357380}
!201 = !{i64 2152358399}
!202 = !{i64 2152359418}
!203 = !{i64 2152138595}
!204 = !{i64 2152139614}
!205 = !{i64 2152144694}
!206 = !{i64 2152145713}
!207 = !{i64 2152146732}
!208 = !{i64 2152147751}
!209 = !{i64 2152148770}
!210 = !{i64 2152149789}
!211 = !{i64 2152150808}
!212 = !{i64 2152151827}
!213 = !{i64 2152152846}
!214 = !{i64 2152153856}
!215 = !{i64 2152155551}
!216 = !{i64 2152155819}
!217 = !{i64 2152157514}
!218 = !{i64 2152157811}
!219 = !{i64 2152158937}
!220 = !{i64 2152159956}
!221 = !{i64 2152160975}
!222 = !{i64 2152161994}
!223 = !{i64 2152163013}
!224 = !{i64 2152164032}
!225 = !{i64 2152165051}
!226 = !{i64 2152166070}
!227 = !{i64 2152167089}
!228 = !{i64 2152168123}
!229 = !{i64 2152169157}
!230 = !{i64 2152170176}
!231 = !{i64 2152171210}
!232 = !{i64 2152172905}
!233 = !{i64 2152173182}
!234 = !{i64 2152174201}
!235 = !{i64 2152175211}
!236 = !{i64 2152176337}
!237 = !{i64 2152177356}
!238 = !{i64 2152178375}
!239 = !{i64 2152179394}
!240 = !{i64 2152180413}
!241 = !{i64 2152181432}
!242 = !{i64 2152182451}
!243 = !{i64 2152183470}
!244 = !{i64 2152184489}
!245 = !{i64 2152185523}
!246 = !{i64 2152186557}
!247 = !{i64 2152188252}
!248 = !{i64 2152188529}
!249 = !{i64 2152189548}
!250 = !{i64 2152191243}
!251 = !{i64 2152192196}
!252 = !{i64 2152192464}
!253 = !{i64 2152193590}
!254 = !{i64 2152194609}
!255 = !{i64 2152195628}
!256 = !{i64 2152196647}
!257 = !{i64 2152197666}
!258 = !{i64 2152198685}
!259 = !{i64 2152199704}
!260 = !{i64 2152200723}
!261 = !{i64 2152201742}
!262 = !{i64 2152202776}
!263 = !{i64 2152203810}
!264 = !{i64 4534366}
!265 = !{i64 2152205857}
!266 = !{i64 2152206134}
!267 = !{i64 2152207153}
!268 = !{i64 2152208848}
!269 = !{i64 2152209801}
!270 = !{i64 2152210069}
!271 = !{i64 2152211195}
!272 = !{i64 2152212214}
!273 = !{i64 2152213233}
!274 = !{i64 2152214252}
!275 = !{i64 2152215271}
!276 = !{i64 2152216290}
!277 = !{i64 2152217309}
!278 = !{i64 2152218328}
!279 = !{i64 2152219347}
!280 = !{i64 2152220381}
!281 = !{i64 2152221415}
!282 = !{i64 4535204}
!283 = !{i64 2152223466}
!284 = !{i64 2152224419}
!285 = !{i64 2152225372}
!286 = !{i64 2152225649}
!287 = !{i64 2152226668}
!288 = !{i64 2152228363}
!289 = !{i64 2152229316}
!290 = !{i64 2152229584}
