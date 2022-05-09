; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-zevio.c_pt.bc'
source_filename = "../drivers/clocksource/timer-zevio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.zevio_timer = type { ptr, ptr, ptr, ptr, ptr, [108 x i8], %struct.clock_event_device, [64 x i8], [64 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_zevio_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lsi,zevio-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zevio_timer_init }, section "__timer_of_table", align 4
@zevio_timer_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Timer clock not found! (error %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zevio_timer_add\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-zevio.c\00", [62 x i8] zeroinitializer }, align 32
@zevio_timer_add._entry_ptr = internal global ptr @zevio_timer_add._entry, section ".printk_index", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%llx.%pOFn_clocksource\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%llx.%pOFn_clockevent\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@zevio_timer_add._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: request_irq() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@zevio_timer_add._entry_ptr.7 = internal global ptr @zevio_timer_add._entry.5, section ".printk_index", align 4
@zevio_timer_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Added %s as clockevent\0A\00", [38 x i8] zeroinitializer }, align 32
@zevio_timer_add._entry_ptr.10 = internal global ptr @zevio_timer_add._entry.8, section ".printk_index", align 4
@zevio_timer_add._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Added %s as clocksource\0A\00", [37 x i8] zeroinitializer }, align 32
@zevio_timer_add._entry_ptr.13 = internal global ptr @zevio_timer_add._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 137, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 146, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 150, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 177, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 183, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [37 x i8] c"../drivers/clocksource/timer-zevio.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 198, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_zevio_timer, ptr @zevio_timer_add._entry, ptr @zevio_timer_add._entry.11, ptr @zevio_timer_add._entry.5, ptr @zevio_timer_add._entry.8, ptr @zevio_timer_add._entry_ptr, ptr @zevio_timer_add._entry_ptr.10, ptr @zevio_timer_add._entry_ptr.13, ptr @zevio_timer_add._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zevio_timer_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zevio_timer_add._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zevio_timer_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zevio_timer_add._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zevio_timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zevio_timer_add(ptr noundef %node) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zevio_timer_add(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 512) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call7.i.i, align 128
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.error_free_crit_edge, label %if.end5

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_free

if.end5:                                          ; preds = %if.end
  %timer1 = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %timer1, align 4
  %add.ptr8 = getelementptr i8, ptr %call1, i32 12
  %timer2 = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %timer2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr8, ptr %timer2, align 8
  %call9 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %clk, align 16
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call9 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %6) #12
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 128
  tail call void @iounmap(ptr noundef %8) #7
  br label %error_free

if.end16:                                         ; preds = %if.end5
  %call17 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #7
  %interrupt_regs = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %interrupt_regs, align 4
  %call18 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #7
  %call19 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #7
  %clocksource_name = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res, align 4
  %conv = zext i32 %11 to i64
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %clocksource_name, i32 noundef 64, ptr noundef nonnull @.str.3, i64 noundef %conv, ptr noundef %node) #7
  %clockevent_name = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %conv23 = zext i32 %13 to i64
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %clockevent_name, i32 noundef 64, ptr noundef nonnull @.str.4, i64 noundef %conv23, ptr noundef %node) #7
  %14 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_regs, align 4
  %tobool26.not = icmp eq ptr %15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool27.not = icmp eq i32 %call18, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end16.do.body88_crit_edge, label %if.then28

if.end16.do.body88_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body88

if.then28:                                        ; preds = %if.end16
  %clkevt = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6
  %name = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 21
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %clockevent_name, ptr %name, align 4
  %set_next_event = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @zevio_timer_set_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 14
  %18 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @zevio_timer_shutdown, ptr %set_state_shutdown, align 8
  %set_state_oneshot = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 12
  %19 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @zevio_timer_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 15
  %20 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @zevio_timer_set_oneshot, ptr %tick_resume, align 4
  %rating = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 22
  %21 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 200, ptr %rating, align 8
  %cpumask = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 25
  %22 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  %features = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 9
  %23 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %features, align 4
  %irq = getelementptr inbounds %struct.zevio_timer, ptr %call7.i.i, i32 0, i32 6, i32 23
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call18, ptr %irq, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timer1, align 4
  %add.ptr43 = getelementptr i8, ptr %26, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 268435456) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timer1, align 4
  %add.ptr48 = getelementptr i8, ptr %28, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_regs, align 4
  %add.ptr53 = getelementptr i8, ptr %30, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 0) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interrupt_regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1056964608) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 128
  %add.ptr63 = getelementptr i8, ptr %34, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #7, !srcloc !34
  %call.i = call i32 @request_threaded_irq(i32 noundef %call18, ptr noundef nonnull @zevio_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef %clockevent_name, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %if.then28.if.end76_crit_edge, label %do.end71

if.then28.if.end76_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end71:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %clockevent_name) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %if.then28.if.end76_crit_edge
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 16
  %call79 = call i32 @clk_get_rate(ptr noundef %36) #7
  call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %call79, i32 noundef 1, i32 noundef 65535) #7
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %clockevent_name) #12
  br label %do.body88

do.body88:                                        ; preds = %if.end76, %if.end16.do.body88_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %timer2, align 8
  %add.ptr92 = getelementptr i8, ptr %38, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 268435456) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %timer2, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %timer2, align 8
  %add.ptr102 = getelementptr i8, ptr %42, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 0) #7, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %timer2, align 8
  %add.ptr107 = getelementptr i8, ptr %44, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 251658240) #7, !srcloc !34
  %45 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %timer2, align 8
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk, align 16
  %call113 = call i32 @clk_get_rate(ptr noundef %48) #7
  %call114 = call i32 @clocksource_mmio_init(ptr noundef %46, ptr noundef %clocksource_name, i32 noundef %call113, i32 noundef 200, i32 noundef 16, ptr noundef nonnull @clocksource_mmio_readw_up) #7
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %clocksource_name) #12
  br label %cleanup

error_free:                                       ; preds = %if.then12, %if.end.error_free_crit_edge
  %ret.0 = phi i32 [ %6, %if.then12 ], [ -22, %if.end.error_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error_free, %do.body88, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_free ], [ 0, %do.body88 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zevio_timer_set_event(i32 noundef %delta, ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %timer1 = getelementptr i8, ptr %dev, i32 -124
  %1 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %timer1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer1, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zevio_timer_shutdown(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %interrupt_regs = getelementptr i8, ptr %dev, i32 -116
  %0 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1056964608) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %timer1 = getelementptr i8, ptr %dev, i32 -124
  %4 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer1, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 268435456) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zevio_timer_set_oneshot(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %interrupt_regs = getelementptr i8, ptr %dev, i32 -116
  %0 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1056964608) #7, !srcloc !34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zevio_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_regs = getelementptr inbounds %struct.zevio_timer, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %interrupt_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #7, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %timer1 = getelementptr inbounds %struct.zevio_timer, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer1, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 268435456) #7, !srcloc !34
  %clkevt = getelementptr inbounds %struct.zevio_timer, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %clkevt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkevt, align 128
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %clkevt) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then9 ], [ 1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readw_up(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_zevio_timer, !1, !"__of_table_zevio_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-zevio.c", i32 213, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-zevio.c", i32 137, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @zevio_timer_add._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @zevio_timer_add._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-zevio.c", i32 146, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-zevio.c", i32 150, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-zevio.c", i32 177, i32 4}
!14 = !{ptr @zevio_timer_add._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @zevio_timer_add._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-zevio.c", i32 183, i32 3}
!18 = !{ptr @zevio_timer_add._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @zevio_timer_add._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-zevio.c", i32 198, i32 2}
!22 = !{ptr @zevio_timer_add._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @zevio_timer_add._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152800228}
!34 = !{i64 688756}
!35 = !{i64 2152800641}
!36 = !{i64 2152801041}
!37 = !{i64 2152801457}
!38 = !{i64 2152801916}
!39 = !{i64 2152805629}
!40 = !{i64 2152806042}
!41 = !{i64 2152806434}
!42 = !{i64 2152806868}
!43 = !{i64 2152791225}
!44 = !{i64 2152791693}
!45 = !{i64 2152793360}
!46 = !{i64 2152793776}
!47 = !{i64 2152794201}
!48 = !{i64 2152795827}
!49 = !{i64 2152796276}
!50 = !{i64 689174}
!51 = !{i64 2152797000}
!52 = !{i64 2152797285}
!53 = !{i64 2152797734}
