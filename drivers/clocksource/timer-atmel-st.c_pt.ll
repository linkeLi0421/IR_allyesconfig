; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-atmel-st.c_pt.bc'
source_filename = "../drivers/clocksource/timer-atmel-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_atmel_st_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-st\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_st_timer_init }, section "__timer_of_table", align 4
@regmap_st = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@atmel_st_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Unable to get regmap\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_st_timer_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clocksource/timer-atmel-st.c\00", [59 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr = internal global ptr @atmel_st_timer_init._entry, section ".printk_index", align 4
@atmel_st_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Unable to get IRQ from DT\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr.5 = internal global ptr @atmel_st_timer_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at91_tick\00", [22 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Unable to setup IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr.9 = internal global ptr @atmel_st_timer_init._entry.7, section ".printk_index", align 4
@atmel_st_timer_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unable to get slow clock\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr.12 = internal global ptr @atmel_st_timer_init._entry.10, section ".printk_index", align 4
@atmel_st_timer_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Could not enable slow clock\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr.15 = internal global ptr @atmel_st_timer_init._entry.13, section ".printk_index", align 4
@atmel_st_timer_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Invalid slow clock rate\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_st_timer_init._entry_ptr.18 = internal global ptr @atmel_st_timer_init._entry.16, section ".printk_index", align 4
@timer_latch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clkevt = internal global %struct.clock_event_device { ptr null, ptr @clkevt32k_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @clkevt32k_set_periodic, ptr @clkevt32k_set_oneshot, ptr null, ptr @clkevt32k_shutdown, ptr @clkevt32k_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.6, i32 150, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@clk32k = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @read_clk32k, i64 1048575, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.19, %struct.list_head zeroinitializer, i32 150, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@irqmask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@at91rm9200_timer_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@last_crtr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"32k_counter\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"regmap_st\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 23, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 191, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 203, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 210, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 212, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 218, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 224, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 230, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"timer_latch\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 24, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"clk32k\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant [8 x i8] c"irqmask\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 21, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"last_crtr\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 20, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [40 x i8] c"../drivers/clocksource/timer-atmel-st.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 88, i32 11 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__of_table_atmel_st_timer, ptr @atmel_st_timer_init._entry, ptr @atmel_st_timer_init._entry.10, ptr @atmel_st_timer_init._entry.13, ptr @atmel_st_timer_init._entry.16, ptr @atmel_st_timer_init._entry.3, ptr @atmel_st_timer_init._entry.7, ptr @atmel_st_timer_init._entry_ptr, ptr @atmel_st_timer_init._entry_ptr.12, ptr @atmel_st_timer_init._entry_ptr.15, ptr @atmel_st_timer_init._entry_ptr.18, ptr @atmel_st_timer_init._entry_ptr.5, ptr @atmel_st_timer_init._entry_ptr.9, ptr @regmap_st, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @timer_latch, ptr @clk32k, ptr @irqmask, ptr @last_crtr, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_st to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_st_timer_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_latch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk32k to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_crtr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_st_timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !55
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %node) #5
  store ptr %call, ptr @regmap_st, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %1 = load ptr, ptr @regmap_st, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 24, i32 noundef 15) #5
  %3 = load ptr, ptr @regmap_st, align 4
  %call5 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %val) #5
  %call6 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %4 = load ptr, ptr @regmap_st, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %call6, ptr noundef nonnull @at91rm9200_timer_interrupt, ptr noundef null, i32 noundef 86656, ptr noundef nonnull @.str.6, ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call23 = call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #5
  %cmp.i70 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  %5 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call.i71 = call i32 @clk_prepare(ptr noundef %call23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end38_crit_edge

if.end32.do.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.end.i:                                         ; preds = %if.end32
  %call1.i = call i32 @clk_enable(ptr noundef %call23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call23) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end32.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i71, %if.end32.do.end38_crit_edge ]
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end.i
  %call42 = call i32 @clk_get_rate(ptr noundef %call23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %call42, 50
  %div = udiv i32 %add, 100
  store i32 %div, ptr @timer_latch, align 4
  %6 = load ptr, ptr @regmap_st, align 4
  %call51 = call i32 @regmap_write(ptr noundef %6, i32 noundef 12, i32 noundef 1) #5
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @clkevt, i32 0, i32 25), align 4
  call void @clockevents_config_and_register(ptr noundef nonnull @clkevt, i32 noundef %call42, i32 noundef 2, i32 noundef 1048575) #5
  %call.i72 = call i32 @__clocksource_register_scale(ptr noundef nonnull @clk32k, i32 noundef 1, i32 noundef %call42) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47, %do.end38, %do.end28, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call.i, %do.end19 ], [ %5, %do.end28 ], [ %retval.0.i.ph, %do.end38 ], [ %call.i72, %if.end50 ], [ -22, %do.end47 ], [ -22, %do.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91rm9200_timer_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #4 align 64 {
entry:
  %x1.i = alloca i32, align 4
  %x2.i = alloca i32, align 4
  %sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #5
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !55
  %1 = load ptr, ptr @regmap_st, align 4
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %sr) #5
  %2 = load i32, ptr @irqmask, align 4
  %3 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sr, align 4
  %and = and i32 %4, %2
  store i32 %and, ptr %sr, align 4
  %5 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !56
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.rhs:                                         ; preds = %entry
  %.b65 = load i1, ptr @at91rm9200_timer_interrupt.__already_done, align 1
  br i1 %.b65, label %land.rhs.if.end43_crit_edge, label %if.then, !prof !57

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @at91rm9200_timer_interrupt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 59, i32 noundef 9, ptr noundef null) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then, %land.rhs.if.end43_crit_edge, %entry.if.end43_crit_edge
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %and51 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %8 = load ptr, ptr @clkevt, align 128
  call void %8(ptr noundef nonnull @clkevt) #5
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %and55 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %if.then57

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1.i) #5
  %9 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %x1.i, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2.i) #5
  %10 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %x2.i, align 4, !annotation !55
  %11 = load ptr, ptr @regmap_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 36, ptr noundef nonnull %x1.i) #5
  %12 = load ptr, ptr @regmap_st, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %13 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %x1.i, align 4
  %15 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %x2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4.i = icmp eq i32 %14, %16
  br i1 %cmp4.i, label %if.then57.read_CRTR.exit_crit_edge, label %if.then57.if.end.i_crit_edge

if.then57.if.end.i_crit_edge:                     ; preds = %if.then57
  br label %if.end.i

if.then57.read_CRTR.exit_crit_edge:               ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then57.if.end.i_crit_edge
  %17 = phi i32 [ %23, %if.end.i.if.end.i_crit_edge ], [ %16, %if.then57.if.end.i_crit_edge ]
  %18 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %x1.i, align 4
  %19 = load ptr, ptr @regmap_st, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %20 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x1.i, align 4
  %22 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x2.i, align 4
  %cmp.i = icmp eq i32 %21, %23
  br i1 %cmp.i, label %if.end.i.read_CRTR.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.read_CRTR.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

read_CRTR.exit:                                   ; preds = %if.end.i.read_CRTR.exit_crit_edge, %if.then57.read_CRTR.exit_crit_edge
  %.lcssa.i = phi i32 [ %14, %if.then57.read_CRTR.exit_crit_edge ], [ %21, %if.end.i.read_CRTR.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1.i) #5
  %24 = load i32, ptr @last_crtr, align 4
  %sub66 = sub i32 %.lcssa.i, %24
  %and5967 = and i32 %sub66, 1048575
  %25 = load i32, ptr @timer_latch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and5967, i32 %25)
  %cmp60.not68 = icmp ult i32 %and5967, %25
  br i1 %cmp60.not68, label %read_CRTR.exit.cleanup_crit_edge, label %read_CRTR.exit.while.body_crit_edge

read_CRTR.exit.while.body_crit_edge:              ; preds = %read_CRTR.exit
  br label %while.body

read_CRTR.exit.cleanup_crit_edge:                 ; preds = %read_CRTR.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %read_CRTR.exit.while.body_crit_edge
  %26 = phi i32 [ %30, %while.body.while.body_crit_edge ], [ %25, %read_CRTR.exit.while.body_crit_edge ]
  %27 = phi i32 [ %29, %while.body.while.body_crit_edge ], [ %24, %read_CRTR.exit.while.body_crit_edge ]
  %add = add i32 %26, %27
  store i32 %add, ptr @last_crtr, align 4
  %28 = load ptr, ptr @clkevt, align 128
  call void %28(ptr noundef nonnull @clkevt) #5
  %29 = load i32, ptr @last_crtr, align 4
  %sub = sub i32 %.lcssa.i, %29
  %and59 = and i32 %sub, 1048575
  %30 = load i32, ptr @timer_latch, align 4
  %cmp60.not = icmp ult i32 %and59, %30
  br i1 %cmp60.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %read_CRTR.exit.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then53
  %retval.0 = phi i32 [ 1, %if.then53 ], [ 0, %if.end54.cleanup_crit_edge ], [ 1, %read_CRTR.exit.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkevt32k_next_event(i32 noundef %delta, ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  %x1.i = alloca i32, align 4
  %x2.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %delta)
  %cmp = icmp ult i32 %delta, 2
  br i1 %cmp, label %do.body2, label %do.end7, !prof !58

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/timer-atmel-st.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

do.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1.i) #5
  %1 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %x1.i, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2.i) #5
  %2 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %x2.i, align 4, !annotation !55
  %3 = load ptr, ptr @regmap_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 36, ptr noundef nonnull %x1.i) #5
  %4 = load ptr, ptr @regmap_st, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %5 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %x1.i, align 4
  %7 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %x2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.i = icmp eq i32 %6, %8
  br i1 %cmp4.i, label %do.end7.read_CRTR.exit_crit_edge, label %do.end7.if.end.i_crit_edge

do.end7.if.end.i_crit_edge:                       ; preds = %do.end7
  br label %if.end.i

do.end7.read_CRTR.exit_crit_edge:                 ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %do.end7.if.end.i_crit_edge
  %9 = phi i32 [ %15, %if.end.i.if.end.i_crit_edge ], [ %8, %do.end7.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %x1.i, align 4
  %11 = load ptr, ptr @regmap_st, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %12 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %x1.i, align 4
  %14 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x2.i, align 4
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %if.end.i.read_CRTR.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.read_CRTR.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

read_CRTR.exit:                                   ; preds = %if.end.i.read_CRTR.exit_crit_edge, %do.end7.read_CRTR.exit_crit_edge
  %.lcssa.i = phi i32 [ %6, %do.end7.read_CRTR.exit_crit_edge ], [ %13, %if.end.i.read_CRTR.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1.i) #5
  %16 = load ptr, ptr @regmap_st, align 4
  %call8 = call i32 @regmap_write(ptr noundef %16, i32 noundef 32, i32 noundef %.lcssa.i) #5
  %17 = load ptr, ptr @regmap_st, align 4
  %call9 = call i32 @regmap_read(ptr noundef %17, i32 noundef 16, ptr noundef nonnull %val) #5
  %add = add i32 %.lcssa.i, %delta
  %18 = load ptr, ptr @regmap_st, align 4
  %call10 = call i32 @regmap_write(ptr noundef %18, i32 noundef 32, i32 noundef %add) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkevt32k_set_periodic(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkdev32k_disable_and_flush_irq()
  store i32 1, ptr @irqmask, align 4
  %0 = load ptr, ptr @regmap_st, align 4
  %1 = load i32, ptr @timer_latch, align 4
  %call = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 4, i32 noundef %1) #5
  %2 = load ptr, ptr @regmap_st, align 4
  %3 = load i32, ptr @irqmask, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 20, i32 noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkevt32k_set_oneshot(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkdev32k_disable_and_flush_irq()
  store i32 8, ptr @irqmask, align 4
  %0 = load ptr, ptr @regmap_st, align 4
  %1 = load i32, ptr @last_crtr, align 4
  %call = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 32, i32 noundef %1) #5
  %2 = load ptr, ptr @regmap_st, align 4
  %3 = load i32, ptr @irqmask, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 20, i32 noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkevt32k_shutdown(ptr nocapture noundef readnone %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkdev32k_disable_and_flush_irq()
  store i32 0, ptr @irqmask, align 4
  %0 = load ptr, ptr @regmap_st, align 4
  %call = tail call i32 @regmap_write(ptr noundef %0, i32 noundef 20, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clkdev32k_disable_and_flush_irq() unnamed_addr #4 align 64 {
entry:
  %x1.i = alloca i32, align 4
  %x2.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !55
  %1 = load ptr, ptr @regmap_st, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 24, i32 noundef 9) #5
  %2 = load ptr, ptr @regmap_st, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1.i) #5
  %3 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %x1.i, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2.i) #5
  %4 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %x2.i, align 4, !annotation !55
  %5 = load ptr, ptr @regmap_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %x1.i) #5
  %6 = load ptr, ptr @regmap_st, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %7 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %x1.i, align 4
  %9 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %x2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4.i = icmp eq i32 %8, %10
  br i1 %cmp4.i, label %entry.read_CRTR.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.read_CRTR.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %11 = phi i32 [ %17, %if.end.i.if.end.i_crit_edge ], [ %10, %entry.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %x1.i, align 4
  %13 = load ptr, ptr @regmap_st, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %14 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x1.i, align 4
  %16 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %x2.i, align 4
  %cmp.i = icmp eq i32 %15, %17
  br i1 %cmp.i, label %if.end.i.read_CRTR.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.read_CRTR.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

read_CRTR.exit:                                   ; preds = %if.end.i.read_CRTR.exit_crit_edge, %entry.read_CRTR.exit_crit_edge
  %.lcssa.i = phi i32 [ %8, %entry.read_CRTR.exit_crit_edge ], [ %15, %if.end.i.read_CRTR.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1.i) #5
  store i32 %.lcssa.i, ptr @last_crtr, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @read_clk32k(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  %x1.i = alloca i32, align 4
  %x2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1.i) #5
  %0 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x1.i, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2.i) #5
  %1 = ptrtoint ptr %x2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %x2.i, align 4, !annotation !55
  %2 = load ptr, ptr @regmap_st, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %x1.i) #5
  %3 = load ptr, ptr @regmap_st, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %4 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x1.i, align 4
  %6 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4.i = icmp eq i32 %5, %7
  br i1 %cmp4.i, label %entry.read_CRTR.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.read_CRTR.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = phi i32 [ %14, %if.end.i.if.end.i_crit_edge ], [ %7, %entry.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %x1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %x1.i, align 4
  %10 = load ptr, ptr @regmap_st, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 36, ptr noundef nonnull %x2.i) #5
  %11 = ptrtoint ptr %x1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %x1.i, align 4
  %13 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %x2.i, align 4
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %if.end.i.read_CRTR.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.read_CRTR.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_CRTR.exit

read_CRTR.exit:                                   ; preds = %if.end.i.read_CRTR.exit_crit_edge, %entry.read_CRTR.exit_crit_edge
  %.lcssa.i = phi i32 [ %5, %entry.read_CRTR.exit_crit_edge ], [ %12, %if.end.i.read_CRTR.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1.i) #5
  %conv = zext i32 %.lcssa.i to i64
  ret i64 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__of_table_atmel_st_timer, !1, !"__of_table_atmel_st_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 249, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 191, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @atmel_st_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @atmel_st_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 203, i32 3}
!10 = !{ptr @atmel_st_timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @atmel_st_timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 210, i32 6}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 212, i32 3}
!16 = !{ptr @atmel_st_timer_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @atmel_st_timer_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 218, i32 3}
!20 = !{ptr @atmel_st_timer_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @atmel_st_timer_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 224, i32 3}
!24 = !{ptr @atmel_st_timer_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @atmel_st_timer_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 230, i32 3}
!28 = !{ptr @atmel_st_timer_init._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @atmel_st_timer_init._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @regmap_st, !31, !"regmap_st", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 23, i32 23}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 59, i32 2}
!34 = !{ptr @irqmask, !35, !"irqmask", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 21, i32 12}
!36 = !{ptr @last_crtr, !37, !"last_crtr", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 20, i32 22}
!38 = !{ptr @timer_latch, !39, !"timer_latch", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 24, i32 12}
!40 = !{ptr @clkevt, !41, !"clkevt", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 168, i32 34}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 88, i32 11}
!44 = !{ptr @clk32k, !45, !"clk32k", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-atmel-st.c", i32 87, i32 27}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i64 609332}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2152876951, i64 2152877452, i64 2152876988, i64 2152877044, i64 2152877078, i64 2152877102, i64 2152877143, i64 2152877164, i64 2152877192, i64 2152877226}
