; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/time.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@ckevt = internal global %struct.clock_event_device { ptr null, ptr @timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @timer_set_shutdown, ptr null, ptr @timer_set_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.4, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@mmp_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to request irq %d (timer)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmp_timer_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-mmp/time.c\00", [39 x i8] zeroinitializer }, align 32
@mmp_timer_init._entry_ptr = internal global ptr @mmp_timer_init._entry, section ".printk_index", align 4
@cksrc = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @clksrc_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.5, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__of_table_mmp_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_dt_init_timer }, section "__timer_of_table", align 4
@mmp_timer_base = internal global { ptr, [28 x i8] } { ptr inttoptr (i32 -33472512 to ptr), [28 x i8] zeroinitializer }, align 32
@mmp_chip_id = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clockevent\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clocksource\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1040, i64 1552]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 186, i32 4 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 187, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"cksrc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 143, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"mmp_timer_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 43, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 130, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [28 x i8] c"../arch/arm/mach-mmp/time.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 144, i32 11 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__of_table_mmp_timer, ptr @mmp_timer_init._entry, ptr @mmp_timer_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cksrc, ptr @mmp_timer_base, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cksrc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_timer_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_timer_init(i32 noundef %irq, i32 noundef %rate) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @timer_config() #7
  tail call void @sched_clock_register(ptr noundef nonnull @mmp_read_sched_clock, i32 noundef 32, i32 noundef %rate) #4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @ckevt, i32 0, i32 25), align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str, ptr noundef nonnull @ckevt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %irq) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i7 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @cksrc, i32 noundef 1, i32 noundef %rate) #4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @ckevt, i32 noundef %rate, i32 noundef 16, i32 noundef -2) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timer_config() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mmp_timer_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !29
  %2 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #4, !srcloc !30
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !31
  %4 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 22528, i32 %4)
  %cmp.i = icmp eq i32 %4, 22528
  br i1 %cmp.i, label %land.rhs.i, label %entry.cpu_is_mmp3.exit.thread_crit_edge

entry.cpu_is_mmp3.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_is_mmp3.exit.thread

land.rhs.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmp_chip_id to i32))
  %5 = load i32, ptr @mmp_chip_id, align 4
  %and1.i = and i32 %5, 4095
  %6 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1.i, label %cpu_is_mmp3.exit [
    i32 1040, label %land.rhs.i.lor.end_crit_edge
    i32 1552, label %land.rhs.i.lor.end_crit_edge24
  ]

land.rhs.i.lor.end_crit_edge24:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

land.rhs.i.lor.end_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

cpu_is_mmp3.exit:                                 ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmp_chip_id to i32))
  %7 = load i32, ptr @mmp_chip_id, align 4
  %and1.i16 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8488, i32 %and1.i16)
  %cmp2.i17.not = icmp eq i32 %and1.i16, 8488
  br i1 %cmp2.i17.not, label %cpu_is_mmp3.exit.lor.end_crit_edge, label %cpu_is_mmp3.exit.cpu_is_mmp3.exit.thread_crit_edge

cpu_is_mmp3.exit.cpu_is_mmp3.exit.thread_crit_edge: ; preds = %cpu_is_mmp3.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_is_mmp3.exit.thread

cpu_is_mmp3.exit.lor.end_crit_edge:               ; preds = %cpu_is_mmp3.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

cpu_is_mmp3.exit.thread:                          ; preds = %cpu_is_mmp3.exit.cpu_is_mmp3.exit.thread_crit_edge, %entry.cpu_is_mmp3.exit.thread_crit_edge
  br label %lor.end

lor.end:                                          ; preds = %cpu_is_mmp3.exit.thread, %cpu_is_mmp3.exit.lor.end_crit_edge, %land.rhs.i.lor.end_crit_edge, %land.rhs.i.lor.end_crit_edge24
  %8 = phi i32 [ 15, %cpu_is_mmp3.exit.thread ], [ 0, %cpu_is_mmp3.exit.lor.end_crit_edge ], [ 0, %land.rhs.i.lor.end_crit_edge ], [ 0, %land.rhs.i.lor.end_crit_edge24 ]
  %and = and i32 %8, %1
  %9 = load ptr, ptr @mmp_timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and) #4, !srcloc !30
  %10 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 2) #4, !srcloc !30
  %11 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 1) #4, !srcloc !30
  %12 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 7) #4, !srcloc !30
  %13 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #4, !srcloc !30
  %14 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #4, !srcloc !30
  %15 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 7) #4, !srcloc !30
  %16 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #4, !srcloc !30
  %17 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 2) #4, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mmp_read_sched_clock() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #4, !srcloc !30
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry
  %delay.08.i = phi i32 [ 100, %entry ], [ %dec.i, %do.end.i.do.end.i_crit_edge ]
  %dec.i = add nsw i32 %delay.08.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !33
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %timer_read.exit, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

timer_read.exit:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %1, i32 168
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !29
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #4, !srcloc !30
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2) #4, !srcloc !30
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_dt_init_timer(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @clk_get_rate(ptr noundef %call) #4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !31
  %and.i = and i32 %0, -15728896
  call void @__sanitizer_cov_trace_const_cmp4(i32 1443846144, i32 %and.i)
  %cmp.i28.not = icmp eq i32 %and.i, 1443846144
  %. = select i1 %cmp.i28.not, i32 6500000, i32 3250000
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  %rate.0 = phi i32 [ %call4, %if.end ], [ %., %if.else ]
  %call11 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  store ptr %call15, ptr @mmp_timer_base, align 4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mmp_timer_init(i32 noundef %call11, i32 noundef %rate.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_set_next_event(i32 noundef %delta, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !34
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2) #4, !srcloc !30
  %2 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr12 = getelementptr i8, ptr %2, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1) #4, !srcloc !30
  %3 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1) #4, !srcloc !30
  %sub = add i32 %delta, -1
  %4 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr14 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %sub) #4, !srcloc !30
  %5 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 3) #4, !srcloc !30
  br i1 %tobool.not, label %if.then25, label %do.end11.do.body27_crit_edge

do.end11.do.body27_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body27

if.then25:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.end11.do.body27_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !35
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then39, label %do.body27.do.end42_crit_edge, !prof !36

do.body27.do.end42_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27.do.end42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_set_shutdown(ptr nocapture noundef readnone %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !34
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !30
  br label %do.body23

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  %2 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr47 = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #4, !srcloc !30
  tail call void @trace_hardirqs_on() #4
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !35
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !36

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #4, !srcloc !37
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @clksrc_read(ptr nocapture noundef readnone %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #4, !srcloc !30
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry
  %delay.08.i = phi i32 [ 100, %entry ], [ %dec.i, %do.end.i.do.end.i_crit_edge ]
  %dec.i = add nsw i32 %delay.08.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !33
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %timer_read.exit, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

timer_read.exit:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @mmp_timer_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %1, i32 168
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !29
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/time.c", i32 186, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mmp/time.c", i32 187, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mmp_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mmp_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__of_table_mmp_timer, !9, !"__of_table_mmp_timer", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-mmp/time.c", i32 223, i32 1}
!10 = !{ptr @mmp_timer_base, !11, !"mmp_timer_base", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-mmp/time.c", i32 43, i32 22}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-mmp/time.c", i32 130, i32 12}
!14 = !{ptr @ckevt, !15, !"ckevt", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-mmp/time.c", i32 129, i32 34}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-mmp/time.c", i32 144, i32 11}
!18 = !{ptr @cksrc, !19, !"cksrc", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-mmp/time.c", i32 143, i32 27}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 4201534}
!30 = !{i64 4201116}
!31 = !{i64 2152813014}
!32 = !{i64 2152817352}
!33 = !{i64 2152817194}
!34 = !{i64 617772, i64 617833}
!35 = !{i64 620504}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 620789}
