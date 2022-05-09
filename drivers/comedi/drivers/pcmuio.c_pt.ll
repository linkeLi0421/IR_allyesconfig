; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcmuio.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcmuio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcmuio_board = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.pcmuio_asic = type { %struct.spinlock, %struct.spinlock, i32, i8 }
%struct.pcmuio_private = type { [2 x %struct.pcmuio_asic], i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__initcall__kmod_pcmuio__234_619_pcmuio_driver_init6 = internal global ptr @pcmuio_driver_init, section ".initcall6.init", align 4
@pcmuio_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcmuio_attach, ptr @pcmuio_detach, ptr null, i32 2, ptr @pcmuio_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcmuio_driver_exit = internal global ptr @pcmuio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"pcmuio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"pcmuio.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"pcmuio.file=drivers/comedi/drivers/pcmuio\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"pcmuio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmuio\00", [25 x i8] zeroinitializer }, align 32
@pcmuio_boards = internal constant { [2 x %struct.pcmuio_board], [16 x i8] } { [2 x %struct.pcmuio_board] [%struct.pcmuio_board { ptr @.str.4, i32 1 }, %struct.pcmuio_board { ptr @.str.5, i32 2 }], [16 x i8] zeroinitializer }, align 32
@pcmuio_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->pagelock\00", [16 x i8] zeroinitializer }, align 32
@pcmuio_attach.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->spinlock\00", [16 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcmuio48\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcmuio96\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"pcmuio_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 610, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 611, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"pcmuio_boards\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 106, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 539, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 540, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [35 x i8] c"../drivers/comedi/drivers/pcmuio.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 111, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pcmuio_driver_exit, ptr @__initcall__kmod_pcmuio__234_619_pcmuio_driver_init6, ptr @pcmuio_driver_exit, ptr @pcmuio_driver, ptr @.str, ptr @pcmuio_boards, ptr @pcmuio_attach.__key, ptr @.str.1, ptr @pcmuio_attach.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmuio_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmuio_boards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmuio_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmuio_attach.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcmuio_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcmuio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcmuio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %num_asics = getelementptr inbounds %struct.pcmuio_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_asics to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_asics, align 4
  %mul = shl i32 %5, 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 196) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call1, ptr noundef nonnull @.str.1, ptr noundef nonnull @pcmuio_attach.__key, i16 noundef signext 3) #6
  %spinlock = getelementptr [2 x %struct.pcmuio_asic], ptr %call1, i32 0, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @pcmuio_attach.__key.2, i16 noundef signext 3) #6
  %arrayidx5.1 = getelementptr [2 x %struct.pcmuio_asic], ptr %call1, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx5.1, ptr noundef nonnull @.str.1, ptr noundef nonnull @pcmuio_attach.__key, i16 noundef signext 3) #6
  %spinlock.1 = getelementptr [2 x %struct.pcmuio_asic], ptr %call1, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @pcmuio_attach.__key.2, i16 noundef signext 3) #6
  tail call fastcc void @pcmuio_reset(ptr noundef %dev)
  %arrayidx12 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %for.body.preheader.if.end23_crit_edge, label %if.then14

for.body.preheader.if.end23_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then14:                                        ; preds = %for.body.preheader
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @pcmuio_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp eq i32 %call.i, 0
  br i1 %cmp18, label %if.then19, label %if.then14.if.end23_crit_edge

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %irq, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then14.if.end23_crit_edge, %for.body.preheader.if.end23_crit_edge
  %13 = ptrtoint ptr %num_asics to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_asics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp25 = icmp eq i32 %14, 2
  br i1 %cmp25, label %if.then26, label %if.end23.if.end50_crit_edge

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then26:                                        ; preds = %if.end23
  %arrayidx28 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx28, align 4
  %irq29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %irq29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp30 = icmp eq i32 %16, %18
  br i1 %cmp30, label %if.then26.if.end50.sink.split_crit_edge, label %if.else

if.then26.if.end50.sink.split_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool36.not = icmp eq i32 %16, 0
  br i1 %tobool36.not, label %if.else.if.end50_crit_edge, label %if.then37

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then37:                                        ; preds = %if.else
  %board_name40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %19 = ptrtoint ptr %board_name40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board_name40, align 4
  %call.i134 = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @pcmuio_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp42 = icmp eq i32 %call.i134, 0
  br i1 %cmp42, label %if.then43, label %if.then37.if.end50_crit_edge

if.then37.if.end50_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.then43, %if.then26.if.end50.sink.split_crit_edge
  %.sink = phi i32 [ %22, %if.then43 ], [ %16, %if.then26.if.end50.sink.split_crit_edge ]
  %irq2 = getelementptr inbounds %struct.pcmuio_private, ptr %call1, i32 0, i32 1
  %23 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %irq2, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.then37.if.end50_crit_edge, %if.else.if.end50_crit_edge, %if.end23.if.end50_crit_edge
  %24 = ptrtoint ptr %num_asics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_asics, align 4
  %mul52 = shl i32 %25, 1
  %call53 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %mul52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.cond57.preheader, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond57.preheader:                             ; preds = %if.end50
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 15
  %26 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp58136 = icmp sgt i32 %27, 0
  br i1 %cmp58136, label %for.body59.lr.ph, label %for.cond57.preheader.cleanup_crit_edge

for.cond57.preheader.cleanup_crit_edge:           ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body59.lr.ph:                                 ; preds = %for.cond57.preheader
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %irq266 = getelementptr inbounds %struct.pcmuio_private, ptr %call1, i32 0, i32 1
  %irq62 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  br label %for.body59

for.body59:                                       ; preds = %for.inc72.for.body59_crit_edge, %for.body59.lr.ph
  %i.1137 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc73, %for.inc72.for.body59_crit_edge ]
  %28 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdevices, align 4
  %arrayidx60 = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137
  %type = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 2
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 4
  %31 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196608, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 3
  %32 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 13
  %33 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 15
  %34 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 20
  %35 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pcmuio_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 21
  %36 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pcmuio_dio_insn_config, ptr %insn_config, align 4
  %37 = zext i32 %i.1137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.1137, label %for.body59.for.inc72_crit_edge [
    i32 0, label %land.lhs.true
    i32 2, label %land.lhs.true65
  ]

for.body59.for.inc72_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72

land.lhs.true:                                    ; preds = %for.body59
  %38 = ptrtoint ptr %irq62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool63.not = icmp eq i32 %39, 0
  br i1 %tobool63.not, label %land.lhs.true.for.inc72_crit_edge, label %land.lhs.true.if.then68_crit_edge

land.lhs.true.if.then68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

land.lhs.true.for.inc72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72

land.lhs.true65:                                  ; preds = %for.body59
  %40 = ptrtoint ptr %irq266 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq266, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool67.not = icmp eq i32 %41, 0
  br i1 %tobool67.not, label %land.lhs.true65.for.inc72_crit_edge, label %land.lhs.true65.if.then68_crit_edge

land.lhs.true65.if.then68_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

land.lhs.true65.for.inc72_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72

if.then68:                                        ; preds = %land.lhs.true65.if.then68_crit_edge, %land.lhs.true.if.then68_crit_edge
  %42 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx60, ptr %read_subdev, align 4
  %43 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %44, 805339136
  store i32 %or, ptr %subdev_flags, align 4
  %45 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 5
  %47 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %len_chanlist, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 25
  %48 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pcmuio_cancel, ptr %cancel, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 22
  %49 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pcmuio_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %29, i32 %i.1137, i32 23
  %50 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pcmuio_cmdtest, ptr %do_cmdtest, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %if.then68, %land.lhs.true65.for.inc72_crit_edge, %land.lhs.true.for.inc72_crit_edge, %for.body59.for.inc72_crit_edge
  %inc73 = add nuw nsw i32 %i.1137, 1
  %51 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_subdevices, align 4
  %cmp58 = icmp slt i32 %inc73, %52
  br i1 %cmp58, label %for.inc72.for.body59_crit_edge, label %for.inc72.cleanup_crit_edge

for.inc72.cleanup_crit_edge:                      ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc72.for.body59_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

cleanup:                                          ; preds = %for.inc72.cleanup_crit_edge, %for.cond57.preheader.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call53, %if.end50.cleanup_crit_edge ], [ 0, %for.cond57.preheader.cleanup_crit_edge ], [ 0, %for.inc72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmuio_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call fastcc void @pcmuio_reset(ptr noundef %dev)
  %irq2 = getelementptr inbounds %struct.pcmuio_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %land.lhs.true

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.then
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmuio_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %num_asics = getelementptr inbounds %struct.pcmuio_board, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_asics to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_asics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp68 = icmp sgt i32 %3, 0
  br i1 %cmp68, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %asic.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.pcmuio_asic], ptr %5, i32 0, i32 %asic.069
  %6 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i.i, align 4
  %mul.i.i = shl i32 %asic.069, 4
  %add.i.i = add i32 %7, %mul.i.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %and14.i = and i32 %add.i.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %8 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add24.i = add i32 %add.i.i, 1
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %9 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add36.i = add i32 %add.i.i, 2
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %10 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i) #6
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %arrayidx.i13 = getelementptr [2 x %struct.pcmuio_asic], ptr %12, i32 0, i32 %asic.069
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i.i, align 4
  %add.i.i16 = add i32 %14, %mul.i.i
  %call3.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add13.i = add i32 %add.i.i16, 3
  %and14.i18 = and i32 %add13.i, 1048575
  %add15.i19 = or i32 %and14.i18, -18874368
  %15 = inttoptr i32 %add15.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add24.i20 = add i32 %add.i.i16, 4
  %and25.i21 = and i32 %add24.i20, 1048575
  %add26.i22 = or i32 %and25.i21, -18874368
  %16 = inttoptr i32 %add26.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add36.i23 = add i32 %add.i.i16, 5
  %and37.i24 = and i32 %add36.i23, 1048575
  %add38.i25 = or i32 %and37.i24, -18874368
  %17 = inttoptr i32 %add38.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i13, i32 noundef %call3.i17) #6
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %arrayidx.i27 = getelementptr [2 x %struct.pcmuio_asic], ptr %19, i32 0, i32 %asic.069
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 4
  %add.i.i30 = add i32 %21, %mul.i.i
  %call3.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i = add i32 %add.i.i30, 7
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %22 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 64) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add54.i = add i32 %add.i.i30, 8
  %and55.i = and i32 %add54.i, 1048575
  %add56.i = or i32 %and55.i, -18874368
  %23 = inttoptr i32 %add56.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add64.i = add i32 %add.i.i30, 9
  %and65.i = and i32 %add64.i, 1048575
  %add66.i = or i32 %and65.i, -18874368
  %24 = inttoptr i32 %add66.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %add74.i = add i32 %add.i.i30, 10
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %25 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i27, i32 noundef %call3.i31) #6
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i, align 4
  %arrayidx.i33 = getelementptr [2 x %struct.pcmuio_asic], ptr %27, i32 0, i32 %asic.069
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  %add.i.i36 = add i32 %29, %mul.i.i
  %call3.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i38 = add i32 %add.i.i36, 7
  %and46.i39 = and i32 %add45.i38, 1048575
  %add47.i40 = or i32 %and46.i39, -18874368
  %30 = inttoptr i32 %add47.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 -128) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add54.i41 = add i32 %add.i.i36, 8
  %and55.i42 = and i32 %add54.i41, 1048575
  %add56.i43 = or i32 %and55.i42, -18874368
  %31 = inttoptr i32 %add56.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add64.i44 = add i32 %add.i.i36, 9
  %and65.i45 = and i32 %add64.i44, 1048575
  %add66.i46 = or i32 %and65.i45, -18874368
  %32 = inttoptr i32 %add66.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %add74.i47 = add i32 %add.i.i36, 10
  %and75.i48 = and i32 %add74.i47, 1048575
  %add76.i49 = or i32 %and75.i48, -18874368
  %33 = inttoptr i32 %add76.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i33, i32 noundef %call3.i37) #6
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  %arrayidx.i51 = getelementptr [2 x %struct.pcmuio_asic], ptr %35, i32 0, i32 %asic.069
  %36 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i.i, align 4
  %add.i.i54 = add i32 %37, %mul.i.i
  %call3.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i51) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i56 = add i32 %add.i.i54, 7
  %and46.i57 = and i32 %add45.i56, 1048575
  %add47.i58 = or i32 %and46.i57, -18874368
  %38 = inttoptr i32 %add47.i58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -64) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add54.i59 = add i32 %add.i.i54, 8
  %and55.i60 = and i32 %add54.i59, 1048575
  %add56.i61 = or i32 %and55.i60, -18874368
  %39 = inttoptr i32 %add56.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add64.i62 = add i32 %add.i.i54, 9
  %and65.i63 = and i32 %add64.i62, 1048575
  %add66.i64 = or i32 %and65.i63, -18874368
  %40 = inttoptr i32 %add66.i64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %add74.i65 = add i32 %add.i.i54, 10
  %and75.i66 = and i32 %add74.i65, 1048575
  %add76.i67 = or i32 %and75.i66, -18874368
  %41 = inttoptr i32 %add76.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i51, i32 noundef %call3.i55) #6
  %inc = add nuw nsw i32 %asic.069, 1
  %42 = ptrtoint ptr %num_asics to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_asics, align 4
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %irq1 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 20
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp = icmp eq i32 %3, %irq
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @pcmuio_handle_asic_interrupt(ptr noundef %d, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %irq2 = getelementptr inbounds %struct.pcmuio_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp2 = icmp eq i32 %5, %irq
  br i1 %cmp2, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @pcmuio_handle_asic_interrupt(ptr noundef %d, i32 noundef 1)
  %add5 = add i32 %call4, %handled.0
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %handled.1 = phi i32 [ %add5, %if.then3 ], [ %handled.0, %if.end.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 2
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 3
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_chan, align 4
  %notmask = shl nsw i32 -1, %4
  %sub = xor i32 %notmask, -1
  %call2 = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl i32 %div.i, 4
  %.pre26 = or i32 %cond.i, %.pre
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %neg, %sub
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %7 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %and, %8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.pcmuio_asic], ptr %10, i32 0, i32 %div.i
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i.i, align 4
  %mul.i.i = shl i32 %div.i, 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv11.i = trunc i32 %and3 to i8
  %add.i.i = or i32 %cond.i, %mul.i.i
  %add13.i = add i32 %add.i.i, %12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %13 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv11.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %and3, 8
  %conv21.i = trunc i32 %shr.i to i8
  %add24.i = add i32 %add13.i, 1
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %14 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv21.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %shr31.i = lshr i32 %and3, 16
  %conv33.i = trunc i32 %shr31.i to i8
  %add36.i = add i32 %add13.i, 2
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %15 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv33.i) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.i.i24.pre-phi = phi i32 [ %.pre26, %entry.if.end_crit_edge ], [ %add.i.i, %if.then ]
  %private.i20 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %private.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i20, align 4
  %arrayidx.i21 = getelementptr [2 x %struct.pcmuio_asic], ptr %17, i32 0, i32 %div.i
  %iobase.i.i22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %iobase.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i22, align 4
  %call3.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i21) #6
  %add9.i = add i32 %add.i.i24.pre-phi, %19
  %and.i = and i32 %add9.i, 1048575
  %add10.i = or i32 %and.i, -18874368
  %20 = inttoptr i32 %add10.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %conv14.i = zext i8 %21 to i32
  %add18.i = add i32 %add9.i, 1
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %22 = inttoptr i32 %add20.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %conv24.i = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv24.i, 8
  %or.i = or i32 %shl.i, %conv14.i
  %add28.i = add i32 %add9.i, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %24 = inttoptr i32 %add30.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %conv72.i = zext i8 %25 to i32
  %shl73.i = shl nuw nsw i32 %conv72.i, 16
  %or74.i = or i32 %shl73.i, %or.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i21, i32 noundef %call3.i25) #6
  %neg5 = xor i32 %or74.i, -1
  %and6 = and i32 %neg5, %sub
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and6, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 2
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 3
  %call2 = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %5 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_bits, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.pcmuio_asic], ptr %8, i32 0, i32 %div.i
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i.i, align 4
  %mul.i.i = shl i32 %div.i, 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv11.i = trunc i32 %6 to i8
  %add.i.i = or i32 %cond.i, %mul.i.i
  %add13.i = add i32 %add.i.i, %10
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %11 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv11.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %6, 8
  %conv21.i = trunc i32 %shr.i to i8
  %add24.i = add i32 %add13.i, 1
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %12 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv21.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %shr31.i = lshr i32 %6, 16
  %conv33.i = trunc i32 %shr31.i to i8
  %add36.i = add i32 %add13.i, 2
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %13 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv33.i) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.end4 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %3, 2
  %spinlock = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %active = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 3
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %div.i.i = sdiv i32 %8, 2
  %enabled_mask.i = getelementptr [2 x %struct.pcmuio_asic], ptr %6, i32 0, i32 %div.i.i, i32 2
  %9 = ptrtoint ptr %enabled_mask.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %enabled_mask.i, align 4
  %active.i = getelementptr [2 x %struct.pcmuio_asic], ptr %6, i32 0, i32 %div.i.i, i32 3
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %active.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %active.i, align 4
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %11 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async.i, align 4
  %inttrig.i = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %inttrig.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %inttrig.i, align 4
  %14 = load ptr, ptr %private, align 4
  %arrayidx.i.i = getelementptr [2 x %struct.pcmuio_asic], ptr %14, i32 0, i32 %div.i.i
  %iobase.i.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i.i, align 4
  %mul.i.i.i = shl i32 %div.i.i, 4
  %add.i.i.i = add i32 %16, %mul.i.i.i
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i.i = add i32 %add.i.i.i, 7
  %and46.i.i = and i32 %add45.i.i, 1048575
  %add47.i.i = or i32 %and46.i.i, -18874368
  %17 = inttoptr i32 %add47.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -128) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add54.i.i = add i32 %add.i.i.i, 8
  %and55.i.i = and i32 %add54.i.i, 1048575
  %add56.i.i = or i32 %and55.i.i, -18874368
  %18 = inttoptr i32 %add56.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add64.i.i = add i32 %add.i.i.i, 9
  %and65.i.i = and i32 %add64.i.i, 1048575
  %add66.i.i = or i32 %and65.i.i, -18874368
  %19 = inttoptr i32 %add66.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %add74.i.i = add i32 %add.i.i.i, 10
  %and75.i.i = and i32 %add74.i.i, 1048575
  %add76.i.i = or i32 %and75.i.i, -18874368
  %20 = inttoptr i32 %add76.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call3.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %5, 2
  %spinlock = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %active = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 3
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %cmp7 = icmp eq i32 %8, 128
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pcmuio_inttrig_start_intr, ptr %inttrig, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pcmuio_start_intr(ptr noundef %dev, ptr noundef %s)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcmuio_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i66 = and i32 %3, 64
  store i32 %and.i66, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %cmp.i67 = icmp ne i32 %and.i66, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i66, i32 %3)
  %cmp1.not.i68 = icmp eq i32 %and.i66, %3
  %or.cond.i69 = and i1 %cmp.i67, %cmp1.not.i68
  %4 = select i1 %or.cond.i, i1 %or.cond.i69, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i71 = and i32 %6, 2
  store i32 %and.i71, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %cmp.i72 = icmp ne i32 %and.i71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i71, i32 %6)
  %cmp1.not.i73 = icmp eq i32 %and.i71, %6
  %or.cond.i74 = and i1 %cmp.i72, %cmp1.not.i73
  %7 = select i1 %4, i1 %or.cond.i74, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i76 = and i32 %9, 32
  store i32 %and.i76, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %9)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %9
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %10 = select i1 %7, i1 %or.cond.i79, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i81 = and i32 %12, 33
  store i32 %and.i81, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp.i82 = icmp ne i32 %and.i81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i81, i32 %12)
  %cmp1.not.i83 = icmp eq i32 %and.i81, %12
  %or.cond.i84 = and i1 %cmp.i82, %cmp1.not.i83
  %13 = select i1 %10, i1 %or.cond.i84, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #6, !range !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i86 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i86, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i88 = icmp eq i32 %18, 0
  br i1 %cmp.not.i88, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i89 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i90 = icmp eq i32 %21, 0
  br i1 %cmp.not.i90, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge, label %if.then.i91

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit93

if.then.i91:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit93

comedi_check_trigger_arg_is.exit93:               ; preds = %if.then.i91, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge
  %retval.0.i92 = phi i32 [ -22, %if.then.i91 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit93_crit_edge ]
  %or21 = or i32 %retval.0.i92, %retval.0.i89
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i94 = icmp eq i32 %24, 0
  br i1 %cmp.not.i94, label %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge, label %if.then.i95

comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit97

if.then.i95:                                      ; preds = %comedi_check_trigger_arg_is.exit93
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit97

comedi_check_trigger_arg_is.exit97:               ; preds = %if.then.i95, %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge
  %retval.0.i96 = phi i32 [ -22, %if.then.i95 ], [ 0, %comedi_check_trigger_arg_is.exit93.comedi_check_trigger_arg_is.exit97_crit_edge ]
  %or23 = or i32 %or21, %retval.0.i96
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i98 = icmp eq i32 %29, %27
  br i1 %cmp.not.i98, label %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge, label %if.then.i99

comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit101

if.then.i99:                                      ; preds = %comedi_check_trigger_arg_is.exit97
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit101

comedi_check_trigger_arg_is.exit101:              ; preds = %if.then.i99, %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge
  %retval.0.i100 = phi i32 [ -22, %if.then.i99 ], [ 0, %comedi_check_trigger_arg_is.exit97.comedi_check_trigger_arg_is.exit101_crit_edge ]
  %or25 = or i32 %or23, %retval.0.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i102 = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %comedi_check_trigger_arg_is.exit101
  br i1 %cmp.i102, label %if.then27.if.end33.sink.split_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27.if.end33.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit101
  br i1 %cmp.i102, label %if.else.if.end33_crit_edge, label %if.else.if.end33.sink.split_crit_edge

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.sink.split

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %if.then27.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then27.if.end33.sink.split_crit_edge ], [ 0, %if.else.if.end33.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %if.then27.if.end33_crit_edge
  %call28.pn = phi i32 [ 0, %if.then27.if.end33_crit_edge ], [ 0, %if.else.if.end33_crit_edge ], [ -22, %if.end33.sink.split ]
  %err.0 = or i32 %or25, %call28.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool34.not = icmp eq i32 %err.0, 0
  %. = select i1 %tobool34.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcmuio_handle_asic_interrupt(ptr noundef %dev, i32 noundef %asic) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdevices, align 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %mul.i = shl i32 %asic, 4
  %add.i = or i32 %mul.i, 6
  %add = add i32 %add.i, %3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %asic, 1
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %1, i32 %mul
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr [2 x %struct.pcmuio_asic], ptr %8, i32 0, i32 %asic
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %10, %mul.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %add43.i = add i32 %add.i.i, 7
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %11 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -64) #6, !srcloc !35
  %add48.i = add i32 %add.i.i, 8
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %12 = inttoptr i32 %add50.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %conv54.i = zext i8 %13 to i32
  %add56.i = add i32 %add.i.i, 9
  %and57.i = and i32 %add56.i, 1048575
  %add58.i = or i32 %and57.i, -18874368
  %14 = inttoptr i32 %add58.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv62.i = zext i8 %15 to i32
  %shl63.i = shl nuw nsw i32 %conv62.i, 8
  %or64.i = or i32 %shl63.i, %conv54.i
  %add66.i = add i32 %add.i.i, 10
  %and67.i = and i32 %add66.i, 1048575
  %add68.i = or i32 %and67.i, -18874368
  %16 = inttoptr i32 %add68.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %conv72.i = zext i8 %17 to i32
  %shl73.i = shl nuw nsw i32 %conv72.i, 16
  %or74.i = or i32 %shl73.i, %or64.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i) #6
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %arrayidx.i17 = getelementptr [2 x %struct.pcmuio_asic], ptr %19, i32 0, i32 %asic
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add.i.i20 = add i32 %21, %mul.i
  %call3.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i22 = add i32 %add.i.i20, 7
  %and46.i = and i32 %add45.i22, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %22 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 -64) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add54.i = add i32 %add.i.i20, 8
  %and55.i = and i32 %add54.i, 1048575
  %add56.i23 = or i32 %and55.i, -18874368
  %23 = inttoptr i32 %add56.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %add64.i = add i32 %add.i.i20, 9
  %and65.i = and i32 %add64.i, 1048575
  %add66.i24 = or i32 %and65.i, -18874368
  %24 = inttoptr i32 %add66.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %add74.i = add i32 %add.i.i20, 10
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %25 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i17, i32 noundef %call3.i21) #6
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i, align 4
  %index.i.i = getelementptr %struct.comedi_subdevice, ptr %1, i32 %mul, i32 1
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i, align 4
  %div.i.i = sdiv i32 %29, 2
  %async.i = getelementptr %struct.comedi_subdevice, ptr %1, i32 %mul, i32 7
  %30 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %async.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val.i, align 4
  %spinlock.i = getelementptr [2 x %struct.pcmuio_asic], ptr %27, i32 0, i32 %div.i.i, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  %active.i = getelementptr [2 x %struct.pcmuio_asic], ptr %27, i32 0, i32 %div.i.i, i32 3
  %33 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.pcmuio_handle_intr_subdev.exit_crit_edge, label %if.end.i

if.end.pcmuio_handle_intr_subdev.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmuio_handle_intr_subdev.exit

if.end.i:                                         ; preds = %if.end
  %enabled_mask.i = getelementptr [2 x %struct.pcmuio_asic], ptr %27, i32 0, i32 %div.i.i, i32 2
  %34 = ptrtoint ptr %enabled_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enabled_mask.i, align 4
  %and.i = and i32 %35, %or74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end.i.pcmuio_handle_intr_subdev.exit_crit_edge, label %for.cond.preheader.i

if.end.i.pcmuio_handle_intr_subdev.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmuio_handle_intr_subdev.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 17, i32 13
  %36 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1047.not.i = icmp eq i32 %37, 0
  br i1 %cmp1047.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 17, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end18.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chanlist.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %39, i32 %i.048.i
  %40 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %41, 65535
  %shl.i = shl nuw i32 1, %and13.i
  %and14.i = and i32 %shl.i, %or74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.body.i.if.end18.i_crit_edge, label %if.then16.i

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl17.i = shl nuw i32 1, %i.048.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %or.i = or i32 %43, %shl17.i
  store i32 %or.i, ptr %val.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %for.body.i.if.end18.i_crit_edge
  %inc.i = add nuw i32 %i.048.i, 1
  %44 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chanlist_len.i, align 4
  %cmp10.i = icmp ult i32 %inc.i, %45
  br i1 %cmp10.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.for.end.i_crit_edge

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end18.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call19.i = call i32 @comedi_buf_write_samples(ptr noundef %arrayidx, ptr noundef nonnull %val.i, i32 noundef 1) #6
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 17, i32 10
  %46 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %47)
  %cmp20.i = icmp eq i32 %47, 32
  br i1 %cmp20.i, label %land.lhs.true.i, label %for.end.i.pcmuio_handle_intr_subdev.exit_crit_edge

for.end.i.pcmuio_handle_intr_subdev.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmuio_handle_intr_subdev.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %48 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %async.i, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 17, i32 11
  %52 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp23.not.i = icmp ult i32 %51, %53
  br i1 %cmp23.not.i, label %land.lhs.true.i.pcmuio_handle_intr_subdev.exit_crit_edge, label %if.then25.i

land.lhs.true.i.pcmuio_handle_intr_subdev.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmuio_handle_intr_subdev.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %49, i32 0, i32 16
  %54 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %events.i, align 4
  %or27.i = or i32 %55, 2
  store i32 %or27.i, ptr %events.i, align 4
  br label %pcmuio_handle_intr_subdev.exit

pcmuio_handle_intr_subdev.exit:                   ; preds = %if.then25.i, %land.lhs.true.i.pcmuio_handle_intr_subdev.exit_crit_edge, %for.end.i.pcmuio_handle_intr_subdev.exit_crit_edge, %if.end.i.pcmuio_handle_intr_subdev.exit_crit_edge, %if.end.pcmuio_handle_intr_subdev.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call4.i) #6
  %call30.i = call i32 @comedi_handle_events(ptr noundef %dev, ptr noundef %arrayidx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pcmuio_handle_intr_subdev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %pcmuio_handle_intr_subdev.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmuio_inttrig_start_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %5, 2
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %spinlock = getelementptr [2 x %struct.pcmuio_asic], ptr %7, i32 0, i32 %div.i, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %inttrig, align 4
  %active = getelementptr [2 x %struct.pcmuio_asic], ptr %7, i32 0, i32 %div.i, i32 3
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body2.if.end10_crit_edge, label %if.then9

do.body2.if.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pcmuio_start_intr(ptr noundef %dev, ptr noundef %s)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body2.if.end10_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmuio_start_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %3, 2
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %enabled_mask = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 2
  %6 = ptrtoint ptr %enabled_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %enabled_mask, align 4
  %active = getelementptr [2 x %struct.pcmuio_asic], ptr %1, i32 0, i32 %div.i, i32 3
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %10 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp56.not = icmp eq i32 %11, 0
  br i1 %cmp56.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pol_bits.058 = phi i32 [ %or10, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bits.057 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %9, i32 %i.059
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %13, 65535
  %shl = shl nuw i32 1, %and
  %or = or i32 %shl, %bits.057
  %14 = and i32 %13, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp ne i32 %14, 0
  %cond = zext i1 %15 to i32
  %shl9 = shl nuw i32 %cond, %and
  %or10 = or i32 %shl9, %pol_bits.058
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %bits.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %or, %for.body.if.end_crit_edge ]
  %pol_bits.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %or10, %for.body.if.end_crit_edge ]
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %16 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_chan, align 4
  %notmask = shl nsw i32 -1, %17
  %sub = xor i32 %notmask, -1
  %and12 = and i32 %bits.1, %sub
  %18 = ptrtoint ptr %enabled_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and12, ptr %enabled_mask, align 4
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr [2 x %struct.pcmuio_asic], ptr %20, i32 0, i32 %div.i
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i, align 4
  %mul.i.i = shl i32 %div.i, 4
  %add.i.i = add i32 %22, %mul.i.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i = add i32 %add.i.i, 7
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %23 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 64) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %conv53.i = trunc i32 %pol_bits.1 to i8
  %add54.i = add i32 %add.i.i, 8
  %and55.i = and i32 %add54.i, 1048575
  %add56.i = or i32 %and55.i, -18874368
  %24 = inttoptr i32 %add56.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv53.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %shr61.i = lshr i32 %pol_bits.1, 8
  %conv63.i = trunc i32 %shr61.i to i8
  %add64.i = add i32 %add.i.i, 9
  %and65.i = and i32 %add64.i, 1048575
  %add66.i = or i32 %and65.i, -18874368
  %25 = inttoptr i32 %add66.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv63.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %shr71.i = lshr i32 %pol_bits.1, 16
  %conv73.i = trunc i32 %shr71.i to i8
  %add74.i = add i32 %add.i.i, 10
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %26 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv73.i) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i) #6
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private, align 4
  %arrayidx.i34 = getelementptr [2 x %struct.pcmuio_asic], ptr %28, i32 0, i32 %div.i
  %29 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i.i, align 4
  %add.i.i37 = add i32 %30, %mul.i.i
  %call3.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i39 = add i32 %add.i.i37, 7
  %and46.i40 = and i32 %add45.i39, 1048575
  %add47.i41 = or i32 %and46.i40, -18874368
  %31 = inttoptr i32 %add47.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 -128) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %conv53.i42 = trunc i32 %and12 to i8
  %add54.i43 = add i32 %add.i.i37, 8
  %and55.i44 = and i32 %add54.i43, 1048575
  %add56.i45 = or i32 %and55.i44, -18874368
  %32 = inttoptr i32 %add56.i45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv53.i42) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %shr61.i46 = lshr i32 %and12, 8
  %conv63.i47 = trunc i32 %shr61.i46 to i8
  %add64.i48 = add i32 %add.i.i37, 9
  %and65.i49 = and i32 %add64.i48, 1048575
  %add66.i50 = or i32 %and65.i49, -18874368
  %33 = inttoptr i32 %add66.i50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv63.i47) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %shr71.i51 = lshr i32 %and12, 16
  %conv73.i52 = trunc i32 %shr71.i51 to i8
  %add74.i53 = add i32 %add.i.i37, 10
  %and75.i54 = and i32 %add74.i53, 1048575
  %add76.i55 = or i32 %and75.i54, -18874368
  %34 = inttoptr i32 %add76.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv73.i52) #6, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i34, i32 noundef %call3.i38) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_pcmuio__234_619_pcmuio_driver_init6, !1, !"__initcall__kmod_pcmuio__234_619_pcmuio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 619, i32 1}
!2 = !{ptr @__exitcall_pcmuio_driver_exit, !1, !"__exitcall_pcmuio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 621, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 622, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 623, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 611, i32 17}
!12 = !{ptr @pcmuio_driver, !13, !"pcmuio_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 610, i32 29}
!14 = !{ptr @pcmuio_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 539, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pcmuio_attach.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 540, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 108, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 111, i32 12}
!24 = !{ptr @pcmuio_boards, !25, !"pcmuio_boards", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/pcmuio.c", i32 106, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 4632305}
!36 = !{i64 2154202642}
!37 = !{i64 2154203049}
!38 = !{i64 2154203819}
!39 = !{i64 2154204204}
!40 = !{i64 2154204590}
!41 = !{i64 4632700}
!42 = !{i64 2154205427}
!43 = !{i64 2154205770}
!44 = !{i64 2154206113}
!45 = !{i32 0, i32 33}
!46 = !{i64 2154208181}
!47 = !{i64 2154206376}
!48 = !{i64 2154206820}
!49 = !{i64 2154207142}
!50 = !{i64 2154207464}
