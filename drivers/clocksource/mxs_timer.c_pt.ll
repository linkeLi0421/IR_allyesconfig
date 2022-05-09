; ModuleID = '/llk/IR_all_yes/drivers/clocksource/mxs_timer.c_pt.bc'
source_filename = "../drivers/clocksource/mxs_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }

@__of_table_mxs = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,timrot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxs_timer_init }, section "__timer_of_table", align 4
@mxs_timrot_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clocksource/mxs_timer.c\00", [32 x i8] zeroinitializer }, align 32
@mxs_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: failed to get clk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxs_timer_init\00", [17 x i8] zeroinitializer }, align 32
@mxs_timer_init._entry_ptr = internal global ptr @mxs_timer_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx23-timrot\00", [47 x i8] zeroinitializer }, align 32
@timrot_major_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MXS Timer Tick\00", [17 x i8] zeroinitializer }, align 32
@mxs_clockevent_device = internal global %struct.clock_event_device { ptr null, ptr @timrotv2_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @mxs_set_oneshot, ptr null, ptr @mxs_shutdown, ptr @mxs_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.6, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@clocksource_mxs = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @timrotv1_get_cycles, i64 65535, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.5, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxs_timer\00", [22 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxs_timrot\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oneshot\00", [24 x i8] zeroinitializer }, align 32
@mxs_irq_clear.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_irq_clear\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: changing mode to %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"mxs_timrot_base\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 65, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 209, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 213, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 228, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"timrot_major_version\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 66, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 271, i32 7 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"clocksource_mxs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 175, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 196, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 153, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 147, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 134, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [35 x i8] c"../drivers/clocksource/mxs_timer.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 16 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_mxs, ptr @mxs_timer_init._entry, ptr @mxs_timer_init._entry_ptr, ptr @mxs_timrot_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @timrot_major_version, ptr @.str.4, ptr @clocksource_mxs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_timrot_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timrot_major_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_mxs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @mxs_timrot_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %0 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call21) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  %1 = load ptr, ptr @mxs_timrot_base, align 4
  %call35 = tail call i32 @stmp_reset_block(ptr noundef %1) #5
  %2 = load ptr, ptr @mxs_timrot_base, align 4
  %call36 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %cond = select i1 %tobool37.not, i32 288, i32 160
  %add.ptr38 = getelementptr i8, ptr %2, i32 %cond
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #5, !srcloc !43
  %shr = lshr i32 %3, 24
  store i32 %shr, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %or41 = select i1 %cmp, i32 16520, i32 16527
  %4 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr42 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %or41) #5, !srcloc !44
  %5 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp43 = icmp eq i32 %5, 1
  %or45 = select i1 %cmp43, i32 72, i32 79
  %6 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr46 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or45) #5, !srcloc !44
  %7 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp47 = icmp eq i32 %7, 1
  %8 = load ptr, ptr @mxs_timrot_base, align 4
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr49 = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 65535) #5, !srcloc !44
  br label %if.end51

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr50 = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 -1) #5, !srcloc !44
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then48
  tail call fastcc void @mxs_clocksource_init(ptr noundef %call21) #9
  tail call fastcc void @mxs_clockevent_init(ptr noundef %call21) #9
  %call60 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %if.end51.cleanup_crit_edge, label %if.end63

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81 = tail call i32 @request_threaded_irq(i32 noundef %call60, ptr noundef nonnull @mxs_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.4, ptr noundef nonnull @mxs_clockevent_device) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end51.cleanup_crit_edge, %if.then3.i, %if.end30.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ %0, %do.end26 ], [ %call.i81, %if.end63 ], [ -22, %if.end51.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_clocksource_init(ptr noundef %timer_clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_get_rate(ptr noundef %timer_clk) #5
  %0 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource_mxs, i32 noundef 1, i32 noundef %call) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %call2 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  tail call void @sched_clock_register(ptr noundef nonnull @mxs_read_sched_clock_v2, i32 noundef 32, i32 noundef %call) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_clockevent_init(ptr noundef %timer_clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr @timrotv1_set_next_event, ptr getelementptr inbounds (%struct.clock_event_device, ptr @mxs_clockevent_device, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @mxs_clockevent_device, i32 0, i32 25), align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %timer_clk) #5
  %1 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  %cond = select i1 %cmp2, i32 15, i32 2
  %cond4 = select i1 %cmp2, i32 65534, i32 -2
  tail call void @clockevents_config_and_register(ptr noundef nonnull @mxs_clockevent_device, i32 noundef %call1, i32 noundef %cond, i32 noundef %cond4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 32768) #5, !srcloc !44
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mxs_read_sched_clock_v2() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @timrotv1_get_cycles(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  %shr = lshr i32 %1, 16
  %neg = xor i32 %shr, -1
  %conv = zext i32 %neg to i64
  ret i64 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timrotv1_set_next_event(i32 noundef %evt, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %evt) #5, !srcloc !44
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timrotv2_set_next_event(i32 noundef %evt, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %evt) #5, !srcloc !44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_set_oneshot(ptr nocapture noundef readonly %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %2, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 16384) #5, !srcloc !44
  %3 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i1 = icmp eq i32 %3, 1
  %4 = load ptr, ptr @mxs_timrot_base, align 4
  br i1 %cmp.i1, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65535) #5, !srcloc !44
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr1.i = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 -1) #5, !srcloc !44
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %5 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i6.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 32768) #5, !srcloc !44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_irq_clear.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_set_oneshot, %if.then4.i)) #5
          to label %if.end [label %if.then4.i], !srcloc !45

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxs_irq_clear.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #5
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i, %entry.if.end_crit_edge
  %6 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i2 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2, i32 16384) #5, !srcloc !44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 16384) #5, !srcloc !44
  %1 = load i32, ptr @timrot_major_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %2 = load ptr, ptr @mxs_timrot_base, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65535) #5, !srcloc !44
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr1.i = getelementptr i8, ptr %2, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 -1) #5, !srcloc !44
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %3 = load ptr, ptr @mxs_timrot_base, align 4
  %add.ptr1.i6.i = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 32768) #5, !srcloc !44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_irq_clear.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_shutdown, %if.then4.i)) #5
          to label %mxs_irq_clear.exit [label %if.then4.i], !srcloc !45

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mxs_irq_clear.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #5
  br label %mxs_irq_clear.exit

mxs_irq_clear.exit:                               ; preds = %if.then4.i, %if.end.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__of_table_mxs, !1, !"__of_table_mxs", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/mxs_timer.c", i32 273, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/mxs_timer.c", i32 209, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/mxs_timer.c", i32 213, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mxs_timer_init._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @mxs_timer_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clocksource/mxs_timer.c", i32 228, i32 33}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/mxs_timer.c", i32 271, i32 7}
!13 = !{ptr @mxs_timrot_base, !14, !"mxs_timrot_base", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/mxs_timer.c", i32 65, i32 22}
!15 = !{ptr @timrot_major_version, !16, !"timrot_major_version", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/mxs_timer.c", i32 66, i32 12}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/mxs_timer.c", i32 196, i32 4}
!19 = !{ptr @clocksource_mxs, !20, !"clocksource_mxs", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/mxs_timer.c", i32 175, i32 27}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/mxs_timer.c", i32 153, i32 12}
!23 = !{ptr @mxs_clockevent_device, !24, !"mxs_clockevent_device", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/mxs_timer.c", i32 152, i32 34}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/mxs_timer.c", i32 147, i32 17}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/mxs_timer.c", i32 134, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mxs_irq_clear.__UNIQUE_ID_ddebug179, !28, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/mxs_timer.c", i32 139, i32 16}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 4204010}
!44 = !{i64 4203592}
!45 = !{i64 2148722784, i64 2148722789, i64 2148722802, i64 2148722846, i64 2148722880, i64 2148722901}
