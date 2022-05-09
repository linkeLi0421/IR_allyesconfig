; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-orion.c_pt.bc'
source_filename = "../drivers/clocksource/timer-orion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@__of_table_orion_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_timer_init }, section "__timer_of_table", align 4
@timer_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@orion_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: unable to map resource\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orion_timer_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-orion.c\00", [62 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr = internal global ptr @orion_timer_init._entry, section ".printk_index", align 4
@orion_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%pOFn: unable to get clk\0A\00", [36 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr.5 = internal global ptr @orion_timer_init._entry.3, section ".printk_index", align 4
@orion_timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to prepare clock\0A\00", [37 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr.8 = internal global ptr @orion_timer_init._entry.6, section ".printk_index", align 4
@orion_timer_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%pOFn: unable to parse timer1 irq\0A\00", [59 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr.11 = internal global ptr @orion_timer_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"orion_clocksource\00", [46 x i8] zeroinitializer }, align 32
@orion_timer_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to initialize mmio timer\0A\00", [61 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr.15 = internal global ptr @orion_timer_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"orion_event\00", [20 x i8] zeroinitializer }, align 32
@orion_timer_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOFn: unable to setup irq\0A\00", [34 x i8] zeroinitializer }, align 32
@orion_timer_init._entry_ptr.19 = internal global ptr @orion_timer_init._entry.17, section ".printk_index", align 4
@ticks_per_jiffy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@orion_clkevt = internal global %struct.clock_event_device { ptr null, ptr @orion_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 32, i32 0, i32 3, i32 0, ptr @orion_clkevt_set_periodic, ptr @orion_clkevt_shutdown, ptr null, ptr @orion_clkevt_shutdown, ptr @orion_clkevt_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.16, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@orion_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @orion_read_timer, i32 0 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"timer_base\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 38, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 126, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 132, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 138, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 145, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 160, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 163, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 171, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 173, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"ticks_per_jiffy\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 66, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"orion_delay_timer\00", align 1
@___asan_gen_.75 = private constant [37 x i8] c"../drivers/clocksource/timer-orion.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 45, i32 27 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__of_table_orion_timer, ptr @orion_timer_init._entry, ptr @orion_timer_init._entry.13, ptr @orion_timer_init._entry.17, ptr @orion_timer_init._entry.3, ptr @orion_timer_init._entry.6, ptr @orion_timer_init._entry.9, ptr @orion_timer_init._entry_ptr, ptr @orion_timer_init._entry_ptr.11, ptr @orion_timer_init._entry_ptr.15, ptr @orion_timer_init._entry_ptr.19, ptr @orion_timer_init._entry_ptr.5, ptr @orion_timer_init._entry_ptr.8, ptr @timer_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ticks_per_jiffy, ptr @orion_delay_timer], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_timer_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ticks_per_jiffy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @timer_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %np) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np) #8
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end.i:                                         ; preds = %if.end11
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call2) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i, %if.end11.do.end17_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end11.do.end17_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %call21 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp = icmp slt i32 %call21, 1
  br i1 %cmp, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %np) #8
  br label %out_unprep_clk

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @clk_get_rate(ptr noundef %call2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %1 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %2 = load ptr, ptr @timer_base, align 4
  %add.ptr36 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #5, !srcloc !50
  %3 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %3, i32 noundef 3, i32 noundef 3) #5
  %4 = load ptr, ptr @timer_base, align 4
  %add.ptr38 = getelementptr i8, ptr %4, i32 20
  %call39 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr38, ptr noundef nonnull @.str.12, i32 noundef %call29, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %out_unprep_clk

if.end47:                                         ; preds = %if.end28
  tail call void @sched_clock_register(ptr noundef nonnull @orion_read_sched_clock, i32 noundef 32, i32 noundef %call29) #5
  %call.i82 = tail call i32 @request_threaded_irq(i32 noundef %call21, ptr noundef nonnull @orion_clkevt_irq_handler, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.16, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool49.not = icmp eq i32 %call.i82, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %np) #8
  br label %out_unprep_clk

if.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 @clk_get_rate(ptr noundef %call2) #5
  %add = add i32 %call57, 50
  %div = udiv i32 %add, 100
  store i32 %div, ptr @ticks_per_jiffy, align 4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @orion_clkevt, i32 0, i32 25), align 4
  store i32 %call21, ptr getelementptr inbounds (%struct.clock_event_device, ptr @orion_clkevt, i32 0, i32 23), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @orion_clkevt, i32 noundef %call29, i32 noundef 1, i32 noundef -2) #5
  store i32 %call29, ptr getelementptr inbounds (%struct.delay_timer, ptr @orion_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @orion_delay_timer) #5
  br label %cleanup

out_unprep_clk:                                   ; preds = %do.end53, %do.end44, %do.end25
  %ret.0 = phi i32 [ -22, %do.end25 ], [ %call39, %do.end44 ], [ %call.i82, %do.end53 ]
  tail call void @clk_disable(ptr noundef %call2) #5
  tail call void @clk_unprepare(ptr noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unprep_clk, %if.end56, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ %0, %do.end7 ], [ %retval.0.i.ph, %do.end17 ], [ %ret.0, %out_unprep_clk ], [ 0, %if.end56 ], [ -6, %do.end ]
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @orion_read_sched_clock() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_clkevt_irq_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @orion_clkevt, align 128
  tail call void %0(ptr noundef nonnull @orion_clkevt) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_clkevt_next_event(i32 noundef %delta, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %1 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !50
  %2 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %2, i32 noundef 12, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_clkevt_set_periodic(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %0 = load i32, ptr @ticks_per_jiffy, align 4
  %sub = add i32 %0, -1
  %1 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %2 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %3 = load i32, ptr @ticks_per_jiffy, align 4
  %sub3 = add i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %sub3)
  %5 = load ptr, ptr @timer_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #5, !srcloc !50
  %6 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %6, i32 noundef 12, i32 noundef 12) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_clkevt_shutdown(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %0, i32 noundef 12, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_read_timer() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__of_table_orion_timer, !1, !"__of_table_orion_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-orion.c", i32 192, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-orion.c", i32 126, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @orion_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @orion_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-orion.c", i32 132, i32 3}
!10 = !{ptr @orion_timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @orion_timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-orion.c", i32 138, i32 3}
!14 = !{ptr @orion_timer_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @orion_timer_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-orion.c", i32 145, i32 3}
!18 = !{ptr @orion_timer_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @orion_timer_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-orion.c", i32 160, i32 9}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-orion.c", i32 163, i32 3}
!24 = !{ptr @orion_timer_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @orion_timer_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-orion.c", i32 171, i32 6}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-orion.c", i32 173, i32 3}
!30 = !{ptr @orion_timer_init._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @orion_timer_init._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @timer_base, !33, !"timer_base", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-orion.c", i32 38, i32 22}
!34 = !{ptr @ticks_per_jiffy, !35, !"ticks_per_jiffy", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/timer-orion.c", i32 66, i32 12}
!36 = !{ptr @orion_clkevt, !37, !"orion_clkevt", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-orion.c", i32 98, i32 34}
!38 = !{ptr @orion_delay_timer, !39, !"orion_delay_timer", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-orion.c", i32 45, i32 27}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2152808108}
!50 = !{i64 4012624}
!51 = !{i64 2152808498}
!52 = !{i64 4013042}
!53 = !{i64 2152799329}
!54 = !{i64 2152799550}
!55 = !{i64 2152800386}
!56 = !{i64 2152800844}
!57 = !{i64 2152798794}
