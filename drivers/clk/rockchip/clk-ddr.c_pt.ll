; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-ddr.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-ddr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rockchip_clk_register_ddrclk\22, \22a\22\09"
module asm "\09.weak\09__crc_rockchip_clk_register_ddrclk\09\09\09\09"
module asm "\09.long\09__crc_rockchip_clk_register_ddrclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_clk_register_ddrclk:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_clk_register_ddrclk\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_clk_register_ddrclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_ddrclk = type { %struct.clk_hw, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@rockchip_ddrclk_sip_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_ddrclk_sip_recalc_rate, ptr @rockchip_ddrclk_sip_round_rate, ptr null, ptr null, ptr @rockchip_ddrclk_get_parent, ptr @rockchip_ddrclk_sip_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_clk_register_ddrclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: unsupported ddrclk type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_clk_register_ddrclk\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/rockchip/clk-ddr.c\00", [33 x i8] zeroinitializer }, align 32
@rockchip_clk_register_ddrclk._entry_ptr = internal global ptr @rockchip_clk_register_ddrclk._entry, section ".printk_index", align 4
@__kstrtab_rockchip_clk_register_ddrclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_clk_register_ddrclk = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_clk_register_ddrclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_clk_register_ddrclk to i32), ptr @__kstrtab_rockchip_clk_register_ddrclk, ptr @__kstrtabns_rockchip_clk_register_ddrclk }, section "___ksymtab_gpl+rockchip_clk_register_ddrclk", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"rockchip_ddrclk_sip_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 83, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [34 x i8] c"../drivers/clk/rockchip/clk-ddr.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 118, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_rockchip_clk_register_ddrclk, ptr @rockchip_clk_register_ddrclk._entry, ptr @rockchip_clk_register_ddrclk._entry_ptr, ptr @rockchip_ddrclk_sip_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_ddrclk_sip_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_ddrclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_ddrclk(ptr noundef %name, i32 noundef %flags, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %mux_offset, i32 noundef %mux_shift, i32 noundef %mux_width, i32 noundef %div_shift, i32 noundef %div_width, i32 noundef %ddr_flag, ptr noundef %reg_base, ptr noundef %lock) #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %4 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parent_names, ptr %parent_names3, align 4
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %5 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %num_parents, ptr %num_parents4, align 4
  %flags5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %or = or i32 %flags, 128
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %flags5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ddr_flag)
  %cond = icmp eq i32 %ddr_flag, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rockchip_ddrclk_sip_ops, ptr %ops, align 4
  %reg_base9 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg_base, ptr %reg_base9, align 4
  %lock10 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock10, align 8
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init11, align 8
  %mux_offset12 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %mux_offset12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mux_offset, ptr %mux_offset12, align 8
  %mux_shift13 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %mux_shift13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mux_shift, ptr %mux_shift13, align 4
  %mux_width14 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %mux_width14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mux_width, ptr %mux_width14, align 8
  %div_shift15 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %div_shift15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div_shift, ptr %div_shift15, align 4
  %div_width16 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %div_width16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div_width, ptr %div_width16, align 8
  %ddr_flag17 = getelementptr inbounds %struct.rockchip_ddrclk, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %ddr_flag17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %ddr_flag17, align 4
  %call19 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %ddr_flag) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call19, %if.then21 ], [ %call19, %sw.bb.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #6
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #6
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #6
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #6
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %rate, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #6
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #6
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @rockchip_ddrclk_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.rockchip_ddrclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mux_offset = getelementptr inbounds %struct.rockchip_ddrclk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %mux_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mux_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  %mux_shift = getelementptr inbounds %struct.rockchip_ddrclk, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux_shift, align 4
  %shr = lshr i32 %5, %7
  %mux_width = getelementptr inbounds %struct.rockchip_ddrclk, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %mux_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mux_width, align 4
  %sub4 = sub i32 32, %9
  %shr5 = lshr i32 -1, %sub4
  %and6 = and i32 %shr5, %shr
  %conv = trunc i32 %and6 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_ddrclk_sip_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #6
  %lock = getelementptr inbounds %struct.rockchip_ddrclk, ptr %hw, i32 0, i32 8
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  call void @__arm_smccc_smc(i32 noundef -2113929208, i32 noundef %drate, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #6
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %call3) #6
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-ddr.c", i32 118, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rockchip_clk_register_ddrclk._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rockchip_clk_register_ddrclk._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_rockchip_clk_register_ddrclk, !7, !"__ksymtab_rockchip_clk_register_ddrclk", i1 false, i1 false}
!7 = !{!"../drivers/clk/rockchip/clk-ddr.c", i32 139, i32 1}
!8 = !{ptr @rockchip_ddrclk_sip_ops, !9, !"rockchip_ddrclk_sip_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/rockchip/clk-ddr.c", i32 83, i32 29}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4079362}
!20 = !{i64 2152580264}
