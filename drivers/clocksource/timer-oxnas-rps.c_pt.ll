; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-oxnas-rps.c_pt.bc'
source_filename = "../drivers/clocksource/timer-oxnas-rps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.oxnas_rps_timer = type { %struct.clock_event_device, ptr, ptr, i32, i32, ptr, i32, [104 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_ox810se_rps = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox810se-rps-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @oxnas_rps_timer_init }, section "__timer_of_table", align 4
@__of_table_ox820_rps = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox820-rps-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @oxnas_rps_timer_init }, section "__timer_of_table", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rps-timer\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@timer_sched_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"oxnas_rps_clocksource_timer\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clocksource/timer-oxnas-rps.c\00", [58 x i8] zeroinitializer }, align 32
@oxnas_rps_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013timer_oxnas_rps: can't register clocksource\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oxnas_rps_clocksource_init\00", [37 x i8] zeroinitializer }, align 32
@oxnas_rps_clocksource_init._entry_ptr = internal global ptr @oxnas_rps_clocksource_init._entry, section ".printk_index", align 4
@oxnas_rps_clocksource_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016timer_oxnas_rps: Registered clocksource rate %luHz\0A\00", [42 x i8] zeroinitializer }, align 32
@oxnas_rps_clocksource_init._entry_ptr.7 = internal global ptr @oxnas_rps_clocksource_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"oxnas-rps\00", [22 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@oxnas_rps_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016timer_oxnas_rps: Registered clock event rate %luHz prescaler %x period %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oxnas_rps_clockevent_init\00", [38 x i8] zeroinitializer }, align 32
@oxnas_rps_clockevent_init._entry_ptr = internal global ptr @oxnas_rps_clockevent_init._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 257, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"timer_sched_base\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 176, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 199, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 202, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 203, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 207, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 149, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [41 x i8] c"../drivers/clocksource/timer-oxnas-rps.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_ox810se_rps, ptr @__of_table_ox820_rps, ptr @oxnas_rps_clockevent_init._entry, ptr @oxnas_rps_clockevent_init._entry_ptr, ptr @oxnas_rps_clocksource_init._entry, ptr @oxnas_rps_clocksource_init._entry.5, ptr @oxnas_rps_clocksource_init._entry_ptr, ptr @oxnas_rps_clocksource_init._entry_ptr.7, ptr @.str, ptr @timer_sched_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_sched_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_rps_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_rps_clocksource_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_rps_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #6
  %clk = getelementptr inbounds %struct.oxnas_rps_timer, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %clk, align 16
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %err_alloc

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.err_clk_crit_edge

if.end7.err_clk_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.end.i.err_clk.sink.split_crit_edge

if.end.i.err_clk.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk.sink.split

if.end12:                                         ; preds = %if.end.i
  %call13 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_clk_prepare_crit_edge, label %if.end16

if.end12.err_clk_prepare_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_prepare

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.oxnas_rps_timer, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call17, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.err_iomap_crit_edge, label %if.end20

if.end16.err_iomap_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iomap

if.end20:                                         ; preds = %if.end16
  %clkevt_base = getelementptr inbounds %struct.oxnas_rps_timer, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %clkevt_base, align 4
  %add.ptr21 = getelementptr i8, ptr %call13, i32 32
  %clksrc_base = getelementptr inbounds %struct.oxnas_rps_timer, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %clksrc_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr21, ptr %clksrc_base, align 128
  %add.ptr23 = getelementptr i8, ptr %call13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #6, !srcloc !37
  %add.ptr25 = getelementptr i8, ptr %call13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call13, i32 0) #6, !srcloc !37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #6, !srcloc !37
  %add.ptr31 = getelementptr i8, ptr %call13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #6, !srcloc !37
  %add.ptr33 = getelementptr i8, ptr %call13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #6, !srcloc !37
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i85 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @oxnas_rps_timer_irq, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool36.not = icmp eq i32 %call.i85, 0
  br i1 %tobool36.not, label %if.end38, label %if.end20.err_iomap_crit_edge

if.end20.err_iomap_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_iomap

if.end38:                                         ; preds = %if.end20
  %call39 = tail call fastcc i32 @oxnas_rps_clocksource_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %err_irqreq

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @oxnas_rps_clockevent_init(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

err_irqreq:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call48 = tail call ptr @free_irq(i32 noundef %9, ptr noundef nonnull %call7.i.i) #6
  br label %err_iomap

err_iomap:                                        ; preds = %err_irqreq, %if.end20.err_iomap_crit_edge, %if.end16.err_iomap_crit_edge
  %ret.1 = phi i32 [ %call.i85, %if.end20.err_iomap_crit_edge ], [ %call39, %err_irqreq ], [ -22, %if.end16.err_iomap_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call13) #6
  br label %err_clk_prepare

err_clk_prepare:                                  ; preds = %err_iomap, %if.end12.err_clk_prepare_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_iomap ], [ -6, %if.end12.err_clk_prepare_crit_edge ]
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 16
  tail call void @clk_disable(ptr noundef %11) #6
  br label %err_clk.sink.split

err_clk.sink.split:                               ; preds = %err_clk_prepare, %if.end.i.err_clk.sink.split_crit_edge
  %call1.sink = phi ptr [ %11, %err_clk_prepare ], [ %call1, %if.end.i.err_clk.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %err_clk_prepare ], [ %call1.i, %if.end.i.err_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call1.sink) #6
  br label %err_clk

err_clk:                                          ; preds = %err_clk.sink.split, %if.end7.err_clk_crit_edge
  %ret.3 = phi i32 [ %call.i, %if.end7.err_clk_crit_edge ], [ %ret.3.ph, %err_clk.sink.split ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 16
  tail call void @clk_put(ptr noundef %13) #6
  br label %err_alloc

err_alloc:                                        ; preds = %err_clk, %if.then4
  %ret.4 = phi i32 [ %2, %if.then4 ], [ %ret.3, %err_clk ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_alloc ], [ 0, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clkevt_base = getelementptr inbounds %struct.oxnas_rps_timer, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkevt_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !37
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oxnas_rps_clocksource_init(ptr nocapture noundef readonly %rps) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 16
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %div47 = lshr i32 %call, 4
  %clksrc_base = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 1
  %2 = ptrtoint ptr %clksrc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clksrc_base, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -256) #6, !srcloc !37
  %4 = ptrtoint ptr %clksrc_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clksrc_base, align 128
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1006632960) #6, !srcloc !37
  %6 = ptrtoint ptr %clksrc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clksrc_base, align 128
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  store ptr %add.ptr4, ptr @timer_sched_base, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @oxnas_rps_read_sched_clock, i32 noundef 24, i32 noundef %div47) #6
  %8 = load ptr, ptr @timer_sched_base, align 4
  %call5 = tail call i32 @clocksource_mmio_init(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %div47, i32 noundef 250, i32 noundef 24, ptr noundef nonnull @clocksource_mmio_readl_down) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end35, label %do.end, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 202, i32 noundef 9, ptr noundef null) #6
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %div47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end
  ret i32 %call5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @oxnas_rps_clockevent_init(ptr noundef %rps) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 16
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %timer_prescaler = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 4
  %2 = ptrtoint ptr %timer_prescaler to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %timer_prescaler, align 4
  %sub = add i32 %call, 99
  %div = udiv i32 %sub, 100
  %timer_period = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 3
  %3 = ptrtoint ptr %timer_period to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %timer_period, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1677721599, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1677721599
  br i1 %cmp, label %if.end.thread, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %timer_prescaler to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %timer_prescaler, align 4
  %div32 = lshr i32 %call, 4
  %sub5 = add nuw nsw i32 %div32, 99
  %div6 = udiv i32 %sub5, 100
  %5 = ptrtoint ptr %timer_period to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div6, ptr %timer_period, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end.thread, %entry.if.end17_crit_edge
  %timer_rate.1 = phi i32 [ %div32, %if.end.thread ], [ %call, %entry.if.end17_crit_edge ]
  %name = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 21
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.8, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 9
  %7 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 35, ptr %features, align 4
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 15
  %8 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @oxnas_rps_timer_shutdown, ptr %tick_resume, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 14
  %9 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @oxnas_rps_timer_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 11
  %10 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @oxnas_rps_timer_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 12
  %11 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @oxnas_rps_timer_set_oneshot, ptr %set_state_oneshot, align 64
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 1
  %12 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @oxnas_rps_timer_next_event, ptr %set_next_event, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 22
  %13 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 200, ptr %rating, align 8
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 25
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  %irq = getelementptr inbounds %struct.oxnas_rps_timer, ptr %rps, i32 0, i32 6
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %irq27 = getelementptr inbounds %struct.clock_event_device, ptr %rps, i32 0, i32 23
  %17 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq27, align 4
  tail call void @clockevents_config_and_register(ptr noundef %rps, i32 noundef %timer_rate.1, i32 noundef 1, i32 noundef 16777215) #6
  %18 = ptrtoint ptr %timer_prescaler to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer_prescaler, align 4
  %20 = ptrtoint ptr %timer_period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timer_period, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call, i32 noundef %19, i32 noundef %21) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @oxnas_rps_read_sched_clock() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @timer_sched_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !39
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_shutdown(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_prescaler.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 4
  %0 = ptrtoint ptr %timer_prescaler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_prescaler.i, align 4
  %clkevt_base.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 2
  %2 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkevt_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !37
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %5 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkevt_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %4) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_set_periodic(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_period = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 3
  %0 = ptrtoint ptr %timer_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_period, align 8
  %timer_prescaler.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 4
  %2 = ptrtoint ptr %timer_prescaler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_prescaler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %or.i = or i32 %3, 128
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %or.i
  %or3.i = or i32 %spec.select.i, 64
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %clkevt_base.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 2
  %5 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkevt_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !37
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #6
  %8 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkevt_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_set_oneshot(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_period = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 3
  %0 = ptrtoint ptr %timer_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_period, align 8
  %timer_prescaler.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 4
  %2 = ptrtoint ptr %timer_prescaler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_prescaler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %or.i = or i32 %3, 128
  %spec.select.i = select i1 %tobool.not.i, i32 %3, i32 %or.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %clkevt_base.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 2
  %5 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkevt_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !37
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %8 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkevt_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_rps_timer_next_event(i32 noundef %delta, ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_prescaler.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 4
  %0 = ptrtoint ptr %timer_prescaler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_prescaler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %tobool.not.i = icmp eq i32 %delta, 0
  %or.i = or i32 %1, 128
  %spec.select.i = select i1 %tobool.not.i, i32 %1, i32 %or.i
  %2 = tail call i32 @llvm.bswap.i32(i32 %delta) #6
  %clkevt_base.i = getelementptr inbounds %struct.oxnas_rps_timer, ptr %evt, i32 0, i32 2
  %3 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkevt_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #6, !srcloc !37
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %6 = ptrtoint ptr %clkevt_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkevt_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %5) #6, !srcloc !37
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__of_table_ox810se_rps, !1, !"__of_table_ox810se_rps", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 285, i32 1}
!2 = !{ptr @__of_table_ox820_rps, !3, !"__of_table_ox820_rps", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 287, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 257, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 199, i32 9}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 202, i32 6}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 203, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @oxnas_rps_clocksource_init._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @oxnas_rps_clocksource_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 207, i32 2}
!17 = !{ptr @oxnas_rps_clocksource_init._entry.5, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @oxnas_rps_clocksource_init._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @timer_sched_base, !20, !"timer_sched_base", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 176, i32 22}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 149, i32 23}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/timer-oxnas-rps.c", i32 166, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @oxnas_rps_clockevent_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @oxnas_rps_clockevent_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 3634064}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 3634482}
