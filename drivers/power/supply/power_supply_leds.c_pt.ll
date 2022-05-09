; ModuleID = '/llk/IR_all_yes/drivers/power/supply/power_supply_leds.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@power_supply_update_bat_leds.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_supply\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"power_supply_update_bat_leds\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/power/supply/power_supply_leds.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@power_supply_update_gen_leds.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"power_supply_update_gen_leds\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s-charging-or-full\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s-charging\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-full\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s-charging-blink-full-solid\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-online\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 120, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 60, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 65, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 69, i32 46 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 74, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [44 x i8] c"../drivers/power/supply/power_supply_leds.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 130, i32 48 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @power_supply_update_leds(ptr noundef %psy) local_unnamed_addr #0 align 64 {
entry:
  %online.i = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @power_supply_update_bat_leds(ptr noundef %psy)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %online.i) #3
  %4 = ptrtoint ptr %online.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %online.i, align 4, !annotation !28
  %call.i = call i32 @power_supply_get_property(ptr noundef %psy, i32 noundef 4, ptr noundef nonnull %online.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.else.power_supply_update_gen_leds.exit_crit_edge

if.else.power_supply_update_gen_leds.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %power_supply_update_gen_leds.exit

do.body.i:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_supply_update_gen_leds.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@power_supply_update_leds, %do.end.i)) #3
          to label %if.then6.i [label %do.end.i], !srcloc !29

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  %5 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %online.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_supply_update_gen_leds.__UNIQUE_ID_ddebug184, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %6) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %7 = ptrtoint ptr %online.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %online.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not.i = icmp eq i32 %8, 0
  %online_trig10.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 23
  %9 = ptrtoint ptr %online_trig10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %online_trig10.i, align 4
  %..i = select i1 %tobool8.not.i, i32 0, i32 255
  call void @led_trigger_event(ptr noundef %10, i32 noundef %..i) #3
  br label %power_supply_update_gen_leds.exit

power_supply_update_gen_leds.exit:                ; preds = %do.end.i, %if.else.power_supply_update_gen_leds.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %online.i) #3
  br label %if.end

if.end:                                           ; preds = %power_supply_update_gen_leds.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @power_supply_update_bat_leds(ptr noundef %psy) unnamed_addr #0 align 64 {
entry:
  %status = alloca %union.power_supply_propval, align 4
  %delay_on = alloca i32, align 4
  %delay_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay_on) #3
  %1 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %delay_on, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay_off) #3
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %delay_off, align 4
  %call = call i32 @power_supply_get_property(ptr noundef %psy, i32 noundef 0, ptr noundef nonnull %status) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_supply_update_bat_leds.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@power_supply_update_bat_leds, %do.end)) #3
          to label %if.then6 [label %do.end], !srcloc !29

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_supply_update_bat_leds.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %4) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %charging_full_trig = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 17
  %8 = ptrtoint ptr %charging_full_trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charging_full_trig, align 4
  call void @led_trigger_event(ptr noundef %9, i32 noundef 255) #3
  %charging_trig = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 19
  %10 = ptrtoint ptr %charging_trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charging_trig, align 4
  call void @led_trigger_event(ptr noundef %11, i32 noundef 0) #3
  %full_trig = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 21
  %12 = ptrtoint ptr %full_trig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %full_trig, align 4
  call void @led_trigger_event(ptr noundef %13, i32 noundef 255) #3
  %charging_blink_full_solid_trig = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 25
  %14 = ptrtoint ptr %charging_blink_full_solid_trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %charging_blink_full_solid_trig, align 4
  call void @led_trigger_event(ptr noundef %15, i32 noundef 255) #3
  br label %cleanup

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %charging_full_trig9 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 17
  %16 = ptrtoint ptr %charging_full_trig9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %charging_full_trig9, align 4
  call void @led_trigger_event(ptr noundef %17, i32 noundef 255) #3
  %charging_trig10 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 19
  %18 = ptrtoint ptr %charging_trig10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %charging_trig10, align 4
  call void @led_trigger_event(ptr noundef %19, i32 noundef 255) #3
  %full_trig11 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 21
  %20 = ptrtoint ptr %full_trig11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %full_trig11, align 4
  call void @led_trigger_event(ptr noundef %21, i32 noundef 0) #3
  %charging_blink_full_solid_trig12 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 25
  %22 = ptrtoint ptr %charging_blink_full_solid_trig12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %charging_blink_full_solid_trig12, align 4
  call void @led_trigger_blink(ptr noundef %23, ptr noundef nonnull %delay_on, ptr noundef nonnull %delay_off) #3
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %charging_full_trig13 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 17
  %24 = ptrtoint ptr %charging_full_trig13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %charging_full_trig13, align 4
  call void @led_trigger_event(ptr noundef %25, i32 noundef 0) #3
  %charging_trig14 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 19
  %26 = ptrtoint ptr %charging_trig14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %charging_trig14, align 4
  call void @led_trigger_event(ptr noundef %27, i32 noundef 0) #3
  %full_trig15 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 21
  %28 = ptrtoint ptr %full_trig15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %full_trig15, align 4
  call void @led_trigger_event(ptr noundef %29, i32 noundef 0) #3
  %charging_blink_full_solid_trig16 = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 25
  %30 = ptrtoint ptr %charging_blink_full_solid_trig16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %charging_blink_full_solid_trig16, align 4
  call void @led_trigger_event(ptr noundef %31, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb8, %sw.bb, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay_off) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay_on) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @power_supply_create_triggers(ptr noundef %psy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %5) #3
  %charging_full_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 18
  %6 = ptrtoint ptr %charging_full_trig_name.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %charging_full_trig_name.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psy, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call4.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %10) #3
  %charging_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 20
  %11 = ptrtoint ptr %charging_trig_name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %charging_trig_name.i, align 8
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i.charging_failed.i_crit_edge, label %if.end8.i

if.end.i.charging_failed.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %charging_failed.i

if.end8.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psy, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call11.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %15) #3
  %full_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 22
  %16 = ptrtoint ptr %full_trig_name.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11.i, ptr %full_trig_name.i, align 8
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end8.i.full_failed.i_crit_edge, label %if.end15.i

if.end8.i.full_failed.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %full_failed.i

if.end15.i:                                       ; preds = %if.end8.i
  %17 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %psy, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call18.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %20) #3
  %charging_blink_full_solid_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 26
  %21 = ptrtoint ptr %charging_blink_full_solid_trig_name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call18.i, ptr %charging_blink_full_solid_trig_name.i, align 8
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %charging_blink_full_solid_failed.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %charging_full_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %charging_full_trig_name.i, align 8
  %charging_full_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 17
  tail call void @led_trigger_register_simple(ptr noundef %23, ptr noundef %charging_full_trig.i) #3
  %24 = ptrtoint ptr %charging_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %charging_trig_name.i, align 8
  %charging_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 19
  tail call void @led_trigger_register_simple(ptr noundef %25, ptr noundef %charging_trig.i) #3
  %26 = ptrtoint ptr %full_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %full_trig_name.i, align 8
  %full_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 21
  tail call void @led_trigger_register_simple(ptr noundef %27, ptr noundef %full_trig.i) #3
  %28 = ptrtoint ptr %charging_blink_full_solid_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %charging_blink_full_solid_trig_name.i, align 8
  %charging_blink_full_solid_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 25
  tail call void @led_trigger_register_simple(ptr noundef %29, ptr noundef %charging_blink_full_solid_trig.i) #3
  br label %return

charging_blink_full_solid_failed.i:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %full_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %full_trig_name.i, align 8
  tail call void @kfree(ptr noundef %31) #3
  br label %full_failed.i

full_failed.i:                                    ; preds = %charging_blink_full_solid_failed.i, %if.end8.i.full_failed.i_crit_edge
  %32 = ptrtoint ptr %charging_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %charging_trig_name.i, align 8
  tail call void @kfree(ptr noundef %33) #3
  br label %charging_failed.i

charging_failed.i:                                ; preds = %full_failed.i, %if.end.i.charging_failed.i_crit_edge
  %34 = ptrtoint ptr %charging_full_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %charging_full_trig_name.i, align 8
  tail call void @kfree(ptr noundef %35) #3
  br label %return

if.end:                                           ; preds = %entry
  %call.i4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %5) #3
  %online_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 24
  %36 = ptrtoint ptr %online_trig_name.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i4, ptr %online_trig_name.i, align 8
  %tobool.not.i5 = icmp eq ptr %call.i4, null
  br i1 %tobool.not.i5, label %if.end.return_crit_edge, label %if.end.i6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i6:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %online_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 23
  tail call void @led_trigger_register_simple(ptr noundef nonnull %call.i4, ptr noundef %online_trig.i) #3
  br label %return

return:                                           ; preds = %if.end.i6, %if.end.return_crit_edge, %charging_failed.i, %if.end22.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22.i ], [ -12, %if.then.return_crit_edge ], [ -12, %charging_failed.i ], [ 0, %if.end.i6 ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @power_supply_remove_triggers(ptr nocapture noundef readonly %psy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %charging_full_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 17
  %4 = ptrtoint ptr %charging_full_trig.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charging_full_trig.i, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %5) #3
  %charging_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 19
  %6 = ptrtoint ptr %charging_trig.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %charging_trig.i, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %7) #3
  %full_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 21
  %8 = ptrtoint ptr %full_trig.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_trig.i, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %9) #3
  %charging_blink_full_solid_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 25
  %10 = ptrtoint ptr %charging_blink_full_solid_trig.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charging_blink_full_solid_trig.i, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %11) #3
  %charging_blink_full_solid_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 26
  %12 = ptrtoint ptr %charging_blink_full_solid_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %charging_blink_full_solid_trig_name.i, align 8
  tail call void @kfree(ptr noundef %13) #3
  %full_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 22
  %14 = ptrtoint ptr %full_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %full_trig_name.i, align 8
  tail call void @kfree(ptr noundef %15) #3
  %charging_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 20
  %16 = ptrtoint ptr %charging_trig_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %charging_trig_name.i, align 8
  tail call void @kfree(ptr noundef %17) #3
  %charging_full_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %online_trig.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 23
  %18 = ptrtoint ptr %online_trig.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %online_trig.i, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %19) #3
  %online_trig_name.i = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %online_trig_name.i.sink = phi ptr [ %online_trig_name.i, %if.else ], [ %charging_full_trig_name.i, %if.then ]
  %20 = ptrtoint ptr %online_trig_name.i.sink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %online_trig_name.i.sink, align 8
  tail call void @kfree(ptr noundef %21) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_blink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/power_supply_leds.c", i32 30, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @power_supply_update_bat_leds.__UNIQUE_ID_ddebug183, !1, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/power_supply_leds.c", i32 120, i32 2}
!8 = !{ptr @power_supply_update_gen_leds.__UNIQUE_ID_ddebug184, !7, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/power_supply_leds.c", i32 60, i32 6}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/power_supply_leds.c", i32 65, i32 6}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/power_supply_leds.c", i32 69, i32 46}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/power_supply_leds.c", i32 74, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/power_supply_leds.c", i32 130, i32 48}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i64 2148694491, i64 2148694496, i64 2148694509, i64 2148694553, i64 2148694587, i64 2148694608}
