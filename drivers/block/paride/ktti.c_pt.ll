; ModuleID = '/llk/IR_all_yes/drivers/block/paride/ktti.c_pt.bc'
source_filename = "../drivers/block/paride/ktti.c"
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

@ktti = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"ktti\00\00\00\00", i32 0, i32 1, i32 2, i32 1, i32 1, ptr @ktti_write_regr, ptr @ktti_read_regr, ptr @ktti_write_block, ptr @ktti_read_block, ptr @ktti_connect, ptr @ktti_disconnect, ptr null, ptr null, ptr null, ptr @ktti_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"ktti.file=drivers/block/paride/ktti\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"ktti.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ktti__162_127_ktti_init6 = internal global ptr @ktti_init, section ".initcall6.init", align 4
@__exitcall_ktti_exit = internal global ptr @ktti_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 8], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ktti_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ktti %s, KT adapter at 0x%x, delay %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ktti_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/ktti.c\00", [36 x i8] zeroinitializer }, align 32
@ktti_log_adapter._entry_ptr = internal global ptr @ktti_log_adapter._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"ktti\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 100, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 30, i32 13 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [31 x i8] c"../drivers/block/paride/ktti.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 95, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_ktti_exit, ptr @__initcall__kmod_ktti__162_127_ktti_init6, ptr @ktti_exit, ptr @ktti_log_adapter._entry, ptr @ktti_log_adapter._entry_ptr, ptr @ktti, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktti to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktti_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ktti_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @paride_unregister(ptr noundef nonnull @ktti) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ktti_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @ktti) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ktti_write_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !28
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %cond.false9

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

cond.false9:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #4
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %entry.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add18 = add i32 %9, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %10 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 11) #4, !srcloc !28
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #4
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add44 = add i32 %15, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %16 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 10) #4, !srcloc !28
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not = icmp eq i32 %18, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #4
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add70 = add i32 %21, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %22 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 3) #4, !srcloc !28
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool75.not = icmp eq i32 %24, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #4
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add96 = add i32 %27, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %28 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 6) #4, !srcloc !28
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool101.not = icmp eq i32 %30, 0
  br i1 %tobool101.not, label %do.body92.do.body118_crit_edge, label %cond.false113

do.body92.do.body118_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body118

cond.false113:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #4
  br label %do.body118

do.body118:                                       ; preds = %cond.false113, %do.body92.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %conv121 = trunc i32 %val to i8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and124 = and i32 %33, 1048575
  %add125 = or i32 %and124, -18874368
  %34 = inttoptr i32 %add125 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv121) #4, !srcloc !28
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool128.not = icmp eq i32 %36, 0
  br i1 %tobool128.not, label %do.body118.do.body145_crit_edge, label %cond.false140

do.body118.do.body145_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body145

cond.false140:                                    ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #4
  br label %do.body145

do.body145:                                       ; preds = %cond.false140, %do.body118.do.body145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add149 = add i32 %39, 2
  %and150 = and i32 %add149, 1048575
  %add151 = or i32 %and150, -18874368
  %40 = inttoptr i32 %add151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 3) #4, !srcloc !28
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool154.not = icmp eq i32 %42, 0
  br i1 %tobool154.not, label %do.body145.do.body171_crit_edge, label %cond.false166

do.body145.do.body171_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body171

cond.false166:                                    ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #4
  br label %do.body171

do.body171:                                       ; preds = %cond.false166, %do.body145.do.body171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and176 = and i32 %45, 1048575
  %add177 = or i32 %and176, -18874368
  %46 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #4, !srcloc !28
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool180.not = icmp eq i32 %48, 0
  br i1 %tobool180.not, label %do.body171.do.body197_crit_edge, label %cond.false192

do.body171.do.body197_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body197

cond.false192:                                    ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #4
  br label %do.body197

do.body197:                                       ; preds = %cond.false192, %do.body171.do.body197_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add201 = add i32 %51, 2
  %and202 = and i32 %add201, 1048575
  %add203 = or i32 %and202, -18874368
  %52 = inttoptr i32 %add203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 6) #4, !srcloc !28
  %53 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool206.not = icmp eq i32 %54, 0
  br i1 %tobool206.not, label %do.body197.do.body223_crit_edge, label %cond.false218

do.body197.do.body223_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body223

cond.false218:                                    ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %54) #4
  br label %do.body223

do.body223:                                       ; preds = %cond.false218, %do.body197.do.body223_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add227 = add i32 %57, 2
  %and228 = and i32 %add227, 1048575
  %add229 = or i32 %and228, -18874368
  %58 = inttoptr i32 %add229 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 11) #4, !srcloc !28
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool232.not = icmp eq i32 %60, 0
  br i1 %tobool232.not, label %do.body223.cond.end248_crit_edge, label %cond.false244

do.body223.cond.end248_crit_edge:                 ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end248

cond.false244:                                    ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #4
  br label %cond.end248

cond.end248:                                      ; preds = %cond.false244, %do.body223.cond.end248_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ktti_read_regr(ptr nocapture noundef readonly %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !28
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %cond.false9

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

cond.false9:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #4
  br label %do.body14

do.body14:                                        ; preds = %cond.false9, %entry.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add18 = add i32 %9, 2
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %10 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 11) #4, !srcloc !28
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %do.body14.do.body40_crit_edge, label %cond.false35

do.body14.do.body40_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

cond.false35:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #4
  br label %do.body40

do.body40:                                        ; preds = %cond.false35, %do.body14.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add44 = add i32 %15, 2
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %16 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 10) #4, !srcloc !28
  %17 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not = icmp eq i32 %18, 0
  br i1 %tobool49.not, label %do.body40.do.body66_crit_edge, label %cond.false61

do.body40.do.body66_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

cond.false61:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %18) #4
  br label %do.body66

do.body66:                                        ; preds = %cond.false61, %do.body40.do.body66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add70 = add i32 %21, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %22 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 9) #4, !srcloc !28
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool75.not = icmp eq i32 %24, 0
  br i1 %tobool75.not, label %do.body66.do.body92_crit_edge, label %cond.false87

do.body66.do.body92_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body92

cond.false87:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %24) #4
  br label %do.body92

do.body92:                                        ; preds = %cond.false87, %do.body66.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add96 = add i32 %27, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %28 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 12) #4, !srcloc !28
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool101.not = icmp eq i32 %30, 0
  br i1 %tobool101.not, label %do.body92.do.body118_crit_edge, label %cond.false113

do.body92.do.body118_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body118

cond.false113:                                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #4
  br label %do.body118

do.body118:                                       ; preds = %cond.false113, %do.body92.do.body118_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add122 = add i32 %33, 2
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %34 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 9) #4, !srcloc !28
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool127.not = icmp eq i32 %36, 0
  br i1 %tobool127.not, label %do.body118.cond.end161_crit_edge, label %cond.false139

do.body118.cond.end161_crit_edge:                 ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end161

cond.false139:                                    ; preds = %do.body118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #4
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool145.not = icmp eq i32 %.pr, 0
  br i1 %tobool145.not, label %cond.false139.cond.end161_crit_edge, label %cond.false157

cond.false139.cond.end161_crit_edge:              ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end161

cond.false157:                                    ; preds = %cond.false139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %.pr) #4
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false157, %cond.false139.cond.end161_crit_edge, %do.body118.cond.end161_crit_edge
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add163 = add i32 %41, 1
  %and164 = and i32 %add163, 1048575
  %add165 = or i32 %and164, -18874368
  %42 = inttoptr i32 %add165 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add174 = add i32 %45, 2
  %and175 = and i32 %add174, 1048575
  %add176 = or i32 %and175, -18874368
  %46 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 12) #4, !srcloc !28
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool179.not = icmp eq i32 %48, 0
  br i1 %tobool179.not, label %cond.end161.cond.end213_crit_edge, label %cond.false191

cond.end161.cond.end213_crit_edge:                ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end213

cond.false191:                                    ; preds = %cond.end161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %48) #4
  %50 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr388 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr388)
  %tobool197.not = icmp eq i32 %.pr388, 0
  br i1 %tobool197.not, label %cond.false191.cond.end213_crit_edge, label %cond.false209

cond.false191.cond.end213_crit_edge:              ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end213

cond.false209:                                    ; preds = %cond.false191
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %.pr388) #4
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false209, %cond.false191.cond.end213_crit_edge, %cond.end161.cond.end213_crit_edge
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add216 = add i32 %53, 1
  %and217 = and i32 %add216, 1048575
  %add218 = or i32 %and217, -18874368
  %54 = inttoptr i32 %add218 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add228 = add i32 %57, 2
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %58 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 9) #4, !srcloc !28
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool233.not = icmp eq i32 %60, 0
  br i1 %tobool233.not, label %cond.end213.do.body250_crit_edge, label %cond.false245

cond.end213.do.body250_crit_edge:                 ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body250

cond.false245:                                    ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #4
  br label %do.body250

do.body250:                                       ; preds = %cond.false245, %cond.end213.do.body250_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add254 = add i32 %63, 2
  %and255 = and i32 %add254, 1048575
  %add256 = or i32 %and255, -18874368
  %64 = inttoptr i32 %add256 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 12) #4, !srcloc !28
  %65 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool259.not = icmp eq i32 %66, 0
  br i1 %tobool259.not, label %do.body250.do.body276_crit_edge, label %cond.false271

do.body250.do.body276_crit_edge:                  ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body276

cond.false271:                                    ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %66) #4
  br label %do.body276

do.body276:                                       ; preds = %cond.false271, %do.body250.do.body276_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add280 = add i32 %69, 2
  %and281 = and i32 %add280, 1048575
  %add282 = or i32 %and281, -18874368
  %70 = inttoptr i32 %add282 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 9) #4, !srcloc !28
  %71 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool285.not = icmp eq i32 %72, 0
  br i1 %tobool285.not, label %do.body276.cond.end301_crit_edge, label %cond.false297

do.body276.cond.end301_crit_edge:                 ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end301

cond.false297:                                    ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %73(i32 noundef %72) #4
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false297, %do.body276.cond.end301_crit_edge
  %74 = lshr i8 %43, 4
  %75 = and i8 %55, -16
  %or386 = or i8 %75, %74
  %or = zext i8 %or386 to i32
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ktti_write_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp314 = icmp sgt i32 %count, 1
  br i1 %cmp314, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %k.0315 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 16) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add17 = add i32 %7, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %8 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 11) #4, !srcloc !28
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %do.body13.do.body38_crit_edge, label %cond.false33

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add42 = add i32 %13, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %14 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 10) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add67 = add i32 %19, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %20 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 3) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add92 = add i32 %25, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %26 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 6) #4, !srcloc !28
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool97.not = icmp eq i32 %28, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %mul116 = shl nuw i32 %k.0315, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul116
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and119 = and i32 %33, 1048575
  %add120 = or i32 %and119, -18874368
  %34 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #4, !srcloc !28
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool123.not = icmp eq i32 %36, 0
  br i1 %tobool123.not, label %do.body113.do.body139_crit_edge, label %cond.false134

do.body113.do.body139_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

cond.false134:                                    ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #4
  br label %do.body139

do.body139:                                       ; preds = %cond.false134, %do.body113.do.body139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add143 = add i32 %39, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %40 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 3) #4, !srcloc !28
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool148.not = icmp eq i32 %42, 0
  br i1 %tobool148.not, label %do.body139.do.body164_crit_edge, label %cond.false159

do.body139.do.body164_crit_edge:                  ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

cond.false159:                                    ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %42) #4
  br label %do.body164

do.body164:                                       ; preds = %cond.false159, %do.body139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %add168 = or i32 %mul116, 1
  %arrayidx169 = getelementptr i8, ptr %buf, i32 %add168
  %44 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx169, align 1
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and172 = and i32 %47, 1048575
  %add173 = or i32 %and172, -18874368
  %48 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %45) #4, !srcloc !28
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool176.not = icmp eq i32 %50, 0
  br i1 %tobool176.not, label %do.body164.do.body192_crit_edge, label %cond.false187

do.body164.do.body192_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body192

cond.false187:                                    ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #4
  br label %do.body192

do.body192:                                       ; preds = %cond.false187, %do.body164.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add196 = add i32 %53, 2
  %and197 = and i32 %add196, 1048575
  %add198 = or i32 %and197, -18874368
  %54 = inttoptr i32 %add198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 6) #4, !srcloc !28
  %55 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool201.not = icmp eq i32 %56, 0
  br i1 %tobool201.not, label %do.body192.do.body217_crit_edge, label %cond.false212

do.body192.do.body217_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body217

cond.false212:                                    ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %57(i32 noundef %56) #4
  br label %do.body217

do.body217:                                       ; preds = %cond.false212, %do.body192.do.body217_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add221 = add i32 %59, 2
  %and222 = and i32 %add221, 1048575
  %add223 = or i32 %and222, -18874368
  %60 = inttoptr i32 %add223 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 11) #4, !srcloc !28
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool226.not = icmp eq i32 %62, 0
  br i1 %tobool226.not, label %do.body217.for.inc_crit_edge, label %cond.false237

do.body217.for.inc_crit_edge:                     ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

cond.false237:                                    ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %63(i32 noundef %62) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.false237, %do.body217.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.0315, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ktti_read_block(ptr nocapture noundef readonly %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp471 = icmp sgt i32 %count, 1
  br i1 %cmp471, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %cond.end353.do.body_crit_edge, %do.body.lr.ph
  %k.0472 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %cond.end353.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 16) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add17 = add i32 %7, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %8 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 11) #4, !srcloc !28
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %do.body13.do.body38_crit_edge, label %cond.false33

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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add42 = add i32 %13, 2
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %14 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 10) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add67 = add i32 %19, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %20 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 9) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add92 = add i32 %25, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %26 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 12) #4, !srcloc !28
  %27 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool97.not = icmp eq i32 %28, 0
  br i1 %tobool97.not, label %do.body88.do.body113_crit_edge, label %cond.false108

do.body88.do.body113_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body113

cond.false108:                                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %28) #4
  br label %do.body113

do.body113:                                       ; preds = %cond.false108, %do.body88.do.body113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add117 = add i32 %31, 2
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %32 = inttoptr i32 %add119 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 9) #4, !srcloc !28
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool122.not = icmp eq i32 %34, 0
  br i1 %tobool122.not, label %do.body113.cond.end154_crit_edge, label %cond.false133

do.body113.cond.end154_crit_edge:                 ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end154

cond.false133:                                    ; preds = %do.body113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #4
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
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
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %.pr) #4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false150, %cond.false133.cond.end154_crit_edge, %do.body113.cond.end154_crit_edge
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add156 = add i32 %39, 1
  %and157 = and i32 %add156, 1048575
  %add158 = or i32 %and157, -18874368
  %40 = inttoptr i32 %add158 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add166 = add i32 %43, 2
  %and167 = and i32 %add166, 1048575
  %add168 = or i32 %and167, -18874368
  %44 = inttoptr i32 %add168 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 12) #4, !srcloc !28
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool171.not = icmp eq i32 %46, 0
  br i1 %tobool171.not, label %cond.end154.cond.end205_crit_edge, label %cond.false183

cond.end154.cond.end205_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end205

cond.false183:                                    ; preds = %cond.end154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %47(i32 noundef %46) #4
  %48 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr467 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr467)
  %tobool189.not = icmp eq i32 %.pr467, 0
  br i1 %tobool189.not, label %cond.false183.cond.end205_crit_edge, label %cond.false201

cond.false183.cond.end205_crit_edge:              ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end205

cond.false201:                                    ; preds = %cond.false183
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %49(i32 noundef %.pr467) #4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false201, %cond.false183.cond.end205_crit_edge, %cond.end154.cond.end205_crit_edge
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add208 = add i32 %51, 1
  %and209 = and i32 %add208, 1048575
  %add210 = or i32 %and209, -18874368
  %52 = inttoptr i32 %add210 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add220 = add i32 %55, 2
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %56 = inttoptr i32 %add222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 9) #4, !srcloc !28
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool225.not = icmp eq i32 %58, 0
  br i1 %tobool225.not, label %cond.end205.cond.end241_crit_edge, label %cond.false237

cond.end205.cond.end241_crit_edge:                ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end241

cond.false237:                                    ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #4
  br label %cond.end241

cond.end241:                                      ; preds = %cond.false237, %cond.end205.cond.end241_crit_edge
  %60 = lshr i8 %41, 4
  %61 = and i8 %53, -16
  %or464 = or i8 %61, %60
  %mul245 = shl nuw i32 %k.0472, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %mul245
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %or464, ptr %arrayidx, align 1
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool247.not = icmp eq i32 %64, 0
  br i1 %tobool247.not, label %cond.end241.cond.end263_crit_edge, label %cond.false259

cond.end241.cond.end263_crit_edge:                ; preds = %cond.end241
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end263

cond.false259:                                    ; preds = %cond.end241
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #4
  br label %cond.end263

cond.end263:                                      ; preds = %cond.false259, %cond.end241.cond.end263_crit_edge
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add266 = add i32 %67, 1
  %and267 = and i32 %add266, 1048575
  %add268 = or i32 %and267, -18874368
  %68 = inttoptr i32 %add268 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add278 = add i32 %71, 2
  %and279 = and i32 %add278, 1048575
  %add280 = or i32 %and279, -18874368
  %72 = inttoptr i32 %add280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 12) #4, !srcloc !28
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool283.not = icmp eq i32 %74, 0
  br i1 %tobool283.not, label %cond.end263.cond.end317_crit_edge, label %cond.false295

cond.end263.cond.end317_crit_edge:                ; preds = %cond.end263
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end317

cond.false295:                                    ; preds = %cond.end263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #4
  %76 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr469 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr469)
  %tobool301.not = icmp eq i32 %.pr469, 0
  br i1 %tobool301.not, label %cond.false295.cond.end317_crit_edge, label %cond.false313

cond.false295.cond.end317_crit_edge:              ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end317

cond.false313:                                    ; preds = %cond.false295
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %77(i32 noundef %.pr469) #4
  br label %cond.end317

cond.end317:                                      ; preds = %cond.false313, %cond.false295.cond.end317_crit_edge, %cond.end263.cond.end317_crit_edge
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %add320 = add i32 %79, 1
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %80 = inttoptr i32 %add322 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add332 = add i32 %83, 2
  %and333 = and i32 %add332, 1048575
  %add334 = or i32 %and333, -18874368
  %84 = inttoptr i32 %add334 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 9) #4, !srcloc !28
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool337.not = icmp eq i32 %86, 0
  br i1 %tobool337.not, label %cond.end317.cond.end353_crit_edge, label %cond.false349

cond.end317.cond.end353_crit_edge:                ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end353

cond.false349:                                    ; preds = %cond.end317
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #4
  br label %cond.end353

cond.end353:                                      ; preds = %cond.false349, %cond.end317.cond.end353_crit_edge
  %88 = lshr i8 %69, 4
  %89 = and i8 %81, -16
  %or357465 = or i8 %89, %88
  %add360 = or i32 %mul245, 1
  %arrayidx361 = getelementptr i8, ptr %buf, i32 %add360
  %90 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %or357465, ptr %arrayidx361, align 1
  %inc = add nuw nsw i32 %k.0472, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %cond.end353.for.end_crit_edge, label %cond.end353.do.body_crit_edge

cond.end353.do.body_crit_edge:                    ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cond.end353.for.end_crit_edge:                    ; preds = %cond.end353
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cond.end353.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ktti_connect(ptr nocapture noundef %pi) #2 align 64 {
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
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
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  %conv40 = zext i8 %14 to i32
  %saved_r2 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 8
  %15 = ptrtoint ptr %saved_r2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv40, ptr %saved_r2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add43 = add i32 %17, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 11) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add68 = add i32 %23, 2
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %24 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 10) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %and94 = and i32 %29, 1048575
  %add95 = or i32 %and94, -18874368
  %30 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add118 = add i32 %35, 2
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %36 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 3) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add143 = add i32 %41, 2
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %42 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 6) #4, !srcloc !28
  %43 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool148.not = icmp eq i32 %44, 0
  br i1 %tobool148.not, label %do.body140.cond.end164_crit_edge, label %cond.false160

do.body140.cond.end164_crit_edge:                 ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end164

cond.false160:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #4
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false160, %do.body140.cond.end164_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ktti_disconnect(ptr nocapture noundef readonly %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 11) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 2
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 10) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and40 = and i32 %13, 1048575
  %add41 = or i32 %and40, -18874368
  %14 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -96) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add63 = add i32 %19, 2
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %20 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 3) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add87 = add i32 %25, 2
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %26 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv) #4, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv135) #4, !srcloc !28
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
define internal void @ktti_log_adapter(ptr nocapture noundef readonly %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/ktti.c", i32 126, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ktti__162_127_ktti_init6, !4, !"__initcall__kmod_ktti__162_127_ktti_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/ktti.c", i32 127, i32 1}
!5 = !{ptr @__exitcall_ktti_exit, !6, !"__exitcall_ktti_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/ktti.c", i32 128, i32 1}
!7 = !{ptr @ktti, !8, !"ktti", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/ktti.c", i32 100, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/ktti.c", i32 30, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/ktti.c", i32 95, i32 9}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ktti_log_adapter._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ktti_log_adapter._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152102321}
!28 = !{i64 4531006}
!29 = !{i64 2152103337}
!30 = !{i64 2152104353}
!31 = !{i64 2152105363}
!32 = !{i64 2152106373}
!33 = !{i64 2152107389}
!34 = !{i64 2152108399}
!35 = !{i64 2152109409}
!36 = !{i64 2152110419}
!37 = !{i64 2152111435}
!38 = !{i64 2152112445}
!39 = !{i64 2152113461}
!40 = !{i64 2152114477}
!41 = !{i64 2152115487}
!42 = !{i64 2152116503}
!43 = !{i64 2152117513}
!44 = !{i64 4531401}
!45 = !{i64 2152119208}
!46 = !{i64 2152119482}
!47 = !{i64 2152121177}
!48 = !{i64 2152121445}
!49 = !{i64 2152122461}
!50 = !{i64 2152123471}
!51 = !{i64 2152142589}
!52 = !{i64 2152143605}
!53 = !{i64 2152144621}
!54 = !{i64 2152145631}
!55 = !{i64 2152146641}
!56 = !{i64 2152147672}
!57 = !{i64 2152148682}
!58 = !{i64 2152149719}
!59 = !{i64 2152150729}
!60 = !{i64 2152151745}
!61 = !{i64 2152124519}
!62 = !{i64 2152125535}
!63 = !{i64 2152126551}
!64 = !{i64 2152127561}
!65 = !{i64 2152128577}
!66 = !{i64 2152129587}
!67 = !{i64 2152131282}
!68 = !{i64 2152131556}
!69 = !{i64 2152133251}
!70 = !{i64 2152133519}
!71 = !{i64 2152135243}
!72 = !{i64 2152135517}
!73 = !{i64 2152141273}
!74 = !{i64 2152141541}
!75 = !{i64 2152153440}
!76 = !{i64 2152154393}
!77 = !{i64 2152154667}
!78 = !{i64 2152155683}
!79 = !{i64 2152156693}
!80 = !{i64 2152157703}
!81 = !{i64 2152158713}
!82 = !{i64 2152159729}
!83 = !{i64 2152160745}
!84 = !{i64 2152161764}
!85 = !{i64 2152162774}
!86 = !{i64 2152163784}
!87 = !{i64 2152164827}
!88 = !{i64 2152165870}
