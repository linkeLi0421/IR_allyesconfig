; ModuleID = '/llk/IR_all_yes/drivers/clocksource/renesas-ostm.c_pt.bc'
source_filename = "../drivers/clocksource/renesas-ostm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer_of = type { i32, ptr, [120 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__of_table_ostm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ostm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ostm_init }, section "__timer_of_table", align 4
@system_clock = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ostm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%pOF: used for clocksource\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ostm_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clocksource/renesas-ostm.c\00", [61 x i8] zeroinitializer }, align 32
@ostm_init._entry_ptr = internal global ptr @ostm_init._entry, section ".printk_index", align 4
@ostm_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%pOF: used for clock events\0A\00", [33 x i8] zeroinitializer }, align 32
@ostm_init._entry_ptr.5 = internal global ptr @ostm_init._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"system_clock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 29, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 204, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [38 x i8] c"../drivers/clocksource/renesas-ostm.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 210, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__of_table_ostm, ptr @ostm_init._entry, ptr @ostm_init._entry.3, ptr @ostm_init._entry_ptr, ptr @ostm_init._entry_ptr.5, ptr @system_clock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ostm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ostm_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__of_reset_control_get(ptr noundef %np, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call.i to i32
  br label %err_free

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %call.i) #6
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %call7.i.i, align 128
  %3 = load ptr, ptr @system_clock, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %call7.i.i, align 128
  %flags10 = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 5, i32 4
  %5 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 86528, ptr %flags10, align 4
  %handler = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ostm_timer_interrupt, ptr %handler, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %call13 = tail call i32 @timer_of_init(ptr noundef %np, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_reset_crit_edge

if.end12.err_reset_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reset

if.end16:                                         ; preds = %if.end12
  %7 = load ptr, ptr @system_clock, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %call19 = tail call fastcc i32 @ostm_init_clksrc(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %of_base.i.i = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  store ptr %add.ptr.i, ptr @system_clock, align 4
  %rate.i.i = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i.i, align 8
  tail call void @sched_clock_register(ptr noundef nonnull @ostm_read_sched_clock, i32 noundef 32, i32 noundef %11) #6
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %np) #10
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ostm_init_clkevt(ptr noundef nonnull %call7.i.i) #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np) #10
  br label %cleanup

err_cleanup:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @timer_of_cleanup(ptr noundef nonnull %call7.i.i) #10
  br label %err_reset

err_reset:                                        ; preds = %err_cleanup, %if.end12.err_reset_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end12.err_reset_crit_edge ], [ %call19, %err_cleanup ]
  %call34 = tail call i32 @reset_control_assert(ptr noundef %call.i) #6
  tail call void @reset_control_put(ptr noundef %call.i) #6
  br label %err_free

err_free:                                         ; preds = %err_reset, %if.then3
  %ret.2 = phi i32 [ %1, %if.then3 ], [ %ret.1, %err_reset ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.else, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %of_base.i.i = getelementptr i8, ptr %dev_id, i32 256
  %2 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i9) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #6, !srcloc !26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %8 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %11 = and i8 %10, 1
  %tobool14.not.i = icmp eq i8 %11, 0
  br i1 %tobool14.not.i, label %while.cond.i.if.end_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.cond.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 128
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %dev_id) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ostm_init_clksrc(ptr nocapture noundef readonly %to) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ostm_timer_stop(ptr noundef %to)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  %add.ptr4 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 2) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i, align 128
  %add.ptr8 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 1) #6, !srcloc !26
  %6 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i, align 128
  %add.ptr10 = getelementptr i8, ptr %7, i32 4
  %np = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 1
  %8 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %np, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %full_name, align 4
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate.i, align 4
  %call12 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr10, ptr noundef %11, i32 noundef %13, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  ret i32 %call12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ostm_init_clkevt(ptr noundef %to) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3
  %features = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %features, align 4
  %set_state_shutdown = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 14
  %1 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ostm_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 11
  %2 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ostm_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ostm_set_oneshot, ptr %set_state_oneshot, align 64
  %set_next_event = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ostm_clock_event_next, ptr %set_next_event, align 4
  %shift = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %shift, align 4
  %rating = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 22
  %6 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 300, ptr %rating, align 8
  %cpumask = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 25
  %7 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate.i, align 4
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %9, i32 noundef 15, i32 noundef -1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ostm_timer_stop(ptr nocapture noundef readonly %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i, align 128
  %add.ptr4 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #6, !srcloc !26
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body
  %6 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i, align 128
  %add.ptr8 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %9 = and i8 %8, 1
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %while.cond.if.end_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.cond.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ostm_read_sched_clock() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @system_clock, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !32
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_shutdown(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %ced, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ostm_timer_stop.exit_crit_edge, label %do.body.i

entry.ostm_timer_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #6, !srcloc !26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %6 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %9 = and i8 %8, 1
  %tobool14.not.i = icmp eq i8 %9, 0
  br i1 %tobool14.not.i, label %while.cond.i.ostm_timer_stop.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.cond.i.ostm_timer_stop.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

ostm_timer_stop.exit:                             ; preds = %while.cond.i.ostm_timer_stop.exit_crit_edge, %entry.ostm_timer_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_set_periodic(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %of_base.i.i = getelementptr i8, ptr %ced, i32 256
  %3 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %do.body.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #6, !srcloc !26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %9 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %12 = and i8 %11, 1
  %tobool14.not.i = icmp eq i8 %12, 0
  br i1 %tobool14.not.i, label %while.cond.i.do.body_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.cond.i.do.body_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %while.cond.i.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %period.i = getelementptr i8, ptr %ced, i32 308
  %13 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period.i, align 4
  %sub = add i32 %14, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %of_base.i = getelementptr i8, ptr %ced, i32 256
  %16 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_base.i, align 128
  %add.ptr9 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 0) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_base.i, align 128
  %add.ptr14 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 1) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_set_oneshot(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %ced, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ostm_timer_stop.exit_crit_edge, label %do.body.i

entry.ostm_timer_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #6, !srcloc !26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %6 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %9 = and i8 %8, 1
  %tobool14.not.i = icmp eq i8 %9, 0
  br i1 %tobool14.not.i, label %while.cond.i.ostm_timer_stop.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.cond.i.ostm_timer_stop.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

ostm_timer_stop.exit:                             ; preds = %while.cond.i.ostm_timer_stop.exit_crit_edge, %entry.ostm_timer_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ostm_clock_event_next(i32 noundef %delta, ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %ced, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i15 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i15) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.ostm_timer_stop.exit_crit_edge, label %do.body.i

entry.ostm_timer_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 1) #6, !srcloc !26
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body.i
  %6 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %9 = and i8 %8, 1
  %tobool14.not.i = icmp eq i8 %9, 0
  br i1 %tobool14.not.i, label %while.cond.i.ostm_timer_stop.exit_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.cond.i.ostm_timer_stop.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ostm_timer_stop.exit

ostm_timer_stop.exit:                             ; preds = %while.cond.i.ostm_timer_stop.exit_crit_edge, %entry.ostm_timer_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %11 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr6 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 2) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr11 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 1) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__of_table_ostm, !1, !"__of_table_ostm", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/renesas-ostm.c", i32 225, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/renesas-ostm.c", i32 204, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ostm_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ostm_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/renesas-ostm.c", i32 210, i32 3}
!10 = !{ptr @ostm_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ostm_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @system_clock, !13, !"system_clock", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/renesas-ostm.c", i32 29, i32 22}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 4013751}
!24 = !{i64 2153184112}
!25 = !{i64 2153184351}
!26 = !{i64 4013356}
!27 = !{i64 2153184667}
!28 = !{i64 2153185090}
!29 = !{i64 4013553}
!30 = !{i64 2153185501}
!31 = !{i64 2153185797}
!32 = !{i64 4013971}
!33 = !{i64 2153186375}
!34 = !{i64 2153187832}
!35 = !{i64 2153188309}
!36 = !{i64 2153188605}
!37 = !{i64 2153186803}
!38 = !{i64 2153187226}
!39 = !{i64 2153187522}
