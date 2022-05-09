; ModuleID = '/llk/IR_all_yes/drivers/clocksource/h8300_timer16.c_pt.bc'
source_filename = "../drivers/clocksource/h8300_timer16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer16_priv = type { %struct.clocksource, i32, ptr, ptr, i16, i8, i8, i8 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__of_table_h8300_16bit = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,16bit-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h8300_16timer_init }, section "__timer_of_table", align 4
@h8300_16timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to get clock for clocksource\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"h8300_16timer_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/h8300_timer16.c\00", [60 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry_ptr = internal global ptr @h8300_16timer_init._entry, section ".printk_index", align 4
@h8300_16timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to map registers for clocksource\0A\00", [53 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry_ptr.5 = internal global ptr @h8300_16timer_init._entry.3, section ".printk_index", align 4
@h8300_16timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry_ptr.7 = internal global ptr @h8300_16timer_init._entry.6, section ".printk_index", align 4
@h8300_16timer_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to get irq for clockevent\0A\00", [60 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry_ptr.10 = internal global ptr @h8300_16timer_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,channel\00", [16 x i8] zeroinitializer }, align 32
@timer16_priv = internal global { %struct.timer16_priv, [32 x i8] } { %struct.timer16_priv { %struct.clocksource { ptr @timer16_clocksource_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.15, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr @timer16_enable, ptr @timer16_disable, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0, ptr null, ptr null, i16 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to request irq %d of clocksource\0A\00", [53 x i8] zeroinitializer }, align 32
@h8300_16timer_init._entry_ptr.14 = internal global ptr @h8300_16timer_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"h8300_16timer\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 139, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 146, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 152, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 159, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 163, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"timer16_priv\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 115, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [39 x i8] c"../drivers/clocksource/h8300_timer16.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 117, i32 11 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__of_table_h8300_16bit, ptr @h8300_16timer_init._entry, ptr @h8300_16timer_init._entry.12, ptr @h8300_16timer_init._entry.3, ptr @h8300_16timer_init._entry.6, ptr @h8300_16timer_init._entry.8, ptr @h8300_16timer_init._entry_ptr, ptr @h8300_16timer_init._entry_ptr.10, ptr @h8300_16timer_init._entry_ptr.14, ptr @h8300_16timer_init._entry_ptr.5, ptr @h8300_16timer_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.9, ptr @.str.11, ptr @timer16_priv, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_16timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_16timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_16timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_16timer_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer16_priv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_16timer_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @h8300_16timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %ch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch) #5
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ch, align 4, !annotation !38
  %call = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %free_clk

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #5
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %unmap_ch

if.end23:                                         ; preds = %if.end12
  %call24 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %unmap_comm

if.end32:                                         ; preds = %if.end23
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.11, ptr noundef nonnull %ch, i32 noundef 1, i32 noundef 0) #5
  store ptr %call4, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 2), align 4
  store ptr %call13, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 3), align 8
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  %conv = trunc i32 %3 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 5), align 2
  store i8 %conv, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 6), align 1
  %conv37 = add i8 %conv, 4
  store i8 %conv37, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 7), align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.timer16_priv, ptr @timer16_priv, i32 0, i32 0, i32 8), align 8
  %call.i = call i32 @request_threaded_irq(i32 noundef %call24, ptr noundef nonnull @timer16_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %4, ptr noundef nonnull @timer16_priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call24) #8
  br label %unmap_comm

if.end46:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = call i32 @clk_get_rate(ptr noundef %call) #5
  %div69 = lshr i32 %call47, 3
  %call.i70 = call i32 @__clocksource_register_scale(ptr noundef nonnull @timer16_priv, i32 noundef 1, i32 noundef %div69) #5
  br label %cleanup

unmap_comm:                                       ; preds = %do.end43, %do.end29
  %ret.0 = phi i32 [ %call.i, %do.end43 ], [ -22, %do.end29 ]
  call void @iounmap(ptr noundef nonnull %call13) #5
  br label %unmap_ch

unmap_ch:                                         ; preds = %unmap_comm, %do.end20
  %ret.1 = phi i32 [ %ret.0, %unmap_comm ], [ -6, %do.end20 ]
  call void @iounmap(ptr noundef nonnull %call4) #5
  br label %free_clk

free_clk:                                         ; preds = %unmap_ch, %do.end9
  %ret.2 = phi i32 [ %ret.1, %unmap_ch ], [ -6, %do.end9 ]
  call void @clk_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %free_clk, %if.end46, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.2, %free_clk ], [ 0, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer16_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mapcommon = getelementptr inbounds %struct.timer16_priv, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapcommon, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %ovf = getelementptr inbounds %struct.timer16_priv, ptr %dev_id, i32 0, i32 6
  %3 = ptrtoint ptr %ovf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ovf, align 1
  %conv1 = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv1
  %5 = trunc i32 %shl to i8
  %6 = xor i8 %5, -1
  %conv2 = and i8 %2, %6
  %7 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapcommon, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %conv2) #5, !srcloc !42
  %total_cycles = getelementptr inbounds %struct.timer16_priv, ptr %dev_id, i32 0, i32 1
  %9 = ptrtoint ptr %total_cycles to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_cycles, align 8
  %add = add i32 %10, 65536
  store i32 %add, ptr %total_cycles, align 8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @timer16_clocksource_read(ptr nocapture noundef readonly %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %total_cycles = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %total_cycles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_cycles, align 8
  %mapcommon.i = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 3
  %2 = ptrtoint ptr %mapcommon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapcommon.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 6
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %ovf.i = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 6
  %5 = ptrtoint ptr %ovf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ovf.i, align 1
  %and87.i = and i8 %6, %4
  %mapbase.i = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %o1.0.i = phi i8 [ %and87.i, %entry ], [ %and2188.i, %do.body.i.backedge ]
  %7 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapbase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 2
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %10 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %13 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapbase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %14, i32 2
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %16 = ptrtoint ptr %mapcommon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapcommon.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %17, i32 6
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %19 = ptrtoint ptr %ovf.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ovf.i, align 1
  %and2188.i = and i8 %20, %18
  call void @__sanitizer_cov_trace_cmp1(i8 %and2188.i, i8 %o1.0.i)
  %cmp.not.i = icmp eq i8 %and2188.i, %o1.0.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.body.i.do.body.i.backedge_crit_edge, !prof !47

do.body.i.do.body.i.backedge_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.backedge

lor.lhs.false.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %12)
  %cmp28.i = icmp ugt i16 %9, %12
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %15)
  %cmp32.i = icmp ult i16 %9, %15
  %or.cond.i = select i1 %cmp28.i, i1 %cmp32.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.do.body.i.backedge_crit_edge, label %lor.lhs.false34.i, !prof !48

lor.lhs.false.i.do.body.i.backedge_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.backedge

lor.lhs.false34.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %15)
  %cmp37.i = icmp ugt i16 %12, %15
  %21 = select i1 %cmp37.i, i1 %cmp28.i, i1 false
  %spec.select.i = select i1 %cmp32.i, i1 %cmp37.i, i1 false
  %or.cond91.i = select i1 %21, i1 true, i1 %spec.select.i
  br i1 %or.cond91.i, label %lor.lhs.false34.i.do.body.i.backedge_crit_edge, label %do.end.i, !prof !49

lor.lhs.false34.i.do.body.i.backedge_crit_edge:   ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %lor.lhs.false34.i.do.body.i.backedge_crit_edge, %lor.lhs.false.i.do.body.i.backedge_crit_edge, %do.body.i.do.body.i.backedge_crit_edge
  br label %do.body.i

do.end.i:                                         ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %o1.0.i)
  %tobool53.not.i = icmp eq i8 %o1.0.i, 0
  %conv62.i = zext i16 %12 to i32
  br i1 %tobool53.not.i, label %do.end.i.timer16_get_counter.exit_crit_edge, label %if.else.i, !prof !47

do.end.i.timer16_get_counter.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %timer16_get_counter.exit

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = or i32 %conv62.i, 65536
  br label %timer16_get_counter.exit

timer16_get_counter.exit:                         ; preds = %if.else.i, %do.end.i.timer16_get_counter.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.else.i ], [ %conv62.i, %do.end.i.timer16_get_counter.exit_crit_edge ]
  %add = add i32 %retval.0.i, %1
  %conv = zext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer16_enable(ptr nocapture noundef %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 4
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cs_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 91, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %total_cycles = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 1
  %2 = ptrtoint ptr %total_cycles to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %total_cycles, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %mapbase = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 2
  %3 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapbase, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #5, !srcloc !51
  %5 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -125) #5, !srcloc !42
  %mapcommon = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 3
  %7 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapcommon, align 8
  %add.ptr25 = getelementptr i8, ptr %8, i32 6
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %ovie = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 7
  %10 = ptrtoint ptr %ovie to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ovie, align 8
  %conv27 = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv27
  %12 = trunc i32 %shl to i8
  %conv28 = or i8 %9, %12
  %13 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapcommon, align 8
  %add.ptr30 = getelementptr i8, ptr %14, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 %conv28) #5, !srcloc !42
  %15 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapcommon, align 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %enb = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 5
  %18 = ptrtoint ptr %enb to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enb, align 2
  %conv35 = zext i8 %19 to i32
  %shl36 = shl nuw i32 1, %conv35
  %20 = trunc i32 %shl36 to i8
  %conv38 = or i8 %17, %20
  %21 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mapcommon, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %conv38) #5, !srcloc !42
  %23 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %cs_enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timer16_disable(ptr nocapture noundef %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 4
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cs_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !52

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 107, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mapcommon = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 3
  %2 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapcommon, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 6
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %ovie = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 7
  %5 = ptrtoint ptr %ovie to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ovie, align 8
  %conv22 = zext i8 %6 to i32
  %shl = shl nuw i32 1, %conv22
  %7 = trunc i32 %shl to i8
  %8 = xor i8 %7, -1
  %conv23 = and i8 %4, %8
  %9 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapcommon, align 8
  %add.ptr25 = getelementptr i8, ptr %10, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %conv23) #5, !srcloc !42
  %11 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapcommon, align 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %enb = getelementptr inbounds %struct.timer16_priv, ptr %cs, i32 0, i32 5
  %14 = ptrtoint ptr %enb to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enb, align 2
  %conv30 = zext i8 %15 to i32
  %shl31 = shl nuw i32 1, %conv30
  %16 = trunc i32 %shl31 to i8
  %17 = xor i8 %16, -1
  %conv34 = and i8 %13, %17
  %18 = ptrtoint ptr %mapcommon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapcommon, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %conv34) #5, !srcloc !42
  %20 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %cs_enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__of_table_h8300_16bit, !1, !"__of_table_h8300_16bit", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/h8300_timer16.c", i32 191, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/h8300_timer16.c", i32 139, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @h8300_16timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @h8300_16timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/h8300_timer16.c", i32 146, i32 3}
!10 = !{ptr @h8300_16timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @h8300_16timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @h8300_16timer_init._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/h8300_timer16.c", i32 152, i32 3}
!14 = !{ptr @h8300_16timer_init._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/h8300_timer16.c", i32 159, i32 3}
!17 = !{ptr @h8300_16timer_init._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @h8300_16timer_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/h8300_timer16.c", i32 163, i32 29}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/h8300_timer16.c", i32 174, i32 3}
!23 = !{ptr @h8300_16timer_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @h8300_16timer_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/h8300_timer16.c", i32 117, i32 11}
!27 = !{ptr @timer16_priv, !28, !"timer16_priv", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/h8300_timer16.c", i32 115, i32 28}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 4200454}
!40 = !{i64 2151739799}
!41 = !{i64 2151741404}
!42 = !{i64 4200059}
!43 = !{i64 4199836}
!44 = !{i64 2152774952}
!45 = !{i64 2152775248}
!46 = !{i64 2152775544}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"branch_weights", i32 1, i32 4001}
!49 = !{!"branch_weights", i32 6002, i32 8002000}
!50 = !{i64 2152777860}
!51 = !{i64 4199636}
!52 = !{!"branch_weights", i32 1, i32 2000}
