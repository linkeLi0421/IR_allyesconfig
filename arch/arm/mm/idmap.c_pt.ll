; ModuleID = '/llk/IR_all_yes/arch/arm/mm/idmap.c_pt.bc'
source_filename = "../arch/arm/mm/idmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_idmap__240_120_init_static_idmapearly = internal global ptr @init_static_idmap, section ".initcallearly.init", align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@idmap_pgd = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@arch_phys_to_idmap_offset = dso_local local_unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@__idmap_text_start = external dso_local global [0 x i8], align 1
@__idmap_text_end = external dso_local global [0 x i8], align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@identity_mapping_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Setting up static identity map for 0x%lx - 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"identity_mapping_add\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arch/arm/mm/idmap.c\00", [44 x i8] zeroinitializer }, align 32
@identity_mapping_add._entry_ptr = internal global ptr @identity_mapping_add._entry, section ".printk_index", align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [23 x i8] c"../arch/arm/mm/idmap.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 89, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_idmap__240_120_init_static_idmapearly, ptr @identity_mapping_add._entry, ptr @identity_mapping_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identity_mapping_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_static_idmap() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pgd_alloc(ptr noundef nonnull @init_mm) #6
  store ptr %call, ptr @idmap_pgd, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @__idmap_text_start to i32)) #6
  %0 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %1 = trunc i64 %0 to i32
  %addr.addr.0.i.i.i = add i32 %call.i.i, %1
  %call.i1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @__idmap_text_end to i32)) #6
  %2 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %3 = trunc i64 %2 to i32
  %addr.addr.0.i.i2.i = add i32 %call.i1.i, %3
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %addr.addr.0.i.i.i, i32 noundef %addr.addr.0.i.i2.i) #9
  %call3.i = tail call i32 @cpu_architecture() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 8
  %spec.select.i = select i1 %cmp.i, i32 1042, i32 1026
  %shr.i = lshr i32 %addr.addr.0.i.i.i, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %call, i32 %shr.i
  %sub8.i = add i32 %addr.addr.0.i.i2.i, -1
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.body5.i.do.body5.i_crit_edge, %if.end
  %addr.0.i = phi i32 [ %addr.addr.0.i.i.i, %if.end ], [ %and6.call1.i, %do.body5.i.do.body5.i_crit_edge ]
  %pgd.addr.0.i = phi ptr [ %add.ptr.i, %if.end ], [ %incdec.ptr.i, %do.body5.i.do.body5.i_crit_edge ]
  %add.i = add i32 %addr.0.i, 2097152
  %and6.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and6.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub8.i)
  %cmp9.i = icmp ult i32 %sub.i, %sub8.i
  %and6.call1.i = select i1 %cmp9.i, i32 %and6.i, i32 %addr.addr.0.i.i2.i
  %and.i.i.i = and i32 %addr.0.i, -2097152
  %or.i.i.i = or i32 %and.i.i.i, %spec.select.i
  %4 = ptrtoint ptr %pgd.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i.i.i, ptr %pgd.addr.0.i, align 4
  %add.i.i.i = or i32 %or.i.i.i, 1048576
  %arrayidx1.i.i.i = getelementptr i32, ptr %pgd.addr.0.i, i32 1
  %5 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i.i.i, ptr %arrayidx1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %pgd.addr.0.i, i32 %6, i32 1073741824) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.addr.0.i, i32 1
  %cmp11.not.i = icmp eq i32 %and6.call1.i, %addr.addr.0.i.i2.i
  br i1 %cmp11.not.i, label %identity_mapping_add.exit, label %do.body5.i.do.body5.i_crit_edge

do.body5.i.do.body5.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

identity_mapping_add.exit:                        ; preds = %do.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %7 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %identity_mapping_add.exit.return_crit_edge

identity_mapping_add.exit.return_crit_edge:       ; preds = %identity_mapping_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %identity_mapping_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %8() #6
  br label %return

return:                                           ; preds = %if.then2, %identity_mapping_add.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %identity_mapping_add.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_mm_for_reboot() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %switch_mm = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %switch_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_mm, align 4
  %8 = load ptr, ptr @idmap_pgd, align 4
  %9 = ptrtoint ptr %8 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %9) #6
  tail call void %7(i32 noundef %call.i, ptr noundef nonnull @init_mm) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %and1.i.i = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__local_flush_bp_all.exit.i_crit_edge, label %if.then.i.i

entry.__local_flush_bp_all.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__local_flush_bp_all.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #6, !srcloc !24
  br label %__local_flush_bp_all.exit.i

__local_flush_bp_all.exit.i:                      ; preds = %if.then.i.i, %entry.__local_flush_bp_all.exit.i_crit_edge
  %and1.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge, label %if.then.i

__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge: ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %local_flush_bp_all.exit

if.then.i:                                        ; preds = %__local_flush_bp_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #6, !srcloc !25
  br label %local_flush_bp_all.exit

local_flush_bp_all.exit:                          ; preds = %if.then.i, %__local_flush_bp_all.exit.i.local_flush_bp_all.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %12, i32 4608) #6, !srcloc !27
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %12, i32 9216) #6, !srcloc !28
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %12, i32 18432) #6, !srcloc !29
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %11, i32 2097152) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pgd_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_idmap__240_120_init_static_idmapearly, !1, !"__initcall__kmod_idmap__240_120_init_static_idmapearly", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/idmap.c", i32 120, i32 1}
!2 = !{ptr @idmap_pgd, !3, !"idmap_pgd", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/idmap.c", i32 20, i32 8}
!4 = !{ptr @arch_phys_to_idmap_offset, !5, !"arch_phys_to_idmap_offset", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/idmap.c", i32 21, i32 11}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/idmap.c", i32 89, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @identity_mapping_add._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @identity_mapping_add._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2152319036, i64 2152319049}
!23 = !{i64 2152325202}
!24 = !{i64 4218935}
!25 = !{i64 4219162}
!26 = !{i64 2152213183}
!27 = !{i64 2152204530, i64 2152204543}
!28 = !{i64 2152206808, i64 2152206821}
!29 = !{i64 2152209089, i64 2152209102}
!30 = !{i64 2152213479, i64 2152213492}
!31 = !{i64 2152217350}
!32 = !{i64 2152217435}
