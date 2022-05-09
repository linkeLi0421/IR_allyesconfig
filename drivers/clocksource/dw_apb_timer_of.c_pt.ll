; ModuleID = '/llk/IR_all_yes/drivers/clocksource/dw_apb_timer_of.c_pt.bc'
source_filename = "../drivers/clocksource/dw_apb_timer_of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.delay_timer = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__of_table_pc3x2_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"picochip,pc3x2-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer_sp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer-sp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@num_called = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dw_apb_timer_init.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_apb_timer_of\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_apb_timer_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clocksource/dw_apb_timer_of.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: found clocksource timer\0A\00", [35 x i8] zeroinitializer }, align 32
@sched_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dw_apb_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @dw_apb_delay_timer_read, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dw_apb_timer_init.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: found clockevent timer\0A\00", [36 x i8] zeroinitializer }, align 32
@sched_io_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to map regs for %pOFn\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@timer_get_base_and_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014pclk for %pOFn is present, but could not be activated\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timer_get_base_and_rate\00", [40 x i8] zeroinitializer }, align 32
@timer_get_base_and_rate._entry_ptr = internal global ptr @timer_get_base_and_rate._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-freq\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@sptimer_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"picochip,pc3x2-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No IRQ for clock event timer\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"num_called\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 177, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 184, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"sched_rate\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 111, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"dw_apb_delay_timer\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 172, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 195, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"sched_io_base\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 110, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 28, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 44, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 47, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 50, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 51, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 54, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [41 x i8] c"../drivers/clocksource/dw_apb_timer_of.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 94, i32 9 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__of_table_apb_timer, ptr @__of_table_apb_timer_osc, ptr @__of_table_apb_timer_sp, ptr @__of_table_pc3x2_timer, ptr @timer_get_base_and_rate._entry, ptr @timer_get_base_and_rate._entry_ptr, ptr @num_called, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sched_rate, ptr @dw_apb_delay_timer, ptr @.str.4, ptr @sched_io_base, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_called to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_apb_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_io_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_get_base_and_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_apb_timer_init(ptr noundef %timer) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_called, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cond = icmp eq i32 %0, 1
  br i1 %cond, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_apb_timer_init.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_apb_timer_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !53

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dw_apb_timer_init.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call3 = tail call fastcc i32 @add_clocksource(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @init_sched_clock() #10
  %1 = load i32, ptr @sched_rate, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.delay_timer, ptr @dw_apb_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @dw_apb_delay_timer) #7
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_apb_timer_init.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_apb_timer_init, %if.then19)) #7
          to label %do.end22 [label %if.then19], !srcloc !53

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dw_apb_timer_init.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %call23 = tail call fastcc i32 @add_clockevent(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end22.sw.epilog_crit_edge, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22.sw.epilog_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22.sw.epilog_crit_edge, %if.end6
  %2 = load i32, ptr @num_called, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @num_called, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end22.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call3, %do.end.cleanup_crit_edge ], [ %call23, %do.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_clocksource(ptr noundef %source_timer) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %iobase = alloca ptr, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iobase) #7
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iobase, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rate, align 4, !annotation !54
  %call = call fastcc i32 @timer_get_base_and_rate(ptr noundef %source_timer, ptr noundef nonnull %iobase, ptr noundef nonnull %rate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %source_timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source_timer, align 4
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %call1 = call ptr @dw_apb_clocksource_init(i32 noundef 300, ptr noundef %3, ptr noundef %5, i32 noundef %7) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @dw_apb_clocksource_start(ptr noundef nonnull %call1) #7
  call void @dw_apb_clocksource_register(ptr noundef nonnull %call1) #7
  %add.ptr = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr, ptr @sched_io_base, align 4
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  store i32 %9, ptr @sched_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iobase) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_sched_clock() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sptimer_ids, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @timer_get_base_and_rate(ptr noundef nonnull %call.i, ptr noundef nonnull @sched_io_base, ptr noundef nonnull @sched_rate) #10
  tail call void @of_node_put(ptr noundef nonnull %call.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = load i32, ptr @sched_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @read_sched_clock, i32 noundef 32, i32 noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_clockevent(ptr noundef %event_timer) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %iobase = alloca ptr, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iobase) #7
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iobase, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rate, align 4, !annotation !54
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %event_timer, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12) #11
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @timer_get_base_and_rate(ptr noundef %event_timer, ptr noundef nonnull %iobase, ptr noundef nonnull %rate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %event_timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_timer, align 4
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %call4 = call ptr @dw_apb_clockevent_init(i32 noundef -1, ptr noundef %3, i32 noundef 300, ptr noundef %5, i32 noundef %call, i32 noundef %7) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @dw_apb_clockevent_register(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iobase) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @timer_get_base_and_rate(ptr noundef %np, ptr nocapture noundef %base, ptr noundef %rate) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5, ptr noundef %np) #11
  unreachable

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__of_reset_control_get(ptr noundef %np, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #7
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.6) #7
  %cmp.i65 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.end6.if.end15_crit_edge, label %if.then9

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  %call.i = tail call i32 @clk_prepare(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.do.end_crit_edge

if.then9.do.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then9
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end15_crit_edge, label %if.then3.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call7) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then9.do.end_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %np) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.i.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %call.i.i66 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef %rate, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66)
  %tobool17.not = icmp sgt i32 %call.i.i66, -1
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %call.i.i67 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef %rate, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i67)
  %tobool19.not = icmp sgt i32 %call.i.i67, -1
  br i1 %tobool19.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.11) #7
  %cmp.i68 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call22 to i32
  br label %out_pclk_disable

if.end26:                                         ; preds = %if.end21
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end26.out_timer_clk_put_crit_edge

if.end26.out_timer_clk_put_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_timer_clk_put

if.end.i73:                                       ; preds = %if.end26
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end30, label %if.end.i73.out_timer_clk_put.sink.split_crit_edge

if.end.i73.out_timer_clk_put.sink.split_crit_edge: ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_timer_clk_put.sink.split

if.end30:                                         ; preds = %if.end.i73
  %call31 = tail call i32 @clk_get_rate(ptr noundef %call22) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call31, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %call22) #7
  br label %out_timer_clk_put.sink.split

out_timer_clk_put.sink.split:                     ; preds = %if.then33, %if.end.i73.out_timer_clk_put.sink.split_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.then33 ], [ %call1.i71, %if.end.i73.out_timer_clk_put.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call22) #7
  br label %out_timer_clk_put

out_timer_clk_put:                                ; preds = %out_timer_clk_put.sink.split, %if.end26.out_timer_clk_put_crit_edge
  %ret.0 = phi i32 [ %call.i69, %if.end26.out_timer_clk_put_crit_edge ], [ %ret.0.ph, %out_timer_clk_put.sink.split ]
  tail call void @clk_put(ptr noundef %call22) #7
  br label %out_pclk_disable

out_pclk_disable:                                 ; preds = %out_timer_clk_put, %if.then24
  %ret.1 = phi i32 [ %1, %if.then24 ], [ %ret.0, %out_timer_clk_put ]
  br i1 %cmp.i65, label %out_pclk_disable.if.end37_crit_edge, label %if.then36

out_pclk_disable.if.end37_crit_edge:              ; preds = %out_pclk_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %out_pclk_disable
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %call7) #7
  tail call void @clk_unprepare(ptr noundef %call7) #7
  tail call void @clk_put(ptr noundef %call7) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %out_pclk_disable.if.end37_crit_edge
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end37 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_apb_clocksource_init(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clocksource_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clocksource_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @read_sched_clock() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @sched_io_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !55
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_apb_delay_timer_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sched_io_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !55
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_apb_clockevent_init(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clockevent_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__of_table_pc3x2_timer, !1, !"__of_table_pc3x2_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 206, i32 1}
!2 = !{ptr @__of_table_apb_timer_osc, !3, !"__of_table_apb_timer_osc", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 207, i32 1}
!4 = !{ptr @__of_table_apb_timer_sp, !5, !"__of_table_apb_timer_sp", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 208, i32 1}
!6 = !{ptr @__of_table_apb_timer, !7, !"__of_table_apb_timer", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 209, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 184, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dw_apb_timer_init.__UNIQUE_ID_ddebug179, !9, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 195, i32 3}
!16 = !{ptr @dw_apb_timer_init.__UNIQUE_ID_ddebug180, !15, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!17 = !{ptr @num_called, !18, !"num_called", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 177, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 28, i32 9}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 44, i32 32}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 47, i32 4}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @timer_get_base_and_rate._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @timer_get_base_and_rate._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 50, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 51, i32 32}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 54, i32 37}
!34 = !{ptr @sched_io_base, !35, !"sched_io_base", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 110, i32 22}
!36 = !{ptr @sptimer_ids, !37, !"sptimer_ids", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 147, i32 34}
!38 = !{ptr @sched_rate, !39, !"sched_rate", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 111, i32 12}
!40 = !{ptr @dw_apb_delay_timer, !41, !"dw_apb_delay_timer", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 172, i32 27}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/dw_apb_timer_of.c", i32 94, i32 9}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148759447, i64 2148759452, i64 2148759465, i64 2148759509, i64 2148759543, i64 2148759564}
!54 = !{!"auto-init"}
!55 = !{i64 4506189}
