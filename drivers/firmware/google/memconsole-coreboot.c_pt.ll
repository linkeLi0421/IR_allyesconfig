; ModuleID = '/llk/IR_all_yes/drivers/firmware/google/memconsole-coreboot.c_pt.bc'
source_filename = "../drivers/firmware/google/memconsole-coreboot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coreboot_driver = type { ptr, ptr, %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.coreboot_device = type { %struct.device, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.43 = type { %struct.lb_framebuffer }
%struct.lb_framebuffer = type { i32, i32, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.seg = type { i32, i32 }
%struct.cbmem_cons = type { i32, i32, [0 x i8] }

@__initcall__kmod_memconsole_coreboot__172_107_memconsole_driver_init6 = internal global ptr @memconsole_driver_init, section ".initcall6.init", align 4
@memconsole_driver = internal global { %struct.coreboot_driver, [40 x i8] } { %struct.coreboot_driver { ptr @memconsole_probe, ptr @memconsole_remove, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 23 }, [40 x i8] zeroinitializer }, align 32
@__exitcall_memconsole_driver_exit = internal global ptr @memconsole_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [40 x i8] c"memconsole_coreboot.author=Google, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [69 x i8] c"memconsole_coreboot.file=drivers/firmware/google/memconsole-coreboot\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [32 x i8] c"memconsole_coreboot.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"memconsole\00", [21 x i8] zeroinitializer }, align 32
@cbmem_console_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cbmem_console = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"memconsole_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 99, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 103, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"cbmem_console_size\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 31, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"cbmem_console\00", align 1
@___asan_gen_.11 = private constant [49 x i8] c"../drivers/firmware/google/memconsole-coreboot.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 30, i32 27 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_memconsole_driver_exit, ptr @__initcall__kmod_memconsole_coreboot__172_107_memconsole_driver_init6, ptr @memconsole_driver_exit, ptr @memconsole_driver, ptr @.str, ptr @cbmem_console_size, ptr @cbmem_console], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memconsole_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbmem_console_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbmem_console to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @memconsole_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coreboot_driver_register(ptr noundef nonnull @memconsole_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @memconsole_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @coreboot_driver_unregister(ptr noundef nonnull @memconsole_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coreboot_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coreboot_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memconsole_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cbmem_addr = getelementptr inbounds %struct.coreboot_device, ptr %dev, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %cbmem_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cbmem_addr, align 8
  %conv = trunc i64 %1 to i32
  %call = tail call ptr @memremap(i32 noundef %conv, i32 noundef 8, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %call, align 1
  store i32 %3, ptr @cbmem_console_size, align 4
  %4 = ptrtoint ptr %cbmem_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cbmem_addr, align 8
  %conv3 = trunc i64 %5 to i32
  %add = add i32 %3, 8
  %call4 = tail call ptr @devm_memremap(ptr noundef %dev, i32 noundef %conv3, i32 noundef %add, i32 noundef 1) #5
  store ptr %call4, ptr @cbmem_console, align 4
  tail call void @memunmap(ptr noundef nonnull %call) #5
  %6 = load ptr, ptr @cbmem_console, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @memconsole_setup(ptr noundef nonnull @memconsole_coreboot_read) #5
  %call9 = tail call i32 @memconsole_sysfs_init() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then6 ], [ %call9, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memconsole_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @memconsole_exit() #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memconsole_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memconsole_coreboot_read(ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  %seg = alloca [2 x %struct.seg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %1 = load ptr, ptr @cbmem_console, align 4
  %cursor1 = getelementptr inbounds %struct.cbmem_cons, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cursor1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cursor1, align 1
  %and = and i32 %3, 268435455
  %4 = load i32, ptr @cbmem_console_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seg) #5
  %5 = call ptr @memset(ptr %seg, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %4)
  %cmp = icmp ugt i32 %and, %4
  %spec.store.select = select i1 %cmp, i32 0, i32 %and
  %sub = sub i32 %4, %spec.store.select
  %6 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.store.select, ptr %seg, align 4
  %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx = getelementptr inbounds [2 x %struct.seg], ptr %seg, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %.compoundliteral7.sroa.2.0.arrayidx6.sroa_idx, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 @llvm.umin.i32(i32 %and, i32 %4)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then
  %sub.sink = phi i32 [ %8, %if.else ], [ %sub, %if.then ]
  %9 = getelementptr inbounds i8, ptr %seg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.sink, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1744.not = icmp eq i32 %count, 0
  br i1 %cmp1744.not, label %if.end15.for.end_crit_edge, label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end15
  %11 = load ptr, ptr @cbmem_console, align 4
  %body = getelementptr inbounds %struct.cbmem_cons, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seg, align 4
  %add.ptr21 = getelementptr i8, ptr %body, i32 %13
  %len23 = getelementptr inbounds [2 x %struct.seg], ptr %seg, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len23, align 4
  %call = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr, ptr noundef %add.ptr21, i32 noundef %15) #5
  %conv = zext i32 %15 to i64
  %16 = ptrtoint ptr %pos.addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos.addr, align 8
  %sub26 = sub i64 %17, %conv
  store i64 %sub26, ptr %pos.addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp17 = icmp ult i32 %call, %count
  br i1 %cmp17, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub18.1 = sub i32 %count, %call
  %18 = load ptr, ptr @cbmem_console, align 4
  %body.1 = getelementptr inbounds %struct.cbmem_cons, ptr %18, i32 0, i32 2
  %arrayidx19.1 = getelementptr inbounds [2 x %struct.seg], ptr %seg, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19.1, align 4
  %add.ptr21.1 = getelementptr i8, ptr %body.1, i32 %20
  %len23.1 = getelementptr inbounds [2 x %struct.seg], ptr %seg, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %len23.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len23.1, align 4
  %call.1 = call i32 @memory_read_from_buffer(ptr noundef %add.ptr.1, i32 noundef %sub18.1, ptr noundef nonnull %pos.addr, ptr noundef %add.ptr21.1, i32 noundef %22) #5
  %add.1 = add i32 %call.1, %call
  %conv.1 = zext i32 %22 to i64
  %23 = ptrtoint ptr %pos.addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos.addr, align 8
  %sub26.1 = sub i64 %24, %conv.1
  store i64 %sub26.1, ptr %pos.addr, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %if.end15.for.end_crit_edge
  %done.0.lcssa = phi i32 [ 0, %if.end15.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %add.1, %for.body.1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seg) #5
  ret i32 %done.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memconsole_sysfs_init() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memconsole_exit() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_memconsole_coreboot__172_107_memconsole_driver_init6, !1, !"__initcall__kmod_memconsole_coreboot__172_107_memconsole_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 107, i32 1}
!2 = !{ptr @__exitcall_memconsole_driver_exit, !1, !"__exitcall_memconsole_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 109, i32 1}
!5 = !{ptr @__UNIQUE_ID_file174, !6, !"__UNIQUE_ID_file174", i1 false, i1 false}
!6 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 110, i32 1}
!7 = !{ptr @__UNIQUE_ID_license175, !6, !"__UNIQUE_ID_license175", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 103, i32 11}
!10 = !{ptr @memconsole_driver, !11, !"memconsole_driver", i1 false, i1 false}
!11 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 99, i32 31}
!12 = !{ptr @cbmem_console_size, !13, !"cbmem_console_size", i1 false, i1 false}
!13 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 31, i32 12}
!14 = !{ptr @cbmem_console, !15, !"cbmem_console", i1 false, i1 false}
!15 = !{!"../drivers/firmware/google/memconsole-coreboot.c", i32 30, i32 27}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
