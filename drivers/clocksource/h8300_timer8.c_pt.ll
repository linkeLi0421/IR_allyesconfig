; ModuleID = '/llk/IR_all_yes/drivers/clocksource/h8300_timer8.c_pt.bc'
source_filename = "../drivers/clocksource/h8300_timer8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer8_priv = type { %struct.clock_event_device, ptr, i32, i32, [116 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_h8300_8bit = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,8bit-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h8300_8timer_init }, section "__timer_of_table", align 4
@h8300_8timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to get clock for clockevent\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"h8300_8timer_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clocksource/h8300_timer8.c\00", [61 x i8] zeroinitializer }, align 32
@h8300_8timer_init._entry_ptr = internal global ptr @h8300_8timer_init._entry, section ".printk_index", align 4
@h8300_8timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013failed to map registers for clockevent\0A\00", [54 x i8] zeroinitializer }, align 32
@h8300_8timer_init._entry_ptr.5 = internal global ptr @h8300_8timer_init._entry.3, section ".printk_index", align 4
@h8300_8timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to get irq for clockevent\0A\00", [60 x i8] zeroinitializer }, align 32
@h8300_8timer_init._entry_ptr.8 = internal global ptr @h8300_8timer_init._entry.6, section ".printk_index", align 4
@timer8_priv = internal global %struct.timer8_priv { %struct.clock_event_device { ptr null, ptr @timer8_clock_event_next, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @timer8_clock_event_periodic, ptr @timer8_clock_event_oneshot, ptr null, ptr @timer8_clock_event_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.15, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, ptr null, i32 0, i32 0, [116 x i8] undef }, align 128
@h8300_8timer_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to get rate for the clocksource\0A\00", [54 x i8] zeroinitializer }, align 32
@h8300_8timer_init._entry_ptr.11 = internal global ptr @h8300_8timer_init._entry.9, section ".printk_index", align 4
@h8300_8timer_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to request irq %d for clockevent\0A\00", [53 x i8] zeroinitializer }, align 32
@h8300_8timer_init._entry_ptr.14 = internal global ptr @h8300_8timer_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"h8300_8timer\00", [19 x i8] zeroinitializer }, align 32
@timer8_set_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014delta out of range\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timer8_set_next\00", [16 x i8] zeroinitializer }, align 32
@timer8_set_next._entry_ptr = internal global ptr @timer8_set_next._entry, section ".printk_index", align 4
@timer8_clock_event_periodic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: used for periodic clock events\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timer8_clock_event_periodic\00", [36 x i8] zeroinitializer }, align 32
@timer8_clock_event_periodic._entry_ptr = internal global ptr @timer8_clock_event_periodic._entry, section ".printk_index", align 4
@timer8_clock_event_oneshot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: used for oneshot clock events\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timer8_clock_event_oneshot\00", [37 x i8] zeroinitializer }, align 32
@timer8_clock_event_oneshot._entry_ptr = internal global ptr @timer8_clock_event_oneshot._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 168, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 175, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 182, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 190, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 196, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 150, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 62, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 119, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [38 x i8] c"../drivers/clocksource/h8300_timer8.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 130, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__of_table_h8300_8bit, ptr @h8300_8timer_init._entry, ptr @h8300_8timer_init._entry.12, ptr @h8300_8timer_init._entry.3, ptr @h8300_8timer_init._entry.6, ptr @h8300_8timer_init._entry.9, ptr @h8300_8timer_init._entry_ptr, ptr @h8300_8timer_init._entry_ptr.11, ptr @h8300_8timer_init._entry_ptr.14, ptr @h8300_8timer_init._entry_ptr.5, ptr @h8300_8timer_init._entry_ptr.8, ptr @timer8_clock_event_oneshot._entry, ptr @timer8_clock_event_oneshot._entry_ptr, ptr @timer8_clock_event_periodic._entry, ptr @timer8_clock_event_periodic._entry_ptr, ptr @timer8_set_next._entry, ptr @timer8_set_next._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_8timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_8timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_8timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_8timer_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_8timer_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer8_set_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer8_clock_event_periodic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer8_clock_event_oneshot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @h8300_8timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %free_clk

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %unmap_reg

if.end20:                                         ; preds = %if.end11
  store ptr %call4, ptr getelementptr inbounds (%struct.timer8_priv, ptr @timer8_priv, i32 0, i32 1), align 128
  %call21 = tail call i32 @clk_get_rate(ptr noundef %call) #4
  %div50 = lshr i32 %call21, 6
  store i32 %div50, ptr getelementptr inbounds (%struct.timer8_priv, ptr @timer8_priv, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call21)
  %tobool22.not = icmp ult i32 %call21, 64
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %unmap_reg

if.end29:                                         ; preds = %if.end20
  %1 = load ptr, ptr getelementptr inbounds (%struct.timer8_priv, ptr @timer8_priv, i32 0, i32 0, i32 21), align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call12, ptr noundef nonnull @timer8_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %1, ptr noundef nonnull @timer8_priv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call12) #7
  br label %unmap_reg

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load i32, ptr getelementptr inbounds (%struct.timer8_priv, ptr @timer8_priv, i32 0, i32 3), align 8
  tail call void @clockevents_config_and_register(ptr noundef nonnull @timer8_priv, i32 noundef %2, i32 noundef 1, i32 noundef 65535) #4
  br label %cleanup

unmap_reg:                                        ; preds = %do.end34, %do.end26, %do.end17
  tail call void @iounmap(ptr noundef nonnull %call4) #4
  br label %free_clk

free_clk:                                         ; preds = %unmap_reg, %do.end8
  %ret.0 = phi i32 [ -22, %unmap_reg ], [ -6, %do.end8 ]
  tail call void @clk_put(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %free_clk, %if.end37, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.0, %free_clk ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer8_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %mapbase = getelementptr inbounds %struct.timer8_priv, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 0) #4, !srcloc !53
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 128
  tail call void %5(ptr noundef %dev_id) #4
  %mapbase3 = getelementptr inbounds %struct.timer8_priv, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %mapbase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase3, align 128
  %add.ptr4 = getelementptr i8, ptr %7, i32 2
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #4, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %9 = and i8 %8, -65
  %10 = ptrtoint ptr %mapbase3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase3, align 128
  %add.ptr8 = getelementptr i8, ptr %11, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %9) #4, !srcloc !57
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer8_clock_event_next(i32 noundef %delta, ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %do.end9, label %do.body4, !prof !58

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/h8300_timer8.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #4, !srcloc !59
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %delta, -1
  tail call fastcc void @timer8_set_next(ptr noundef %ced, i32 noundef %sub)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer8_clock_event_periodic(ptr nocapture noundef %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 21
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %mapbase.i = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 1
  %2 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase.i, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 0) #4, !srcloc !53
  %rate = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 3
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 8
  %flags.i.i = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.timer8_clock_event_start.exit_crit_edge

entry.timer8_clock_event_start.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %timer8_clock_event_start.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapbase.i, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -1) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase.i, align 128
  %add.ptr4.i.i.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i.i, i16 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapbase.i, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 3074) #4, !srcloc !53
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %15, 8
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %timer8_clock_event_start.exit

timer8_clock_event_start.exit:                    ; preds = %if.end.i.i, %entry.timer8_clock_event_start.exit_crit_edge
  %add = add i32 %5, 50
  %div = udiv i32 %add, 100
  tail call fastcc void @timer8_set_next(ptr noundef %ced, i32 noundef %div) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer8_clock_event_oneshot(ptr nocapture noundef %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 21
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %mapbase.i = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 1
  %2 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase.i, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 0) #4, !srcloc !53
  %flags.i.i = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.timer8_clock_event_start.exit_crit_edge

entry.timer8_clock_event_start.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %timer8_clock_event_start.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase.i, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -1) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapbase.i, align 128
  %add.ptr4.i.i.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i.i, i16 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase.i, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 3074) #4, !srcloc !53
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %13, 8
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %timer8_clock_event_start.exit

timer8_clock_event_start.exit:                    ; preds = %if.end.i.i, %entry.timer8_clock_event_start.exit_crit_edge
  tail call fastcc void @timer8_set_next(ptr noundef %ced, i32 noundef 65536) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer8_clock_event_shutdown(ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %mapbase.i = getelementptr inbounds %struct.timer8_priv, ptr %ced, i32 0, i32 1
  %0 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase.i, align 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 0) #4, !srcloc !53
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timer8_set_next(ptr nocapture noundef readonly %p, i32 noundef %delta) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %delta)
  %cmp = icmp ugt i32 %delta, 65535
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mapbase = getelementptr inbounds %struct.timer8_priv, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase, align 128
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #4, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %3 = and i8 %2, -65
  %4 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapbase, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %3) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %conv7 = trunc i32 %delta to i16
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase, align 128
  %add.ptr9 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %conv7) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapbase, align 128
  %add.ptr13 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 0) #4, !srcloc !53
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase, align 128
  %add.ptr15 = getelementptr i8, ptr %11, i32 2
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #4, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %13 = and i8 %12, -65
  %14 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapbase, align 128
  %add.ptr21 = getelementptr i8, ptr %15, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %13) #4, !srcloc !57
  %16 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapbase, align 128
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #4, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %19 = or i8 %18, 64
  %20 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapbase, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #4, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__of_table_h8300_8bit, !1, !"__of_table_h8300_8bit", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/h8300_timer8.c", i32 211, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/h8300_timer8.c", i32 168, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @h8300_8timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @h8300_8timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/h8300_timer8.c", i32 175, i32 3}
!10 = !{ptr @h8300_8timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @h8300_8timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/h8300_timer8.c", i32 182, i32 3}
!14 = !{ptr @h8300_8timer_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @h8300_8timer_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/h8300_timer8.c", i32 190, i32 3}
!18 = !{ptr @h8300_8timer_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @h8300_8timer_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/h8300_timer8.c", i32 196, i32 3}
!22 = !{ptr @h8300_8timer_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @h8300_8timer_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/h8300_timer8.c", i32 150, i32 11}
!26 = !{ptr @timer8_priv, !27, !"timer8_priv", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/h8300_timer8.c", i32 148, i32 27}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/h8300_timer8.c", i32 62, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @timer8_set_next._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @timer8_set_next._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/h8300_timer8.c", i32 119, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @timer8_clock_event_periodic._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @timer8_clock_event_periodic._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/h8300_timer8.c", i32 130, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @timer8_clock_event_oneshot._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @timer8_clock_event_oneshot._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2152789051}
!53 = !{i64 4199988}
!54 = !{i64 4200806}
!55 = !{i64 2151740151}
!56 = !{i64 2151741756}
!57 = !{i64 4200411}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2152797863, i64 2152798362, i64 2152797900, i64 2152797956, i64 2152797990, i64 2152798014, i64 2152798055, i64 2152798076, i64 2152798104, i64 2152798138}
!60 = !{i64 2152792766}
!61 = !{i64 2152791830}
!62 = !{i64 2152792136}
!63 = !{i64 2152792442}
!64 = !{i64 2152791034}
!65 = !{i64 2152791339}
