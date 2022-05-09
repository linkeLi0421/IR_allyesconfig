; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_at_ao.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_at_ao.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.atao_board = type { ptr, i32 }
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
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.atao_private = type { i16, i16, [21 x i8] }

@__initcall__kmod_ni_at_ao__229_368_ni_at_ao_driver_init6 = internal global ptr @ni_at_ao_driver_init, section ".initcall6.init", align 4
@ni_at_ao_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @atao_attach, ptr @comedi_legacy_detach, ptr null, i32 2, ptr @atao_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_ni_at_ao_driver_exit = internal global ptr @ni_at_ao_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [46 x i8] c"ni_at_ao.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [60 x i8] c"ni_at_ao.description=Comedi driver for NI AT-AO-6/10 boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [46 x i8] c"ni_at_ao.file=drivers/comedi/drivers/ni_at_ao\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [21 x i8] c"ni_at_ao.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ni_at_ao\00", [23 x i8] zeroinitializer }, align 32
@atao_boards = internal constant { [2 x %struct.atao_board], [16 x i8] } { [2 x %struct.atao_board] [%struct.atao_board { ptr @.str.1, i32 6 }, %struct.atao_board { ptr @.str.2, i32 10 }], [16 x i8] zeroinitializer }, align 32
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"at-ao-6\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at-ao-10\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"ni_at_ao_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 359, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 360, i32 17 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"atao_boards\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 95, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 97, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [37 x i8] c"../drivers/comedi/drivers/ni_at_ao.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 100, i32 12 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ni_at_ao_driver_exit, ptr @__initcall__kmod_ni_at_ao__229_368_ni_at_ao_driver_init6, ptr @ni_at_ao_driver_exit, ptr @ni_at_ao_driver, ptr @.str, ptr @atao_boards, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_at_ao_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atao_boards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_at_ao_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @ni_at_ao_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_at_ao_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_driver_unregister(ptr noundef nonnull @ni_at_ao_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atao_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 26) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 6
  %call5 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %pacer, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %7 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 131072, ptr %subdev_flags, align 4
  %n_ao_chans = getelementptr inbounds %struct.atao_board, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %n_ao_chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ao_chans, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 13
  %14 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4095, ptr %maxdata, align 4
  %arrayidx16 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool17.not, ptr @range_bipolar10, ptr @range_unipolar10
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 15
  %17 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cond, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %8, i32 0, i32 19
  %18 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @atao_ao_insn_write, ptr %insn_write, align 4
  %call18 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %subdevices, align 4
  %type24 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 2
  %21 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %type24, align 4
  %subdev_flags25 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 4
  %22 = ptrtoint ptr %subdev_flags25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196608, ptr %subdev_flags25, align 4
  %n_chan26 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 3
  %23 = ptrtoint ptr %n_chan26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %n_chan26, align 4
  %maxdata27 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 13
  %24 = ptrtoint ptr %maxdata27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %maxdata27, align 4
  %range_table28 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 15
  %25 = ptrtoint ptr %range_table28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @range_unipolar5, ptr %range_table28, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 20
  %26 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @atao_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 21
  %27 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @atao_dio_insn_config, ptr %insn_config, align 4
  %28 = load ptr, ptr %subdevices, align 4
  %arrayidx30 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2
  %type31 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2, i32 2
  %29 = ptrtoint ptr %type31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 9, ptr %type31, align 4
  %subdev_flags32 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2, i32 4
  %30 = ptrtoint ptr %subdev_flags32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 393216, ptr %subdev_flags32, align 4
  %31 = ptrtoint ptr %n_ao_chans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_ao_chans, align 4
  %mul = shl i32 %32, 1
  %add34 = or i32 %mul, 1
  %n_chan35 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2, i32 3
  %33 = ptrtoint ptr %n_chan35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add34, ptr %n_chan35, align 4
  %maxdata36 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2, i32 13
  %34 = ptrtoint ptr %maxdata36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 255, ptr %maxdata36, align 4
  %insn_write37 = getelementptr %struct.comedi_subdevice, ptr %28, i32 2, i32 19
  %35 = ptrtoint ptr %insn_write37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @atao_calib_insn_write, ptr %insn_write37, align 4
  %call38 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subdevices, align 4
  %type44 = getelementptr %struct.comedi_subdevice, ptr %37, i32 3, i32 2
  %38 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %type44, align 4
  tail call fastcc void @atao_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call18, %if.end13.cleanup_crit_edge ], [ %call38, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atao_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %storemerge.i = or i16 %9, 128
  store i16 %storemerge.i, ptr %7, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %14, 10
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %15 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #4, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp132.not = icmp eq i32 %17, 0
  br i1 %cmp132.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %data, i32 %i.033
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %21, %19
  %shr.i = lshr i32 %21, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %conv = trunc i32 %xor2.i to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add3 = add i32 %add, %24
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %25 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #4, !srcloc !30
  %inc = add nuw i32 %i.033, 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %cmp1 = icmp ult i32 %inc, %27
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %if.end.for.end_crit_edge ], [ %19, %for.body.for.end_crit_edge ]
  %28 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readback, align 4
  %arrayidx8 = getelementptr i32, ptr %29, i32 %and
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val.0.lcssa, ptr %arrayidx8, align 4
  br i1 %cmp, label %if.then11, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %private.i27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %31 = ptrtoint ptr %private.i27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private.i27, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %35 = and i16 %34, -129
  store i16 %35, ptr %32, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %32, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #4
  %iobase.i28 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %39 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i28, align 4
  %add.i29 = add i32 %40, 10
  %and6.i30 = and i32 %add.i29, 1048575
  %add7.i31 = or i32 %and6.i30, -18874368
  %41 = inttoptr i32 %add7.i31 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #4, !srcloc !30
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end.if.end12_crit_edge
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n, align 4
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atao_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase3, align 4
  %and5 = and i32 %7, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #4, !srcloc !33
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %conv9 = zext i16 %10 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atao_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 15, i32 240
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cfg38 = getelementptr inbounds %struct.atao_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cfg38 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cfg38, align 2
  %8 = and i16 %7, -5
  %masksel = select i1 %tobool4.not, i16 0, i16 4
  %.sink = or i16 %8, %masksel
  store i16 %.sink, ptr %cfg38, align 2
  %9 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_bits, align 4
  %and14 = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cfg322 = getelementptr inbounds %struct.atao_private, ptr %1, i32 0, i32 1
  %11 = and i16 %.sink, -9
  %masksel46 = select i1 %tobool15.not, i16 0, i16 8
  %.sink45 = or i16 %11, %masksel46
  %12 = ptrtoint ptr %cfg322 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink45, ptr %cfg322, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %cfg327 = getelementptr inbounds %struct.atao_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cfg327 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cfg327, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 4
  %and28 = and i32 %add, 1048575
  %add29 = or i32 %and28, -18874368
  %18 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #4, !srcloc !30
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atao_calib_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %sub = add i32 %3, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and2 = shl i32 %1, 8
  %shl = and i32 %and2, 1792
  %or = or i32 %5, %shl
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %bit.052 = phi i32 [ 1024, %if.then ], [ %14, %for.body.for.body_crit_edge ]
  %and4 = and i32 %bit.052, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not.not = icmp eq i32 %and4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %6 = select i1 %tobool5.not.not, i16 0, i16 256
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 2
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %10 = select i1 %tobool5.not.not, i16 512, i16 768
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add14 = add i32 %12, 2
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %13 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #4, !srcloc !30
  %14 = lshr i32 %bit.052, 1
  %tobool3.not = icmp ult i32 %bit.052, 2
  br i1 %tobool3.not, label %do.body18, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %and.tr = trunc i32 %1 to i16
  %15 = shl i16 %and.tr, 11
  %16 = add i16 %15, 16384
  %conv24 = lshr exact i16 %16, 8
  %17 = and i16 %conv24, 192
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add26 = add i32 %19, 2
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %20 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add34 = add i32 %22, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %23 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 0) #4, !srcloc !30
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %24 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %readback, align 4
  %arrayidx38 = getelementptr i32, ptr %25, i32 %and
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %arrayidx38, align 4
  br label %if.end

if.end:                                           ; preds = %do.body18, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atao_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 10
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #4, !srcloc !30
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pacer, align 4
  %call3 = tail call i32 @comedi_8254_set_mode(ptr noundef %10, i32 noundef 0, i32 noundef 8) #4
  %11 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pacer, align 4
  %call5 = tail call i32 @comedi_8254_set_mode(ptr noundef %12, i32 noundef 1, i32 noundef 8) #4
  %13 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_write(ptr noundef %14, i32 noundef 0, i32 noundef 3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add11 = add i32 %16, 2
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %17 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 0) #4, !srcloc !30
  %cfg3 = getelementptr inbounds %struct.atao_private, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %cfg3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %cfg3, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cfg3, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add20 = add i32 %23, 4
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %24 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #4, !srcloc !30
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add25 = add i32 %26, 12
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %27 = inttoptr i32 %add27 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %storemerge.i = or i16 %32, 128
  store i16 %storemerge.i, ptr %30, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %30, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #4
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add.i = add i32 %37, 10
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %38 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add34 = add i32 %40, 2
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %41 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 0) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add42 = add i32 %43, 4
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %44 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 0) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase, align 4
  %and51 = and i32 %46, 1048575
  %add52 = or i32 %and51, -18874368
  %47 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 0) #4, !srcloc !30
  %48 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = and i16 %51, -129
  store i16 %52, ptr %49, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %49, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #4
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add.i71 = add i32 %57, 10
  %and6.i72 = and i32 %add.i71, 1048575
  %add7.i73 = or i32 %and6.i72, -18874368
  %58 = inttoptr i32 %add7.i73 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 %55) #4, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_set_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_ni_at_ao__229_368_ni_at_ao_driver_init6, !1, !"__initcall__kmod_ni_at_ao__229_368_ni_at_ao_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 368, i32 1}
!2 = !{ptr @__exitcall_ni_at_ao_driver_exit, !1, !"__exitcall_ni_at_ao_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 370, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 371, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 372, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 360, i32 17}
!12 = !{ptr @ni_at_ao_driver, !13, !"ni_at_ao_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 359, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 97, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 100, i32 12}
!18 = !{ptr @atao_boards, !19, !"atao_boards", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_at_ao.c", i32 95, i32 32}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2153914621}
!30 = !{i64 6266676}
!31 = !{i64 2153915215}
!32 = !{i64 2153915769}
!33 = !{i64 6266876}
!34 = !{i64 2153916688}
!35 = !{i64 2153917316}
!36 = !{i64 2153918007}
!37 = !{i64 2153918604}
!38 = !{i64 2153919204}
!39 = !{i64 2153919754}
!40 = !{i64 2153920258}
!41 = !{i64 2153920776}
!42 = !{i64 2153921280}
!43 = !{i64 2153922209}
!44 = !{i64 2153922467}
!45 = !{i64 2153922943}
!46 = !{i64 2153923419}
