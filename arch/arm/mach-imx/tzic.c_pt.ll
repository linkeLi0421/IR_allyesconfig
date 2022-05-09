; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/tzic.c_pt.bc'
source_filename = "../arch/arm/mach-imx/tzic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mxc_extra_irq = type { ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_tzic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,tzic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tzic_init_dt }, section "__irqchip_of_table", align 4
@tzic_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-imx/tzic.c\00", [39 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tzic_init_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016TrustZone Interrupt Controller (TZIC) initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tzic_init_dt\00", [19 x i8] zeroinitializer }, align 32
@tzic_init_dt._entry_ptr = internal global ptr @tzic_init_dt._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tzic\00", [27 x i8] zeroinitializer }, align 32
@tzic_extra_irq = internal global { %struct.mxc_extra_irq, [28 x i8] } { %struct.mxc_extra_irq { ptr @tzic_set_irq_fiq }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"tzic_base\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 46, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 155, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 47, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 192, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 105, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"tzic_extra_irq\00", align 1
@___asan_gen_.26 = private constant [28 x i8] c"../arch/arm/mach-imx/tzic.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 94, i32 29 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__of_table_tzic, ptr @tzic_init_dt._entry, ptr @tzic_init_dt._entry_ptr, ptr @tzic_base, ptr @.str, ptr @domain, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tzic_extra_irq], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tzic_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tzic_init_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tzic_extra_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tzic_init_dt(ptr noundef %np, ptr nocapture noundef readnone %p) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @tzic_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = load ptr, ptr @tzic_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !28
  %2 = load ptr, ptr @tzic_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 16777600) #5, !srcloc !29
  %3 = load ptr, ptr @tzic_base, align 4
  %add.ptr24 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 520093696) #5, !srcloc !29
  %4 = load ptr, ptr @tzic_base, align 4
  %add.ptr25 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 33554432) #5, !srcloc !29
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0131 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = load ptr, ptr @tzic_base, align 4
  %shl = shl i32 %i.0131, 2
  %add = add nuw nsw i32 %shl, 128
  %add.ptr26 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1) #5, !srcloc !29
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body.for.body29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.body29_crit_edge:                    ; preds = %for.body
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body.for.body29_crit_edge
  %i.1132 = phi i32 [ %inc34, %for.body29.for.body29_crit_edge ], [ 0, %for.body.for.body29_crit_edge ]
  %6 = load ptr, ptr @tzic_base, align 4
  %shl30 = shl i32 %i.1132, 2
  %add31 = add nuw nsw i32 %shl30, 384
  %add.ptr32 = getelementptr i8, ptr %6, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #5, !srcloc !29
  %inc34 = add nuw nsw i32 %i.1132, 1
  %exitcond135.not = icmp eq i32 %inc34, 4
  br i1 %exitcond135.not, label %for.end35, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29

for.end35:                                        ; preds = %for.body29
  %call37 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %do.end55, label %for.end35.if.end61_crit_edge, !prof !27

for.end35.if.end61_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end55:                                         ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #5
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %for.end35.if.end61_crit_edge
  %call69 = tail call ptr @irq_domain_add_legacy(ptr noundef %np, i32 noundef 128, i32 noundef %call37, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #5
  store ptr %call69, ptr @domain, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %do.end89, label %if.end61.for.body105.preheader_crit_edge, !prof !27

if.end61.for.body105.preheader_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body105.preheader

do.end89:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #5
  br label %for.body105.preheader

for.body105.preheader:                            ; preds = %do.end89, %if.end61.for.body105.preheader_crit_edge
  br label %for.body105

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.body105.preheader
  %irq_base.0134 = phi i32 [ %add108, %for.body105.for.body105_crit_edge ], [ %call37, %for.body105.preheader ]
  %i.2133 = phi i32 [ %inc107, %for.body105.for.body105_crit_edge ], [ 0, %for.body105.preheader ]
  tail call fastcc void @tzic_init_gc(i32 noundef %i.2133, i32 noundef %irq_base.0134) #8
  %inc107 = add nuw nsw i32 %i.2133, 1
  %add108 = add i32 %irq_base.0134, 32
  %exitcond136.not = icmp eq i32 %inc107, 4
  br i1 %exitcond136.not, label %for.end109, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body105

for.end109:                                       ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #7
  %call110 = tail call i32 @set_handle_irq(ptr noundef nonnull @tzic_handle_irq) #9
  tail call void @init_FIQ(i32 noundef 0) #5
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tzic_enable_wake() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tzic_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !29
  %1 = load ptr, ptr @tzic_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @tzic_base, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !28
  %5 = load ptr, ptr @tzic_base, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #5, !srcloc !29
  %6 = load ptr, ptr @tzic_base, align 4
  %add.ptr5.1 = getelementptr i8, ptr %6, i32 260
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #5, !srcloc !28
  %8 = load ptr, ptr @tzic_base, align 4
  %add.ptr10.1 = getelementptr i8, ptr %8, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.1, i32 %7) #5, !srcloc !29
  %9 = load ptr, ptr @tzic_base, align 4
  %add.ptr5.2 = getelementptr i8, ptr %9, i32 264
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #5, !srcloc !28
  %11 = load ptr, ptr @tzic_base, align 4
  %add.ptr10.2 = getelementptr i8, ptr %11, i32 3592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.2, i32 %10) #5, !srcloc !29
  %12 = load ptr, ptr @tzic_base, align 4
  %add.ptr5.3 = getelementptr i8, ptr %12, i32 268
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #5, !srcloc !28
  %14 = load ptr, ptr @tzic_base, align 4
  %add.ptr10.3 = getelementptr i8, ptr %14, i32 3596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.3, i32 %13) #5, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tzic_init_gc(i32 noundef %idx, i32 noundef %irq_start) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tzic_base, align 4
  %call = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef %irq_start, ptr noundef %0, ptr noundef nonnull @handle_level_irq) #5
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 14
  %1 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tzic_extra_irq, ptr %private, align 4
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wake_enabled, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 4
  %5 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake, align 4
  %irq_suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 7
  %6 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tzic_irq_suspend, ptr %irq_suspend, align 4
  %irq_resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 8
  %7 = ptrtoint ptr %irq_resume to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tzic_irq_resume, ptr %irq_resume, align 4
  %shl = shl i32 %idx, 2
  %add = add i32 %shl, 384
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %disable, align 4
  %add6 = add i32 %shl, 256
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add6, ptr %regs, align 4
  tail call void @irq_setup_generic_chip(ptr noundef %call, i32 noundef -1, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tzic_handle_irq(ptr nocapture noundef readnone %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %for.inc.3.do.body_crit_edge, %entry
  %0 = load ptr, ptr @tzic_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 3456
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %2 = load ptr, ptr @tzic_base, align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 128
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !28
  %4 = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not20 = icmp eq i32 %4, 0
  br i1 %tobool.not20, label %do.body.for.inc_crit_edge, label %while.body.lr.ph

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.lr.ph:                                 ; preds = %do.body
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %stat.021 = phi i32 [ %5, %while.body.lr.ph ], [ %and11, %while.body.while.body_crit_edge ]
  %6 = tail call i32 @llvm.ctlz.i32(i32 %stat.021, i1 true) #5, !range !30
  %sub = xor i32 %6, 31
  %7 = load ptr, ptr @domain, align 4
  %call9 = tail call i32 @generic_handle_domain_irq(ptr noundef %7, i32 noundef %sub) #5
  %shl10 = shl nuw i32 1, %sub
  %neg = xor i32 %shl10, -1
  %and11 = and i32 %stat.021, %neg
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %handled.1.lcssa = phi i32 [ 0, %do.body.for.inc_crit_edge ], [ 1, %while.body.for.inc_crit_edge ]
  %8 = load ptr, ptr @tzic_base, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 3460
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #5, !srcloc !28
  %10 = load ptr, ptr @tzic_base, align 4
  %add.ptr4.1 = getelementptr i8, ptr %10, i32 132
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.1) #5, !srcloc !28
  %12 = and i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not20.1 = icmp eq i32 %12, 0
  br i1 %tobool.not20.1, label %for.inc.for.inc.1_crit_edge, label %while.body.lr.ph.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

while.body.lr.ph.1:                               ; preds = %for.inc
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.body.lr.ph.1
  %stat.021.1 = phi i32 [ %13, %while.body.lr.ph.1 ], [ %and11.1, %while.body.1.while.body.1_crit_edge ]
  %14 = tail call i32 @llvm.ctlz.i32(i32 %stat.021.1, i1 true) #5, !range !30
  %sub.1 = xor i32 %14, 31
  %15 = load ptr, ptr @domain, align 4
  %add8.1 = or i32 %sub.1, 32
  %call9.1 = tail call i32 @generic_handle_domain_irq(ptr noundef %15, i32 noundef %add8.1) #5
  %shl10.1 = shl nuw i32 1, %sub.1
  %neg.1 = xor i32 %shl10.1, -1
  %and11.1 = and i32 %stat.021.1, %neg.1
  %tobool.not.1 = icmp eq i32 %and11.1, 0
  br i1 %tobool.not.1, label %while.body.1.for.inc.1_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.1

while.body.1.for.inc.1_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %while.body.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %handled.1.lcssa.1 = phi i32 [ %handled.1.lcssa, %for.inc.for.inc.1_crit_edge ], [ 1, %while.body.1.for.inc.1_crit_edge ]
  %16 = load ptr, ptr @tzic_base, align 4
  %add.ptr.2 = getelementptr i8, ptr %16, i32 3464
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #5, !srcloc !28
  %18 = load ptr, ptr @tzic_base, align 4
  %add.ptr4.2 = getelementptr i8, ptr %18, i32 136
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.2) #5, !srcloc !28
  %20 = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not20.2 = icmp eq i32 %20, 0
  br i1 %tobool.not20.2, label %for.inc.1.for.inc.2_crit_edge, label %while.body.lr.ph.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

while.body.lr.ph.2:                               ; preds = %for.inc.1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.body.lr.ph.2
  %stat.021.2 = phi i32 [ %21, %while.body.lr.ph.2 ], [ %and11.2, %while.body.2.while.body.2_crit_edge ]
  %22 = tail call i32 @llvm.ctlz.i32(i32 %stat.021.2, i1 true) #5, !range !30
  %sub.2 = xor i32 %22, 31
  %23 = load ptr, ptr @domain, align 4
  %add8.2 = or i32 %sub.2, 64
  %call9.2 = tail call i32 @generic_handle_domain_irq(ptr noundef %23, i32 noundef %add8.2) #5
  %shl10.2 = shl nuw i32 1, %sub.2
  %neg.2 = xor i32 %shl10.2, -1
  %and11.2 = and i32 %stat.021.2, %neg.2
  %tobool.not.2 = icmp eq i32 %and11.2, 0
  br i1 %tobool.not.2, label %while.body.2.for.inc.2_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.2

while.body.2.for.inc.2_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %while.body.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %handled.1.lcssa.2 = phi i32 [ %handled.1.lcssa.1, %for.inc.1.for.inc.2_crit_edge ], [ 1, %while.body.2.for.inc.2_crit_edge ]
  %24 = load ptr, ptr @tzic_base, align 4
  %add.ptr.3 = getelementptr i8, ptr %24, i32 3468
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #5, !srcloc !28
  %26 = load ptr, ptr @tzic_base, align 4
  %add.ptr4.3 = getelementptr i8, ptr %26, i32 140
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.3) #5, !srcloc !28
  %28 = and i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not20.3 = icmp eq i32 %28, 0
  br i1 %tobool.not20.3, label %for.inc.2.for.inc.3_crit_edge, label %while.body.lr.ph.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

while.body.lr.ph.3:                               ; preds = %for.inc.2
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %while.body.lr.ph.3
  %stat.021.3 = phi i32 [ %29, %while.body.lr.ph.3 ], [ %and11.3, %while.body.3.while.body.3_crit_edge ]
  %30 = tail call i32 @llvm.ctlz.i32(i32 %stat.021.3, i1 true) #5, !range !30
  %sub.3 = xor i32 %30, 31
  %31 = load ptr, ptr @domain, align 4
  %add8.3 = or i32 %sub.3, 96
  %call9.3 = tail call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %add8.3) #5
  %shl10.3 = shl nuw i32 1, %sub.3
  %neg.3 = xor i32 %shl10.3, -1
  %and11.3 = and i32 %stat.021.3, %neg.3
  %tobool.not.3 = icmp eq i32 %and11.3, 0
  br i1 %tobool.not.3, label %while.body.3.for.inc.3_crit_edge, label %while.body.3.while.body.3_crit_edge

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.3

while.body.3.for.inc.3_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %while.body.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %handled.1.lcssa.3 = phi i32 [ %handled.1.lcssa.2, %for.inc.2.for.inc.3_crit_edge ], [ 1, %while.body.3.for.inc.3_crit_edge ]
  %tobool12.not = icmp eq i32 %handled.1.lcssa.3, 0
  br i1 %tobool12.not, label %do.end, label %for.inc.3.do.body_crit_edge

for.inc.3.do.body_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_FIQ(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tzic_irq_suspend(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_active, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @tzic_base, align 4
  %8 = lshr i32 %3, 3
  %shl = and i32 %8, 536870908
  %add = add nuw nsw i32 %shl, 3584
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tzic_irq_resume(ptr nocapture noundef readonly %d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %2 = load ptr, ptr @tzic_base, align 4
  %3 = lshr i32 %1, 3
  %shl = and i32 %3, 536870908
  %add = add nuw nsw i32 %shl, 256
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %5 = load ptr, ptr @tzic_base, align 4
  %add2 = add nuw nsw i32 %shl, 3584
  %add.ptr3 = getelementptr i8, ptr %5, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #5, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tzic_set_irq_fiq(i32 noundef %hwirq, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %hwirq)
  %cmp = icmp ugt i32 %hwirq, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %and
  %0 = load ptr, ptr @tzic_base, align 4
  %1 = lshr i32 %hwirq, 3
  %shl2 = and i32 %1, 536870908
  %add = add nuw nsw i32 %shl2, 128
  %add.ptr = getelementptr i8, ptr %0, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool3.not = icmp eq i32 %type, 0
  %neg = xor i32 %shl, -1
  %and5 = and i32 %3, %neg
  %value.0 = select i1 %tobool3.not, i32 %or, i32 %and5
  %4 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %5 = load ptr, ptr @tzic_base, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #5, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__of_table_tzic, !1, !"__of_table_tzic", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/tzic.c", i32 196, i32 1}
!2 = !{ptr @tzic_base, !3, !"tzic_base", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/tzic.c", i32 46, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/tzic.c", i32 155, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/tzic.c", i32 192, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tzic_init_dt._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @tzic_init_dt._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @domain, !12, !"domain", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-imx/tzic.c", i32 47, i32 27}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-imx/tzic.c", i32 105, i32 30}
!15 = !{ptr @tzic_extra_irq, !16, !"tzic_extra_irq", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/tzic.c", i32 94, i32 29}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 4775080}
!29 = !{i64 4774662}
!30 = !{i32 0, i32 33}
