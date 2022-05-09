; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-mmc-phase.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-mmc-phase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rockchip_mmc_clock = type { %struct.clk_hw, ptr, i32, i32, i32, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@rockchip_mmc_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mmc_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mmc_get_phase, ptr @rockchip_mmc_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rockchip_mmc_set_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid clk rate\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_mmc_set_phase\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/rockchip/clk-mmc-phase.c\00", [59 x i8] zeroinitializer }, align 32
@rockchip_mmc_set_phase._entry_ptr = internal global ptr @rockchip_mmc_set_phase._entry, section ".printk_index", align 4
@rockchip_mmc_set_phase.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_rockchip\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s->set_phase(%d) delay_nums=%u reg[0x%p]=0x%03x actual_degrees=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"rockchip_mmc_clk_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 150, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 97, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [40 x i8] c"../drivers/clk/rockchip/clk-mmc-phase.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 141, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @rockchip_mmc_set_phase._entry, ptr @rockchip_mmc_set_phase._entry_ptr, ptr @rockchip_mmc_clk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mmc_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mmc_set_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_mmc(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr noundef %reg, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %num_parents3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %5 = ptrtoint ptr %num_parents3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %num_parents, ptr %num_parents3, align 4
  %parent_names4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names4, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rockchip_mmc_clk_ops, ptr %ops, align 4
  %init5 = getelementptr inbounds %struct.clk_hw, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %init5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init5, align 8
  %reg6 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg, ptr %reg6, align 4
  %shift7 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %shift7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shift, ptr %shift7, align 4
  %call9 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call9 to i32
  br label %err_register

if.end13:                                         ; preds = %if.end
  %clk_rate_change_nb = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %call7.i, i32 0, i32 5
  %12 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rockchip_mmc_clk_rate_notify, ptr %clk_rate_change_nb, align 4
  %call15 = call i32 @clk_notifier_register(ptr noundef %call9, ptr noundef %clk_rate_change_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %err_notifier

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_notifier:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unregister(ptr noundef %call9) #7
  br label %err_register

err_register:                                     ; preds = %err_notifier, %if.then11
  %ret.0 = phi i32 [ %11, %if.then11 ], [ %call15, %err_notifier ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %13 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_register, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %err_register ], [ %call9, %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_clk_rate_notify(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -28
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_rate, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp1 = icmp eq i32 %event, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then2.rockchip_mmc_get_phase.exit_crit_edge, label %if.end.i

if.then2.rockchip_mmc_get_phase.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_mmc_get_phase.exit

if.end.i:                                         ; preds = %if.then2
  %reg.i = getelementptr i8, ptr %nb, i32 -16
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !21
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %shift.i = getelementptr i8, ptr %nb, i32 -8
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %7, %9
  %10 = trunc i32 %shr.i to i16
  %11 = and i16 %10, 3
  %conv.i = mul nuw nsw i16 %11, 90
  %and4.i = and i32 %shr.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then6.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %call.i, 10000
  %mul7.i = mul nuw nsw i32 %div.i, 216
  %and8.i = lshr i32 %shr.i, 2
  %shr9.i = and i32 %and8.i, 255
  %mul10.i = mul i32 %mul7.i, %shr9.i
  %add.i = add i32 %mul10.i, 500000
  %div13.i = udiv i32 %add.i, 1000000
  %12 = trunc i32 %div13.i to i16
  %conv16.i = add nuw nsw i16 %conv.i, %12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then6.i, %if.end.i.if.end17.i_crit_edge
  %degrees.0.i = phi i16 [ %conv16.i, %if.then6.i ], [ %conv.i, %if.end.i.if.end17.i_crit_edge ]
  %13 = urem i16 %degrees.0.i, 360
  %rem.i = zext i16 %13 to i32
  br label %rockchip_mmc_get_phase.exit

rockchip_mmc_get_phase.exit:                      ; preds = %if.end17.i, %if.then2.rockchip_mmc_get_phase.exit_crit_edge
  %retval.0.i = phi i32 [ %rem.i, %if.end17.i ], [ 0, %if.then2.rockchip_mmc_get_phase.exit_crit_edge ]
  %cached_phase = getelementptr i8, ptr %nb, i32 -4
  %14 = ptrtoint ptr %cached_phase to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %cached_phase, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cached_phase3 = getelementptr i8, ptr %nb, i32 -4
  %15 = ptrtoint ptr %cached_phase3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cached_phase3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %16)
  %cmp4.not = icmp ne i32 %16, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp5 = icmp eq i32 %event, 2
  %or.cond = and i1 %cmp5, %cmp4.not
  br i1 %or.cond, label %if.then6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @rockchip_mmc_set_phase(ptr noundef %add.ptr, i32 noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else.cleanup_crit_edge, %rockchip_mmc_get_phase.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_mmc_recalc(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %parent_rate, 1
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_get_phase(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %shift = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shr = lshr i32 %3, %5
  %6 = trunc i32 %shr to i16
  %7 = and i16 %6, 3
  %conv = mul nuw nsw i16 %7, 90
  %and4 = and i32 %shr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %call, 10000
  %mul7 = mul nuw nsw i32 %div, 216
  %and8 = lshr i32 %shr, 2
  %shr9 = and i32 %and8, 255
  %mul10 = mul i32 %mul7, %shr9
  %add = add i32 %mul10, 500000
  %div13 = udiv i32 %add, 1000000
  %8 = trunc i32 %div13 to i16
  %conv16 = add nuw nsw i16 %conv, %8
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end.if.end17_crit_edge
  %degrees.0 = phi i16 [ %conv16, %if.then6 ], [ %conv, %if.end.if.end17_crit_edge ]
  %9 = urem i16 %degrees.0, 360
  %rem = zext i16 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rem, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_set_phase(ptr noundef %hw, i32 noundef %degrees) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 %degrees, 90
  %0 = mul i32 %div, 90
  %rem.decomposed = sub i32 %degrees, %0
  %conv4 = and i32 %rem.decomposed, 255
  %mul = mul nuw i32 %conv4, 10000000
  %div5 = udiv i32 %call, 1000
  %mul7 = mul nuw nsw i32 %div5, 216
  %div9 = mul nuw nsw i32 %div5, 108
  %add = add nuw i32 %div9, %mul
  %div10 = udiv i32 %add, %mul7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div10)
  %cmp = icmp ult i32 %div10, 255
  %phi.cast69 = and i32 %div10, 255
  %cond = select i1 %cmp, i32 %phi.cast69, i32 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool15.not = icmp eq i32 %cond, 0
  %cond16 = select i1 %tobool15.not, i32 0, i32 1024
  %shl = shl nuw nsw i32 %cond, 2
  %or = or i32 %cond16, %shl
  %conv18 = and i32 %div, 255
  %or19 = or i32 %or, %conv18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %shift = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %shift, align 4
  %shl23 = shl i32 %or19, %2
  %add25 = add i32 %2, 16
  %shl26 = shl i32 2047, %add25
  %or27 = or i32 %shl23, %shl26
  %3 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %reg = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_mmc_set_phase.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_mmc_set_phase, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !25

if.then34:                                        ; preds = %if.end
  %call35 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift, align 4
  %shr = lshr i32 %or19, %9
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then34.rockchip_mmc_get_phase.exit_crit_edge, label %if.end.i

if.then34.rockchip_mmc_get_phase.exit_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_mmc_get_phase.exit

if.end.i:                                         ; preds = %if.then34
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !21
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %shr.i = lshr i32 %13, %15
  %16 = trunc i32 %shr.i to i16
  %17 = and i16 %16, 3
  %conv.i = mul nuw nsw i16 %17, 90
  %and4.i = and i32 %shr.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then6.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %call.i, 10000
  %mul7.i = mul nuw nsw i32 %div.i, 216
  %and8.i = lshr i32 %shr.i, 2
  %shr9.i = and i32 %and8.i, 255
  %mul10.i = mul i32 %mul7.i, %shr9.i
  %add.i = add i32 %mul10.i, 500000
  %div13.i = udiv i32 %add.i, 1000000
  %18 = trunc i32 %div13.i to i16
  %conv16.i = add nuw nsw i16 %conv.i, %18
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then6.i, %if.end.i.if.end17.i_crit_edge
  %degrees.0.i = phi i16 [ %conv16.i, %if.then6.i ], [ %conv.i, %if.end.i.if.end17.i_crit_edge ]
  %19 = urem i16 %degrees.0.i, 360
  %rem.i = zext i16 %19 to i32
  br label %rockchip_mmc_get_phase.exit

rockchip_mmc_get_phase.exit:                      ; preds = %if.end17.i, %if.then34.rockchip_mmc_get_phase.exit_crit_edge
  %retval.0.i70 = phi i32 [ %rem.i, %if.end17.i ], [ 0, %if.then34.rockchip_mmc_get_phase.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_mmc_set_phase.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.4, ptr noundef %call35, i32 noundef %degrees, i32 noundef %cond, ptr noundef %7, i32 noundef %shr, i32 noundef %retval.0.i70) #7
  br label %cleanup

cleanup:                                          ; preds = %rockchip_mmc_get_phase.exit, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %rockchip_mmc_get_phase.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @rockchip_mmc_clk_ops, !1, !"rockchip_mmc_clk_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-mmc-phase.c", i32 150, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/rockchip/clk-mmc-phase.c", i32 97, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rockchip_mmc_set_phase._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rockchip_mmc_set_phase._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/rockchip/clk-mmc-phase.c", i32 141, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rockchip_mmc_set_phase.__UNIQUE_ID_ddebug169, !9, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 4983732}
!22 = !{i64 2152561633}
!23 = !{i64 2152567330}
!24 = !{i64 4983314}
!25 = !{i64 2148206118, i64 2148206123, i64 2148206136, i64 2148206180, i64 2148206214, i64 2148206235}
