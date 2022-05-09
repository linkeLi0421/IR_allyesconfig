; ModuleID = '/llk/IR_all_yes/drivers/clocksource/bcm2835_timer.c_pt.bc'
source_filename = "../drivers/clocksource/bcm2835_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcm2835_timer = type { ptr, ptr, i32, [116 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_bcm2835 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-system-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_timer_init }, section "__timer_of_table", align 4
@bcm2835_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Can't remap registers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm2835_timer_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/bcm2835_timer.c\00", [60 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry_ptr = internal global ptr @bcm2835_timer_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Can't read clock-frequency\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry_ptr.6 = internal global ptr @bcm2835_timer_init._entry.4, section ".printk_index", align 4
@system_clock = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@bcm2835_timer_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Can't parse IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry_ptr.9 = internal global ptr @bcm2835_timer_init._entry.7, section ".printk_index", align 4
@bcm2835_timer_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Can't set up timer IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry_ptr.12 = internal global ptr @bcm2835_timer_init._entry.10, section ".printk_index", align 4
@bcm2835_timer_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016bcm2835: system timer (irq = %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm2835_timer_init._entry_ptr.15 = internal global ptr @bcm2835_timer_init._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 78, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 82, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 84, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 96, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 119, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [39 x i8] c"../drivers/clocksource/bcm2835_timer.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 125, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__of_table_bcm2835, ptr @bcm2835_timer_init._entry, ptr @bcm2835_timer_init._entry.10, ptr @bcm2835_timer_init._entry.13, ptr @bcm2835_timer_init._entry.4, ptr @bcm2835_timer_init._entry.7, ptr @bcm2835_timer_init._entry_ptr, ptr @bcm2835_timer_init._entry_ptr.12, ptr @bcm2835_timer_init._entry_ptr.15, ptr @bcm2835_timer_init._entry_ptr.6, ptr @bcm2835_timer_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timer_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timer_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timer_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timer_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #7
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !37
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %err_iounmap

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call, i32 4
  store ptr %add.ptr, ptr @system_clock, align 4
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %freq, align 4
  call void @sched_clock_register(ptr noundef nonnull @bcm2835_sched_read, i32 noundef 32, i32 noundef %2) #7
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 4
  %call12 = call i32 @clocksource_mmio_init(ptr noundef %add.ptr, ptr noundef %4, i32 noundef %6, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #7
  %call13 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp slt i32 %call13, 1
  br i1 %cmp, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %err_iounmap

if.end20:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 384) #11
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end20.err_iounmap_crit_edge, label %if.end24

if.end20.err_iounmap_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end24:                                         ; preds = %if.end20
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %call7.i.i, align 128
  %add.ptr26 = getelementptr i8, ptr %call, i32 24
  %compare = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %compare to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr26, ptr %compare, align 4
  %match_mask = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %match_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %match_mask, align 8
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %name28 = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4, i32 21
  %13 = ptrtoint ptr %name28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name28, align 4
  %rating = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4, i32 22
  %14 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 300, ptr %rating, align 8
  %features = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4, i32 9
  %15 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %features, align 4
  %set_next_event = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bcm2835_time_set_next_event, ptr %set_next_event, align 4
  %cpumask = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4, i32 25
  %17 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr %cpumask, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %call13, ptr noundef nonnull @bcm2835_time_interrupt, ptr noundef null, i32 noundef 82560, ptr noundef %12, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_iounmap

if.end43:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %evt = getelementptr inbounds %struct.bcm2835_timer, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq, align 4
  call void @clockevents_config_and_register(ptr noundef %evt, i32 noundef %19, i32 noundef 15, i32 noundef -1) #7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call13) #10
  br label %cleanup

err_iounmap:                                      ; preds = %do.end40, %if.end20.err_iounmap_crit_edge, %do.end17, %do.end7
  %ret.0 = phi i32 [ %call.i.i, %do.end7 ], [ -22, %do.end17 ], [ %call.i, %do.end40 ], [ -12, %if.end20.err_iounmap_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_iounmap, %if.end43, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_iounmap ], [ 0, %if.end43 ], [ -6, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bcm2835_sched_read() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @system_clock, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !38
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_time_set_next_event(i32 noundef %event, ptr nocapture noundef readonly %evt_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @system_clock, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !38
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add i32 %2, %event
  %3 = tail call i32 @llvm.bswap.i32(i32 %add)
  %compare = getelementptr i8, ptr %evt_dev, i32 -124
  %4 = ptrtoint ptr %compare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compare, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_time_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %match_mask = getelementptr inbounds %struct.bcm2835_timer, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %match_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %match_mask, align 8
  %and = and i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !39
  %evt = getelementptr inbounds %struct.bcm2835_timer, ptr %dev_id, i32 0, i32 4
  %9 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %evt, align 128
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %evt) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__of_table_bcm2835, !1, !"__of_table_bcm2835", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 136, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 78, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcm2835_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcm2835_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 82, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 84, i32 3}
!12 = !{ptr @bcm2835_timer_init._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @bcm2835_timer_init._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 96, i32 3}
!16 = !{ptr @bcm2835_timer_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bcm2835_timer_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 119, i32 3}
!20 = !{ptr @bcm2835_timer_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm2835_timer_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 125, i32 2}
!24 = !{ptr @bcm2835_timer_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm2835_timer_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @system_clock, !27, !"system_clock", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/bcm2835_timer.c", i32 36, i32 22}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 3983305}
!39 = !{i64 3982887}
