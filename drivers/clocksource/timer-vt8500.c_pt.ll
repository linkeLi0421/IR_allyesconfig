; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-vt8500.c_pt.bc'
source_filename = "../drivers/clocksource/timer-vt8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }

@__of_table_vt8500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_timer_init }, section "__timer_of_table", align 4
@regbase = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vt8500_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Missing iobase description in Device Tree\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt8500_timer_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clocksource/timer-vt8500.c\00", [61 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry_ptr = internal global ptr @vt8500_timer_init._entry, section ".printk_index", align 4
@vt8500_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Missing irq description in Device Tree\0A\00", [50 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry_ptr.5 = internal global ptr @vt8500_timer_init._entry.3, section ".printk_index", align 4
@clocksource = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @vt8500_timer_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.9, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: clocksource_register failed for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry_ptr.8 = internal global ptr @vt8500_timer_init._entry.6, section ".printk_index", align 4
@clockevent = internal global %struct.clock_event_device { ptr null, ptr @vt8500_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @vt8500_shutdown, ptr null, ptr @vt8500_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.9, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt8500_timer\00", [19 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: setup_irq failed for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@vt8500_timer_init._entry_ptr.12 = internal global ptr @vt8500_timer_init._entry.10, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"regbase\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 41, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 110, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 117, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 53, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 128, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 136, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [38 x i8] c"../drivers/clocksource/timer-vt8500.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 139, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_vt8500, ptr @vt8500_timer_init._entry, ptr @vt8500_timer_init._entry.10, ptr @vt8500_timer_init._entry.3, ptr @vt8500_timer_init._entry.6, ptr @vt8500_timer_init._entry_ptr, ptr @vt8500_timer_init._entry_ptr.12, ptr @vt8500_timer_init._entry_ptr.5, ptr @vt8500_timer_init._entry_ptr.8, ptr @regbase, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @clocksource, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regbase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_timer_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @regbase, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.body11:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %0 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %1 = load ptr, ptr @regbase, align 4
  %add.ptr17 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 251658240) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %2 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -1) #5, !srcloc !38
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource, i32 noundef 1, i32 noundef 3000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource, i32 0, i32 8), align 8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %3) #8
  br label %cleanup

if.end30:                                         ; preds = %do.body11
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @clockevent, i32 0, i32 25), align 4
  %call.i47 = tail call i32 @request_threaded_irq(i32 noundef %call2, ptr noundef nonnull @vt8500_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.9, ptr noundef nonnull @clockevent) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool33.not = icmp eq i32 %call.i47, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load ptr, ptr getelementptr inbounds (%struct.clock_event_device, ptr @clockevent, i32 0, i32 21), align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, ptr noundef %4) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clockevents_config_and_register(ptr noundef nonnull @clockevent, i32 noundef 3000000, i32 noundef 32, i32 noundef -268435456) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end37, %do.end27, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end27 ], [ %call.i47, %do.end37 ], [ 0, %if.end40 ], [ -22, %do.end7 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %0 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #5, !srcloc !38
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vt8500_timer_read(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %0 = load i32, ptr @loops_per_jiffy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %1 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #5, !srcloc !38
  %2 = load ptr, ptr @regbase, align 4
  %add.ptr220 = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not21 = icmp eq i32 %4, 0
  br i1 %tobool.not21, label %entry.while.end_crit_edge, label %land.rhs.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.preheader:                               ; preds = %entry
  %5 = urem i32 %0, 1000
  %mul1 = sub i32 %0, %5
  br label %land.rhs

land.rhs:                                         ; preds = %do.end9.land.rhs_crit_edge, %land.rhs.preheader
  %loops.022 = phi i32 [ %dec, %do.end9.land.rhs_crit_edge ], [ %mul1, %land.rhs.preheader ]
  %dec = add i32 %loops.022, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %land.rhs.while.end_crit_edge, label %do.end9

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end9:                                          ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !46
  %6 = load ptr, ptr @regbase, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %8 = and i32 %7, 536870912
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end9.while.end_crit_edge, label %do.end9.land.rhs_crit_edge

do.end9.land.rhs_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end9.while.end_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end9.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %9 = load ptr, ptr @regbase, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !43
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %conv = zext i32 %11 to i64
  ret i64 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_timer_set_next_event(i32 noundef %cycles, ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %0 = load i32, ptr @loops_per_jiffy, align 4
  %1 = load ptr, ptr @clocksource, align 8
  %call = tail call i64 %1(ptr noundef nonnull @clocksource) #5
  %conv = zext i32 %cycles to i64
  %add = add i64 %call, %conv
  %2 = load ptr, ptr @regbase, align 4
  %add.ptr25 = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not26 = icmp eq i32 %4, 0
  br i1 %tobool.not26, label %entry.do.body11_crit_edge, label %land.rhs.preheader

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

land.rhs.preheader:                               ; preds = %entry
  %5 = urem i32 %0, 1000
  %mul1 = sub i32 %0, %5
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.preheader
  %loops.027 = phi i32 [ %dec, %do.end.land.rhs_crit_edge ], [ %mul1, %land.rhs.preheader ]
  %dec = add i32 %loops.027, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %land.rhs.do.body11_crit_edge, label %do.end

land.rhs.do.body11_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !50
  %6 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %8 = and i32 %7, 16777216
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end.do.body11_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.do.body11_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.body11:                                        ; preds = %do.end.do.body11_crit_edge, %land.rhs.do.body11_crit_edge, %entry.do.body11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %conv14 = trunc i64 %add to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv14)
  %10 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #5, !srcloc !38
  %11 = load ptr, ptr @clocksource, align 8
  %call16 = tail call i64 %11(ptr noundef nonnull @clocksource) #5
  %sub = sub i64 %add, %call16
  %conv17 = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %conv17)
  %cmp = icmp slt i32 %conv17, 17
  br i1 %cmp, label %do.body11.cleanup_crit_edge, label %do.body19

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body19:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr @regbase, align 4
  %add.ptr22 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 16777216) #5, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body19 ], [ -62, %do.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %0 = load ptr, ptr @regbase, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %2 = or i32 %1, 16777216
  %3 = load ptr, ptr @regbase, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr @regbase, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__of_table_vt8500, !1, !"__of_table_vt8500", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-vt8500.c", i32 150, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-vt8500.c", i32 110, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vt8500_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vt8500_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-vt8500.c", i32 117, i32 3}
!10 = !{ptr @vt8500_timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vt8500_timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-vt8500.c", i32 128, i32 3}
!14 = !{ptr @vt8500_timer_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vt8500_timer_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-vt8500.c", i32 136, i32 33}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-vt8500.c", i32 139, i32 3}
!20 = !{ptr @vt8500_timer_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @vt8500_timer_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @regbase, !23, !"regbase", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-vt8500.c", i32 41, i32 22}
!24 = !{ptr @clocksource, !25, !"clocksource", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-vt8500.c", i32 53, i32 27}
!26 = !{ptr @clockevent, !27, !"clockevent", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-vt8500.c", i32 86, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2152775165}
!38 = !{i64 687162}
!39 = !{i64 2152775553}
!40 = !{i64 2152775946}
!41 = !{i64 2152771136}
!42 = !{i64 2152764736}
!43 = !{i64 687580}
!44 = !{i64 2152765405}
!45 = !{i64 2152765689}
!46 = !{i64 2152765531}
!47 = !{i64 2152766178}
!48 = !{i64 2152767512}
!49 = !{i64 2152767796}
!50 = !{i64 2152767638}
!51 = !{i64 2152768033}
!52 = !{i64 2152768482}
!53 = !{i64 2152769606}
!54 = !{i64 2152770505}
!55 = !{i64 2152770739}
