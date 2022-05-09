; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-aspeed-vic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-aspeed-vic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.aspeed_vic = type { ptr, [2 x i32], ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_ast2400_vic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @avic_of_init }, section "__irqchip_of_table", align 4
@__of_table_ast2500_vic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @avic_of_init }, section "__irqchip_of_table", align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-aspeed-vic.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"non-root Aspeed VIC not supported\00", [62 x i8] zeroinitializer }, align 32
@system_avic = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"duplicate Aspeed VIC not supported\00", [61 x i8] zeroinitializer }, align 32
@avic_dom_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @avic_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@avic_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @avic_ack_irq, ptr @avic_mask_irq, ptr @avic_mask_ack_irq, ptr @avic_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVIC\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 190, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"system_avic\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 56, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 192, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"avic_dom_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 179, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"avic_chip\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 151, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [36 x i8] c"../drivers/irqchip/irq-aspeed-vic.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 152, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__of_table_ast2400_vic, ptr @__of_table_ast2500_vic, ptr @.str, ptr @.str.1, ptr @system_avic, ptr @.str.2, ptr @avic_dom_ops, ptr @avic_chip, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_avic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_dom_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @avic_of_init(ptr noundef %node, ptr noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  %0 = load ptr, ptr @system_avic, align 4
  %tobool24.not = icmp eq ptr %0, null
  br i1 %tobool24.not, label %if.end56, label %do.end40, !prof !26

do.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end22
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  %tobool58.not = icmp eq ptr %call, null
  br i1 %tobool58.not, label %do.end76, label %if.end92, !prof !27

do.end76:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end92:                                         ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #9
  %tobool95.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool95.not, label %do.end113, label %if.end129, !prof !27

do.end113:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  tail call void @iounmap(ptr noundef nonnull %call) #6
  br label %cleanup

if.end129:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %call, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %add.ptr6.i = getelementptr i8, ptr %call, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -1) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %add.ptr11.i = getelementptr i8, ptr %call, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 -1) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %add.ptr17.i = getelementptr i8, ptr %call, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 -1) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %add.ptr22.i = getelementptr i8, ptr %call, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %add.ptr28.i = getelementptr i8, ptr %call, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #6, !srcloc !29
  %add.ptr30.i = getelementptr i8, ptr %call, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %edge_sources.i = getelementptr inbounds %struct.aspeed_vic, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %edge_sources.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %edge_sources.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %call, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %8 = xor i32 %7, -1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %arrayidx42.i = getelementptr %struct.aspeed_vic, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx42.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add.ptr47.i = getelementptr i8, ptr %call, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 -1) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add.ptr53.i = getelementptr i8, ptr %call, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 -1) #6, !srcloc !29
  store ptr %call7.i.i, ptr @system_avic, align 4
  %call130 = tail call i32 @set_handle_irq(ptr noundef nonnull @avic_handle_irq) #10
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @avic_dom_ops, ptr noundef nonnull %call7.i.i) #6
  %dom = getelementptr inbounds %struct.aspeed_vic, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dom to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i, ptr %dom, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %do.end113, %do.end76, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -5, %do.end76 ], [ -12, %do.end113 ], [ 0, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_handle_irq(ptr nocapture noundef readnone %regs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @system_avic, align 4
  %dom = getelementptr inbounds %struct.aspeed_vic, ptr %0, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !35
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !35
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %irq.0 = phi i32 [ 0, %for.cond.if.end_crit_edge ], [ 32, %if.then ]
  %stat.0 = phi i32 [ %4, %for.cond.if.end_crit_edge ], [ %8, %if.then ]
  %cmp = icmp eq i32 %stat.0, 0
  br i1 %cmp, label %for.end, label %if.end8

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.cttz.i32(i32 %stat.0, i1 true), !range !40
  %add = or i32 %9, %irq.0
  %10 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dom, align 4
  %call9 = tail call i32 @generic_handle_domain_irq(ptr noundef %11, i32 noundef %add) #6
  br label %for.cond

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avic_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %hwirq)
  %cmp = icmp ugt i32 %hwirq, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %shr = lshr i32 %hwirq, 5
  %and = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %and
  %arrayidx = getelementptr %struct.aspeed_vic, ptr %1, i32 0, i32 1, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and1 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %handle_level_irq.handle_edge_irq = select i1 %tobool.not, ptr @handle_level_irq, ptr @handle_edge_irq
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @avic_chip, ptr noundef nonnull %handle_level_irq.handle_edge_irq, ptr noundef null) #6
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_ack_irq(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  %arrayidx = getelementptr %struct.aspeed_vic, ptr %1, i32 0, i32 1, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 88
  %mul = shl nuw nsw i32 %shr, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #6, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_mask_irq(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  %7 = lshr i32 %3, 3
  %mul = and i32 %7, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_mask_ack_irq(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 40
  %mul = shl nuw nsw i32 %shr, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !29
  %arrayidx = getelementptr %struct.aspeed_vic, ptr %1, i32 0, i32 1, i32 %shr
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and3 = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 88
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #6, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @avic_unmask_irq(ptr nocapture noundef readonly %d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 31
  %shl = shl nuw i32 1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 32
  %7 = lshr i32 %3, 3
  %mul = and i32 %7, 536870908
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__of_table_ast2400_vic, !1, !"__of_table_ast2400_vic", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 220, i32 1}
!2 = !{ptr @__of_table_ast2500_vic, !3, !"__of_table_ast2500_vic", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 221, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 190, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 192, i32 6}
!9 = !{ptr @system_avic, !10, !"system_avic", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 56, i32 27}
!11 = !{ptr @avic_dom_ops, !12, !"avic_dom_ops", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 179, i32 36}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 152, i32 11}
!15 = !{ptr @avic_chip, !16, !"avic_chip", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-aspeed-vic.c", i32 151, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153597968}
!29 = !{i64 794639}
!30 = !{i64 2153598392}
!31 = !{i64 2153598816}
!32 = !{i64 2153599240}
!33 = !{i64 2153599655}
!34 = !{i64 2153600043}
!35 = !{i64 795057}
!36 = !{i64 2153600702}
!37 = !{i64 2153601205}
!38 = !{i64 2153601430}
!39 = !{i64 2153601854}
!40 = !{i32 0, i32 33}
!41 = !{i64 2153602963}
!42 = !{i64 2153603381}
!43 = !{i64 2153604217}
!44 = !{i64 2153604635}
!45 = !{i64 2153603799}
