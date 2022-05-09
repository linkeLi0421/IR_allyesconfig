; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl730.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl730.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl730_board = type { ptr, i32, i8, i32, i32, i32, i32 }
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

@__initcall__kmod_pcl730__229_346_pcl730_driver_init6 = internal global ptr @pcl730_driver_init, section ".initcall6.init", align 4
@pcl730_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl730_attach, ptr @comedi_legacy_detach, ptr null, i32 13, ptr @pcl730_boards, i32 28 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl730_driver_exit = internal global ptr @pcl730_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [44 x i8] c"pcl730.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [43 x i8] c"pcl730.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [42 x i8] c"pcl730.file=drivers/comedi/drivers/pcl730\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [19 x i8] c"pcl730.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl730\00", [25 x i8] zeroinitializer }, align 32
@pcl730_boards = internal constant { [13 x %struct.pcl730_board], [84 x i8] } { [13 x %struct.pcl730_board] [%struct.pcl730_board { ptr @.str, i32 4, i8 8, i32 4, i32 16, i32 16, i32 16 }, %struct.pcl730_board { ptr @.str.1, i32 4, i8 0, i32 4, i32 16, i32 16, i32 16 }, %struct.pcl730_board { ptr @.str.2, i32 8, i8 8, i32 4, i32 16, i32 16, i32 16 }, %struct.pcl730_board { ptr @.str.3, i32 4, i8 8, i32 4, i32 8, i32 8, i32 16 }, %struct.pcl730_board { ptr @.str.4, i32 2, i8 -128, i32 2, i32 8, i32 8, i32 0 }, %struct.pcl730_board { ptr @.str.5, i32 2, i8 -112, i32 2, i32 8, i32 8, i32 0 }, %struct.pcl730_board { ptr @.str.6, i32 8, i8 80, i32 2, i32 16, i32 16, i32 0 }, %struct.pcl730_board { ptr @.str.7, i32 4, i8 80, i32 2, i32 16, i32 16, i32 0 }, %struct.pcl730_board { ptr @.str.8, i32 4, i8 0, i32 1, i32 0, i32 32, i32 0 }, %struct.pcl730_board { ptr @.str.9, i32 4, i8 0, i32 1, i32 32, i32 0, i32 0 }, %struct.pcl730_board { ptr @.str.10, i32 16, i8 80, i32 2, i32 16, i32 16, i32 0 }, %struct.pcl730_board { ptr @.str.11, i32 2, i8 0, i32 1, i32 16, i32 0, i32 0 }, %struct.pcl730_board { ptr @.str.12, i32 8, i8 48, i32 0, i32 20, i32 20, i32 0 }], [84 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iso730\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acl7130\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm3730\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl725\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p8r8dio\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acl7225b\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p16r16dio\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl733\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl734\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"opmm-1616-xt\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pearl-mm-p\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ir104-pbf\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"pcl730_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 337, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 338, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"pcl730_boards\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 116, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 126, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 133, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 141, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 149, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 156, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 164, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 172, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 180, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 185, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 190, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 198, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl730.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 203, i32 12 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_pcl730_driver_exit, ptr @__initcall__kmod_pcl730__229_346_pcl730_driver_init6, ptr @pcl730_driver_exit, ptr @pcl730_driver, ptr @.str, ptr @pcl730_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl730_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl730_boards to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl730_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl730_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl730_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl730_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl730_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %io_range = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %io_range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_range, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_subdevs = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %n_subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_subdevs, align 4
  %call1 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %n_iso_out_chan = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %n_iso_out_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_iso_out_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131072, ptr %subdev_flags, align 4
  %14 = ptrtoint ptr %n_iso_out_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_iso_out_chan, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 13
  %17 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 15
  %18 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 20
  %19 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pcl730_do_insn_bits, ptr %insn_bits, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %private, align 4
  %has_readback = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %has_readback to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %has_readback, align 4
  %22 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not = icmp eq i8 %22, 0
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call fastcc i32 @pcl730_get_bits(ptr noundef %dev, ptr noundef %11)
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 29
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call11, ptr %state, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %subdev.0 = phi i32 [ 1, %if.then10 ], [ 1, %if.then6.if.end13_crit_edge ], [ 0, %if.end4.if.end13_crit_edge ]
  %n_iso_in_chan = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %n_iso_in_chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_iso_in_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %if.end13.if.end46_crit_edge, label %if.then15

if.end13.if.end46_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then15:                                        ; preds = %if.end13
  %subdevices16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %subdevices16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdevices16, align 4
  %inc17 = add nuw nsw i32 %subdev.0, 1
  %type19 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 2
  %28 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %type19, align 4
  %subdev_flags20 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 4
  %29 = ptrtoint ptr %subdev_flags20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65536, ptr %subdev_flags20, align 4
  %30 = ptrtoint ptr %n_iso_in_chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_iso_in_chan, align 4
  %n_chan22 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 3
  %32 = ptrtoint ptr %n_chan22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %n_chan22, align 4
  %maxdata23 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 13
  %33 = ptrtoint ptr %maxdata23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %maxdata23, align 4
  %range_table24 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 15
  %34 = ptrtoint ptr %range_table24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @range_unipolar5, ptr %range_table24, align 4
  %insn_bits25 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 20
  %35 = ptrtoint ptr %insn_bits25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pcl730_di_insn_bits, ptr %insn_bits25, align 4
  %is_ir104 = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %is_ir104 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load26 = load i8, ptr %is_ir104, align 4
  %37 = and i8 %bf.load26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool30.not = icmp eq i8 %37, 0
  br i1 %tobool30.not, label %cond.false, label %if.then15.cond.end43_crit_edge

if.then15.cond.end43_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end43

cond.false:                                       ; preds = %if.then15
  %38 = and i8 %bf.load26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool35.not = icmp eq i8 %38, 0
  br i1 %tobool35.not, label %cond.false37, label %cond.false.cond.end43_crit_edge

cond.false.cond.end43_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end43

cond.false37:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load26)
  %tobool41.not = icmp sgt i8 %bf.load26, -1
  %cond = select i1 %tobool41.not, ptr null, ptr inttoptr (i32 1 to ptr)
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false37, %cond.false.cond.end43_crit_edge, %if.then15.cond.end43_crit_edge
  %cond44 = phi ptr [ inttoptr (i32 4 to ptr), %if.then15.cond.end43_crit_edge ], [ %cond, %cond.false37 ], [ inttoptr (i32 2 to ptr), %cond.false.cond.end43_crit_edge ]
  %private45 = getelementptr %struct.comedi_subdevice, ptr %27, i32 %subdev.0, i32 6
  %39 = ptrtoint ptr %private45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cond44, ptr %private45, align 4
  br label %if.end46

if.end46:                                         ; preds = %cond.end43, %if.end13.if.end46_crit_edge
  %subdev.1 = phi i32 [ %inc17, %cond.end43 ], [ %subdev.0, %if.end13.if.end46_crit_edge ]
  %has_ttl_io = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %has_ttl_io to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load47 = load i8, ptr %has_ttl_io, align 4
  %41 = and i8 %bf.load47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool51.not = icmp eq i8 %41, 0
  br i1 %tobool51.not, label %if.end46.cleanup_crit_edge, label %if.then52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  %subdevices53 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %42 = ptrtoint ptr %subdevices53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdevices53, align 4
  %inc54 = add nuw nsw i32 %subdev.1, 1
  %type56 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 2
  %44 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 4
  %45 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 131072, ptr %subdev_flags57, align 4
  %n_ttl_chan = getelementptr inbounds %struct.pcl730_board, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %n_ttl_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_ttl_chan, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 3
  %48 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 13
  %49 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %maxdata59, align 4
  %range_table60 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 15
  %50 = ptrtoint ptr %range_table60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @range_unipolar5, ptr %range_table60, align 4
  %insn_bits61 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 20
  %51 = ptrtoint ptr %insn_bits61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pcl730_do_insn_bits, ptr %insn_bits61, align 4
  %private62 = getelementptr %struct.comedi_subdevice, ptr %43, i32 %subdev.1, i32 6
  %52 = ptrtoint ptr %private62 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 2 to ptr), ptr %private62, align 4
  %53 = load ptr, ptr %subdevices53, align 4
  %type66 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 2
  %54 = ptrtoint ptr %type66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %type66, align 4
  %subdev_flags67 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 4
  %55 = ptrtoint ptr %subdev_flags67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 65536, ptr %subdev_flags67, align 4
  %56 = load i32, ptr %n_ttl_chan, align 4
  %n_chan69 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 3
  %57 = ptrtoint ptr %n_chan69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %n_chan69, align 4
  %maxdata70 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 13
  %58 = ptrtoint ptr %maxdata70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %maxdata70, align 4
  %range_table71 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 15
  %59 = ptrtoint ptr %range_table71 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @range_unipolar5, ptr %range_table71, align 4
  %insn_bits72 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 20
  %60 = ptrtoint ptr %insn_bits72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @pcl730_di_insn_bits, ptr %insn_bits72, align 4
  %private73 = getelementptr %struct.comedi_subdevice, ptr %53, i32 %inc54, i32 6
  %61 = ptrtoint ptr %private73 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 2 to ptr), ptr %private73, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end46.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl730_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end66_crit_edge, label %if.then

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %conv = trunc i32 %4 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, %2
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #3, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and7 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp sgt i32 %9, 8
  br i1 %cmp, label %do.body11, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

do.body11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %state14 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state14, align 4
  %shr = lshr i32 %11, 8
  %conv16 = trunc i32 %shr to i8
  %iobase17 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase17, align 4
  %add18 = add i32 %2, 1
  %add19 = add i32 %add18, %13
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %14 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv16) #3, !srcloc !50
  br label %if.end23

if.end23:                                         ; preds = %do.body11, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %and24 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end44_crit_edge, label %land.lhs.true26

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

land.lhs.true26:                                  ; preds = %if.end23
  %n_chan27 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %15 = ptrtoint ptr %n_chan27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_chan27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp28 = icmp sgt i32 %16, 16
  br i1 %cmp28, label %do.body31, label %land.lhs.true26.if.end44_crit_edge

land.lhs.true26.if.end44_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

do.body31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %state34 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %17 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state34, align 4
  %shr35 = lshr i32 %18, 16
  %conv37 = trunc i32 %shr35 to i8
  %iobase38 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %iobase38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase38, align 4
  %add39 = add i32 %2, 2
  %add40 = add i32 %add39, %20
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %21 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv37) #3, !srcloc !50
  br label %if.end44

if.end44:                                         ; preds = %do.body31, %land.lhs.true26.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call)
  %tobool46.not = icmp ult i32 %call, 16777216
  br i1 %tobool46.not, label %if.end44.if.end66_crit_edge, label %land.lhs.true47

if.end44.if.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

land.lhs.true47:                                  ; preds = %if.end44
  %n_chan48 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %22 = ptrtoint ptr %n_chan48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_chan48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %23)
  %cmp49 = icmp sgt i32 %23, 24
  br i1 %cmp49, label %do.body52, label %land.lhs.true47.if.end66_crit_edge

land.lhs.true47.if.end66_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

do.body52:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %state55 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %24 = ptrtoint ptr %state55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state55, align 4
  %shr56 = lshr i32 %25, 24
  %conv58 = trunc i32 %shr56 to i8
  %iobase59 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %26 = ptrtoint ptr %iobase59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase59, align 4
  %add60 = add i32 %2, 3
  %add61 = add i32 %add60, %27
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %28 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv58) #3, !srcloc !50
  br label %if.end66

if.end66:                                         ; preds = %do.body52, %land.lhs.true47.if.end66_crit_edge, %if.end44.if.end66_crit_edge, %entry.if.end66_crit_edge
  %state67 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %29 = ptrtoint ptr %state67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state67, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcl730_get_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, %2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  %conv = zext i8 %6 to i32
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp sgt i32 %8, 8
  br i1 %cmp, label %if.end, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add6 = add i32 %2, 1
  %add7 = add i32 %add6, %10
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %11 = inttoptr i32 %add9 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %conv13 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv13, 8
  %or = or i32 %shl, %conv
  %13 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.pr)
  %cmp15 = icmp sgt i32 %.pr, 16
  br i1 %cmp15, label %if.end30, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.end30:                                         ; preds = %if.end
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add20 = add i32 %2, 2
  %add21 = add i32 %add20, %15
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %16 = inttoptr i32 %add23 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  %conv27 = zext i8 %17 to i32
  %shl28 = shl nuw nsw i32 %conv27, 16
  %or29 = or i32 %shl28, %or
  %18 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr62 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.pr62)
  %cmp32 = icmp sgt i32 %.pr62, 24
  br i1 %cmp32, label %if.then34, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add37 = add i32 %2, 3
  %add38 = add i32 %add37, %20
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %21 = inttoptr i32 %add40 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  %conv44 = zext i8 %22 to i32
  %shl45 = shl nuw i32 %conv44, 24
  %or46 = or i32 %shl45, %or29
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %if.end30.if.end47_crit_edge, %if.end.if.end47_crit_edge, %entry.if.end47_crit_edge
  %val.2 = phi i32 [ %or46, %if.then34 ], [ %or29, %if.end30.if.end47_crit_edge ], [ %or, %if.end.if.end47_crit_edge ], [ %conv, %entry.if.end47_crit_edge ]
  ret i32 %val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl730_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcl730_get_bits(ptr noundef %dev, ptr noundef %s)
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pcl730__229_346_pcl730_driver_init6, !1, !"__initcall__kmod_pcl730__229_346_pcl730_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl730.c", i32 346, i32 1}
!2 = !{ptr @__exitcall_pcl730_driver_exit, !1, !"__exitcall_pcl730_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl730.c", i32 348, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl730.c", i32 349, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl730.c", i32 350, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl730.c", i32 338, i32 17}
!12 = !{ptr @pcl730_driver, !13, !"pcl730_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl730.c", i32 337, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl730.c", i32 126, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/pcl730.c", i32 133, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/pcl730.c", i32 141, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/pcl730.c", i32 149, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcl730.c", i32 156, i32 12}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/pcl730.c", i32 164, i32 12}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/pcl730.c", i32 172, i32 12}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/pcl730.c", i32 180, i32 12}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/pcl730.c", i32 185, i32 12}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/pcl730.c", i32 190, i32 12}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/pcl730.c", i32 198, i32 12}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/pcl730.c", i32 203, i32 12}
!38 = !{ptr @pcl730_boards, !39, !"pcl730_boards", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/pcl730.c", i32 116, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2153908774}
!50 = !{i64 6265923}
!51 = !{i64 2153909141}
!52 = !{i64 2153909513}
!53 = !{i64 2153909885}
!54 = !{i64 6266318}
!55 = !{i64 2153910310}
!56 = !{i64 2153910613}
!57 = !{i64 2153910916}
!58 = !{i64 2153911219}
