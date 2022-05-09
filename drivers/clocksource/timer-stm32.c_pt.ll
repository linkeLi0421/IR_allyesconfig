; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-stm32.c_pt.bc'
source_filename = "../drivers/clocksource/timer-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
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

@__of_table_stm32 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_timer_init }, section "__timer_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stm32_timer_cnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@stm32_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: STM32 sched_clock registered\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_clocksource_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-stm32.c\00", [62 x i8] zeroinitializer }, align 32
@stm32_clocksource_init._entry_ptr = internal global ptr @stm32_clocksource_init._entry, section ".printk_index", align 4
@stm32_timer_delay = internal global { %struct.delay_timer, [24 x i8] } zeroinitializer, align 32
@stm32_clocksource_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: STM32 delay timer registered\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_clocksource_init._entry_ptr.5 = internal global ptr @stm32_clocksource_init._entry.3, section ".printk_index", align 4
@stm32_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%pOF: STM32 clockevent driver initialized (%d bits)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_clockevent_init\00", [42 x i8] zeroinitializer }, align 32
@stm32_clockevent_init._entry_ptr = internal global ptr @stm32_clockevent_init._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 255, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"stm32_timer_delay\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 92, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 260, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [37 x i8] c"../drivers/clocksource/timer-stm32.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 284, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__of_table_stm32, ptr @stm32_clockevent_init._entry, ptr @stm32_clockevent_init._entry_ptr, ptr @stm32_clocksource_init._entry, ptr @stm32_clocksource_init._entry.3, ptr @stm32_clocksource_init._entry_ptr, ptr @stm32_clocksource_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stm32_timer_delay, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_delay to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_clocksource_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
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
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %call7.i.i, align 128
  %handler = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stm32_clock_event_handler, ptr %handler, align 8
  %call1 = tail call i32 @timer_of_init(ptr noundef %node, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #9
  %private_data = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i38, ptr %private_data, align 8
  %tobool7.not = icmp eq ptr %call7.i.i38, null
  br i1 %tobool7.not, label %if.end4.deinit_crit_edge, label %if.end9

if.end4.deinit_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %deinit

if.end9:                                          ; preds = %if.end4
  %call.i.i = tail call ptr @__of_reset_control_get(ptr noundef %node, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #6
  %call14 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %of_base.i.i = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !30
  %7 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr2.i = getelementptr i8, ptr %8, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i39 = icmp eq i32 %9, -1
  %cond.i = select i1 %cmp.i39, i32 32, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %11, align 4
  tail call fastcc void @stm32_timer_set_prescaler(ptr noundef nonnull %call7.i.i) #11
  %call16 = tail call fastcc i32 @stm32_clocksource_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.deinit_crit_edge

if.end15.deinit_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %deinit

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stm32_clockevent_init(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

deinit:                                           ; preds = %if.end15.deinit_crit_edge, %if.end4.deinit_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.deinit_crit_edge ], [ -12, %if.end4.deinit_crit_edge ]
  tail call void @timer_of_cleanup(ptr noundef nonnull %call7.i.i) #10
  br label %err

err:                                              ; preds = %deinit, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_crit_edge ], [ %ret.0, %deinit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_handler(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %dev_id, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !30
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  %4 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i, align 128
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #6, !srcloc !30
  %period.i.i = getelementptr i8, ptr %dev_id, i32 308
  %6 = ptrtoint ptr %period.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period.i.i, align 4
  %8 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_base.i, align 128
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #6, !srcloc !31
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %add.i.i = add i32 %11, %7
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %13 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_base.i, align 128
  %add.ptr4.i.i = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %12) #6, !srcloc !30
  %15 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_base.i, align 128
  %add.ptr7.i.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #6, !srcloc !31
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %sub.i.i = sub i32 %add.i.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %7)
  %cmp.i.i = icmp ugt i32 %sub.i.i, %7
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.end.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_base.i, align 128
  %add.ptr11.i.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 33554432) #6, !srcloc !30
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i1.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #6, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 128
  tail call void %22(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_timer_set_prescaler(ptr nocapture noundef %to) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 7
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp.not = icmp eq i32 %3, 32
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate.i, align 4
  %add = add i32 %5, 5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 655350000, i32 %add)
  %cmp3 = icmp ult i32 %add, 655350000
  %div2 = udiv i32 %add, 10000
  %spec.select = select i1 %cmp3, i32 %div2, i32 65535
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prescaler.0 = phi i32 [ %spec.select, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %sub = add nsw i32 %prescaler.0, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %7 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !30
  %9 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i, align 128
  %add.ptr6 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #6, !srcloc !30
  %11 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i, align 128
  %add.ptr8 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !30
  %rate = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %div123839 = lshr i32 %prescaler.0, 1
  %add13 = add i32 %14, %div123839
  %div14 = udiv i32 %add13, %prescaler.0
  store i32 %div14, ptr %rate, align 4
  %sub20 = add i32 %div14, 99
  %div21 = udiv i32 %sub20, 100
  %period = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div21, ptr %period, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_clocksource_init(ptr nocapture noundef readonly %to) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 7
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %np = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 1
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp eq i32 %3, 32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr @stm32_timer_cnt, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %of_base.i.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %9 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 50331648) #6, !srcloc !30
  %11 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr = getelementptr i8, ptr %12, i32 36
  store ptr %add.ptr, ptr @stm32_timer_cnt, align 4
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate.i, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @stm32_read_sched_clock, i32 noundef 32, i32 noundef %14) #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7) #10
  store ptr @stm32_read_delay, ptr @stm32_timer_delay, align 4
  %15 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate.i, align 4
  store i32 %16, ptr getelementptr inbounds (%struct.delay_timer, ptr @stm32_timer_delay, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @stm32_timer_delay) #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = phi i32 [ 250, %if.then ], [ 250, %land.lhs.true.if.end_crit_edge ], [ 100, %entry.if.end_crit_edge ]
  %of_base.i28 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %17 = ptrtoint ptr %of_base.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_base.i28, align 128
  %add.ptr11 = getelementptr i8, ptr %18, i32 36
  %rate.i29 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %rate.i29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate.i29, align 4
  %call14 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr11, ptr noundef %7, i32 noundef %20, i32 noundef %cond, i32 noundef %3, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  ret i32 %call14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_clockevent_init(ptr noundef %to) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 7
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %np = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 1
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name, align 4
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3
  %name = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 21
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name, align 4
  %features = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %features, align 4
  %set_state_shutdown = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 14
  %10 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @stm32_clock_event_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 11
  %11 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @stm32_clock_event_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @stm32_clock_event_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 15
  %13 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @stm32_clock_event_shutdown, ptr %tick_resume, align 4
  %set_next_event = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @stm32_clock_event_set_next_event, ptr %set_next_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp eq i32 %3, 32
  %cond = select i1 %cmp, i32 250, i32 100
  %rating = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 22
  %15 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %rating, align 8
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate.i, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %17, i32 noundef 1, i32 noundef %sub) #6
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %3) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_periodic(ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50331648) #6, !srcloc !30
  %period.i = getelementptr i8, ptr %clkevt, i32 308
  %2 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period.i, align 4
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !31
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %add.i = add i32 %7, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %add.i) #6
  %9 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #6, !srcloc !30
  %11 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr7.i = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !31
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %sub.i = sub i32 %add.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %3)
  %cmp.i = icmp ugt i32 %sub.i, %3
  br i1 %cmp.i, label %entry.stm32_clock_event_set_next_event.exit_crit_edge, label %if.end.i

entry.stm32_clock_event_set_next_event.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_clock_event_set_next_event.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr11.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 33554432) #6, !srcloc !30
  br label %stm32_clock_event_set_next_event.exit

stm32_clock_event_set_next_event.exit:            ; preds = %if.end.i, %entry.stm32_clock_event_set_next_event.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -62, %entry.stm32_clock_event_set_next_event.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_shutdown(ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 0) #6, !srcloc !30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_next_event(i32 noundef %evt, ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add = add i32 %3, %evt
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %5 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_base.i, align 128
  %add.ptr4 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #6, !srcloc !30
  %7 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i, align 128
  %add.ptr7 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !31
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %evt)
  %cmp = icmp ugt i32 %sub, %evt
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i, align 128
  %add.ptr11 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 33554432) #6, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -62, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @stm32_read_sched_clock() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @stm32_timer_cnt, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !31
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_read_delay() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @stm32_timer_cnt, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !31
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clock_event_set_oneshot(ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50331648) #6, !srcloc !30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__of_table_stm32, !1, !"__of_table_stm32", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-stm32.c", i32 336, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-stm32.c", i32 255, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @stm32_clocksource_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @stm32_clocksource_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-stm32.c", i32 260, i32 3}
!10 = !{ptr @stm32_clocksource_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @stm32_clocksource_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @stm32_timer_cnt, !13, !"stm32_timer_cnt", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-stm32.c", i32 85, i32 22}
!14 = !{ptr @stm32_timer_delay, !15, !"stm32_timer_delay", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-stm32.c", i32 92, i32 27}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-stm32.c", i32 284, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stm32_clockevent_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @stm32_clockevent_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 3980849}
!31 = !{i64 3981267}
