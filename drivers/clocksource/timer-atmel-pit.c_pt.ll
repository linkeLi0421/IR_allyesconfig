; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-atmel-pit.c_pt.bc'
source_filename = "../drivers/clocksource/timer-atmel-pit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pit_data = type { %struct.clock_event_device, %struct.clocksource, ptr, i32, i32, i32, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_at91sam926x_pit = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-pit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam926x_pit_dt_init }, section "__timer_of_table", align 4
@at91sam926x_pit_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013AT91: PIT: Could not map PIT address\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at91sam926x_pit_dt_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clocksource/timer-atmel-pit.c\00", [58 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr = internal global ptr @at91sam926x_pit_dt_init._entry, section ".printk_index", align 4
@at91sam926x_pit_dt_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013AT91: PIT: Unable to get mck clk\0A\00", [60 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr.5 = internal global ptr @at91sam926x_pit_dt_init._entry.3, section ".printk_index", align 4
@at91sam926x_pit_dt_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013AT91: PIT: Unable to enable mck\0A\00", [61 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr.8 = internal global ptr @at91sam926x_pit_dt_init._entry.6, section ".printk_index", align 4
@at91sam926x_pit_dt_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013AT91: PIT: Unable to get IRQ from DT\0A\00", [56 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr.11 = internal global ptr @at91sam926x_pit_dt_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pit\00", [28 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013AT91: PIT: Failed to register clocksource\0A\00", [51 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr.15 = internal global ptr @at91sam926x_pit_dt_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at91_tick\00", [22 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013AT91: PIT: Unable to setup IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@at91sam926x_pit_dt_init._entry_ptr.19 = internal global ptr @at91sam926x_pit_dt_init._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 179, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 186, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 193, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 200, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 222, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 229, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 236, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [41 x i8] c"../drivers/clocksource/timer-atmel-pit.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 238, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__of_table_at91sam926x_pit, ptr @at91sam926x_pit_dt_init._entry, ptr @at91sam926x_pit_dt_init._entry.13, ptr @at91sam926x_pit_dt_init._entry.17, ptr @at91sam926x_pit_dt_init._entry.3, ptr @at91sam926x_pit_dt_init._entry.6, ptr @at91sam926x_pit_dt_init._entry.9, ptr @at91sam926x_pit_dt_init._entry_ptr, ptr @at91sam926x_pit_dt_init._entry_ptr.11, ptr @at91sam926x_pit_dt_init._entry_ptr.15, ptr @at91sam926x_pit_dt_init._entry_ptr.19, ptr @at91sam926x_pit_dt_init._entry_ptr.5, ptr @at91sam926x_pit_dt_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam926x_pit_dt_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam926x_pit_dt_init(ptr noundef %node) #0 section ".init.text" align 64 {
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
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %base, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %exit

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #6
  %mck = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %mck to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %mck, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  %3 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mck, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %exit

if.end18:                                         ; preds = %if.end6
  %call.i = tail call i32 @clk_prepare(ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call7) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end18.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end18.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %exit

if.end28:                                         ; preds = %if.end.i
  %call29 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call29, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %exit

if.end38:                                         ; preds = %if.end28
  %7 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mck, align 8
  %call40 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  %div178 = lshr i32 %call40, 4
  %add = add nuw nsw i32 %div178, 50
  %div43 = udiv i32 %add, 100
  %cycle = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div43, ptr %cycle, align 4
  %sub = add nsw i32 %div43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %sub)
  %cmp.not = icmp ult i32 %sub, 1048576
  br i1 %cmp.not, label %if.end38.if.end62_crit_edge, label %do.end56, !prof !41

if.end38.if.end62_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 211, i32 noundef 9, ptr noundef null) #6
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end38.if.end62_crit_edge
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !42
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #6, !srcloc !43
  %15 = and i32 %14, -61696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not11.i = icmp eq i32 %15, 0
  br i1 %cmp.not11.i, label %if.end62.at91sam926x_pit_reset.exit_crit_edge, label %if.end62.do.end.i_crit_edge

if.end62.do.end.i_crit_edge:                      ; preds = %if.end62
  br label %do.end.i

if.end62.at91sam926x_pit_reset.exit_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91sam926x_pit_reset.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end62.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !45
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !43
  %19 = and i32 %18, -61696
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %do.end.i.at91sam926x_pit_reset.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.at91sam926x_pit_reset.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91sam926x_pit_reset.exit

at91sam926x_pit_reset.exit:                       ; preds = %do.end.i.at91sam926x_pit_reset.exit_crit_edge, %if.end62.at91sam926x_pit_reset.exit_crit_edge
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %22 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cycle, align 4
  %sub.i = add i32 %23, -1
  %or.i = or i32 %sub.i, 16777216
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %24) #6, !srcloc !42
  %25 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #6, !range !46
  %sub.i.op.i.neg.op = add nuw nsw i32 %27, 21
  %sub83 = select i1 %tobool.not.i.i, i32 53, i32 %sub.i.op.i.neg.op
  %sh_prom = zext i32 %sub83 to i64
  %shr = lshr i64 -1, %sh_prom
  %clksrc = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 1
  %mask = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %shr, ptr %mask, align 8
  %name = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 1, i32 8
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.12, ptr %name, align 16
  %rating = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 1, i32 10
  %30 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 175, ptr %rating, align 4
  %31 = ptrtoint ptr %clksrc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @read_pit_clk, ptr %clksrc, align 128
  %flags = getelementptr inbounds %struct.pit_data, ptr %call7.i.i, i32 0, i32 1, i32 13
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %flags, align 8
  %call.i180 = tail call i32 @__clocksource_register_scale(ptr noundef %clksrc, i32 noundef 1, i32 noundef %div178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool92.not = icmp eq i32 %call.i180, 0
  br i1 %tobool92.not, label %if.end99, label %do.end96

do.end96:                                         ; preds = %at91sam926x_pit_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %exit

if.end99:                                         ; preds = %at91sam926x_pit_reset.exit
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %call.i181 = tail call i32 @request_threaded_irq(i32 noundef %34, ptr noundef nonnull @at91sam926x_pit_interrupt, ptr noundef null, i32 noundef 86656, ptr noundef nonnull @.str.16, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool102.not = icmp eq i32 %call.i181, 0
  br i1 %tobool102.not, label %if.end111, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  %call110 = tail call i32 @clocksource_unregister(ptr noundef %clksrc) #6
  br label %exit

if.end111:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %name112 = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 21
  %35 = ptrtoint ptr %name112 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.12, ptr %name112, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %features, align 4
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %shift, align 4
  %conv.i = zext i32 %div178 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shl.i, i32 0) #11, !srcloc !47
  %asmresult.i.i = extractvalue { i64, i32 } %38, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %38, 1
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !48
  %asmresult10.i.i = extractvalue { i64, i32 } %39, 0
  %div1631.i = lshr i64 %asmresult10.i.i, 29
  %conv185.i = trunc i64 %div1631.i to i32
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv185.i, ptr %mult, align 8
  %rating120 = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 22
  %41 = ptrtoint ptr %rating120 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 100, ptr %rating120, align 8
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 25
  %42 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 14
  %43 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pit_clkevt_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @pit_clkevt_set_periodic, ptr %set_state_periodic, align 4
  %resume = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 18
  %45 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @at91sam926x_pit_resume, ptr %resume, align 8
  %suspend = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 17
  %46 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @at91sam926x_pit_suspend, ptr %suspend, align 4
  tail call void @clockevents_register_device(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

exit:                                             ; preds = %do.end106, %do.end96, %do.end35, %do.end25, %do.end13, %do.end
  %ret.0 = phi i32 [ %5, %do.end13 ], [ %retval.0.i.ph, %do.end25 ], [ %call.i180, %do.end96 ], [ %call.i181, %do.end106 ], [ -22, %do.end35 ], [ -6, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end111, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %if.end111 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @read_pit_clk(ptr nocapture noundef readonly %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !49
  %cnt = getelementptr i8, ptr %cs, i32 112
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cnt, align 16
  %base = getelementptr i8, ptr %cs, i32 104
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %add.ptr.i26 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !43
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !50
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end15_crit_edge, !prof !51

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry.do.end15_crit_edge
  %7 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !52
  %shr = lshr i32 %7, 20
  %cycle = getelementptr i8, ptr %cs, i32 108
  %8 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cycle, align 4
  %mul = mul i32 %9, %shr
  %and18 = and i32 %7, 1048575
  %add = add i32 %and18, %2
  %add19 = add i32 %add, %mul
  %conv20 = zext i32 %add19 to i64
  ret i64 %conv20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam926x_pit_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.pit_data, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %cycle = getelementptr inbounds %struct.pit_data, ptr %dev_id, i32 0, i32 3
  %6 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cycle, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !43
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %shr = lshr i32 %11, 20
  %mul = mul i32 %shr, %7
  %cnt = getelementptr inbounds %struct.pit_data, ptr %dev_id, i32 0, i32 4
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt, align 16
  %add = add i32 %mul, %13
  store i32 %add, ptr %cnt, align 16
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 128
  tail call void %15(ptr noundef %dev_id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pit_clkevt_shutdown(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pit_data, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %cycle = getelementptr inbounds %struct.pit_data, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cycle, align 4
  %sub = add i32 %3, -1
  %or = or i32 %sub, 16777216
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %4) #6, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pit_clkevt_set_periodic(ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cycle = getelementptr inbounds %struct.pit_data, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cycle, align 4
  %base = getelementptr inbounds %struct.pit_data, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !43
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %shr = lshr i32 %5, 20
  %mul = mul i32 %shr, %1
  %cnt = getelementptr inbounds %struct.pit_data, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 16
  %add = add i32 %mul, %7
  store i32 %add, ptr %cnt, align 16
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %10 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cycle, align 4
  %sub = add i32 %11, -1
  %or4 = or i32 %sub, 50331648
  %12 = tail call i32 @llvm.bswap.i32(i32 %or4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #6, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam926x_pit_resume(ptr nocapture noundef readonly %cedev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pit_data, ptr %cedev, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !42
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #6, !srcloc !43
  %5 = and i32 %4, -61696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not11.i = icmp eq i32 %5, 0
  br i1 %cmp.not11.i, label %entry.at91sam926x_pit_reset.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.at91sam926x_pit_reset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91sam926x_pit_reset.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !45
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !43
  %9 = and i32 %8, -61696
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %do.end.i.at91sam926x_pit_reset.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.at91sam926x_pit_reset.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91sam926x_pit_reset.exit

at91sam926x_pit_reset.exit:                       ; preds = %do.end.i.at91sam926x_pit_reset.exit_crit_edge, %entry.at91sam926x_pit_reset.exit_crit_edge
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %cycle.i = getelementptr inbounds %struct.pit_data, ptr %cedev, i32 0, i32 3
  %12 = ptrtoint ptr %cycle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cycle.i, align 4
  %sub.i = add i32 %13, -1
  %or.i = or i32 %sub.i, 16777216
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %14) #6, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91sam926x_pit_suspend(ptr nocapture noundef readonly %cedev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pit_data, ptr %cedev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__of_table_at91sam926x_pit, !1, !"__of_table_at91sam926x_pit", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 263, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 179, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @at91sam926x_pit_dt_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @at91sam926x_pit_dt_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 186, i32 3}
!10 = !{ptr @at91sam926x_pit_dt_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @at91sam926x_pit_dt_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 193, i32 3}
!14 = !{ptr @at91sam926x_pit_dt_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @at91sam926x_pit_dt_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 200, i32 3}
!18 = !{ptr @at91sam926x_pit_dt_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @at91sam926x_pit_dt_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 222, i32 22}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 229, i32 3}
!24 = !{ptr @at91sam926x_pit_dt_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @at91sam926x_pit_dt_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 236, i32 6}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-atmel-pit.c", i32 238, i32 3}
!30 = !{ptr @at91sam926x_pit_dt_init._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @at91sam926x_pit_dt_init._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 4014938}
!43 = !{i64 4015356}
!44 = !{i64 2152799119}
!45 = !{i64 2152798961}
!46 = !{i32 0, i32 33}
!47 = !{i64 1150181, i64 1150208, i64 1150230, i64 1150258}
!48 = !{i64 1150589, i64 1150616, i64 1150649, i64 1150670, i64 1150697, i64 1150723}
!49 = !{i64 637672, i64 637733}
!50 = !{i64 640404}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 640689}
