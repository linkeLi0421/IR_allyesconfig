; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-bq4802.c_pt.bc'
source_filename = "../drivers/rtc/rtc-bq4802.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bq4802 = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author227 = internal constant [56 x i8] c"rtc_bq4802.author=David S. Miller <davem@davemloft.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [44 x i8] c"rtc_bq4802.description=TI BQ4802 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"rtc_bq4802.file=drivers/rtc/rtc-bq4802\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"rtc_bq4802.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [37 x i8] c"rtc_bq4802.alias=platform:rtc-bq4802\00", section ".modinfo", align 1
@__initcall__kmod_rtc_bq4802__232_202_bq4802_driver_init6 = internal global ptr @bq4802_driver_init, section ".initcall6.init", align 4
@bq4802_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bq4802_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bq4802_driver_exit = internal global ptr @bq4802_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-bq4802\00", [21 x i8] zeroinitializer }, align 32
@bq4802_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&p->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bq4802\00", [25 x i8] zeroinitializer }, align 32
@bq4802_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @bq4802_read_time, ptr @bq4802_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [14 x i8] c"bq4802_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 195, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 197, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 150, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 179, i32 48 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"bq4802_ops\00", align 1
@___asan_gen_.19 = private constant [28 x i8] c"../drivers/rtc/rtc-bq4802.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 137, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_bq4802_driver_exit, ptr @__initcall__kmod_rtc_bq4802__232_202_bq4802_driver_init6, ptr @bq4802_driver_exit, ptr @bq4802_driver, ptr @.str, ptr @bq4802_probe.__key, ptr @.str.1, ptr @.str.2, ptr @bq4802_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq4802_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq4802_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq4802_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq4802_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bq4802_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq4802_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @bq4802_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq4802_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq4802_probe.__key, i16 noundef signext 3) #4
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %r = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %r, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then5:                                         ; preds = %do.body
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #4
  %1 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %r, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.then5.out_crit_edge, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %do.body.if.end12_crit_edge
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %ioport = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ioport, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end12
  %and19 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.out_crit_edge, label %if.then21

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then21:                                        ; preds = %if.else
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call27 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %10, i32 noundef %add.i) #4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %call.i, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then21.out_crit_edge, label %if.then21.if.end36_crit_edge

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end36:                                         ; preds = %if.then21.if.end36_crit_edge, %if.then15
  %bq4802_read_mem.sink = phi ptr [ @bq4802_read_io, %if.then15 ], [ @bq4802_read_mem, %if.then21.if.end36_crit_edge ]
  %bq4802_write_mem.sink = phi ptr [ @bq4802_write_io, %if.then15 ], [ @bq4802_write_mem, %if.then21.if.end36_crit_edge ]
  %read32 = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %read32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bq4802_read_mem.sink, ptr %read32, align 4
  %write33 = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %write33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bq4802_write_mem.sink, ptr %write33, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call38 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @bq4802_ops, ptr noundef null) #4
  %rtc = getelementptr inbounds %struct.bq4802, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call38 to i32
  %spec.select = select i1 %cmp.i, i32 %18, i32 0
  br label %out

out:                                              ; preds = %if.end36, %if.then21.out_crit_edge, %if.else.out_crit_edge, %if.then5.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then5.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ -12, %if.then21.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ %spec.select, %if.end36 ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bq4802_read_io(ptr nocapture noundef readonly %p, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ioport = getelementptr inbounds %struct.bq4802, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioport, align 4
  %add = add i32 %1, %off
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq4802_write_io(ptr nocapture noundef readonly %p, i32 noundef %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %ioport = getelementptr inbounds %struct.bq4802, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioport, align 4
  %add = add i32 %1, %off
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %val) #4, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bq4802_read_mem(ptr nocapture noundef readonly %p, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %off
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq4802_write_mem(ptr nocapture noundef readonly %p, i32 noundef %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %off
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #4, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq4802_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %read = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call6 = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 14) #4
  %write = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %6 = or i8 %call6, 8
  tail call void %5(ptr noundef %1, i32 noundef 14, i8 noundef zeroext %6) #4
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call10 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 0) #4
  %conv11 = zext i8 %call10 to i32
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv11, ptr %tm, align 4
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read, align 4
  %call13 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 2) #4
  %conv14 = zext i8 %call13 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv14, ptr %tm_min, align 4
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %call16 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 4) #4
  %conv17 = zext i8 %call16 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17, ptr %tm_hour, align 4
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 4
  %call19 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 6) #4
  %conv20 = zext i8 %call19 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv20, ptr %tm_mday, align 4
  %19 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read, align 4
  %call22 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 9) #4
  %conv23 = zext i8 %call22 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %21 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv23, ptr %tm_mon, align 4
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read, align 4
  %call25 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 10) #4
  %conv26 = zext i8 %call25 to i32
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %24 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv26, ptr %tm_year, align 4
  %25 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read, align 4
  %call28 = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 8) #4
  %conv29 = zext i8 %call28 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %27 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv29, ptr %tm_wday, align 4
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read, align 4
  %call31 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 15) #4
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  tail call void %31(ptr noundef %1, i32 noundef 14, i8 noundef zeroext %call6) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  %32 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm, align 4
  %conv36 = trunc i32 %33 to i8
  %call41 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36) #7
  %34 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call41, ptr %tm, align 4
  %35 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_min, align 4
  %conv44 = trunc i32 %36 to i8
  %call55 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv44) #7
  %37 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call55, ptr %tm_min, align 4
  %38 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour, align 4
  %conv60 = trunc i32 %39 to i8
  %call71 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv60) #7
  %40 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call71, ptr %tm_hour, align 4
  %41 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday, align 4
  %conv76 = trunc i32 %42 to i8
  %call87 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv76) #7
  %43 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call87, ptr %tm_mday, align 4
  %44 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon, align 4
  %46 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_year, align 4
  %48 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_wday, align 4
  %conv124 = trunc i32 %49 to i8
  %call135 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv124) #7
  %50 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call135, ptr %tm_wday, align 4
  %call147 = tail call i32 @_bcd2bin(i8 noundef zeroext %call31) #7
  %conv108 = trunc i32 %47 to i8
  %call119 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv108) #7
  %conv92 = trunc i32 %45 to i8
  %call103 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv92) #7
  %mul150 = mul i32 %call147, 100
  %add152 = add i32 %call119, -1900
  %sub = add i32 %add152, %mul150
  %51 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub, ptr %tm_year, align 4
  %dec = add i32 %call103, -1
  %52 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %dec, ptr %tm_mon, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq4802_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %6 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm, align 4
  %add = add i32 %3, 1900
  %add.frozen = freeze i32 %add
  %div = udiv i32 %add.frozen, 100
  %conv95 = and i32 %div, 255
  %call96 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv95) #7
  %14 = mul i32 %div, 100
  %rem.decomposed = sub i32 %add.frozen, %14
  %call82 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem.decomposed) #7
  %conv3 = add i32 %5, 1
  %conv67 = and i32 %conv3, 255
  %call68 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv67) #7
  %conv53 = and i32 %7, 255
  %call54 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv53) #7
  %conv39 = and i32 %9, 255
  %call40 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv39) #7
  %conv25 = and i32 %11, 255
  %call26 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv25) #7
  %conv13 = and i32 %13, 255
  %call14 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv13) #7
  %lock = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 3
  %call104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %read = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read, align 4
  %call107 = tail call zeroext i8 %16(ptr noundef %1, i32 noundef 14) #4
  %write = getelementptr inbounds %struct.bq4802, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %19 = or i8 %call107, 8
  tail call void %18(ptr noundef %1, i32 noundef 14, i8 noundef zeroext %19) #4
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  tail call void %21(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %call14) #4
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  tail call void %23(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %call26) #4
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  tail call void %25(ptr noundef %1, i32 noundef 4, i8 noundef zeroext %call40) #4
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  tail call void %27(ptr noundef %1, i32 noundef 6, i8 noundef zeroext %call54) #4
  %28 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write, align 4
  tail call void %29(ptr noundef %1, i32 noundef 9, i8 noundef zeroext %call68) #4
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  tail call void %31(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %call82) #4
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  tail call void %33(ptr noundef %1, i32 noundef 15, i8 noundef zeroext %call96) #4
  %34 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write, align 4
  tail call void %35(ptr noundef %1, i32 noundef 14, i8 noundef zeroext %call107) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call104) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-bq4802.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-bq4802.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-bq4802.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias231, !8, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-bq4802.c", i32 193, i32 1}
!9 = !{ptr @__initcall__kmod_rtc_bq4802__232_202_bq4802_driver_init6, !10, !"__initcall__kmod_rtc_bq4802__232_202_bq4802_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-bq4802.c", i32 202, i32 1}
!11 = !{ptr @__exitcall_bq4802_driver_exit, !10, !"__exitcall_bq4802_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-bq4802.c", i32 197, i32 11}
!14 = !{ptr @bq4802_driver, !15, !"bq4802_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-bq4802.c", i32 195, i32 31}
!16 = !{ptr @bq4802_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-bq4802.c", i32 150, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-bq4802.c", i32 179, i32 48}
!21 = !{ptr @bq4802_ops, !22, !"bq4802_ops", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-bq4802.c", i32 137, i32 35}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 4038182}
!33 = !{i64 2153800121}
!34 = !{i64 2153800337}
!35 = !{i64 4037787}
!36 = !{i64 2153800685}
!37 = !{i64 2153800895}
