; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/avic.c_pt.bc'
source_filename = "../arch/arm/mach-imx/avic.c"
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

@__of_table_imx_avic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,avic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_avic_init }, section "__irqchip_of_table", align 4
@avic_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx25-ccm\00", [18 x i8] zeroinitializer }, align 32
@mx25_ccm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-imx/avic.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl,avic\00", [23 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mxc_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016MXC IRQ initialized\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxc_init_irq\00", [19 x i8] zeroinitializer }, align 32
@mxc_init_irq._entry_ptr = internal global ptr @mxc_init_irq._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxc-avic\00", [23 x i8] zeroinitializer }, align 32
@avic_extra_irq = internal global { %struct.mxc_extra_irq, [28 x i8] } { %struct.mxc_extra_irq { ptr @avic_set_irq_fiq }, [28 x i8] zeroinitializer }, align 32
@avic_saved_mask_reg = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"avic_base\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 47, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 174, i32 43 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"mx25_ccm_base\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 48, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 201, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 203, i32 43 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 49, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 222, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 130, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"avic_extra_irq\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 73, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"avic_saved_mask_reg\00", align 1
@___asan_gen_.40 = private constant [28 x i8] c"../arch/arm/mach-imx/avic.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 80, i32 12 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__of_table_imx_avic, ptr @mxc_init_irq._entry, ptr @mxc_init_irq._entry_ptr, ptr @avic_base, ptr @.str, ptr @mx25_ccm_base, ptr @.str.1, ptr @.str.2, ptr @domain, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @avic_extra_irq, ptr @avic_saved_mask_reg], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_extra_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_saved_mask_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_avic_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !35

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/avic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mxc_init_irq(ptr noundef nonnull %call) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxc_init_irq(ptr noundef %irqbase) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %irqbase, ptr @avic_base, align 4
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #5
  store ptr %call1, ptr @mx25_ccm_base, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %call1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #5, !srcloc !37
  %0 = load ptr, ptr @mx25_ccm_base, align 4
  %add.ptr2 = getelementptr i8, ptr %0, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1) #5, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @avic_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #5, !srcloc !37
  %2 = load ptr, ptr @avic_base, align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 520093696) #5, !srcloc !37
  %3 = load ptr, ptr @avic_base, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !37
  %4 = load ptr, ptr @avic_base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #5, !srcloc !37
  %5 = load ptr, ptr @avic_base, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #5, !srcloc !37
  %6 = load ptr, ptr @avic_base, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #5, !srcloc !37
  %call10 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 64, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end.if.end25_crit_edge, !prof !35

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef 9, ptr noundef null) #5
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %call32 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #5
  %call33 = tail call ptr @irq_domain_add_legacy(ptr noundef %call32, i32 noundef 64, i32 noundef %call10, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #5
  store ptr %call33, ptr @domain, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end53, label %if.end25.for.body.preheader_crit_edge, !prof !35

if.end25.for.body.preheader_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

do.end53:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 9, ptr noundef null) #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end53, %if.end25.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %irq_base.094 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call10, %for.body.preheader ]
  %cmp67 = phi i1 [ false, %for.body.for.body_crit_edge ], [ true, %for.body.preheader ]
  %i.093 = phi i32 [ 1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call fastcc void @avic_init_gc(i32 noundef %i.093, i32 noundef %irq_base.094) #8
  %add = add i32 %irq_base.094, 32
  br i1 %cmp67, label %for.body.for.body_crit_edge, label %for.body.for.body70_crit_edge

for.body.for.body70_crit_edge:                    ; preds = %for.body
  br label %for.body70

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body.for.body70_crit_edge
  %i.195 = phi i32 [ %inc74, %for.body70.for.body70_crit_edge ], [ 0, %for.body.for.body70_crit_edge ]
  %7 = load ptr, ptr @avic_base, align 4
  %.neg = mul nsw i32 %i.195, -4
  %add71 = add nsw i32 %.neg, 60
  %add.ptr72 = getelementptr i8, ptr %7, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 0) #5, !srcloc !37
  %inc74 = add nuw nsw i32 %i.195, 1
  %exitcond.not = icmp eq i32 %inc74, 8
  br i1 %exitcond.not, label %for.end75, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

for.end75:                                        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 @set_handle_irq(ptr noundef nonnull @avic_handle_irq) #9
  tail call void @init_FIQ(i32 noundef 0) #5
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @avic_init_gc(i32 noundef %idx, i32 noundef %irq_start) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @avic_base, align 4
  %call = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %irq_start, ptr noundef %0, ptr noundef nonnull @handle_level_irq) #5
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 14
  %1 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @avic_extra_irq, ptr %private, align 4
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wake_enabled, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_ack, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 4
  %6 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake, align 4
  %irq_suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 7
  %7 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @avic_irq_suspend, ptr %irq_suspend, align 4
  %irq_resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 8
  %8 = ptrtoint ptr %irq_resume to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @avic_irq_resume, ptr %irq_resume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  %cond = select i1 %tobool.not, i32 20, i32 16
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %mask, align 4
  %ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %ack, align 4
  tail call void @irq_setup_generic_chip(ptr noundef %call, i32 noundef -1, i32 noundef 0, i32 noundef 2048, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_handle_irq(ptr nocapture noundef readnone %regs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @avic_base, align 4
  %add.ptr3 = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !38
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr4 = lshr i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr4)
  %cmp5 = icmp eq i32 %shr4, 65535
  br i1 %cmp5, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %shr6 = phi i32 [ %shr, %if.end.if.end_crit_edge ], [ %shr4, %entry.if.end_crit_edge ]
  %3 = load ptr, ptr @domain, align 4
  %call1 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %shr6) #5
  %4 = load ptr, ptr @avic_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr = lshr i32 %6, 16
  %cmp = icmp eq i32 %shr, 65535
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_FIQ(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_irq_suspend(ptr nocapture noundef readonly %d) #3 align 64 {
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
  %shr = lshr i32 %3, 5
  %4 = load ptr, ptr @avic_base, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 2, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx = getelementptr [2 x i32], ptr @avic_saved_mask_reg, i32 0, i32 %shr
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wake_active, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = load ptr, ptr @avic_base, align 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %add.ptr4 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #5, !srcloc !37
  %16 = load ptr, ptr @mx25_ccm_base, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp = icmp ult i32 %18, 32
  %19 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wake_active, align 4
  %neg = xor i32 %20, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %conv7 = select i1 %cmp, i32 104, i32 108
  %add.ptr8 = getelementptr i8, ptr %16, i32 %conv7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %21) #5, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_irq_resume(ptr nocapture noundef readonly %d) #3 align 64 {
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
  %shr = lshr i32 %3, 5
  %arrayidx = getelementptr [2 x i32], ptr @avic_saved_mask_reg, i32 0, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @avic_base, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 2, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !37
  %10 = load ptr, ptr @mx25_ccm_base, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp ult i32 %12, 32
  %conv2 = select i1 %cmp, i32 104, i32 108
  %add.ptr3 = getelementptr i8, ptr %10, i32 %conv2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #5, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avic_set_irq_fiq(i32 noundef %hwirq, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %hwirq)
  %cmp = icmp ugt i32 %hwirq, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %hwirq)
  %cmp1 = icmp ult i32 %hwirq, 32
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @avic_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl nuw i32 1, %hwirq
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool = icmp ne i32 %type, 0
  %lnot.ext = zext i1 %tobool to i32
  %shl4 = shl nuw i32 %lnot.ext, %hwirq
  %or = or i32 %and, %shl4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = load ptr, ptr @avic_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #5, !srcloc !37
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %hwirq, -32
  %5 = load ptr, ptr @avic_base, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !38
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shl10 = shl nuw i32 1, %sub
  %neg11 = xor i32 %shl10, -1
  %and12 = and i32 %7, %neg11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool13 = icmp ne i32 %type, 0
  %lnot.ext17 = zext i1 %tobool13 to i32
  %shl18 = shl nuw i32 %lnot.ext17, %sub
  %or19 = or i32 %and12, %shl18
  %8 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %9 = load ptr, ptr @avic_base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %8) #5, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__of_table_imx_avic, !1, !"__of_table_imx_avic", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/avic.c", i32 236, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/avic.c", i32 174, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/avic.c", i32 201, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/avic.c", i32 203, i32 43}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/avic.c", i32 222, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mxc_init_irq._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mxc_init_irq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @avic_base, !14, !"avic_base", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-imx/avic.c", i32 47, i32 22}
!15 = !{ptr @mx25_ccm_base, !16, !"mx25_ccm_base", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-imx/avic.c", i32 48, i32 22}
!17 = !{ptr @domain, !18, !"domain", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-imx/avic.c", i32 49, i32 27}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-imx/avic.c", i32 130, i32 30}
!21 = !{ptr @avic_extra_irq, !22, !"avic_extra_irq", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-imx/avic.c", i32 73, i32 29}
!23 = !{ptr @avic_saved_mask_reg, !24, !"avic_saved_mask_reg", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-imx/avic.c", i32 80, i32 12}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2153636840, i64 2153637329, i64 2153636877, i64 2153636933, i64 2153636967, i64 2153636991, i64 2153637032, i64 2153637053, i64 2153637081, i64 2153637115}
!37 = !{i64 4084738}
!38 = !{i64 4085156}
