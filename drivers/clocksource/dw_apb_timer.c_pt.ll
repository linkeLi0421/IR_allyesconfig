; ModuleID = '/llk/IR_all_yes/drivers/clocksource/dw_apb_timer.c_pt.bc'
source_filename = "../drivers/clocksource/dw_apb_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_apb_clock_event_device = type { %struct.clock_event_device, %struct.dw_apb_timer, ptr, [112 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dw_apb_timer = type { ptr, i32, i32 }
%struct.dw_apb_clocksource = type { %struct.dw_apb_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@dw_apb_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to request timer irq\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_apb_clockevent_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clocksource/dw_apb_timer.c\00", [61 x i8] zeroinitializer }, align 32
@dw_apb_clockevent_init._entry_ptr = internal global ptr @dw_apb_clockevent_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@apbt_shutdown.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_apb_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apbt_shutdown\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s CPU %d state=shutdown\0A\00", [38 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@apbt_set_periodic.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apbt_set_periodic\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s CPU %d state=periodic\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@apbt_set_periodic.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting clock period %lu for HZ %d\0A\00", [60 x i8] zeroinitializer }, align 32
@apbt_set_oneshot.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apbt_set_oneshot\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s CPU %d state=oneshot\0A\00", [39 x i8] zeroinitializer }, align 32
@apbt_resume.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apbt_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s CPU %d state=resume\0A\00", [40 x i8] zeroinitializer }, align 32
@dw_apb_clockevent_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Spurious APBT timer interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_apb_clockevent_irq\00", [42 x i8] zeroinitializer }, align 32
@dw_apb_clockevent_irq._entry_ptr = internal global ptr @dw_apb_clockevent_irq._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 279, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 126, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 173, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 186, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 140, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 197, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [38 x i8] c"../drivers/clocksource/dw_apb_timer.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 101, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @dw_apb_clockevent_init._entry, ptr @dw_apb_clockevent_init._entry_ptr, ptr @dw_apb_clockevent_irq._entry, ptr @dw_apb_clockevent_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_clockevent_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_pause(ptr nocapture noundef readonly %dw_ced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %dw_ced, i32 0, i32 1
  %irq = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %dw_ced, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %1) #5
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %5 = or i32 %4, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %5) #5, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dw_apb_clockevent_init(i32 noundef %cpu, ptr noundef %name, i32 noundef %rating, ptr noundef %base, i32 noundef %irq, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %timer, align 128
  %irq3 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq3, align 8
  %freq5 = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %freq5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %freq, ptr %freq5, align 4
  %mult.i = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 6
  %shift.i = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @clocks_calc_mult_shift(ptr noundef %mult.i, ptr noundef %shift.i, i32 noundef 1000000000, i32 noundef %freq, i32 noundef 4) #5
  %call7 = tail call i64 @clockevent_delta2ns(i32 noundef 2147483647, ptr noundef nonnull %call7.i.i) #5
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %max_delta_ns to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call7, ptr %max_delta_ns, align 8
  %max_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 20
  %5 = ptrtoint ptr %max_delta_ticks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2147483647, ptr %max_delta_ticks, align 32
  %call11 = tail call i64 @clockevent_delta2ns(i32 noundef 5000, ptr noundef nonnull %call7.i.i) #5
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %min_delta_ns to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call11, ptr %min_delta_ns, align 32
  %min_delta_ticks = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %min_delta_ticks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5000, ptr %min_delta_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp slt i32 %cpu, 0
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cond = select i1 %cmp, ptr @__cpu_possible_mask, ptr %add.ptr.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 25
  %8 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %cpumask, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 35, ptr %features, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @apbt_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @apbt_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @apbt_set_oneshot, ptr %set_state_oneshot, align 64
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @apbt_shutdown, ptr %set_state_oneshot_stopped, align 4
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @apbt_resume, ptr %tick_resume, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @apbt_next_event, ptr %set_next_event, align 4
  %16 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq3, align 8
  %irq26 = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq26, align 4
  %rating28 = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 22
  %19 = ptrtoint ptr %rating28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rating, ptr %rating28, align 8
  %name30 = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 21
  %20 = ptrtoint ptr %name30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name, ptr %name30, align 4
  %eoi = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %eoi to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @apbt_eoi, ptr %eoi, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @dw_apb_clockevent_irq, ptr noundef null, i32 noundef 88576, ptr noundef %name, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clockevent_delta2ns(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbt_shutdown(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apbt_shutdown.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apbt_shutdown, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 25
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %1, i32 noundef %2) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apbt_shutdown.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %call.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timer, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %6) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbt_set_periodic(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1
  %freq = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  %sub = add i32 %1, 99
  %div = udiv i32 %sub, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apbt_set_periodic.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apbt_set_periodic, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 25
  %2 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %3, i32 noundef %4) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apbt_set_periodic.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %call.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %or = or i32 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %add.ptr.i43 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %9) #5, !srcloc !43
  %and = and i32 %or, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %13 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %timer, align 4
  %add.ptr.i44 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %12) #5, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apbt_set_periodic.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apbt_set_periodic, %if.then21)) #5
          to label %do.end24 [label %if.then21], !srcloc !44

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apbt_set_periodic.__UNIQUE_ID_ddebug174, ptr noundef nonnull @.str.8, i32 noundef %div, i32 noundef 100) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %div) #5
  %17 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !43
  %or26 = or i32 %8, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or26) #5
  %20 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %timer, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %19) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbt_set_oneshot(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apbt_set_oneshot.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apbt_set_oneshot, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 25
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %1, i32 noundef %2) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apbt_set_oneshot.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %call.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and6 = and i32 %6, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %and6) #5
  %8 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %7) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %add.ptr.i24 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %7) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1) #5, !srcloc !43
  %and10 = and i32 %6, -8
  %or = or i32 %and10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %15 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timer, align 4
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %14) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbt_resume(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apbt_resume.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apbt_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 25
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %1, i32 noundef %2) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apbt_resume.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %call.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %9 = and i32 %5, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %9) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apbt_next_event(i32 noundef %delta, ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %and = and i32 %3, -2
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 4
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %4) #5, !srcloc !43
  %7 = tail call i32 @llvm.bswap.i32(i32 %delta) #5
  %8 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !43
  %or = or i32 %3, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %11 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %timer, align 4
  %add.ptr.i12 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %10) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apbt_eoi(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_apb_clockevent_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %irq) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %eoi = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %eoi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eoi, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %data, i32 0, i32 1
  tail call void %3(ptr noundef %timer) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 128
  tail call void %5(ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_resume(ptr nocapture noundef readonly %dw_ced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %dw_ced, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_stop(ptr noundef %dw_ced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %dw_ced, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %dw_ced) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clockevent_register(ptr noundef %dw_ced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.dw_apb_clock_event_device, ptr %dw_ced, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !43
  tail call void @clockevents_register_device(ptr noundef %dw_ced) #5
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %8 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timer, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %8) #5, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clocksource_start(ptr nocapture noundef readonly %dw_cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw_cs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %5 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dw_cs, align 4
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %4) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dw_cs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #5, !srcloc !43
  %and3 = and i32 %3, -8
  %or = or i32 %and3, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %10 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dw_cs, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %9) #5, !srcloc !43
  %12 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dw_cs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dw_apb_clocksource_read(ptr nocapture noundef readonly %dw_cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dw_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw_cs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @dw_apb_clocksource_init(i32 noundef %rating, ptr noundef %name, ptr noundef %base, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %call7.i.i, align 8
  %freq3 = getelementptr inbounds %struct.dw_apb_timer, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %freq3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %freq, ptr %freq3, align 4
  %cs = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1
  %name4 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name4, align 8
  %rating6 = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %rating6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rating, ptr %rating6, align 4
  %5 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__apbt_read_clocksource, ptr %cs, align 8
  %mask = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967295, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags, align 8
  %resume = getelementptr inbounds %struct.dw_apb_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 17
  %8 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @apbt_restart_clocksource, ptr %resume, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @__apbt_read_clocksource(ptr nocapture noundef readonly %cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #5, !srcloc !40
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apbt_restart_clocksource(ptr nocapture noundef readonly %cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and.i = and i32 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %4) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #5, !srcloc !43
  %and3.i = and i32 %3, -8
  %or.i = or i32 %and3.i, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %9) #5, !srcloc !43
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_apb_clocksource_register(ptr noundef %dw_cs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cs = getelementptr inbounds %struct.dw_apb_clocksource, ptr %dw_cs, i32 0, i32 1
  %freq = getelementptr inbounds %struct.dw_apb_timer, ptr %dw_cs, i32 0, i32 1
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef %cs, i32 noundef 1, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 279, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dw_apb_clockevent_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dw_apb_clockevent_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 126, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @apbt_shutdown.__UNIQUE_ID_ddebug171, !7, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 173, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @apbt_set_periodic.__UNIQUE_ID_ddebug173, !12, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 186, i32 2}
!17 = !{ptr @apbt_set_periodic.__UNIQUE_ID_ddebug174, !16, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 140, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @apbt_set_oneshot.__UNIQUE_ID_ddebug172, !19, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 197, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @apbt_resume.__UNIQUE_ID_ddebug175, !23, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/dw_apb_timer.c", i32 101, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dw_apb_clockevent_irq._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dw_apb_clockevent_irq._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 3993660}
!41 = !{i64 2152725920}
!42 = !{i64 2152726304}
!43 = !{i64 3993242}
!44 = !{i64 2148908231, i64 2148908236, i64 2148908249, i64 2148908293, i64 2148908327, i64 2148908348}
