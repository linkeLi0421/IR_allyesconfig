; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/softrst.c_pt.bc'
source_filename = "../drivers/clk/rockchip/softrst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rockchip_register_softrst\22, \22a\22\09"
module asm "\09.weak\09__crc_rockchip_register_softrst\09\09\09\09"
module asm "\09.long\09__crc_rockchip_register_softrst\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_register_softrst:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_register_softrst\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_register_softrst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rockchip_softrst = type { %struct.reset_controller_dev, ptr, i32, i32, i8, %struct.spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@rockchip_register_softrst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&softrst->lock\00", [17 x i8] zeroinitializer }, align 32
@rockchip_softrst_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @rockchip_softrst_assert, ptr @rockchip_softrst_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@rockchip_register_softrst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: could not register reset controller, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_register_softrst\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/rockchip/softrst.c\00", [33 x i8] zeroinitializer }, align 32
@rockchip_register_softrst._entry_ptr = internal global ptr @rockchip_register_softrst._entry, section ".printk_index", align 4
@__kstrtab_rockchip_register_softrst = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_register_softrst = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_register_softrst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_register_softrst to i32), ptr @__kstrtab_rockchip_register_softrst, ptr @__kstrtabns_rockchip_register_softrst }, section "___ksymtab_gpl+rockchip_register_softrst", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 91, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"rockchip_softrst_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 75, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [34 x i8] c"../drivers/clk/rockchip/softrst.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 105, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_rockchip_register_softrst, ptr @rockchip_register_softrst._entry, ptr @rockchip_register_softrst._entry_ptr, ptr @rockchip_register_softrst.__key, ptr @.str, ptr @rockchip_softrst_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_register_softrst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_softrst_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_register_softrst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_register_softrst(ptr noundef %np, i32 noundef %num_regs, ptr noundef %base, i8 noundef zeroext %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.rockchip_softrst, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @rockchip_register_softrst.__key, i16 noundef signext 3) #5
  %reg_base = getelementptr inbounds %struct.rockchip_softrst, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %reg_base, align 4
  %flags2 = getelementptr inbounds %struct.rockchip_softrst, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %flags, ptr %flags2, align 8
  %num_regs3 = getelementptr inbounds %struct.rockchip_softrst, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %num_regs3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_regs, ptr %num_regs3, align 8
  %4 = and i8 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool4.not, i32 32, i32 16
  %num_per_reg = getelementptr inbounds %struct.rockchip_softrst, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %num_per_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %num_per_reg, align 4
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 4
  %mul = mul i32 %cond, %num_regs
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %nr_resets, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rockchip_softrst_ops, ptr %call7.i.i, align 8
  %of_node = getelementptr inbounds %struct.reset_controller_dev, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %np, ptr %of_node, align 4
  %call10 = tail call i32 @reset_controller_register(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %do.end15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call10) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_softrst_assert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_per_reg = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %num_per_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_per_reg, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %id, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %id, %2
  %flags = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %shl = shl nuw i32 1, %rem.decomposed
  %shl3 = shl i32 %shl, 16
  %or = or i32 %shl3, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_base = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %div, 2
  %add.ptr4 = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #5, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 5
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %reg_base15 = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base15, align 4
  %mul16 = shl i32 %div, 2
  %add.ptr17 = getelementptr i8, ptr %10, i32 %mul16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !24
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %shl24 = shl nuw i32 1, %rem.decomposed
  %or25 = or i32 %12, %shl24
  %13 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %14 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base15, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 %mul16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %13) #5, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_softrst_deassert(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_per_reg = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %num_per_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_per_reg, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %id, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %id, %2
  %flags = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 4
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %shl2 = shl i32 65536, %rem.decomposed
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl2)
  %reg_base = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %div, 2
  %add.ptr3 = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #5, !srcloc !23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 5
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %reg_base14 = getelementptr inbounds %struct.rockchip_softrst, ptr %rcdev, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base14, align 4
  %mul15 = shl i32 %div, 2
  %add.ptr16 = getelementptr i8, ptr %10, i32 %mul15
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !24
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %shl23 = shl nuw i32 1, %rem.decomposed
  %neg = xor i32 %shl23, -1
  %and24 = and i32 %12, %neg
  %13 = tail call i32 @llvm.bswap.i32(i32 %and24)
  %14 = ptrtoint ptr %reg_base14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base14, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 %mul15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %13) #5, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @rockchip_register_softrst.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/softrst.c", i32 91, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/clk/rockchip/softrst.c", i32 105, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rockchip_register_softrst._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @rockchip_register_softrst._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_rockchip_register_softrst, !10, !"__ksymtab_rockchip_register_softrst", i1 false, i1 false}
!10 = !{!"../drivers/clk/rockchip/softrst.c", i32 110, i32 1}
!11 = !{ptr @rockchip_softrst_ops, !12, !"rockchip_softrst_ops", i1 false, i1 false}
!12 = !{!"../drivers/clk/rockchip/softrst.c", i32 75, i32 39}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2152530351}
!23 = !{i64 4559693}
!24 = !{i64 4560111}
!25 = !{i64 2152531656}
!26 = !{i64 2152531998}
!27 = !{i64 2152533948}
!28 = !{i64 2152535148}
!29 = !{i64 2152535492}
