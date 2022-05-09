; ModuleID = '/llk/IR_all_yes/drivers/block/paride/aten.c_pt.bc'
source_filename = "../drivers/block/paride/aten.c"
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

@aten = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"aten\00\00\00\00", i32 0, i32 2, i32 2, i32 1, i32 1, ptr @aten_write_regr, ptr @aten_read_regr, ptr @aten_write_block, ptr @aten_read_block, ptr @aten_connect, ptr @aten_disconnect, ptr null, ptr null, ptr null, ptr @aten_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"aten.file=drivers/block/paride/aten\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"aten.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_aten__162_161_aten_init6 = internal global ptr @aten_init, section ".initcall6.init", align 4
@__exitcall_aten_exit = internal global ptr @aten_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 32], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@__const.aten_log_adapter.mode_string = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.1], align 4
@aten_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: aten %s, ATEN EH-100 at 0x%x, \00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aten_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/aten.c\00", [36 x i8] zeroinitializer }, align 32
@aten_log_adapter._entry_ptr = internal global ptr @aten_log_adapter._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@aten_log_adapter._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mode %d (%s), delay %d\0A\00", [40 x i8] zeroinitializer }, align 32
@aten_log_adapter._entry_ptr.8 = internal global ptr @aten_log_adapter._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [5 x i8] c"aten\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 134, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 36, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 125, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 125, i32 44 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 127, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [31 x i8] c"../drivers/block/paride/aten.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 129, i32 9 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_aten_exit, ptr @__initcall__kmod_aten__162_161_aten_init6, ptr @aten_exit, ptr @aten_log_adapter._entry, ptr @aten_log_adapter._entry.6, ptr @aten_log_adapter._entry_ptr, ptr @aten_log_adapter._entry_ptr.8, ptr @aten, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aten to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aten_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aten_log_adapter._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aten_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @paride_unregister(ptr noundef nonnull @aten) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aten_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @aten) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aten_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %2 = trunc i32 %add to i8
  %conv = xor i8 %2, -128
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #4, !srcloc !36
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %cond.false10

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

cond.false10:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #4
  br label %do.body15

do.body15:                                        ; preds = %cond.false10, %entry.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add19 = add i32 %10, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %11 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 14) #4, !srcloc !36
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %do.body15.do.body41_crit_edge, label %cond.false36

do.body15.do.body41_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

cond.false36:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %13) #4
  br label %do.body41

do.body41:                                        ; preds = %cond.false36, %do.body15.do.body41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add45 = add i32 %16, 2
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %17 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 6) #4, !srcloc !36
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool50.not = icmp eq i32 %19, 0
  br i1 %tobool50.not, label %do.body41.do.body67_crit_edge, label %cond.false62

do.body41.do.body67_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body67

cond.false62:                                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  br label %do.body67

do.body67:                                        ; preds = %cond.false62, %do.body41.do.body67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %conv70 = trunc i32 %val to i8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and73 = and i32 %22, 1048575
  %add74 = or i32 %and73, -18874368
  %23 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv70) #4, !srcloc !36
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool77.not = icmp eq i32 %25, 0
  br i1 %tobool77.not, label %do.body67.do.body94_crit_edge, label %cond.false89

do.body67.do.body94_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body94

cond.false89:                                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #4
  br label %do.body94

do.body94:                                        ; preds = %cond.false89, %do.body67.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add98 = add i32 %28, 2
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %29 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 7) #4, !srcloc !36
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool103.not = icmp eq i32 %31, 0
  br i1 %tobool103.not, label %do.body94.do.body120_crit_edge, label %cond.false115

do.body94.do.body120_crit_edge:                   ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body120

cond.false115:                                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #4
  br label %do.body120

do.body120:                                       ; preds = %cond.false115, %do.body94.do.body120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add124 = add i32 %34, 2
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %35 = inttoptr i32 %add126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 6) #4, !srcloc !36
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool129.not = icmp eq i32 %37, 0
  br i1 %tobool129.not, label %do.body120.do.body146_crit_edge, label %cond.false141

do.body120.do.body146_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body146

cond.false141:                                    ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #4
  br label %do.body146

do.body146:                                       ; preds = %cond.false141, %do.body120.do.body146_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add150 = add i32 %40, 2
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %41 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 12) #4, !srcloc !36
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool155.not = icmp eq i32 %43, 0
  br i1 %tobool155.not, label %do.body146.cond.end171_crit_edge, label %cond.false167

do.body146.cond.end171_crit_edge:                 ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end171

cond.false167:                                    ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #4
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false167, %do.body146.cond.end171_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aten_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %regr, 64
  %add1 = add i32 %add, %1
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb253
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %add1 to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and = and i32 %6, 1048575
  %add3 = or i32 %and, -18874368
  %7 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #4, !srcloc !36
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.do.body15_crit_edge, label %cond.false10

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

cond.false10:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #4
  br label %do.body15

do.body15:                                        ; preds = %cond.false10, %do.body.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add19 = add i32 %12, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %13 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 14) #4, !srcloc !36
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %do.body15.do.body41_crit_edge, label %cond.false36

do.body15.do.body41_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

cond.false36:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #4
  br label %do.body41

do.body41:                                        ; preds = %cond.false36, %do.body15.do.body41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add45 = add i32 %18, 2
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %19 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 6) #4, !srcloc !36
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool50.not = icmp eq i32 %21, 0
  br i1 %tobool50.not, label %do.body41.do.body67_crit_edge, label %cond.false62

do.body41.do.body67_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body67

cond.false62:                                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #4
  br label %do.body67

do.body67:                                        ; preds = %cond.false62, %do.body41.do.body67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add71 = add i32 %24, 2
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %25 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 7) #4, !srcloc !36
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool76.not = icmp eq i32 %27, 0
  br i1 %tobool76.not, label %do.body67.do.body93_crit_edge, label %cond.false88

do.body67.do.body93_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body93

cond.false88:                                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #4
  br label %do.body93

do.body93:                                        ; preds = %cond.false88, %do.body67.do.body93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add97 = add i32 %30, 2
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %31 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 6) #4, !srcloc !36
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool102.not = icmp eq i32 %33, 0
  br i1 %tobool102.not, label %do.body93.do.body119_crit_edge, label %cond.false114

do.body93.do.body119_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body119

cond.false114:                                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #4
  br label %do.body119

do.body119:                                       ; preds = %cond.false114, %do.body93.do.body119_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add123 = add i32 %36, 2
  %and124 = and i32 %add123, 1048575
  %add125 = or i32 %and124, -18874368
  %37 = inttoptr i32 %add125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #4, !srcloc !36
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool128.not = icmp eq i32 %39, 0
  br i1 %tobool128.not, label %do.body119.cond.end162_crit_edge, label %cond.false140

do.body119.cond.end162_crit_edge:                 ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end162

cond.false140:                                    ; preds = %do.body119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #4
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool146.not = icmp eq i32 %.pr, 0
  br i1 %tobool146.not, label %cond.false140.cond.end162_crit_edge, label %cond.false158

cond.false140.cond.end162_crit_edge:              ; preds = %cond.false140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end162

cond.false158:                                    ; preds = %cond.false140
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %.pr) #4
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false158, %cond.false140.cond.end162_crit_edge, %do.body119.cond.end162_crit_edge
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add164 = add i32 %44, 1
  %and165 = and i32 %add164, 1048575
  %add166 = or i32 %and165, -18874368
  %45 = inttoptr i32 %add166 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %and176 = and i32 %48, 1048575
  %add177 = or i32 %and176, -18874368
  %49 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 16) #4, !srcloc !36
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool180.not = icmp eq i32 %51, 0
  br i1 %tobool180.not, label %cond.end162.cond.end214_crit_edge, label %cond.false192

cond.end162.cond.end214_crit_edge:                ; preds = %cond.end162
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end214

cond.false192:                                    ; preds = %cond.end162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #4
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr664 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr664)
  %tobool198.not = icmp eq i32 %.pr664, 0
  br i1 %tobool198.not, label %cond.false192.cond.end214_crit_edge, label %cond.false210

cond.false192.cond.end214_crit_edge:              ; preds = %cond.false192
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end214

cond.false210:                                    ; preds = %cond.false192
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %.pr664) #4
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false210, %cond.false192.cond.end214_crit_edge, %cond.end162.cond.end214_crit_edge
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add217 = add i32 %56, 1
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %57 = inttoptr i32 %add219 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add229 = add i32 %60, 2
  %and230 = and i32 %add229, 1048575
  %add231 = or i32 %and230, -18874368
  %61 = inttoptr i32 %add231 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 12) #4, !srcloc !36
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool234.not = icmp eq i32 %63, 0
  br i1 %tobool234.not, label %cond.end214.cond.end250_crit_edge, label %cond.false246

cond.end214.cond.end250_crit_edge:                ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end250

cond.false246:                                    ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %63) #4
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false246, %cond.end214.cond.end250_crit_edge
  %65 = lshr i8 %46, 4
  %66 = and i8 %58, -16
  %or662 = or i8 %66, %65
  %67 = xor i8 %or662, -120
  %xor = zext i8 %67 to i32
  br label %cleanup

sw.bb253:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %68 = trunc i32 %add1 to i8
  %conv258 = or i8 %68, 16
  %port259 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %69 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port259, align 4
  %and261 = and i32 %70, 1048575
  %add262 = or i32 %and261, -18874368
  %71 = inttoptr i32 %add262 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %conv258) #4, !srcloc !36
  %delay264 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %72 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool265.not = icmp eq i32 %73, 0
  br i1 %tobool265.not, label %sw.bb253.do.body282_crit_edge, label %cond.false277

sw.bb253.do.body282_crit_edge:                    ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body282

cond.false277:                                    ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #4
  br label %do.body282

do.body282:                                       ; preds = %cond.false277, %sw.bb253.do.body282_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %75 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port259, align 4
  %add286 = add i32 %76, 2
  %and287 = and i32 %add286, 1048575
  %add288 = or i32 %and287, -18874368
  %77 = inttoptr i32 %add288 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 14) #4, !srcloc !36
  %78 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool291.not = icmp eq i32 %79, 0
  br i1 %tobool291.not, label %do.body282.do.body308_crit_edge, label %cond.false303

do.body282.do.body308_crit_edge:                  ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body308

cond.false303:                                    ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #4
  br label %do.body308

do.body308:                                       ; preds = %cond.false303, %do.body282.do.body308_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %81 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port259, align 4
  %add312 = add i32 %82, 2
  %and313 = and i32 %add312, 1048575
  %add314 = or i32 %and313, -18874368
  %83 = inttoptr i32 %add314 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 6) #4, !srcloc !36
  %84 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool317.not = icmp eq i32 %85, 0
  br i1 %tobool317.not, label %do.body308.do.body334_crit_edge, label %cond.false329

do.body308.do.body334_crit_edge:                  ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body334

cond.false329:                                    ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #4
  br label %do.body334

do.body334:                                       ; preds = %cond.false329, %do.body308.do.body334_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %87 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port259, align 4
  %and339 = and i32 %88, 1048575
  %add340 = or i32 %and339, -18874368
  %89 = inttoptr i32 %add340 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 -1) #4, !srcloc !36
  %90 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool343.not = icmp eq i32 %91, 0
  br i1 %tobool343.not, label %do.body334.do.body360_crit_edge, label %cond.false355

do.body334.do.body360_crit_edge:                  ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body360

cond.false355:                                    ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %92(i32 noundef %91) #4
  br label %do.body360

do.body360:                                       ; preds = %cond.false355, %do.body334.do.body360_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %93 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port259, align 4
  %add364 = add i32 %94, 2
  %and365 = and i32 %add364, 1048575
  %add366 = or i32 %and365, -18874368
  %95 = inttoptr i32 %add366 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 39) #4, !srcloc !36
  %96 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool369.not = icmp eq i32 %97, 0
  br i1 %tobool369.not, label %do.body360.do.body386_crit_edge, label %cond.false381

do.body360.do.body386_crit_edge:                  ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body386

cond.false381:                                    ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %98(i32 noundef %97) #4
  br label %do.body386

do.body386:                                       ; preds = %cond.false381, %do.body360.do.body386_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %99 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port259, align 4
  %add390 = add i32 %100, 2
  %and391 = and i32 %add390, 1048575
  %add392 = or i32 %and391, -18874368
  %101 = inttoptr i32 %add392 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 38) #4, !srcloc !36
  %102 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool395.not = icmp eq i32 %103, 0
  br i1 %tobool395.not, label %do.body386.do.body412_crit_edge, label %cond.false407

do.body386.do.body412_crit_edge:                  ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body412

cond.false407:                                    ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #4
  br label %do.body412

do.body412:                                       ; preds = %cond.false407, %do.body386.do.body412_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %105 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port259, align 4
  %add416 = add i32 %106, 2
  %and417 = and i32 %add416, 1048575
  %add418 = or i32 %and417, -18874368
  %107 = inttoptr i32 %add418 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 32) #4, !srcloc !36
  %108 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool421.not = icmp eq i32 %109, 0
  br i1 %tobool421.not, label %do.body412.cond.end455_crit_edge, label %cond.false433

do.body412.cond.end455_crit_edge:                 ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end455

cond.false433:                                    ; preds = %do.body412
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #4
  %111 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr666 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr666)
  %tobool439.not = icmp eq i32 %.pr666, 0
  br i1 %tobool439.not, label %cond.false433.cond.end455_crit_edge, label %cond.false451

cond.false433.cond.end455_crit_edge:              ; preds = %cond.false433
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end455

cond.false451:                                    ; preds = %cond.false433
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %112(i32 noundef %.pr666) #4
  br label %cond.end455

cond.end455:                                      ; preds = %cond.false451, %cond.false433.cond.end455_crit_edge, %do.body412.cond.end455_crit_edge
  %113 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port259, align 4
  %and459 = and i32 %114, 1048575
  %add460 = or i32 %and459, -18874368
  %115 = inttoptr i32 %add460 to ptr
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %115) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %conv464 = zext i8 %116 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %117 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port259, align 4
  %add470 = add i32 %118, 2
  %and471 = and i32 %add470, 1048575
  %add472 = or i32 %and471, -18874368
  %119 = inttoptr i32 %add472 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 38) #4, !srcloc !36
  %120 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool475.not = icmp eq i32 %121, 0
  br i1 %tobool475.not, label %cond.end455.do.body492_crit_edge, label %cond.false487

cond.end455.do.body492_crit_edge:                 ; preds = %cond.end455
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body492

cond.false487:                                    ; preds = %cond.end455
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #4
  br label %do.body492

do.body492:                                       ; preds = %cond.false487, %cond.end455.do.body492_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %123 = ptrtoint ptr %port259 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port259, align 4
  %add496 = add i32 %124, 2
  %and497 = and i32 %add496, 1048575
  %add498 = or i32 %and497, -18874368
  %125 = inttoptr i32 %add498 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 12) #4, !srcloc !36
  %126 = ptrtoint ptr %delay264 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delay264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool501.not = icmp eq i32 %127, 0
  br i1 %tobool501.not, label %do.body492.cleanup_crit_edge, label %cond.false513

do.body492.cleanup_crit_edge:                     ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false513:                                    ; preds = %do.body492
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %128(i32 noundef %127) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false513, %do.body492.cleanup_crit_edge, %cond.end250, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %xor, %cond.end250 ], [ %conv464, %do.body492.cleanup_crit_edge ], [ %conv464, %cond.false513 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aten_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -120) #4, !srcloc !36
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add16 = add i32 %7, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 14) #4, !srcloc !36
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add41 = add i32 %13, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %14 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 6) #4, !srcloc !36
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %do.body37.cond.end61_crit_edge, label %cond.false57

do.body37.cond.end61_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %do.body37.cond.end61_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp62314 = icmp sgt i32 %count, 1
  br i1 %cmp62314, label %cond.end61.do.body63_crit_edge, label %cond.end61.do.body217_crit_edge

cond.end61.do.body217_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body217

cond.end61.do.body63_crit_edge:                   ; preds = %cond.end61
  br label %do.body63

do.body63:                                        ; preds = %for.inc.do.body63_crit_edge, %cond.end61.do.body63_crit_edge
  %k.0315 = phi i32 [ %inc, %for.inc.do.body63_crit_edge ], [ 0, %cond.end61.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %mul66 = shl nuw i32 %k.0315, 1
  %add67 = or i32 %mul66, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %add67
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %and70 = and i32 %21, 1048575
  %add71 = or i32 %and70, -18874368
  %22 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %19) #4, !srcloc !36
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not = icmp eq i32 %24, 0
  br i1 %tobool74.not, label %do.body63.do.body90_crit_edge, label %cond.false85

do.body63.do.body90_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body90

cond.false85:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #4
  br label %do.body90

do.body90:                                        ; preds = %cond.false85, %do.body63.do.body90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add94 = add i32 %27, 2
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %28 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 14) #4, !srcloc !36
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool99.not = icmp eq i32 %30, 0
  br i1 %tobool99.not, label %do.body90.do.body115_crit_edge, label %cond.false110

do.body90.do.body115_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body115

cond.false110:                                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #4
  br label %do.body115

do.body115:                                       ; preds = %cond.false110, %do.body90.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add119 = add i32 %33, 2
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %34 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 6) #4, !srcloc !36
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool124.not = icmp eq i32 %36, 0
  br i1 %tobool124.not, label %do.body115.do.body140_crit_edge, label %cond.false135

do.body115.do.body140_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body140

cond.false135:                                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #4
  br label %do.body140

do.body140:                                       ; preds = %cond.false135, %do.body115.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %arrayidx144 = getelementptr i8, ptr %buf, i32 %mul66
  %38 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx144, align 1
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and147 = and i32 %41, 1048575
  %add148 = or i32 %and147, -18874368
  %42 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %39) #4, !srcloc !36
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool151.not = icmp eq i32 %44, 0
  br i1 %tobool151.not, label %do.body140.do.body167_crit_edge, label %cond.false162

do.body140.do.body167_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body167

cond.false162:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  br label %do.body167

do.body167:                                       ; preds = %cond.false162, %do.body140.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add171 = add i32 %47, 2
  %and172 = and i32 %add171, 1048575
  %add173 = or i32 %and172, -18874368
  %48 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 7) #4, !srcloc !36
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool176.not = icmp eq i32 %50, 0
  br i1 %tobool176.not, label %do.body167.do.body192_crit_edge, label %cond.false187

do.body167.do.body192_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body192

cond.false187:                                    ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #4
  br label %do.body192

do.body192:                                       ; preds = %cond.false187, %do.body167.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add196 = add i32 %53, 2
  %and197 = and i32 %add196, 1048575
  %add198 = or i32 %and197, -18874368
  %54 = inttoptr i32 %add198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 6) #4, !srcloc !36
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool201.not = icmp eq i32 %56, 0
  br i1 %tobool201.not, label %do.body192.for.inc_crit_edge, label %cond.false212

do.body192.for.inc_crit_edge:                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cond.false212:                                    ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false212, %do.body192.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0315, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.do.body217_crit_edge, label %for.inc.do.body63_crit_edge

for.inc.do.body63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

for.inc.do.body217_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body217

do.body217:                                       ; preds = %for.inc.do.body217_crit_edge, %cond.end61.do.body217_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add221 = add i32 %59, 2
  %and222 = and i32 %add221, 1048575
  %add223 = or i32 %and222, -18874368
  %60 = inttoptr i32 %add223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 12) #4, !srcloc !36
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool226.not = icmp eq i32 %62, 0
  br i1 %tobool226.not, label %do.body217.cond.end241_crit_edge, label %cond.false237

do.body217.cond.end241_crit_edge:                 ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end241

cond.false237:                                    ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #4
  br label %cond.end241

cond.end241:                                      ; preds = %cond.false237, %do.body217.cond.end241_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aten_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
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
    i32 1, label %do.body364
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 72) #4, !srcloc !36
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
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 14) #4, !srcloc !36
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 6) #4, !srcloc !36
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %do.body37.cond.end61_crit_edge, label %cond.false57

do.body37.cond.end61_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.false57:                                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %do.body37.cond.end61_crit_edge
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp62871 = icmp sgt i32 %count, 1
  br i1 %cmp62871, label %cond.end61.do.body63_crit_edge, label %cond.end61.do.body337_crit_edge

cond.end61.do.body337_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body337

cond.end61.do.body63_crit_edge:                   ; preds = %cond.end61
  br label %do.body63

do.body63:                                        ; preds = %cond.end313.do.body63_crit_edge, %cond.end61.do.body63_crit_edge
  %k.0872 = phi i32 [ %inc, %cond.end313.do.body63_crit_edge ], [ 0, %cond.end61.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add67 = add i32 %22, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %23 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 7) #4, !srcloc !36
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool72.not = icmp eq i32 %25, 0
  br i1 %tobool72.not, label %do.body63.do.body88_crit_edge, label %cond.false83

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add92 = add i32 %28, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %29 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 6) #4, !srcloc !36
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool97.not = icmp eq i32 %31, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #4
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add117 = add i32 %34, 2
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %35 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 2) #4, !srcloc !36
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool122.not = icmp eq i32 %37, 0
  br i1 %tobool122.not, label %do.body113.cond.end154_crit_edge, label %cond.false133

do.body113.cond.end154_crit_edge:                 ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end154

cond.false133:                                    ; preds = %do.body113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %37) #4
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool139.not = icmp eq i32 %.pr, 0
  br i1 %tobool139.not, label %cond.false133.cond.end154_crit_edge, label %cond.false150

cond.false133.cond.end154_crit_edge:              ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end154

cond.false150:                                    ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %.pr) #4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false150, %cond.false133.cond.end154_crit_edge, %do.body113.cond.end154_crit_edge
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add156 = add i32 %42, 1
  %and157 = and i32 %add156, 1048575
  %add158 = or i32 %and157, -18874368
  %43 = inttoptr i32 %add158 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %and167 = and i32 %46, 1048575
  %add168 = or i32 %and167, -18874368
  %47 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 88) #4, !srcloc !36
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool171.not = icmp eq i32 %49, 0
  br i1 %tobool171.not, label %cond.end154.cond.end205_crit_edge, label %cond.false183

cond.end154.cond.end205_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end205

cond.false183:                                    ; preds = %cond.end154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %50(i32 noundef %49) #4
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr859 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr859)
  %tobool189.not = icmp eq i32 %.pr859, 0
  br i1 %tobool189.not, label %cond.false183.cond.end205_crit_edge, label %cond.false201

cond.false183.cond.end205_crit_edge:              ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end205

cond.false201:                                    ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %.pr859) #4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false201, %cond.false183.cond.end205_crit_edge, %cond.end154.cond.end205_crit_edge
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add208 = add i32 %54, 1
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %55 = inttoptr i32 %add210 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add220 = add i32 %58, 2
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %59 = inttoptr i32 %add222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 0) #4, !srcloc !36
  %60 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool225.not = icmp eq i32 %61, 0
  br i1 %tobool225.not, label %cond.end205.cond.end259_crit_edge, label %cond.false237

cond.end205.cond.end259_crit_edge:                ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end259

cond.false237:                                    ; preds = %cond.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #4
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr861 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr861)
  %tobool243.not = icmp eq i32 %.pr861, 0
  br i1 %tobool243.not, label %cond.false237.cond.end259_crit_edge, label %cond.false255

cond.false237.cond.end259_crit_edge:              ; preds = %cond.false237
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end259

cond.false255:                                    ; preds = %cond.false237
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %64(i32 noundef %.pr861) #4
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false255, %cond.false237.cond.end259_crit_edge, %cond.end205.cond.end259_crit_edge
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add262 = add i32 %66, 1
  %and263 = and i32 %add262, 1048575
  %add264 = or i32 %and263, -18874368
  %67 = inttoptr i32 %add264 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %and275 = and i32 %70, 1048575
  %add276 = or i32 %and275, -18874368
  %71 = inttoptr i32 %add276 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 72) #4, !srcloc !36
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool279.not = icmp eq i32 %73, 0
  br i1 %tobool279.not, label %cond.end259.cond.end313_crit_edge, label %cond.false291

cond.end259.cond.end313_crit_edge:                ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end313

cond.false291:                                    ; preds = %cond.end259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #4
  %75 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr863 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr863)
  %tobool297.not = icmp eq i32 %.pr863, 0
  br i1 %tobool297.not, label %cond.false291.cond.end313_crit_edge, label %cond.false309

cond.false291.cond.end313_crit_edge:              ; preds = %cond.false291
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end313

cond.false309:                                    ; preds = %cond.false291
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %.pr863) #4
  br label %cond.end313

cond.end313:                                      ; preds = %cond.false309, %cond.false291.cond.end313_crit_edge, %cond.end259.cond.end313_crit_edge
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add316 = add i32 %78, 1
  %and317 = and i32 %add316, 1048575
  %add318 = or i32 %and317, -18874368
  %79 = inttoptr i32 %add318 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %81 = lshr i8 %80, 4
  %82 = and i8 %68, -16
  %or856 = or i8 %81, %82
  %83 = xor i8 %or856, -120
  %mul327 = shl nuw i32 %k.0872, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul327
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx, align 1
  %85 = lshr i8 %44, 4
  %86 = and i8 %56, -16
  %or331857 = or i8 %86, %85
  %87 = xor i8 %or331857, -120
  %add335 = or i32 %mul327, 1
  %arrayidx336 = getelementptr i8, ptr %buf, i32 %add335
  %88 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx336, align 1
  %inc = add nuw nsw i32 %k.0872, 1
  %exitcond873.not = icmp eq i32 %inc, %div
  br i1 %exitcond873.not, label %cond.end313.do.body337_crit_edge, label %cond.end313.do.body63_crit_edge

cond.end313.do.body63_crit_edge:                  ; preds = %cond.end313
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

cond.end313.do.body337_crit_edge:                 ; preds = %cond.end313
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body337

do.body337:                                       ; preds = %cond.end313.do.body337_crit_edge, %cond.end61.do.body337_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add341 = add i32 %90, 2
  %and342 = and i32 %add341, 1048575
  %add343 = or i32 %and342, -18874368
  %91 = inttoptr i32 %add343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 12) #4, !srcloc !36
  %92 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool346.not = icmp eq i32 %93, 0
  br i1 %tobool346.not, label %do.body337.sw.epilog_crit_edge, label %do.body337.sw.epilog.sink.split_crit_edge

do.body337.sw.epilog.sink.split_crit_edge:        ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body337.sw.epilog_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body364:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %port367 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %94 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port367, align 4
  %and369 = and i32 %95, 1048575
  %add370 = or i32 %and369, -18874368
  %96 = inttoptr i32 %add370 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 88) #4, !srcloc !36
  %delay372 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %97 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool373.not = icmp eq i32 %98, 0
  br i1 %tobool373.not, label %do.body364.do.body390_crit_edge, label %cond.false385

do.body364.do.body390_crit_edge:                  ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

cond.false385:                                    ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #4
  br label %do.body390

do.body390:                                       ; preds = %cond.false385, %do.body364.do.body390_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port367, align 4
  %add394 = add i32 %101, 2
  %and395 = and i32 %add394, 1048575
  %add396 = or i32 %and395, -18874368
  %102 = inttoptr i32 %add396 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 14) #4, !srcloc !36
  %103 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool399.not = icmp eq i32 %104, 0
  br i1 %tobool399.not, label %do.body390.do.body416_crit_edge, label %cond.false411

do.body390.do.body416_crit_edge:                  ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body416

cond.false411:                                    ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #4
  br label %do.body416

do.body416:                                       ; preds = %cond.false411, %do.body390.do.body416_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %106 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port367, align 4
  %add420 = add i32 %107, 2
  %and421 = and i32 %add420, 1048575
  %add422 = or i32 %and421, -18874368
  %108 = inttoptr i32 %add422 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 6) #4, !srcloc !36
  %109 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool425.not = icmp eq i32 %110, 0
  br i1 %tobool425.not, label %do.body416.cond.end441_crit_edge, label %cond.false437

do.body416.cond.end441_crit_edge:                 ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end441

cond.false437:                                    ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #4
  br label %cond.end441

cond.end441:                                      ; preds = %cond.false437, %do.body416.cond.end441_crit_edge
  %div443 = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp444869 = icmp sgt i32 %count, 1
  br i1 %cmp444869, label %cond.end441.do.body447_crit_edge, label %cond.end441.do.body617_crit_edge

cond.end441.do.body617_crit_edge:                 ; preds = %cond.end441
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body617

cond.end441.do.body447_crit_edge:                 ; preds = %cond.end441
  br label %do.body447

do.body447:                                       ; preds = %cond.end596.do.body447_crit_edge, %cond.end441.do.body447_crit_edge
  %k.1870 = phi i32 [ %inc615, %cond.end596.do.body447_crit_edge ], [ 0, %cond.end441.do.body447_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %112 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port367, align 4
  %add451 = add i32 %113, 2
  %and452 = and i32 %add451, 1048575
  %add453 = or i32 %and452, -18874368
  %114 = inttoptr i32 %add453 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 39) #4, !srcloc !36
  %115 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool456.not = icmp eq i32 %116, 0
  br i1 %tobool456.not, label %do.body447.do.body473_crit_edge, label %cond.false468

do.body447.do.body473_crit_edge:                  ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body473

cond.false468:                                    ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %117(i32 noundef %116) #4
  br label %do.body473

do.body473:                                       ; preds = %cond.false468, %do.body447.do.body473_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %118 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port367, align 4
  %add477 = add i32 %119, 2
  %and478 = and i32 %add477, 1048575
  %add479 = or i32 %and478, -18874368
  %120 = inttoptr i32 %add479 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 38) #4, !srcloc !36
  %121 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool482.not = icmp eq i32 %122, 0
  br i1 %tobool482.not, label %do.body473.do.body499_crit_edge, label %cond.false494

do.body473.do.body499_crit_edge:                  ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body499

cond.false494:                                    ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %122) #4
  br label %do.body499

do.body499:                                       ; preds = %cond.false494, %do.body473.do.body499_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %124 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port367, align 4
  %add503 = add i32 %125, 2
  %and504 = and i32 %add503, 1048575
  %add505 = or i32 %and504, -18874368
  %126 = inttoptr i32 %add505 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 34) #4, !srcloc !36
  %127 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool508.not = icmp eq i32 %128, 0
  br i1 %tobool508.not, label %do.body499.cond.end542_crit_edge, label %cond.false520

do.body499.cond.end542_crit_edge:                 ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end542

cond.false520:                                    ; preds = %do.body499
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %129(i32 noundef %128) #4
  %130 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr865 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr865)
  %tobool526.not = icmp eq i32 %.pr865, 0
  br i1 %tobool526.not, label %cond.false520.cond.end542_crit_edge, label %cond.false538

cond.false520.cond.end542_crit_edge:              ; preds = %cond.false520
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end542

cond.false538:                                    ; preds = %cond.false520
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %131(i32 noundef %.pr865) #4
  br label %cond.end542

cond.end542:                                      ; preds = %cond.false538, %cond.false520.cond.end542_crit_edge, %do.body499.cond.end542_crit_edge
  %132 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port367, align 4
  %and546 = and i32 %133, 1048575
  %add547 = or i32 %and546, -18874368
  %134 = inttoptr i32 %add547 to ptr
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %134) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %136 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port367, align 4
  %add557 = add i32 %137, 2
  %and558 = and i32 %add557, 1048575
  %add559 = or i32 %and558, -18874368
  %138 = inttoptr i32 %add559 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 32) #4, !srcloc !36
  %139 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool562.not = icmp eq i32 %140, 0
  br i1 %tobool562.not, label %cond.end542.cond.end596_crit_edge, label %cond.false574

cond.end542.cond.end596_crit_edge:                ; preds = %cond.end542
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end596

cond.false574:                                    ; preds = %cond.end542
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #4
  %142 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr867 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr867)
  %tobool580.not = icmp eq i32 %.pr867, 0
  br i1 %tobool580.not, label %cond.false574.cond.end596_crit_edge, label %cond.false592

cond.false574.cond.end596_crit_edge:              ; preds = %cond.false574
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end596

cond.false592:                                    ; preds = %cond.false574
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %.pr867) #4
  br label %cond.end596

cond.end596:                                      ; preds = %cond.false592, %cond.false574.cond.end596_crit_edge, %cond.end542.cond.end596_crit_edge
  %144 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port367, align 4
  %and600 = and i32 %145, 1048575
  %add601 = or i32 %and600, -18874368
  %146 = inttoptr i32 %add601 to ptr
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  %mul608 = shl nuw i32 %k.1870, 1
  %arrayidx609 = getelementptr i8, ptr %buf, i32 %mul608
  %148 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx609, align 1
  %add612 = or i32 %mul608, 1
  %arrayidx613 = getelementptr i8, ptr %buf, i32 %add612
  %149 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %135, ptr %arrayidx613, align 1
  %inc615 = add nuw nsw i32 %k.1870, 1
  %exitcond.not = icmp eq i32 %inc615, %div443
  br i1 %exitcond.not, label %cond.end596.do.body617_crit_edge, label %cond.end596.do.body447_crit_edge

cond.end596.do.body447_crit_edge:                 ; preds = %cond.end596
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body447

cond.end596.do.body617_crit_edge:                 ; preds = %cond.end596
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body617

do.body617:                                       ; preds = %cond.end596.do.body617_crit_edge, %cond.end441.do.body617_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %150 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port367, align 4
  %add621 = add i32 %151, 2
  %and622 = and i32 %add621, 1048575
  %add623 = or i32 %and622, -18874368
  %152 = inttoptr i32 %add623 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 38) #4, !srcloc !36
  %153 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool626.not = icmp eq i32 %154, 0
  br i1 %tobool626.not, label %do.body617.do.body643_crit_edge, label %cond.false638

do.body617.do.body643_crit_edge:                  ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body643

cond.false638:                                    ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %155(i32 noundef %154) #4
  br label %do.body643

do.body643:                                       ; preds = %cond.false638, %do.body617.do.body643_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %156 = ptrtoint ptr %port367 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port367, align 4
  %add647 = add i32 %157, 2
  %and648 = and i32 %add647, 1048575
  %add649 = or i32 %and648, -18874368
  %158 = inttoptr i32 %add649 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 12) #4, !srcloc !36
  %159 = ptrtoint ptr %delay372 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool652.not = icmp eq i32 %160, 0
  br i1 %tobool652.not, label %do.body643.sw.epilog_crit_edge, label %do.body643.sw.epilog.sink.split_crit_edge

do.body643.sw.epilog.sink.split_crit_edge:        ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body643.sw.epilog_crit_edge:                   ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body643.sw.epilog.sink.split_crit_edge, %do.body337.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %93, %do.body337.sw.epilog.sink.split_crit_edge ], [ %160, %do.body643.sw.epilog.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body643.sw.epilog_crit_edge, %do.body337.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aten_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 12) #4, !srcloc !36
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
define internal void @aten_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !36
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv15) #4, !srcloc !36
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
define internal void @aten_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  %arrayidx = getelementptr [2 x ptr], ptr @__const.aten_log_adapter.mode_string, i32 0, i32 %5
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/aten.c", i32 160, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_aten__162_161_aten_init6, !4, !"__initcall__kmod_aten__162_161_aten_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/aten.c", i32 161, i32 1}
!5 = !{ptr @__exitcall_aten_exit, !6, !"__exitcall_aten_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/aten.c", i32 162, i32 1}
!7 = !{ptr @aten, !8, !"aten", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/aten.c", i32 134, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/aten.c", i32 36, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/aten.c", i32 125, i32 36}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/paride/aten.c", i32 125, i32 44}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/paride/aten.c", i32 127, i32 9}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @aten_log_adapter._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @aten_log_adapter._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/paride/aten.c", i32 129, i32 9}
!24 = !{ptr @aten_log_adapter._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @aten_log_adapter._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2152102882}
!36 = !{i64 4531567}
!37 = !{i64 2152103898}
!38 = !{i64 2152104908}
!39 = !{i64 2152105924}
!40 = !{i64 2152106934}
!41 = !{i64 2152107944}
!42 = !{i64 2152108960}
!43 = !{i64 2152109970}
!44 = !{i64 2152110986}
!45 = !{i64 2152111996}
!46 = !{i64 2152113006}
!47 = !{i64 2152114016}
!48 = !{i64 2152115026}
!49 = !{i64 4531962}
!50 = !{i64 2152116721}
!51 = !{i64 2152116998}
!52 = !{i64 2152118693}
!53 = !{i64 2152118967}
!54 = !{i64 2152120013}
!55 = !{i64 2152121029}
!56 = !{i64 2152122039}
!57 = !{i64 2152123058}
!58 = !{i64 2152124077}
!59 = !{i64 2152125096}
!60 = !{i64 2152126115}
!61 = !{i64 2152127810}
!62 = !{i64 2152128087}
!63 = !{i64 2152129103}
!64 = !{i64 2152159268}
!65 = !{i64 2152160284}
!66 = !{i64 2152161294}
!67 = !{i64 2152162331}
!68 = !{i64 2152163347}
!69 = !{i64 2152164357}
!70 = !{i64 2152165388}
!71 = !{i64 2152166398}
!72 = !{i64 2152167408}
!73 = !{i64 2152168424}
!74 = !{i64 2152130122}
!75 = !{i64 2152131138}
!76 = !{i64 2152132148}
!77 = !{i64 2152133158}
!78 = !{i64 2152134168}
!79 = !{i64 2152135178}
!80 = !{i64 2152140934}
!81 = !{i64 2152141211}
!82 = !{i64 2152142906}
!83 = !{i64 2152143174}
!84 = !{i64 2152144869}
!85 = !{i64 2152145146}
!86 = !{i64 2152146841}
!87 = !{i64 2152147187}
!88 = !{i64 2152148206}
!89 = !{i64 2152149222}
!90 = !{i64 2152150232}
!91 = !{i64 2152151251}
!92 = !{i64 2152152270}
!93 = !{i64 2152153289}
!94 = !{i64 2152154984}
!95 = !{i64 2152155261}
!96 = !{i64 2152156956}
!97 = !{i64 2152157233}
!98 = !{i64 2152158249}
!99 = !{i64 2152170119}
!100 = !{i64 2152171072}
!101 = !{i64 2152171346}
!102 = !{i64 2152172389}
!103 = !{i64 2152173432}
