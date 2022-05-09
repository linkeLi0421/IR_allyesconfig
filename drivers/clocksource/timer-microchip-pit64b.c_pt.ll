; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-microchip-pit64b.c_pt.bc'
source_filename = "../drivers/clocksource/timer-microchip-pit64b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mchp_pit64b_timer = type { ptr, ptr, ptr, i32 }
%struct.mchp_pit64b_clkevt = type { %struct.mchp_pit64b_timer, [112 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mchp_pit64b_clksrc = type { %struct.mchp_pit64b_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_mchp_pit64b = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pit64b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_pit64b_dt_init }, section "__timer_of_table", align 4
@mchp_pit64b_dt_init.inits = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_pit64b_init_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mchp_pit64b_init_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/clocksource/timer-microchip-pit64b.c\00", [51 x i8] zeroinitializer }, align 32
@mchp_pit64b_init_mode._entry_ptr = internal global ptr @mchp_pit64b_init_mode._entry, section ".printk_index", align 4
@mchp_pit64b_ce_cycles = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pit64b\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pit64b_tick\00", [20 x i8] zeroinitializer }, align 32
@mchp_pit64b_init_clkevt.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timer_microchip_pit64b\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mchp_pit64b_init_clkevt\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clkevt: Failed to setup PIT64B IRQ\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@mchp_pit64b_cs_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mchp_pit64b_init_clksrc.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mchp_pit64b_init_clksrc\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"clksrc: Failed to register PIT64B clocksource!\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"inits\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 493, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 428, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 432, i32 40 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 327, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"mchp_pit64b_ce_cycles\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 95, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 394, i32 20 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 406, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 408, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"mchp_pit64b_cs_base\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 93, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [48 x i8] c"../drivers/clocksource/timer-microchip-pit64b.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 363, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_mchp_pit64b, ptr @mchp_pit64b_init_mode._entry, ptr @mchp_pit64b_init_mode._entry_ptr, ptr @mchp_pit64b_dt_init.inits, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mchp_pit64b_ce_cycles, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mchp_pit64b_cs_base, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_pit64b_dt_init.inits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_pit64b_init_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_pit64b_ce_cycles to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_pit64b_cs_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_dt_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mchp_pit64b_dt_init.inits, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @mchp_pit64b_dt_init.inits, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i1 [ false, %sw.bb1 ], [ true, %entry.return.sink.split_crit_edge ]
  %call2 = tail call fastcc i32 @mchp_pit64b_dt_init_timer(ptr noundef %node, i1 noundef zeroext %.sink) #11
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call2, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_dt_init_timer(ptr noundef %node, i1 noundef zeroext %clkevt) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %timer = alloca %struct.mchp_pit64b_timer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %clkevt, i32 32768, i32 5000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %timer) #8
  %0 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %timer, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %node, ptr noundef nonnull @.str) #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %0, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_clk_get_by_name(ptr noundef %node, ptr noundef nonnull @.str.1) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %1, align 4
  %cmp.i81 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %timer, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  br i1 %clkevt, label %if.then18, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.io_unmap_crit_edge, label %if.then18.if.end23_crit_edge

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18.io_unmap_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_unmap

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  %irq.0 = phi i32 [ %call19, %if.then18.if.end23_crit_edge ], [ 0, %if.end16.if.end23_crit_edge ]
  %call24 = call fastcc i32 @mchp_pit64b_init_mode(ptr noundef nonnull %timer, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.irq_unmap_crit_edge

if.end23.irq_unmap_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_unmap

if.end27:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %call29 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.irq_unmap_crit_edge

if.end27.irq_unmap_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_unmap

if.end32:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.if.end44_crit_edge, label %if.then34

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then34:                                        ; preds = %if.end32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call36 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then34.if.end44_crit_edge, label %if.then34.pclk_unprepare_crit_edge

if.then34.pclk_unprepare_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %pclk_unprepare

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44:                                         ; preds = %if.then34.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  %.sink = phi ptr [ %15, %if.then34.if.end44_crit_edge ], [ %11, %if.end32.if.end44_crit_edge ]
  %call43 = tail call i32 @clk_get_rate(ptr noundef %.sink) #8
  %and46 = lshr i32 %13, 8
  %shr = and i32 %and46, 15
  %add = add nuw nsw i32 %shr, 1
  %div = udiv i32 %call43, %add
  br i1 %clkevt, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = call fastcc i32 @mchp_pit64b_init_clkevt(ptr noundef nonnull %timer, i32 noundef %div, i32 noundef %irq.0) #11
  br label %if.end52

if.else50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call fastcc i32 @mchp_pit64b_init_clksrc(ptr noundef nonnull %timer, i32 noundef %div) #11
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  %ret.0 = phi i32 [ %call49, %if.then48 ], [ %call51, %if.else50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool53.not = icmp eq i32 %ret.0, 0
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %gclk_unprepare

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gclk_unprepare:                                   ; preds = %if.end52
  br i1 %tobool33.not, label %gclk_unprepare.pclk_unprepare_crit_edge, label %if.then59

gclk_unprepare.pclk_unprepare_crit_edge:          ; preds = %gclk_unprepare
  call void @__sanitizer_cov_trace_pc() #10
  br label %pclk_unprepare

if.then59:                                        ; preds = %gclk_unprepare
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %pclk_unprepare

pclk_unprepare:                                   ; preds = %if.then59, %gclk_unprepare.pclk_unprepare_crit_edge, %if.then34.pclk_unprepare_crit_edge
  %ret.1 = phi i32 [ %call36, %if.then34.pclk_unprepare_crit_edge ], [ %ret.0, %if.then59 ], [ %ret.0, %gclk_unprepare.pclk_unprepare_crit_edge ]
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %irq_unmap

irq_unmap:                                        ; preds = %pclk_unprepare, %if.end27.irq_unmap_crit_edge, %if.end23.irq_unmap_crit_edge
  %ret.2 = phi i32 [ %call24, %if.end23.irq_unmap_crit_edge ], [ %call29, %if.end27.irq_unmap_crit_edge ], [ %ret.1, %pclk_unprepare ]
  tail call void @irq_dispose_mapping(i32 noundef %irq.0) #8
  br label %io_unmap

io_unmap:                                         ; preds = %irq_unmap, %if.then18.io_unmap_crit_edge
  %ret.3 = phi i32 [ %ret.2, %irq_unmap ], [ -19, %if.then18.io_unmap_crit_edge ]
  %18 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timer, align 4
  tail call void @iounmap(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %io_unmap, %if.end52.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %8, %if.then8 ], [ %ret.3, %io_unmap ], [ -6, %if.end11.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %timer) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_mode(ptr nocapture noundef %timer, i32 noundef %max_rate) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode, align 4
  %gclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 2
  %3 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gclk, align 4
  %call1 = tail call i32 @clk_round_rate(ptr noundef %4, i32 noundef %max_rate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.pclk16_crit_edge, label %if.end3

if.end.pclk16_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pclk16

if.end3:                                          ; preds = %if.end
  %div = udiv i32 %call, %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp4 = icmp ult i32 %div, 3
  br i1 %cmp4, label %if.end3.pclk16_crit_edge, label %if.end3.for.cond.i_crit_edge

if.end3.for.cond.i_crit_edge:                     ; preds = %if.end3
  br label %for.cond.i

if.end3.pclk16_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pclk16

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3.for.cond.i_crit_edge
  %storemerge.i = phi i32 [ %add.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end3.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %storemerge.i)
  %exitcond.not.i = icmp eq i32 %storemerge.i, 16
  br i1 %exitcond.not.i, label %for.cond.i.mchp_pit64b_pres_compute.exit_crit_edge, label %for.body.i

for.cond.i.mchp_pit64b_pres_compute.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_pres_compute.exit

for.body.i:                                       ; preds = %for.cond.i
  %add.i = add nuw nsw i32 %storemerge.i, 1
  %div.i = udiv i32 %call1, %add.i
  %cmp1.not.i = icmp ugt i32 %div.i, %max_rate
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.mchp_pit64b_pres_compute.exit_crit_edge

for.body.i.mchp_pit64b_pres_compute.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_pres_compute.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mchp_pit64b_pres_compute.exit:                    ; preds = %for.body.i.mchp_pit64b_pres_compute.exit_crit_edge, %for.cond.i.mchp_pit64b_pres_compute.exit_crit_edge
  %storemerge14.i = phi i32 [ 15, %for.cond.i.mchp_pit64b_pres_compute.exit_crit_edge ], [ %storemerge.i, %for.body.i.mchp_pit64b_pres_compute.exit_crit_edge ]
  %add = add nuw i32 %storemerge14.i, 1
  %div7 = udiv i32 %call1, %add
  %sub = sub i32 %div7, %max_rate
  %5 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %max_rate)
  %tobool10.not = icmp eq i32 %div7, %max_rate
  br i1 %tobool10.not, label %mchp_pit64b_pres_compute.exit.done.sink.split_crit_edge, label %mchp_pit64b_pres_compute.exit.pclk16_crit_edge

mchp_pit64b_pres_compute.exit.pclk16_crit_edge:   ; preds = %mchp_pit64b_pres_compute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pclk16

mchp_pit64b_pres_compute.exit.done.sink.split_crit_edge: ; preds = %mchp_pit64b_pres_compute.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

pclk16:                                           ; preds = %mchp_pit64b_pres_compute.exit.pclk16_crit_edge, %if.end3.pclk16_crit_edge, %if.end.pclk16_crit_edge
  %best_diff.0 = phi i32 [ -1, %if.end.pclk16_crit_edge ], [ -1, %if.end3.pclk16_crit_edge ], [ %5, %mchp_pit64b_pres_compute.exit.pclk16_crit_edge ]
  %best_pres.0 = phi i32 [ 0, %if.end.pclk16_crit_edge ], [ 0, %if.end3.pclk16_crit_edge ], [ %storemerge14.i, %mchp_pit64b_pres_compute.exit.pclk16_crit_edge ]
  br label %for.cond.i92

for.cond.i92:                                     ; preds = %for.body.i96.for.cond.i92_crit_edge, %pclk16
  %storemerge.i90 = phi i32 [ 0, %pclk16 ], [ %add.i93, %for.body.i96.for.cond.i92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %storemerge.i90)
  %exitcond.not.i91 = icmp eq i32 %storemerge.i90, 16
  br i1 %exitcond.not.i91, label %for.cond.i92.mchp_pit64b_pres_compute.exit98_crit_edge, label %for.body.i96

for.cond.i92.mchp_pit64b_pres_compute.exit98_crit_edge: ; preds = %for.cond.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_pres_compute.exit98

for.body.i96:                                     ; preds = %for.cond.i92
  %add.i93 = add nuw nsw i32 %storemerge.i90, 1
  %div.i94 = udiv i32 %call, %add.i93
  %cmp1.not.i95 = icmp ugt i32 %div.i94, %max_rate
  br i1 %cmp1.not.i95, label %for.body.i96.for.cond.i92_crit_edge, label %for.body.i96.mchp_pit64b_pres_compute.exit98_crit_edge

for.body.i96.mchp_pit64b_pres_compute.exit98_crit_edge: ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_pres_compute.exit98

for.body.i96.for.cond.i92_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i92

mchp_pit64b_pres_compute.exit98:                  ; preds = %for.body.i96.mchp_pit64b_pres_compute.exit98_crit_edge, %for.cond.i92.mchp_pit64b_pres_compute.exit98_crit_edge
  %storemerge14.i97 = phi i32 [ 15, %for.cond.i92.mchp_pit64b_pres_compute.exit98_crit_edge ], [ %storemerge.i90, %for.body.i96.mchp_pit64b_pres_compute.exit98_crit_edge ]
  %add18 = add nuw i32 %storemerge14.i97, 1
  %div19 = udiv i32 %call, %add18
  %sub20 = sub i32 %div19, %max_rate
  %6 = tail call i32 @llvm.abs.i32(i32 %sub20, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.0, i32 %6)
  %cmp28 = icmp ugt i32 %best_diff.0, %6
  br i1 %cmp28, label %mchp_pit64b_pres_compute.exit98.done_crit_edge, label %mchp_pit64b_pres_compute.exit98.done.sink.split_crit_edge

mchp_pit64b_pres_compute.exit98.done.sink.split_crit_edge: ; preds = %mchp_pit64b_pres_compute.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

mchp_pit64b_pres_compute.exit98.done_crit_edge:   ; preds = %mchp_pit64b_pres_compute.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done.sink.split:                                  ; preds = %mchp_pit64b_pres_compute.exit98.done.sink.split_crit_edge, %mchp_pit64b_pres_compute.exit.done.sink.split_crit_edge
  %best_pres.1.ph = phi i32 [ %storemerge14.i, %mchp_pit64b_pres_compute.exit.done.sink.split_crit_edge ], [ %best_pres.0, %mchp_pit64b_pres_compute.exit98.done.sink.split_crit_edge ]
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %or31 = or i32 %8, 8
  store i32 %or31, ptr %mode, align 4
  %9 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gclk, align 4
  %call33 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef %call1) #8
  br label %done

done:                                             ; preds = %done.sink.split, %mchp_pit64b_pres_compute.exit98.done_crit_edge
  %best_pres.1 = phi i32 [ %storemerge14.i97, %mchp_pit64b_pres_compute.exit98.done_crit_edge ], [ %best_pres.1.ph, %done.sink.split ]
  %shl = shl i32 %best_pres.1, 8
  %and = and i32 %shl, 3840
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %or36 = or i32 %and, %12
  store i32 %or36, ptr %mode, align 4
  %and39 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond41 = select i1 %tobool40.not, ptr @.str, ptr @.str.1
  %call.call1 = select i1 %tobool40.not, i32 %call, i32 %call1
  %add49 = add i32 %best_pres.1, 1
  %div50 = udiv i32 %call.call1, %add49
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond41, i32 noundef %best_pres.1, i32 noundef %div50) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_clkevt(ptr nocapture noundef readonly %timer, i32 noundef %clk_rate, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %clk_rate, 50
  %div1 = udiv i32 %add, 100
  %conv = zext i32 %div1 to i64
  store i64 %conv, ptr @mchp_pit64b_ce_cycles, align 8
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %timer, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 128
  %pclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 1
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %pclk5 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pclk5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pclk5, align 4
  %gclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 2
  %7 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gclk, align 4
  %gclk7 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %gclk7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %gclk7, align 8
  %mode = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 3
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mode9 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mode9, align 4
  %name = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 21
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.5, ptr %name, align 4
  %features = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %features, align 4
  %rating = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 22
  %15 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 150, ptr %rating, align 8
  %set_state_shutdown = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 14
  %16 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mchp_pit64b_clkevt_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 11
  %17 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mchp_pit64b_clkevt_set_periodic, ptr %set_state_periodic, align 4
  %set_next_event = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mchp_pit64b_clkevt_set_next_event, ptr %set_next_event, align 4
  %suspend = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 17
  %19 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mchp_pit64b_clkevt_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 18
  %20 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mchp_pit64b_clkevt_resume, ptr %resume, align 8
  %cpumask = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 25
  %21 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %irq20 = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 23
  %22 = ptrtoint ptr %irq20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %irq, ptr %irq20, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @mchp_pit64b_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end31, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_pit64b_init_clkevt.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_pit64b_init_clkevt, %if.then29)) #8
          to label %do.end [label %if.then29], !srcloc !40

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mchp_pit64b_init_clkevt.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.9) #8
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clkevt = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %call7.i.i, i32 0, i32 2
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %clk_rate, i32 noundef 1, i32 noundef -1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_pit64b_init_clksrc(ptr nocapture noundef readonly %timer, i32 noundef %clk_rate) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 65536) #8, !srcloc !41
  %mode2.i = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 3
  %3 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode2.i, align 4
  %or.i = or i32 %4, 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !41
  %8 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timer, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -1) #8, !srcloc !41
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #8, !srcloc !41
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !41
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #8, !srcloc !41
  %16 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timer, align 4
  store ptr %17, ptr @mchp_pit64b_cs_base, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call7.i.i, align 8
  %pclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 1
  %19 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pclk, align 4
  %pclk5 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %pclk5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pclk5, align 4
  %gclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 2
  %22 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gclk, align 4
  %gclk7 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %gclk7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %gclk7, align 8
  %25 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode2.i, align 4
  %mode9 = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mode9, align 4
  %clksrc = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.5, ptr %name, align 8
  %mask = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 13
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %flags, align 8
  %rating = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 10
  %31 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 210, ptr %rating, align 4
  %32 = ptrtoint ptr %clksrc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mchp_pit64b_clksrc_read, ptr %clksrc, align 8
  %suspend = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mchp_pit64b_clksrc_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.mchp_pit64b_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 17
  %34 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mchp_pit64b_clksrc_resume, ptr %resume, align 8
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef %clksrc, i32 noundef 1, i32 noundef %clk_rate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_pit64b_init_clksrc.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_pit64b_init_clksrc, %if.then24)) #8
          to label %do.end [label %if.then24], !srcloc !40

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mchp_pit64b_init_clksrc.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %35 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %timer, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 65536) #8, !srcloc !41
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sched_clock_register(ptr noundef nonnull @mchp_pit64b_sched_read_clk, i32 noundef 64, i32 noundef %clk_rate) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_shutdown(ptr nocapture noundef readonly %cedev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cedev, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #8, !srcloc !41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_set_periodic(ptr nocapture noundef readonly %cedev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cedev, i32 -128
  %0 = load i64, ptr @mchp_pit64b_ce_cycles, align 8
  %conv.i = trunc i64 %0 to i32
  %shr.i = lshr i64 %0, 32
  %conv1.i = trunc i64 %shr.i to i32
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 65536) #8, !srcloc !41
  %mode2.i = getelementptr i8, ptr %cedev, i32 -116
  %3 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode2.i, align 4
  %or.i = or i32 %4, 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %8) #8, !srcloc !41
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %11) #8, !srcloc !41
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777216) #8, !srcloc !41
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #8, !srcloc !41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_clkevt_set_next_event(i32 noundef %evt, ptr nocapture noundef readonly %cedev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cedev, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #8, !srcloc !41
  %mode2.i = getelementptr i8, ptr %cedev, i32 -116
  %2 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %4) #8, !srcloc !41
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !41
  %9 = tail call i32 @llvm.bswap.i32(i32 %evt) #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %9) #8, !srcloc !41
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777216) #8, !srcloc !41
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #8, !srcloc !41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_pit64b_clkevt_suspend(ptr nocapture noundef readonly %cedev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cedev, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #8, !srcloc !41
  %mode.i = getelementptr i8, ptr %cedev, i32 -116
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mchp_pit64b_suspend.exit_crit_edge, label %if.then.i

entry.mchp_pit64b_suspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_suspend.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gclk.i = getelementptr i8, ptr %cedev, i32 -120
  %4 = ptrtoint ptr %gclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %mchp_pit64b_suspend.exit

mchp_pit64b_suspend.exit:                         ; preds = %if.then.i, %entry.mchp_pit64b_suspend.exit_crit_edge
  %pclk.i = getelementptr i8, ptr %cedev, i32 -124
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_pit64b_clkevt_resume(ptr nocapture noundef readonly %cedev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cedev, i32 -128
  tail call fastcc void @mchp_pit64b_resume(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_pit64b_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !42
  %clkevt = getelementptr inbounds %struct.mchp_pit64b_clkevt, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %clkevt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkevt, align 128
  tail call void %4(ptr noundef %clkevt) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mchp_pit64b_resume(ptr nocapture noundef readonly %timer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %mode = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  %gclk = getelementptr inbounds %struct.mchp_pit64b_timer, ptr %timer, i32 0, i32 2
  %4 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gclk, align 4
  %call.i4 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end.i8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i8:                                        ; preds = %if.then
  %call1.i6 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool2.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool2.not.i7, label %if.end.i8.if.end_crit_edge, label %if.then3.i9

if.end.i8.if.end_crit_edge:                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i9, %if.end.i8.if.end_crit_edge, %if.then.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mchp_pit64b_clksrc_read(ptr nocapture noundef readnone %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mchp_pit64b_cs_base, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !43
  %add.ptr.i = getelementptr i8, ptr %0, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !42
  %add.ptr4.i = getelementptr i8, ptr %0, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !42
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mchp_pit64b_cnt_read.exit_crit_edge, !prof !45

entry.mchp_pit64b_cnt_read.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_cnt_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %mchp_pit64b_cnt_read.exit

mchp_pit64b_cnt_read.exit:                        ; preds = %if.then.i, %entry.mchp_pit64b_cnt_read.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #8, !srcloc !46
  %5 = zext i32 %3 to i64
  %6 = zext i32 %2 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #8
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_pit64b_clksrc_suspend(ptr nocapture noundef readonly %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cs, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #8, !srcloc !41
  %mode.i = getelementptr i8, ptr %cs, i32 -4
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mchp_pit64b_suspend.exit_crit_edge, label %if.then.i

entry.mchp_pit64b_suspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_suspend.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gclk.i = getelementptr i8, ptr %cs, i32 -8
  %4 = ptrtoint ptr %gclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %mchp_pit64b_suspend.exit

mchp_pit64b_suspend.exit:                         ; preds = %if.then.i, %entry.mchp_pit64b_suspend.exit_crit_edge
  %pclk.i = getelementptr i8, ptr %cs, i32 -12
  %6 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mchp_pit64b_clksrc_resume(ptr nocapture noundef readonly %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cs, i32 -16
  tail call fastcc void @mchp_pit64b_resume(ptr noundef %add.ptr)
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #8, !srcloc !41
  %mode2.i = getelementptr i8, ptr %cs, i32 -4
  %2 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2.i, align 4
  %or.i = or i32 %3, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr4.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %4) #8, !srcloc !41
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -1) #8, !srcloc !41
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #8, !srcloc !41
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %add.ptr10.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !41
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16777216) #8, !srcloc !41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mchp_pit64b_sched_read_clk() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mchp_pit64b_cs_base, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !43
  %add.ptr.i = getelementptr i8, ptr %0, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !42
  %add.ptr4.i = getelementptr i8, ptr %0, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !42
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mchp_pit64b_cnt_read.exit_crit_edge, !prof !45

entry.mchp_pit64b_cnt_read.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mchp_pit64b_cnt_read.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %mchp_pit64b_cnt_read.exit

mchp_pit64b_cnt_read.exit:                        ; preds = %if.then.i, %entry.mchp_pit64b_cnt_read.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #8, !srcloc !46
  %5 = zext i32 %3 to i64
  %6 = zext i32 %2 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #8
  ret i64 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__of_table_mchp_pit64b, !1, !"__of_table_mchp_pit64b", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 508, i32 1}
!2 = !{ptr @mchp_pit64b_dt_init.inits, !3, !"inits", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 493, i32 13}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 428, i32 40}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 432, i32 40}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 327, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mchp_pit64b_init_mode._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mchp_pit64b_init_mode._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 394, i32 20}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 406, i32 6}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 408, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mchp_pit64b_init_clkevt.__UNIQUE_ID_ddebug180, !19, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!23 = !{ptr @mchp_pit64b_ce_cycles, !24, !"mchp_pit64b_ce_cycles", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 95, i32 12}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 363, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mchp_pit64b_init_clksrc.__UNIQUE_ID_ddebug179, !26, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!29 = !{ptr @mchp_pit64b_cs_base, !30, !"mchp_pit64b_cs_base", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-microchip-pit64b.c", i32 93, i32 22}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148733742, i64 2148733747, i64 2148733760, i64 2148733804, i64 2148733838, i64 2148733859}
!41 = !{i64 4021674}
!42 = !{i64 4022092}
!43 = !{i64 644408, i64 644469}
!44 = !{i64 647140}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 647425}
