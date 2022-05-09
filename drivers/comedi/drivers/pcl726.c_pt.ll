; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl726.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl726.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl726_board = type { ptr, i32, i32, ptr, i32, i32, i8 }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.pcl726_private = type { [12 x ptr], i8 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_pcl726__234_420_pcl726_driver_init6 = internal global ptr @pcl726_driver_init, section ".initcall6.init", align 4
@pcl726_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl726_attach, ptr @comedi_legacy_detach, ptr null, i32 5, ptr @pcl726_boards, i32 28 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl726_driver_exit = internal global ptr @pcl726_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"pcl726.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [69 x i8] c"pcl726.description=Comedi driver for Advantech PCL-726 & compatibles\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"pcl726.file=drivers/comedi/drivers/pcl726\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"pcl726.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl726\00", [25 x i8] zeroinitializer }, align 32
@pcl726_boards = internal constant { [5 x %struct.pcl726_board], [52 x i8] } { [5 x %struct.pcl726_board] [%struct.pcl726_board { ptr @.str, i32 16, i32 0, ptr @rangelist_726, i32 6, i32 6, i8 -128 }, %struct.pcl726_board { ptr @.str.1, i32 32, i32 0, ptr @rangelist_727, i32 4, i32 12, i8 -64 }, %struct.pcl726_board { ptr @.str.2, i32 8, i32 0, ptr @rangelist_728, i32 6, i32 2, i8 0 }, %struct.pcl726_board { ptr @.str.3, i32 16, i32 38632, ptr @rangelist_726, i32 6, i32 6, i8 -128 }, %struct.pcl726_board { ptr @.str.4, i32 8, i32 0, ptr @rangelist_728, i32 6, i32 2, i8 0 }], [52 x i8] zeroinitializer }, align 32
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@rangelist_726 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @range_unipolar5, ptr @range_unipolar10, ptr @range_bipolar5, ptr @range_bipolar10, ptr @range_4_20mA, ptr @range_unknown], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl727\00", [25 x i8] zeroinitializer }, align 32
@rangelist_727 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @range_unipolar5, ptr @range_unipolar10, ptr @range_bipolar5, ptr @range_4_20mA], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl728\00", [25 x i8] zeroinitializer }, align 32
@rangelist_728 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @range_unipolar5, ptr @range_unipolar10, ptr @range_bipolar5, ptr @range_bipolar10, ptr @range_4_20mA, ptr @range_0_20mA], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acl6126\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acl6128\00", [24 x i8] zeroinitializer }, align 32
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_4_20mA = external dso_local constant %struct.comedi_lrange, align 4
@range_0_20mA = external dso_local constant %struct.comedi_lrange, align 4
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"pcl726_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 411, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 412, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"pcl726_boards\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 103, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"rangelist_726\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 67, i32 42 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 112, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"rangelist_727\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 76, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 120, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"rangelist_728\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 83, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 126, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl726.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 134, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pcl726_driver_exit, ptr @__initcall__kmod_pcl726__234_420_pcl726_driver_init6, ptr @pcl726_driver_exit, ptr @pcl726_driver, ptr @.str, ptr @pcl726_boards, ptr @rangelist_726, ptr @.str.1, ptr @rangelist_727, ptr @.str.2, ptr @rangelist_728, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl726_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl726_boards to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rangelist_726 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rangelist_727 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rangelist_728 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl726_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl726_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl726_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
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
  %io_len = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %io_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_len, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 52) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end4.if.end19_crit_edge, label %land.lhs.true

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end4
  %irq_mask = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end19_crit_edge, label %if.then11

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then11:                                        ; preds = %land.lhs.true
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @pcl726_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then15, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then11.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %ao_num_ranges = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 4
  %ao_nchan = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 5
  %ao_ranges = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %if.end19
  %i.0166 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end31.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0166, 2
  %arrayidx22 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 %add
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %17 = ptrtoint ptr %ao_num_ranges to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ao_num_ranges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp23 = icmp ult i32 %16, %18
  br i1 %cmp23, label %land.lhs.true24, label %for.body.if.end31_crit_edge

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true24:                                  ; preds = %for.body
  %19 = ptrtoint ptr %ao_nchan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ao_nchan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0166, i32 %20)
  %cmp25 = icmp slt i32 %i.0166, %20
  br i1 %cmp25, label %if.then26, label %land.lhs.true24.if.end31_crit_edge

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ao_ranges to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ao_ranges, align 4
  %arrayidx27 = getelementptr ptr, ptr %22, i32 %16
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx27, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %land.lhs.true24.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %range_unknown.sink = phi ptr [ %24, %if.then26 ], [ @range_unknown, %land.lhs.true24.if.end31_crit_edge ], [ @range_unknown, %for.body.if.end31_crit_edge ]
  %arrayidx30 = getelementptr [12 x ptr], ptr %call1, i32 0, i32 %i.0166
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %range_unknown.sink, ptr %arrayidx30, align 4
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end31
  %have_dio = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %have_dio to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %have_dio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool32.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool32.not, i32 1, i32 3
  %irq33 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %27 = ptrtoint ptr %irq33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not = icmp ne i32 %28, 0
  %inc36 = zext i1 %tobool34.not to i32
  %spec.select = add nuw nsw i32 %cond, %inc36
  %call38 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %for.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %29 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 4
  %32 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1179648, ptr %subdev_flags, align 4
  %33 = ptrtoint ptr %ao_nchan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ao_nchan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 13
  %36 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4095, ptr %maxdata, align 4
  %range_table_list = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 16
  %37 = ptrtoint ptr %range_table_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1, ptr %range_table_list, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %30, i32 0, i32 19
  %38 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pcl726_ao_insn_write, ptr %insn_write, align 4
  %call46 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %39 = ptrtoint ptr %have_dio to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load51 = load i8, ptr %have_dio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load51)
  %tobool54.not = icmp sgt i8 %bf.load51, -1
  br i1 %tobool54.not, label %if.end49.if.end72_crit_edge, label %if.then55

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subdevices, align 4
  %type59 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 2
  %42 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %type59, align 4
  %subdev_flags60 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 4
  %43 = ptrtoint ptr %subdev_flags60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 65536, ptr %subdev_flags60, align 4
  %n_chan61 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 3
  %44 = ptrtoint ptr %n_chan61 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %n_chan61, align 4
  %maxdata62 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 13
  %45 = ptrtoint ptr %maxdata62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %maxdata62, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 20
  %46 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @pcl726_di_insn_bits, ptr %insn_bits, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 15
  %47 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %48 = load ptr, ptr %subdevices, align 4
  %type66 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 2
  %49 = ptrtoint ptr %type66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %type66, align 4
  %subdev_flags67 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 4
  %50 = ptrtoint ptr %subdev_flags67 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 131072, ptr %subdev_flags67, align 4
  %n_chan68 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 3
  %51 = ptrtoint ptr %n_chan68 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %n_chan68, align 4
  %maxdata69 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 13
  %52 = ptrtoint ptr %maxdata69 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %maxdata69, align 4
  %insn_bits70 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 20
  %53 = ptrtoint ptr %insn_bits70 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pcl726_do_insn_bits, ptr %insn_bits70, align 4
  %range_table71 = getelementptr %struct.comedi_subdevice, ptr %48, i32 2, i32 15
  %54 = ptrtoint ptr %range_table71 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @range_unipolar5, ptr %range_table71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then55, %if.end49.if.end72_crit_edge
  %subdev.1 = phi i32 [ 3, %if.then55 ], [ 1, %if.end49.if.end72_crit_edge ]
  %55 = ptrtoint ptr %irq33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool74.not = icmp eq i32 %56, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.then75

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %subdevices, align 4
  %arrayidx78 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %59 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx78, ptr %read_subdev, align 4
  %type79 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 2
  %60 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %type79, align 4
  %subdev_flags80 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 4
  %61 = ptrtoint ptr %subdev_flags80 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 98304, ptr %subdev_flags80, align 4
  %n_chan81 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 3
  %62 = ptrtoint ptr %n_chan81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %n_chan81, align 4
  %maxdata82 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 13
  %63 = ptrtoint ptr %maxdata82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %maxdata82, align 4
  %range_table83 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 15
  %64 = ptrtoint ptr %range_table83 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @range_unipolar5, ptr %range_table83, align 4
  %insn_bits84 = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 20
  %65 = ptrtoint ptr %insn_bits84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @pcl726_intr_insn_bits, ptr %insn_bits84, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 5
  %66 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 23
  %67 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pcl726_intr_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 22
  %68 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @pcl726_intr_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %58, i32 %subdev.1, i32 25
  %69 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @pcl726_intr_cancel, ptr %cancel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end72.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call38, %for.end.cleanup_crit_edge ], [ %call46, %if.end41.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmd_running = getelementptr inbounds %struct.pcl726_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %3 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %val, align 2
  %bf.clear.i = and i8 %bf.load, 127
  %6 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.clear.i, ptr %cmd_running, align 4
  %call1 = call i32 @comedi_buf_write_samples(ptr noundef %4, ptr noundef nonnull %val, i32 noundef 1) #6
  %call2 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp38.not = icmp eq i32 %3, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %range_table_list.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 16
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 1
  %add18 = or i32 %mul, 1
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.039
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx3, align 4
  %9 = ptrtoint ptr %range_table_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %range_table_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %and
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.comedi_lrange, ptr %12, i32 0, i32 1, i32 %and2
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp slt i32 %14, 0
  br i1 %cmp.i, label %if.then, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %16, %5
  %shr.i = lshr i32 %16, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then ], [ %5, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %shr5 = lshr i32 %val.0, 8
  %conv = trunc i32 %shr5 to i8
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add7 = add i32 %18, %mul
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %19 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %conv15 = trunc i32 %val.0 to i8
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add19 = add i32 %add18, %21
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %22 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv15) #6, !srcloc !40
  %inc = add nuw i32 %i.039, 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %24, %do.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %is_pcl727 = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_pcl727 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_pcl727, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %iobase13 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase13, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %8 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase13, align 4
  %and6 = and i32 %9, 1048575
  %add7 = or i32 %and6, -18874368
  %10 = inttoptr i32 %add7 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add14 = add i32 %5, 15
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %12 = inttoptr i32 %add16 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %14 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase13, align 4
  %add23 = add i32 %15, 14
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %16 = inttoptr i32 %add25 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %17, %if.else ], [ %11, %if.then ]
  %conv20.sink.in = phi i8 [ %13, %if.else ], [ %7, %if.then ]
  %conv20.sink = zext i8 %conv20.sink.in to i32
  %conv29 = zext i8 %.sink to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv20.sink
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or31, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl726_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %if.then

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then:                                          ; preds = %entry
  %is_pcl727 = getelementptr inbounds %struct.pcl726_board, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %is_pcl727 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_pcl727, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %and22 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  br i1 %tobool23.not, label %if.then2.if.end_crit_edge, label %do.body

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %conv = trunc i32 %7 to i8
  %add = add i32 %3, 25
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #6, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then2.if.end_crit_edge
  %and9 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end51_crit_edge, label %do.body12

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %state15 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %9 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state15, align 4
  %shr = lshr i32 %10, 8
  %conv16 = trunc i32 %shr to i8
  %add17 = add i32 %3, 24
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %11 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv16) #6, !srcloc !40
  br label %if.end51

if.else:                                          ; preds = %if.then
  br i1 %tobool23.not, label %if.else.if.end35_crit_edge, label %do.body25

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %state28 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %12 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state28, align 4
  %conv30 = trunc i32 %13 to i8
  %add31 = add i32 %3, 13
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %14 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv30) #6, !srcloc !40
  br label %if.end35

if.end35:                                         ; preds = %do.body25, %if.else.if.end35_crit_edge
  %and36 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end51_crit_edge, label %do.body39

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %state42 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %15 = ptrtoint ptr %state42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state42, align 4
  %shr43 = lshr i32 %16, 8
  %conv44 = trunc i32 %shr43 to i8
  %add45 = add i32 %3, 12
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %17 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv44) #6, !srcloc !40
  br label %if.end51

if.end51:                                         ; preds = %do.body39, %if.end35.if.end51_crit_edge, %do.body12, %if.end.if.end51_crit_edge, %entry.if.end51_crit_edge
  %state52 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %18 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state52, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcl726_intr_insn_bits(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcl726_intr_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
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
  %and.i43 = and i32 %3, 64
  store i32 %and.i43, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i44 = icmp ne i32 %and.i43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %3)
  %cmp1.not.i45 = icmp eq i32 %and.i43, %3
  %or.cond.i46 = and i1 %cmp.i44, %cmp1.not.i45
  %4 = select i1 %or.cond.i, i1 %or.cond.i46, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i48 = and i32 %6, 4
  store i32 %and.i48, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %6)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %6
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %7 = select i1 %4, i1 %or.cond.i51, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i53 = and i32 %9, 32
  store i32 %and.i53, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %9)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %9
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %10 = select i1 %7, i1 %or.cond.i56, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i58 = and i32 %12, 1
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i64 = icmp eq i32 %19, 0
  br i1 %cmp.not.i64, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge, label %if.then.i65

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit67

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit67

comedi_check_trigger_arg_is.exit67:               ; preds = %if.then.i65, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i63
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i68 = icmp eq i32 %22, 0
  br i1 %cmp.not.i68, label %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge, label %if.then.i69

comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit71

if.then.i69:                                      ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit71

comedi_check_trigger_arg_is.exit71:               ; preds = %if.then.i69, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge
  %retval.0.i70 = phi i32 [ -22, %if.then.i69 ], [ 0, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i70
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i72 = icmp eq i32 %27, %25
  br i1 %cmp.not.i72, label %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge, label %if.then.i73

comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit75

if.then.i73:                                      ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit75

comedi_check_trigger_arg_is.exit75:               ; preds = %if.then.i73, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge
  %retval.0.i74 = phi i32 [ -22, %if.then.i73 ], [ 0, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i74
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i76 = icmp eq i32 %30, 0
  br i1 %cmp.not.i76, label %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge, label %if.then.i77

comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit79

if.then.i77:                                      ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit79

comedi_check_trigger_arg_is.exit79:               ; preds = %if.then.i77, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -22, %if.then.i77 ], [ 0, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcl726_intr_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmd_running = getelementptr inbounds %struct.pcl726_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %cmd_running, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %cmd_running, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcl726_intr_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmd_running = getelementptr inbounds %struct.pcl726_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %cmd_running, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %cmd_running, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_pcl726__234_420_pcl726_driver_init6, !1, !"__initcall__kmod_pcl726__234_420_pcl726_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl726.c", i32 420, i32 1}
!2 = !{ptr @__exitcall_pcl726_driver_exit, !1, !"__exitcall_pcl726_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl726.c", i32 422, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl726.c", i32 423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl726.c", i32 424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl726.c", i32 412, i32 17}
!12 = !{ptr @pcl726_driver, !13, !"pcl726_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl726.c", i32 411, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl726.c", i32 112, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/pcl726.c", i32 120, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/pcl726.c", i32 126, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/pcl726.c", i32 134, i32 12}
!22 = !{ptr @pcl726_boards, !23, !"pcl726_boards", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcl726.c", i32 103, i32 34}
!24 = !{ptr @rangelist_726, !25, !"rangelist_726", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/pcl726.c", i32 67, i32 42}
!26 = !{ptr @rangelist_727, !27, !"rangelist_727", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/pcl726.c", i32 76, i32 42}
!28 = !{ptr @rangelist_728, !29, !"rangelist_728", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/pcl726.c", i32 83, i32 42}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154195588}
!40 = !{i64 4624421}
!41 = !{i64 2154196003}
!42 = !{i64 4624816}
!43 = !{i64 2154196451}
!44 = !{i64 2154196753}
!45 = !{i64 2154197055}
!46 = !{i64 2154197357}
!47 = !{i64 2154197584}
!48 = !{i64 2154197929}
!49 = !{i64 2154198274}
!50 = !{i64 2154198619}
