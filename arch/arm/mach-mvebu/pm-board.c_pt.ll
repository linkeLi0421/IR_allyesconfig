; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mvebu/pm-board.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/pm-board.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pm_board__223_157_mvebu_armada_pm_init6s = internal global ptr @mvebu_armada_pm_init, section ".initcall6s.init", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"marvell,axp-gp\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm_pic\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctrl-gpios\00", [21 x i8] zeroinitializer }, align 32
@pic_gpios = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pic-pin%d\00", [22 x i8] zeroinitializer }, align 32
@pic_raw_gpios = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@gpio_ctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 85, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 88, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 96, i32 40 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"pic_gpios\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 26, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 102, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"pic_raw_gpios\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 27, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"gpio_ctrl\00", align 1
@___asan_gen_.23 = private constant [34 x i8] c"../arch/arm/mach-mvebu/pm-board.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 25, i32 22 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_pm_board__223_157_mvebu_armada_pm_init6s, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pic_gpios, ptr @.str.3, ptr @pic_raw_gpios, ptr @gpio_ctrl], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic_gpios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic_raw_gpios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_armada_pm_init() #0 section ".init.text" align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.1) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup43_crit_edge, label %for.cond.preheader

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

for.cond.preheader:                               ; preds = %if.end
  %args34 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.095 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %gpio_ctrl_np.094 = phi ptr [ null, %for.cond.preheader ], [ %9, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %call1, ptr noundef nonnull @.str.2, i32 noundef %i.095, ptr noundef null) #5
  %arrayidx = getelementptr [3 x i32], ptr @pic_gpios, i32 0, i32 %i.095
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %for.body.cleanup.thread_crit_edge, label %if.end9

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end9:                                          ; preds = %for.body
  %call10 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %i.095) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup.thread_crit_edge, label %if.end13

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end13:                                         ; preds = %if.end9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call15 = call i32 @gpio_request(i32 noundef %3, ptr noundef nonnull %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup.thread.sink.split_crit_edge, label %if.end18

if.end13.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.sink.split

if.end18:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i71 = call ptr @gpio_to_desc(i32 noundef %5) #5
  %call1.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i71, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp21 = icmp slt i32 %call1.i, 0
  br i1 %cmp21, label %if.end18.cleanup.thread.sink.split.sink.split_crit_edge, label %if.end24

if.end18.cleanup.thread.sink.split.sink.split_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.sink.split.sink.split

if.end24:                                         ; preds = %if.end18
  %call.i72 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 2, i32 noundef %i.095, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp26 = icmp slt i32 %call.i72, 0
  br i1 %cmp26, label %if.end24.cleanup.thread.sink.split.sink.split_crit_edge, label %if.end29

if.end24.cleanup.thread.sink.split.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.sink.split.sink.split

if.end29:                                         ; preds = %if.end24
  %tobool30.not = icmp eq ptr %gpio_ctrl_np.094, null
  br i1 %tobool30.not, label %if.end29.for.inc_crit_edge, label %if.then31

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %gpio_ctrl_np.094) #5
  br label %for.inc

cleanup.thread.sink.split.sink.split:             ; preds = %if.end24.cleanup.thread.sink.split.sink.split_crit_edge, %if.end18.cleanup.thread.sink.split.sink.split_crit_edge
  %ret.1.ph.ph.ph = phi i32 [ %call1.i, %if.end18.cleanup.thread.sink.split.sink.split_crit_edge ], [ %call.i72, %if.end24.cleanup.thread.sink.split.sink.split_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @gpio_free(i32 noundef %7) #5
  br label %cleanup.thread.sink.split

cleanup.thread.sink.split:                        ; preds = %cleanup.thread.sink.split.sink.split, %if.end13.cleanup.thread.sink.split_crit_edge
  %ret.1.ph.ph = phi i32 [ %ret.1.ph.ph.ph, %cleanup.thread.sink.split.sink.split ], [ %call15, %if.end13.cleanup.thread.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call10) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end9.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %ret.1.ph = phi i32 [ %ret.1.ph.ph, %cleanup.thread.sink.split ], [ -12, %if.end9.cleanup.thread_crit_edge ], [ -19, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  br label %out

for.inc:                                          ; preds = %if.then31, %if.end29.for.inc_crit_edge
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 4
  %10 = ptrtoint ptr %args34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args34, align 4
  %arrayidx36 = getelementptr [3 x i32], ptr @pic_raw_gpios, i32 0, i32 %i.095
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx36, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call38 = call ptr @of_iomap(ptr noundef %9, i32 noundef 0) #5
  store ptr %call38, ptr @gpio_ctrl, align 4
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %for.end.out_crit_edge, label %if.end41

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = call i32 @mvebu_pm_suspend_init(ptr noundef nonnull @mvebu_armada_pm_enter) #5
  br label %out

out:                                              ; preds = %if.end41, %for.end.out_crit_edge, %cleanup.thread
  %gpio_ctrl_np.084 = phi ptr [ %9, %if.end41 ], [ %9, %for.end.out_crit_edge ], [ %gpio_ctrl_np.094, %cleanup.thread ]
  %ret.2 = phi i32 [ %call.i72, %if.end41 ], [ -12, %for.end.out_crit_edge ], [ %ret.1.ph, %cleanup.thread ]
  call void @of_node_put(ptr noundef nonnull %call1) #5
  call void @of_node_put(ptr noundef %gpio_ctrl_np.084) #5
  br label %cleanup43

cleanup43:                                        ; preds = %out, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -19, %entry.cleanup43_crit_edge ], [ -19, %if.end.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pm_suspend_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_armada_pm_enter(ptr noundef %sdram_reg, i32 noundef %srcmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gpio_ctrl, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  %3 = load i32, ptr @pic_raw_gpios, align 4
  %shl = shl nuw i32 1, %3
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 1), align 4
  %shl.1 = shl nuw i32 1, %4
  %5 = or i32 %shl, %shl.1
  %6 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 2), align 4
  %shl.2 = shl nuw i32 1, %6
  %7 = or i32 %5, %shl.2
  %8 = xor i32 %7, -1
  %and.2 = and i32 %2, %8
  %or = or i32 %shl, %and.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = load ptr, ptr @gpio_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #5, !srcloc !28
  %11 = load ptr, ptr @gpio_ctrl, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %13 = load i32, ptr @pic_raw_gpios, align 4
  %14 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 1), align 4
  %15 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 2), align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.031 = phi i32 [ 3000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.031, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %shl12.2 = shl nuw i32 1, %15
  %shl12.1 = shl nuw i32 1, %14
  %shl12 = shl nuw i32 1, %13
  %17 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or13 = or i32 %shl12, %17
  %or13.1 = or i32 %shl12.1, %or13
  %or13.2 = or i32 %shl12.2, %or13.1
  %18 = tail call i32 @llvm.bswap.i32(i32 %or13.2)
  %19 = tail call i32 @llvm.bswap.i32(i32 %srcmd)
  %20 = load ptr, ptr @gpio_ctrl, align 4
  tail call void asm sideeffect ".balign 32\0A\09str $0, [$1]\0A\09mov r1, #50\0A\091: subs r1, r1, #1\0A\09bne 1b\0A\09str $2, [$3]\0A\09b .\0A\09", "r,r,r,r,~{r1}"(i32 %19, ptr %sdram_reg, i32 %18, ptr %20) #5, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_pm_board__223_157_mvebu_armada_pm_init6s, !1, !"__initcall__kmod_pm_board__223_157_mvebu_armada_pm_init6s", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 157, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 85, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 88, i32 34}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 96, i32 40}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 102, i32 32}
!10 = !{ptr @pic_gpios, !11, !"pic_gpios", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 26, i32 12}
!12 = !{ptr @pic_raw_gpios, !13, !"pic_raw_gpios", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 27, i32 12}
!14 = !{ptr @gpio_ctrl, !15, !"gpio_ctrl", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mvebu/pm-board.c", i32 25, i32 22}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 4859581}
!26 = !{i64 2153832170}
!27 = !{i64 2153832558}
!28 = !{i64 4859163}
!29 = !{i64 2153833179}
!30 = !{i64 1374, i64 1387, i64 1452, i64 1577, i64 1604, i64 1619, i64 1688, i64 1728}
