; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-fttmr010.c_pt.bc'
source_filename = "../drivers/clocksource/timer-fttmr010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fttmr010 = type { ptr, i32, i8, i32, [112 x i8], %struct.clock_event_device, ptr, %struct.delay_timer, [116 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@__of_table_fttmr010 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,fttmr010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fttmr010_timer_init }, section "__timer_of_table", align 4
@__of_table_gemini = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,gemini-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fttmr010_timer_init }, section "__timer_of_table", align 4
@__of_table_moxart = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moxa,moxart-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fttmr010_timer_init }, section "__timer_of_table", align 4
@__of_table_ast2400 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_timer_init }, section "__timer_of_table", align 4
@__of_table_ast2500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_timer_init }, section "__timer_of_table", align 4
@__of_table_ast2600 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_timer_init }, section "__timer_of_table", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLK\00", [27 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013could not get PCLK\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fttmr010_common_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clocksource/timer-fttmr010.c\00", [59 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry_ptr = internal global ptr @fttmr010_common_init._entry, section ".printk_index", align 4
@fttmr010_common_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013failed to enable PCLK\0A\00", [39 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry_ptr.6 = internal global ptr @fttmr010_common_init._entry.4, section ".printk_index", align 4
@fttmr010_common_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Can't remap registers\0A\00", [39 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry_ptr.9 = internal global ptr @fttmr010_common_init._entry.7, section ".printk_index", align 4
@fttmr010_common_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Can't parse IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry_ptr.12 = internal global ptr @fttmr010_common_init._entry.10, section ".printk_index", align 4
@local_fttmr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FTTMR010-TIMER2\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FTTMR010-TIMER1\00", [16 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013FTTMR010-TIMER1 no IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@fttmr010_common_init._entry_ptr.17 = internal global ptr @fttmr010_common_init._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 287, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 289, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 294, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 307, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 314, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"local_fttmr\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 115, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 360, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 386, i32 19 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [40 x i8] c"../drivers/clocksource/timer-fttmr010.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 395, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__of_table_ast2400, ptr @__of_table_ast2500, ptr @__of_table_ast2600, ptr @__of_table_fttmr010, ptr @__of_table_gemini, ptr @__of_table_moxart, ptr @fttmr010_common_init._entry, ptr @fttmr010_common_init._entry.10, ptr @fttmr010_common_init._entry.15, ptr @fttmr010_common_init._entry.4, ptr @fttmr010_common_init._entry.7, ptr @fttmr010_common_init._entry_ptr, ptr @fttmr010_common_init._entry_ptr.12, ptr @fttmr010_common_init._entry_ptr.17, ptr @fttmr010_common_init._entry_ptr.6, ptr @fttmr010_common_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @local_fttmr, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fttmr010_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fttmr010_common_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fttmr010_common_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fttmr010_common_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_fttmr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fttmr010_common_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fttmr010_common_init(ptr noundef %np, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fttmr010_common_init(ptr noundef %np, i1 noundef zeroext true, i1 noundef zeroext false) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ast2600_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fttmr010_common_init(ptr noundef %np, i1 noundef zeroext true, i1 noundef zeroext true) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fttmr010_common_init(ptr noundef %np, i1 noundef zeroext %is_aspeed, i1 noundef zeroext %is_ast2600) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 512) #11
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.out_disable_clock_crit_edge, label %if.end16

if.end12.out_disable_clock_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable_clock

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  %tick_rate = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tick_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call17, ptr %tick_rate, align 4
  %call18 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %call7.i.i, align 128
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %out_free

if.end27:                                         ; preds = %if.end16
  %call28 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp = icmp slt i32 %call28, 1
  br i1 %cmp, label %if.end27.out_unmap_crit_edge, label %if.end35

if.end27.out_unmap_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unmap

if.end35:                                         ; preds = %if.end27
  %t1_enable_val = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %t1_enable_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %t1_enable_val, align 4
  br i1 %is_aspeed, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %is_aspeed38 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %is_aspeed38 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_aspeed38, align 8
  br label %if.end49

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 128
  %add.ptr = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16711680) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 128
  %add.ptr48 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #6, !srcloc !52
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then37
  %. = phi i32 [ 1544, %if.else ], [ 16, %if.then37 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %.)
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 128
  %add.ptr58 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %10) #6, !srcloc !52
  store ptr %call7.i.i, ptr @local_fttmr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 128
  %add.ptr63 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 128
  %add.ptr68 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 128
  %add.ptr73 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #6, !srcloc !52
  %is_aspeed74 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %is_aspeed74 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_aspeed74, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool75.not = icmp eq i8 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 128
  %add.ptr92 = getelementptr i8, ptr %22, i32 20
  br i1 %tobool75.not, label %do.body88, label %do.body77

do.body77:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 -1) #6, !srcloc !52
  br label %do.body99

do.body88:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 0) #6, !srcloc !52
  br label %do.body99

do.body99:                                        ; preds = %do.body88, %do.body77
  %clocksource_mmio_readl_down.sink = phi ptr [ @clocksource_mmio_readl_down, %do.body77 ], [ @clocksource_mmio_readl_up, %do.body88 ]
  %fttmr010_read_sched_clock_down.sink = phi ptr [ @fttmr010_read_sched_clock_down, %do.body77 ], [ @fttmr010_read_sched_clock_up, %do.body88 ]
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 128
  %add.ptr83 = getelementptr i8, ptr %24, i32 16
  %25 = ptrtoint ptr %tick_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tick_rate, align 4
  %call85 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr83, ptr noundef nonnull @.str.13, i32 noundef %26, i32 noundef 300, i32 noundef 32, ptr noundef nonnull %clocksource_mmio_readl_down.sink) #6
  %27 = ptrtoint ptr %tick_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tick_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull %fttmr010_read_sched_clock_down.sink, i32 noundef 32, i32 noundef %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 128
  %add.ptr108 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 128
  %add.ptr113 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 128
  %add.ptr118 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #6, !srcloc !52
  %ast2600_timer_shutdown.fttmr010_timer_shutdown = select i1 %is_ast2600, ptr @ast2600_timer_shutdown, ptr @fttmr010_timer_shutdown
  %ast2600_timer_interrupt.fttmr010_timer_interrupt = select i1 %is_ast2600, ptr @ast2600_timer_interrupt, ptr @fttmr010_timer_interrupt
  %timer_shutdown123 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %timer_shutdown123 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ast2600_timer_shutdown.fttmr010_timer_shutdown, ptr %timer_shutdown123, align 128
  %clkevt124 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5
  %call.i232 = tail call i32 @request_threaded_irq(i32 noundef %call28, ptr noundef nonnull %ast2600_timer_interrupt.fttmr010_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.14, ptr noundef %clkevt124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool127.not = icmp eq i32 %call.i232, 0
  br i1 %tobool127.not, label %if.end134, label %do.body99.out_unmap_crit_edge

do.body99.out_unmap_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unmap

if.end134:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  %clkevt135 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5
  %name = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 21
  %38 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.14, ptr %name, align 4
  %rating = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 22
  %39 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 300, ptr %rating, align 8
  %features = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 9
  %40 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %features, align 4
  %set_next_event = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @fttmr010_timer_set_next_event, ptr %set_next_event, align 4
  %timer_shutdown139 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %timer_shutdown139 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %timer_shutdown139, align 128
  %set_state_shutdown = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 14
  %44 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 11
  %45 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @fttmr010_timer_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 12
  %46 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @fttmr010_timer_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 15
  %47 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %tick_resume, align 4
  %cpumask = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 25
  %48 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %irq148 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 5, i32 23
  %49 = ptrtoint ptr %irq148 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call28, ptr %irq148, align 4
  %50 = ptrtoint ptr %tick_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tick_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %clkevt135, i32 noundef %51, i32 noundef 1, i32 noundef -1) #6
  %52 = ptrtoint ptr %is_aspeed74 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_aspeed74, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool152.not = icmp eq i8 %53, 0
  %spec.select = select i1 %tobool152.not, ptr @fttmr010_read_current_timer_up, ptr @fttmr010_read_current_timer_down
  %54 = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.select, ptr %54, align 4
  %56 = ptrtoint ptr %tick_rate to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tick_rate, align 4
  %freq = getelementptr inbounds %struct.fttmr010, ptr %call7.i.i, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %freq, align 8
  tail call void @register_current_timer_delay(ptr noundef %54) #6
  br label %cleanup

out_unmap:                                        ; preds = %do.body99.out_unmap_crit_edge, %if.end27.out_unmap_crit_edge
  %.str.16.sink = phi ptr [ @.str.11, %if.end27.out_unmap_crit_edge ], [ @.str.16, %do.body99.out_unmap_crit_edge ]
  %ret.1 = phi i32 [ -22, %if.end27.out_unmap_crit_edge ], [ %call.i232, %do.body99.out_unmap_crit_edge ]
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #10
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i.i, align 128
  tail call void @iounmap(ptr noundef %60) #6
  br label %out_free

out_free:                                         ; preds = %out_unmap, %do.end24
  %ret.2 = phi i32 [ %ret.1, %out_unmap ], [ -6, %do.end24 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out_disable_clock

out_disable_clock:                                ; preds = %out_free, %if.end12.out_disable_clock_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_free ], [ -12, %if.end12.out_disable_clock_crit_edge ]
  tail call void @clk_disable(ptr noundef %call) #6
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clock, %if.end134, %do.end9, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %retval.0.i.ph, %do.end9 ], [ %ret.3, %out_disable_clock ], [ 0, %if.end134 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fttmr010_read_sched_clock_down() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @local_fttmr, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %conv = zext i32 %5 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fttmr010_read_sched_clock_up() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @local_fttmr, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast2600_timer_shutdown(ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %t1_enable_val = getelementptr i8, ptr %evt, i32 -116
  %0 = ptrtoint ptr %t1_enable_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t1_enable_val, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %4, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast2600_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !52
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_shutdown(ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %t1_enable_val = getelementptr i8, ptr %evt, i32 -116
  %4 = ptrtoint ptr %t1_enable_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t1_enable_val, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr4 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #6, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  tail call void %1(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_set_next_event(i32 noundef %cycles, ptr noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %timer_shutdown = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %timer_shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_shutdown, align 128
  %call1 = tail call i32 %1(ptr noundef %evt) #6
  %is_aspeed = getelementptr i8, ptr %evt, i32 -120
  %2 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_aspeed, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %cycles)
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !52
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !63
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %add = add i32 %10, %cycles
  %11 = tail call i32 @llvm.bswap.i32(i32 %add)
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %11) #6, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr14 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !63
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %t1_enable_val = getelementptr i8, ptr %evt, i32 -116
  %18 = ptrtoint ptr %t1_enable_val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t1_enable_val, align 4
  %or = or i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr22 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %20) #6, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_set_periodic(ptr noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %tick_rate = getelementptr i8, ptr %evt, i32 -124
  %0 = ptrtoint ptr %tick_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tick_rate, align 4
  %add = add i32 %1, 50
  %div1 = udiv i32 %add, 100
  %timer_shutdown = getelementptr i8, ptr %evt, i32 256
  %2 = ptrtoint ptr %timer_shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer_shutdown, align 128
  %call2 = tail call i32 %3(ptr noundef %evt) #6
  %is_aspeed = getelementptr i8, ptr %evt, i32 -120
  %4 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_aspeed, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %div1)
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !52
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub3 = sub nsw i32 0, %div1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %sub3)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr13 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #6, !srcloc !52
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15 = getelementptr i8, ptr %15, i32 56
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %17 = and i32 %16, -117440513
  %18 = or i32 %17, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr23 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #6, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr27 = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !63
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %t1_enable_val = getelementptr i8, ptr %evt, i32 -116
  %25 = ptrtoint ptr %t1_enable_val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t1_enable_val, align 4
  %or31 = or i32 %26, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr36 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %27) #6, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_timer_set_oneshot(ptr noundef %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %timer_shutdown = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %timer_shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_shutdown, align 128
  %call1 = tail call i32 %1(ptr noundef %evt) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !52
  %is_aspeed = getelementptr i8, ptr %evt, i32 -120
  %4 = ptrtoint ptr %is_aspeed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_aspeed, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr11 = getelementptr i8, ptr %7, i32 4
  br i1 %tobool.not, label %do.body7, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -1) #6, !srcloc !52
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #6, !srcloc !52
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr13 = getelementptr i8, ptr %9, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %11 = and i32 %10, -117440513
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr20 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #6, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %do.body7, %do.body2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_read_current_timer_down() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @local_fttmr, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fttmr010_read_current_timer_up() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @local_fttmr, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__of_table_fttmr010, !1, !"__of_table_fttmr010", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 454, i32 1}
!2 = !{ptr @__of_table_gemini, !3, !"__of_table_gemini", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 455, i32 1}
!4 = !{ptr @__of_table_moxart, !5, !"__of_table_moxart", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 456, i32 1}
!6 = !{ptr @__of_table_ast2400, !7, !"__of_table_ast2400", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 457, i32 1}
!8 = !{ptr @__of_table_ast2500, !9, !"__of_table_ast2500", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 458, i32 1}
!10 = !{ptr @__of_table_ast2600, !11, !"__of_table_ast2600", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 459, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 287, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 289, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @fttmr010_common_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @fttmr010_common_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 294, i32 3}
!22 = !{ptr @fttmr010_common_init._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @fttmr010_common_init._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 307, i32 3}
!26 = !{ptr @fttmr010_common_init._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fttmr010_common_init._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 314, i32 3}
!30 = !{ptr @fttmr010_common_init._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fttmr010_common_init._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 360, i32 11}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 386, i32 19}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 395, i32 3}
!38 = !{ptr @fttmr010_common_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @fttmr010_common_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @local_fttmr, !41, !"local_fttmr", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-fttmr010.c", i32 115, i32 25}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2152825429}
!52 = !{i64 4208463}
!53 = !{i64 2152825841}
!54 = !{i64 2152826573}
!55 = !{i64 2152826979}
!56 = !{i64 2152827379}
!57 = !{i64 2152827779}
!58 = !{i8 0, i8 2}
!59 = !{i64 2152828997}
!60 = !{i64 2152829397}
!61 = !{i64 2152829797}
!62 = !{i64 2152830197}
!63 = !{i64 4208881}
!64 = !{i64 2152808255}
!65 = !{i64 2152807726}
!66 = !{i64 2152810888}
!67 = !{i64 2152818316}
!68 = !{i64 2152811646}
!69 = !{i64 2152811872}
!70 = !{i64 2152808573}
!71 = !{i64 2152809280}
!72 = !{i64 2152809515}
!73 = !{i64 2152810237}
!74 = !{i64 2152810463}
!75 = !{i64 2152815003}
!76 = !{i64 2152815419}
!77 = !{i64 2152815823}
!78 = !{i64 2152816518}
!79 = !{i64 2152816990}
!80 = !{i64 2152817685}
!81 = !{i64 2152817911}
!82 = !{i64 2152812275}
!83 = !{i64 2152813771}
!84 = !{i64 2152814243}
