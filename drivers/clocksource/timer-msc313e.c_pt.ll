; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-msc313e.c_pt.bc'
source_filename = "../drivers/clocksource/timer-msc313e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.msc313e_delay = type { ptr, %struct.delay_timer }
%struct.delay_timer = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.timer_of = type { i32, ptr, [120 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_msc313 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,msc313e-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msc313e_timer_init }, section "__timer_of_table", align 4
@__of_table_ssd20xd = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sstar,ssd20xd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msc313e_timer_init }, section "__timer_of_table", align 4
@msc313e_timer_init.num_called = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__const.msc313e_clksrc_init.to = private unnamed_addr constant { i32, ptr, [120 x i8], { ptr, ptr, ptr, [4 x i8], i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] } { i32 0, ptr null, [120 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", { ptr, ptr, ptr, [4 x i8], i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] } zeroinitializer, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq zeroinitializer, %struct.of_timer_clk zeroinitializer, ptr null, [68 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 128
@msc313e_clksrc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@msc313e_delay = internal global { %struct.msc313e_delay, [20 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msc313e_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sstar,ssd20xd-timer\00", [44 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@msc313e_clkevt = internal unnamed_addr global %struct.clock_event_device { ptr null, ptr @msc313e_timer_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @msc313e_timer_clkevt_set_periodic, ptr @msc313e_timer_clkevt_set_oneshot, ptr null, ptr @msc313e_timer_clkevt_shutdown, ptr @msc313e_timer_clkevt_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"num_called\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 231, i32 13 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"msc313e_clksrc\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 49, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"msc313e_delay\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 46, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 224, i32 51 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [39 x i8] c"../drivers/clocksource/timer-msc313e.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 184, i32 34 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__of_table_msc313, ptr @__of_table_ssd20xd, ptr @msc313e_timer_init.num_called, ptr @msc313e_clksrc, ptr @msc313e_delay, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_timer_init.num_called to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_clksrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc313e_delay to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msc313e_timer_init.num_called, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cond = icmp eq i32 %0, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @msc313e_clksrc_init(ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call1 = tail call fastcc i32 @msc313e_clkevt_init(ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %1 = load i32, ptr @msc313e_timer_init.num_called, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @msc313e_timer_init.num_called, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call1, %sw.default.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc313e_clksrc_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %to = alloca %struct.timer_of, align 128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %to) #7
  %0 = call ptr @memcpy(ptr %to, ptr @__const.msc313e_clksrc_init.to, i32 512)
  %1 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %to, align 128
  %call = call i32 @timer_of_init(ptr noundef %np, ptr noundef nonnull %to) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  store ptr %3, ptr @msc313e_clksrc, align 4
  %4 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %5 = or i16 %4, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @arm_heavy_mb() #7
  %6 = load ptr, ptr @msc313e_clksrc, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %5) #7, !srcloc !28
  %7 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i, align 128
  store ptr %8, ptr @msc313e_delay, align 4
  store ptr @msc313e_read_delay_timer_read, ptr getelementptr inbounds (%struct.msc313e_delay, ptr @msc313e_delay, i32 0, i32 1), align 4
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 16
  store i32 %10, ptr getelementptr inbounds (%struct.msc313e_delay, ptr @msc313e_delay, i32 0, i32 1, i32 1), align 4
  call void @register_current_timer_delay(ptr noundef getelementptr inbounds (%struct.msc313e_delay, ptr @msc313e_delay, i32 0, i32 1)) #7
  %11 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate.i, align 16
  call void @sched_clock_register(ptr noundef nonnull @msc313e_timer_sched_clock_read, i32 noundef 32, i32 noundef %12) #7
  %13 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_base.i, align 128
  %15 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate.i, align 16
  %call11 = call i32 @clocksource_mmio_init(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %16, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @msc313e_timer_clksrc_read) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %to) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc313e_clkevt_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %call7.i.i, align 128
  %of_irq = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 5
  %handler = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @msc313e_timer_clkevt_irq, ptr %handler, align 8
  %call1 = tail call i32 @timer_of_init(ptr noundef %np, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end15_crit_edge, label %if.then7

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %of_clk = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_clk, align 4
  %call8 = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %div = udiv i32 %call8, 9
  %rate = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %rate, align 8
  %sub = add nuw nsw i32 %div, 99
  %div12 = udiv i32 %sub, 100
  %period = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div12, ptr %period, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 2048) #7, !srcloc !28
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end4.if.end15_crit_edge
  store ptr @__cpu_possible_mask, ptr getelementptr inbounds (%struct.clock_event_device, ptr @msc313e_clkevt, i32 0, i32 25), align 4
  %9 = ptrtoint ptr %of_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %of_irq, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.clock_event_device, ptr @msc313e_clkevt, i32 0, i32 23), align 4
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %clkevt, ptr @msc313e_clkevt, i32 256)
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %call7.i.i, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate.i, align 8
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %13, i32 noundef 3, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_read_delay_timer_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msc313e_delay, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.end11.i_crit_edge

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %entry.do.end11.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %add.ptr17.i = getelementptr i8, ptr %0, i32 20
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  br i1 %tobool.not.i, label %if.then30.i, label %do.end11.i.do.body32.i_crit_edge

do.end11.i.do.body32.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32.i

if.then30.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then30.i, %do.end11.i.do.body32.i_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.msc313e_timer_current_value.exit_crit_edge, !prof !34

do.body32.i.msc313e_timer_current_value.exit_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msc313e_timer_current_value.exit

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %msc313e_timer_current_value.exit

msc313e_timer_current_value.exit:                 ; preds = %if.then44.i, %do.body32.i.msc313e_timer_current_value.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !35
  %5 = zext i16 %3 to i32
  %6 = zext i16 %2 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or i32 %7, %5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @msc313e_timer_sched_clock_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msc313e_clksrc, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.end11.i_crit_edge

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %entry.do.end11.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %add.ptr17.i = getelementptr i8, ptr %0, i32 20
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  br i1 %tobool.not.i, label %if.then30.i, label %do.end11.i.do.body32.i_crit_edge

do.end11.i.do.body32.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32.i

if.then30.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then30.i, %do.end11.i.do.body32.i_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.msc313e_timer_current_value.exit_crit_edge, !prof !34

do.body32.i.msc313e_timer_current_value.exit_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msc313e_timer_current_value.exit

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %msc313e_timer_current_value.exit

msc313e_timer_current_value.exit:                 ; preds = %if.then44.i, %do.body32.i.msc313e_timer_current_value.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !35
  %5 = zext i16 %3 to i32
  %6 = zext i16 %2 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or i32 %7, %5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv = zext i32 %9 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @msc313e_timer_clksrc_read(ptr nocapture noundef readonly %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msc313e_clksrc, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.end11.i_crit_edge

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %entry.do.end11.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  %add.ptr17.i = getelementptr i8, ptr %0, i32 20
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  br i1 %tobool.not.i, label %if.then30.i, label %do.end11.i.do.body32.i_crit_edge

do.end11.i.do.body32.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32.i

if.then30.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body32.i

do.body32.i:                                      ; preds = %if.then30.i, %do.end11.i.do.body32.i_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.msc313e_timer_current_value.exit_crit_edge, !prof !34

do.body32.i.msc313e_timer_current_value.exit_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msc313e_timer_current_value.exit

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %msc313e_timer_current_value.exit

msc313e_timer_current_value.exit:                 ; preds = %if.then44.i, %do.body32.i.msc313e_timer_current_value.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !35
  %5 = zext i16 %3 to i32
  %6 = zext i16 %2 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or i32 %7, %5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv = zext i32 %9 to i64
  %mask = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 1
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mask, align 8
  %and = and i64 %11, %conv
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_clkevt_irq(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  tail call void %1(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_clkevt_next_event(i32 noundef %evt, ptr nocapture noundef readonly %clkevt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #7, !srcloc !28
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  tail call fastcc void @msc313e_timer_setup(ptr noundef %3, i32 noundef %evt)
  %4 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i, align 128
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %7 = or i16 %6, 513
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %7) #7, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_clkevt_set_periodic(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #7, !srcloc !28
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  %period.i = getelementptr i8, ptr %evt, i32 308
  %4 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period.i, align 4
  tail call fastcc void @msc313e_timer_setup(ptr noundef %3, i32 noundef %5)
  %6 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base.i, align 128
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %9 = or i16 %8, 257
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %9) #7, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_clkevt_set_oneshot(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #7, !srcloc !28
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %5 = or i16 %4, 513
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %5) #7, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc313e_timer_clkevt_shutdown(ptr nocapture noundef readonly %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #7, !srcloc !28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msc313e_timer_setup(ptr noundef %base, i32 noundef %delay) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !30
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %delay, 16
  %conv15 = trunc i32 %shr to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %add.ptr = getelementptr i8, ptr %base, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %1) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %conv19 = trunc i32 %delay to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %add.ptr20 = getelementptr i8, ptr %base, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %2) #7, !srcloc !28
  br i1 %tobool.not, label %if.then30, label %do.body12.do.body32_crit_edge

do.body12.do.body32_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.then30:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %do.body12.do.body32_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !33
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool40.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool40.not, label %if.then44, label %do.body32.do.end47_crit_edge, !prof !34

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.body32.do.end47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__of_table_msc313, !1, !"__of_table_msc313", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-msc313e.c", i32 252, i32 1}
!2 = !{ptr @__of_table_ssd20xd, !3, !"__of_table_ssd20xd", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-msc313e.c", i32 253, i32 1}
!4 = !{ptr @msc313e_timer_init.num_called, !5, !"num_called", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-msc313e.c", i32 231, i32 13}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-msc313e.c", i32 224, i32 51}
!8 = !{ptr @msc313e_clksrc, !9, !"msc313e_clksrc", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-msc313e.c", i32 49, i32 22}
!10 = !{ptr @msc313e_delay, !11, !"msc313e_delay", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-msc313e.c", i32 46, i32 29}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-msc313e.c", i32 184, i32 34}
!14 = !{ptr @msc313e_clkevt, !15, !"msc313e_clkevt", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-msc313e.c", i32 158, i32 34}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 4013552}
!26 = !{i64 2152811248}
!27 = !{i64 2152811553}
!28 = !{i64 4013352}
!29 = !{i64 2152810304}
!30 = !{i64 636706, i64 636767}
!31 = !{i64 2152808305}
!32 = !{i64 2152808772}
!33 = !{i64 639438}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 639723}
!36 = !{i64 2152803612}
!37 = !{i64 2152804242}
!38 = !{i64 2152804731}
!39 = !{i64 2152805818}
!40 = !{i64 2152806235}
