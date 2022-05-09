; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adl_pci9111.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adl_pci9111.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.pci9111_private_data = type { i32, i32, i32, i32, [1024 x i16] }

@__initcall__kmod_adl_pci9111__240_742_adl_pci9111_driver_init6 = internal global ptr @adl_pci9111_driver_init, section ".initcall6.init", align 4
@adl_pci9111_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @pci9111_detach, ptr @pci9111_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@adl_pci9111_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci9111_pci_table, ptr @pci9111_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adl_pci9111_driver_exit = internal global ptr @adl_pci9111_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [49 x i8] c"adl_pci9111.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [48 x i8] c"adl_pci9111.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [52 x i8] c"adl_pci9111.file=drivers/comedi/drivers/adl_pci9111\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"adl_pci9111.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci9111\00", [20 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pci9111_interrupt.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci9111_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/adl_pci9111.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@pci9111_ai_range = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci9111_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"entries in chanlist must be consecutive channels,counting upwards from 0\0A\00", [54 x i8] zeroinitializer }, align 32
@pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"entries in chanlist must all have the same gain\0A\00", [47 x i8] zeroinitializer }, align 32
@pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"entries in chanlist must all have the same reference\0A\00", [42 x i8] zeroinitializer }, align 32
@pci9111_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5194, i32 37137, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"adl_pci9111_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 715, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"adl_pci9111_pci_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 736, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 716, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 490, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"pci9111_ai_range\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 96, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 214, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 220, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 226, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"pci9111_pci_table\00", align 1
@___asan_gen_.43 = private constant [40 x i8] c"../drivers/comedi/drivers/adl_pci9111.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 729, i32 35 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adl_pci9111_driver_exit, ptr @__initcall__kmod_adl_pci9111__240_742_adl_pci9111_driver_init6, ptr @adl_pci9111_driver_exit, ptr @adl_pci9111_driver, ptr @adl_pci9111_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pci9111_ai_range, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pci9111_pci_table], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci9111_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci9111_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9111_ai_range to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9111_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci9111_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adl_pci9111_driver, ptr noundef nonnull @adl_pci9111_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adl_pci9111_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adl_pci9111_driver, ptr noundef nonnull @adl_pci9111_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci9111_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.i.i = add i32 %5, 76
  %and.i.i = and i32 %add.i.i, 1048575
  %add21.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add21.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 27) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add.i = add i32 %8, 10
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #6, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 2064) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call1, align 4
  %arrayidx7 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %iobase, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.i.i = add i32 %9, 76
  %and.i.i = and i32 %add.i.i, 1048575
  %add21.i.i = or i32 %and.i.i, -18874368
  %10 = inttoptr i32 %add21.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 27) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add.i = add i32 %12, 10
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #6, !srcloc !45
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end5.if.end18_crit_edge, label %if.then11

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then11:                                        ; preds = %if.end5
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @pci9111_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %17, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then14, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add = add i32 %22, 64
  %call20 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 500, i32 noundef 2, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %23 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call20, ptr %pacer, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %24 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 4
  %27 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2162688, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 13
  %29 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 15
  %30 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pci9111_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 18
  %31 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @pci9111_ai_insn_read, ptr %insn_read, align 4
  %irq30 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %32 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool31.not = icmp eq i32 %33, 0
  br i1 %tobool31.not, label %if.end28.if.end35_crit_edge, label %if.then32

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %34 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %read_subdev, align 4
  %35 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %36, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %37 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 5
  %39 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 23
  %40 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pci9111_ai_do_cmd_test, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 22
  %41 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @pci9111_ai_do_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 25
  %42 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pci9111_ai_cancel, ptr %cancel, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 27
  %43 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pci9111_ai_munge, ptr %munge, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %44 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %subdevices, align 4
  %arrayidx37 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1
  %type38 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 2
  %46 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %type38, align 4
  %subdev_flags39 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 4
  %47 = ptrtoint ptr %subdev_flags39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2228224, ptr %subdev_flags39, align 4
  %n_chan40 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 3
  %48 = ptrtoint ptr %n_chan40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %n_chan40, align 4
  %maxdata41 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 13
  %49 = ptrtoint ptr %maxdata41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4095, ptr %maxdata41, align 4
  %len_chanlist42 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 5
  %50 = ptrtoint ptr %len_chanlist42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %len_chanlist42, align 4
  %range_table43 = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 15
  %51 = ptrtoint ptr %range_table43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @range_bipolar10, ptr %range_table43, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %45, i32 1, i32 19
  %52 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @pci9111_ao_insn_write, ptr %insn_write, align 4
  %call44 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %subdevices, align 4
  %type50 = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 2
  %55 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %type50, align 4
  %subdev_flags51 = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 4
  %56 = ptrtoint ptr %subdev_flags51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65536, ptr %subdev_flags51, align 4
  %n_chan52 = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 3
  %57 = ptrtoint ptr %n_chan52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16, ptr %n_chan52, align 4
  %maxdata53 = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 13
  %58 = ptrtoint ptr %maxdata53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %maxdata53, align 4
  %range_table54 = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 15
  %59 = ptrtoint ptr %range_table54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @range_unipolar5, ptr %range_table54, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %54, i32 2, i32 20
  %60 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @pci9111_di_insn_bits, ptr %insn_bits, align 4
  %61 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 2
  %62 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 4
  %63 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 131072, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 3
  %64 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 13
  %65 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 15
  %66 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits62 = getelementptr %struct.comedi_subdevice, ptr %61, i32 3, i32 20
  %67 = ptrtoint ptr %insn_bits62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @pci9111_do_insn_bits, ptr %insn_bits62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end35.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call44, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_interrupt(i32 noundef %irq, ptr noundef %p_device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 10
  %2 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 3
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async1, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %add = add i32 %8, 76
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %9 = inttoptr i32 %add7 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %conv11 = zext i8 %10 to i32
  %and12 = and i32 %conv11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.end.if.then23_crit_edge, label %land.lhs.true

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

land.lhs.true:                                    ; preds = %if.end
  %and16 = and i32 %conv11, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 5
  %and20 = and i32 %conv11, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 40
  %or.cond = or i1 %cmp17, %cmp21
  br i1 %or.cond, label %if.end25, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %land.lhs.true.if.then23_crit_edge, %if.end.if.then23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true
  br i1 %cmp17, label %if.then30, label %if.end25.if.end68_crit_edge

if.end25.if.end68_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then30:                                        ; preds = %if.end25
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add32 = add i32 %12, 8
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %13 = inttoptr i32 %add34 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv38 = zext i8 %14 to i32
  %and39 = and i32 %conv38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end63

if.then41:                                        ; preds = %if.then30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci9111_interrupt.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci9111_interrupt, %do.body54)) #6
          to label %if.then50 [label %do.body54], !srcloc !50

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci9111_interrupt.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.3) #6
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %if.then41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add58 = add i32 %18, 72
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %19 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !45
  %events = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 16
  %20 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %events, align 4
  %or = or i32 %21, 16
  store i32 %or, ptr %events, align 4
  %call62 = tail call i32 @comedi_handle_events(ptr noundef %p_device, ptr noundef %1) #6
  br label %cleanup

if.end63:                                         ; preds = %if.then30
  %and64 = and i32 %conv38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end63.if.end68_crit_edge

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pci9111_handle_fifo_half_full(ptr noundef %p_device, ptr noundef %1)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge, %if.end25.if.end68_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 10
  %22 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp69 = icmp eq i32 %23, 32
  br i1 %cmp69, label %land.lhs.true71, label %if.end68.do.body78_crit_edge

if.end68.do.body78_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

land.lhs.true71:                                  ; preds = %if.end68
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 11
  %24 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 11
  %26 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp72.not = icmp ult i32 %25, %27
  br i1 %cmp72.not, label %land.lhs.true71.do.body78_crit_edge, label %if.then74

land.lhs.true71.do.body78_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  %events75 = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 16
  %28 = ptrtoint ptr %events75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %events75, align 4
  %or76 = or i32 %29, 2
  store i32 %or76, ptr %events75, align 4
  br label %do.body78

do.body78:                                        ; preds = %if.then74, %land.lhs.true71.do.body78_crit_edge, %if.end68.do.body78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %iobase81 = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %30 = ptrtoint ptr %iobase81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase81, align 4
  %add82 = add i32 %31, 72
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %32 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #6, !srcloc !45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  %call87 = tail call i32 @comedi_handle_events(ptr noundef %p_device, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body78, %do.body54, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body78 ], [ 1, %do.body54 ], [ 0, %if.then23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  %maxdata3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %2 = ptrtoint ptr %maxdata3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxdata3, align 4
  %add = add i32 %3, 1
  %shr4 = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp eq i32 %3, 65535
  %cond = select i1 %cmp, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 6
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #6, !srcloc !45
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add9 = add i32 %8, 8
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %11 = and i8 %10, 7
  %12 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp16.not = icmp eq i8 %11, %12
  br i1 %cmp16.not, label %entry.if.end_crit_edge, label %do.body18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %conv22 = and i8 %12, 7
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add24 = add i32 %14, 8
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %15 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv22) #6, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %do.body18, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add.i = add i32 %17, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !45
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2888.not = icmp eq i32 %20, 0
  br i1 %cmp2888.not, label %if.end.cleanup_crit_edge, label %if.end.do.body30_crit_edge

if.end.do.body30_crit_edge:                       ; preds = %if.end
  br label %do.body30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body30:                                        ; preds = %if.end40.do.body30_crit_edge, %if.end.do.body30_crit_edge
  %i.089 = phi i32 [ %inc, %if.end40.do.body30_crit_edge ], [ 0, %if.end.do.body30_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add34 = add i32 %22, 14
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %23 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !45
  %call38 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pci9111_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not = icmp eq i32 %call38, 0
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  br i1 %tobool.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %add.i84 = add i32 %25, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %and.i85 = and i32 %add.i84, 1048575
  %add1.i86 = or i32 %and.i85, -18874368
  %26 = inttoptr i32 %add1.i86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #6, !srcloc !45
  br label %cleanup

if.end40:                                         ; preds = %do.body30
  %and44 = and i32 %25, 1048575
  %add45 = or i32 %and44, -18874368
  %27 = inttoptr i32 %add45 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #6, !srcloc !60
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %conv49 = zext i16 %29 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.089
  %shr51 = lshr i32 %conv49, %cond
  %and52 = and i32 %shr51, %3
  %xor = xor i32 %and52, %shr4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %xor, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.089, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp28 = icmp ult i32 %inc, %32
  br i1 %cmp28, label %if.end40.do.body30_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40.do.body30_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %if.then39, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.then39 ], [ 0, %if.end.cleanup_crit_edge ], [ %inc, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ai_do_cmd_test(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arg, align 4, !annotation !62
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start_src, align 4
  %and.i = and i32 %2, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %2)
  %cmp1.not.i = icmp eq i32 %and.i, %2
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_begin_src, align 4
  %and.i164 = and i32 %4, 84
  store i32 %and.i164, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %cmp.i165 = icmp ne i32 %and.i164, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i164, i32 %4)
  %cmp1.not.i166 = icmp eq i32 %and.i164, %4
  %or.cond.i167 = and i1 %cmp.i165, %cmp1.not.i166
  %5 = select i1 %or.cond.i, i1 %or.cond.i167, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %convert_src, align 4
  %and.i169 = and i32 %7, 80
  store i32 %and.i169, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %cmp.i170 = icmp ne i32 %and.i169, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i169, i32 %7)
  %cmp1.not.i171 = icmp eq i32 %and.i169, %7
  %or.cond.i172 = and i1 %cmp.i170, %cmp1.not.i171
  %8 = select i1 %5, i1 %or.cond.i172, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %9 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_end_src, align 4
  %and.i174 = and i32 %10, 32
  store i32 %and.i174, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %cmp.i175 = icmp ne i32 %and.i174, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i174, i32 %10)
  %cmp1.not.i176 = icmp eq i32 %and.i174, %10
  %or.cond.i177 = and i1 %cmp.i175, %cmp1.not.i176
  %11 = select i1 %8, i1 %or.cond.i177, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %12 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stop_src, align 4
  %and.i179 = and i32 %13, 33
  store i32 %and.i179, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %cmp.i180 = icmp ne i32 %and.i179, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i179, i32 %13)
  %cmp1.not.i181 = icmp eq i32 %and.i179, %13
  %or.cond.i182 = and i1 %cmp.i180, %cmp1.not.i181
  %14 = select i1 %11, i1 %or.cond.i182, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = tail call i32 @llvm.ctpop.i32(i32 %4) #6, !range !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i = icmp ult i32 %15, 2
  %16 = tail call i32 @llvm.ctpop.i32(i32 %7) #6, !range !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i184 = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %13) #6, !range !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i186 = icmp ult i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp22.not = icmp eq i32 %4, %7
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp22.not
  %18 = and i1 %cmp.not.i, %or.cond
  %19 = select i1 %18, i1 %cmp.not.i184, i1 false
  %or.cond228 = select i1 %19, i1 %cmp.not.i186, i1 false
  br i1 %or.cond228, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i188 = icmp eq i32 %21, 0
  br i1 %cmp.not.i188, label %if.end29.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end29.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end29.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i189 = phi i32 [ -22, %if.then.i ], [ 0, %if.end29.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp33 = icmp eq i32 %7, 16
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %24)
  %cmp.i190 = icmp ult i32 %24, 10000
  br i1 %cmp.i190, label %if.then34.if.end40.sink.split_crit_edge, label %if.then34.if.end40_crit_edge

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then34.if.end40.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i193 = icmp eq i32 %24, 0
  br i1 %cmp.not.i193, label %if.else.if.end40_crit_edge, label %if.else.if.end40.sink.split_crit_edge

if.else.if.end40.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.sink.split

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end40.sink.split:                              ; preds = %if.else.if.end40.sink.split_crit_edge, %if.then34.if.end40.sink.split_crit_edge
  %.sink = phi i32 [ 10000, %if.then34.if.end40.sink.split_crit_edge ], [ 0, %if.else.if.end40.sink.split_crit_edge ]
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %convert_arg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else.if.end40_crit_edge, %if.then34.if.end40_crit_edge
  %call35.pn = phi i32 [ 0, %if.then34.if.end40_crit_edge ], [ 0, %if.else.if.end40_crit_edge ], [ -22, %if.end40.sink.split ]
  %err.1 = or i32 %call35.pn, %retval.0.i189
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp42 = icmp eq i32 %4, 16
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_arg, align 4
  br i1 %cmp42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %27)
  %cmp.i197 = icmp ult i32 %27, 10000
  br i1 %cmp.i197, label %if.then43.if.end50.sink.split_crit_edge, label %if.then43.if.end50_crit_edge

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then43.if.end50.sink.split_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.else46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i201 = icmp eq i32 %27, 0
  br i1 %cmp.not.i201, label %if.else46.if.end50_crit_edge, label %if.else46.if.end50.sink.split_crit_edge

if.else46.if.end50.sink.split_crit_edge:          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

if.else46.if.end50_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else46.if.end50.sink.split_crit_edge, %if.then43.if.end50.sink.split_crit_edge
  %.sink230 = phi i32 [ 10000, %if.then43.if.end50.sink.split_crit_edge ], [ 0, %if.else46.if.end50.sink.split_crit_edge ]
  %28 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink230, ptr %scan_begin_arg, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.else46.if.end50_crit_edge, %if.then43.if.end50_crit_edge
  %call44.pn = phi i32 [ 0, %if.then43.if.end50_crit_edge ], [ 0, %if.else46.if.end50_crit_edge ], [ -22, %if.end50.sink.split ]
  %err.2 = or i32 %err.1, %call44.pn
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  %31 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i205 = icmp eq i32 %32, %30
  br i1 %cmp.not.i205, label %if.end50.comedi_check_trigger_arg_is.exit208_crit_edge, label %if.then.i206

if.end50.comedi_check_trigger_arg_is.exit208_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit208

if.then.i206:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit208

comedi_check_trigger_arg_is.exit208:              ; preds = %if.then.i206, %if.end50.comedi_check_trigger_arg_is.exit208_crit_edge
  %retval.0.i207 = phi i32 [ -22, %if.then.i206 ], [ 0, %if.end50.comedi_check_trigger_arg_is.exit208_crit_edge ]
  %or52 = or i32 %err.2, %retval.0.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp54 = icmp eq i32 %13, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %34 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i209 = icmp eq i32 %35, 0
  br i1 %cmp54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %comedi_check_trigger_arg_is.exit208
  br i1 %cmp.i209, label %if.then55.if.end62.sink.split_crit_edge, label %if.then55.if.end62_crit_edge

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then55.if.end62.sink.split_crit_edge:          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.sink.split

if.else58:                                        ; preds = %comedi_check_trigger_arg_is.exit208
  br i1 %cmp.i209, label %if.else58.if.end62_crit_edge, label %if.else58.if.end62.sink.split_crit_edge

if.else58.if.end62.sink.split_crit_edge:          ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.sink.split

if.else58.if.end62_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.else58.if.end62.sink.split_crit_edge, %if.then55.if.end62.sink.split_crit_edge
  %.sink229 = phi i32 [ 1, %if.then55.if.end62.sink.split_crit_edge ], [ 0, %if.else58.if.end62.sink.split_crit_edge ]
  %36 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink229, ptr %stop_arg, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else58.if.end62_crit_edge, %if.then55.if.end62_crit_edge
  %call56.pn = phi i32 [ 0, %if.then55.if.end62_crit_edge ], [ 0, %if.else58.if.end62_crit_edge ], [ -22, %if.end62.sink.split ]
  %err.3 = or i32 %or52, %call56.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool63.not = icmp eq i32 %err.3, 0
  br i1 %tobool63.not, label %if.end65, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end62
  br i1 %cmp33, label %if.then68, label %if.end65.if.end73_crit_edge

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then68:                                        ; preds = %if.end65
  %convert_arg69 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %37 = ptrtoint ptr %convert_arg69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %convert_arg69, align 4
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %40 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %41, ptr noundef nonnull %arg, i32 noundef %43) #6
  %44 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arg, align 4
  %46 = ptrtoint ptr %convert_arg69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %convert_arg69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp.not.i217 = icmp eq i32 %47, %45
  br i1 %cmp.not.i217, label %if.then68.if.end73_crit_edge, label %if.then.i218

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then.i218:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %convert_arg69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %convert_arg69, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then.i218, %if.then68.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  %err.4 = phi i32 [ 0, %if.end65.if.end73_crit_edge ], [ -22, %if.then.i218 ], [ 0, %if.then68.if.end73_crit_edge ]
  %49 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp75 = icmp eq i32 %50, 16
  br i1 %cmp75, label %if.then76, label %if.end73.if.end88_crit_edge

if.end73.if.end88_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then76:                                        ; preds = %if.end73
  %51 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chanlist_len, align 4
  %convert_arg78 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %53 = ptrtoint ptr %convert_arg78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %convert_arg78, align 4
  %mul = mul i32 %54, %52
  %55 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %arg, align 4
  %scan_begin_arg79 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %56 = ptrtoint ptr %scan_begin_arg79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scan_begin_arg79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %57)
  %cmp80 = icmp ult i32 %mul, %57
  br i1 %cmp80, label %if.then81, label %if.then76.if.end84_crit_edge

if.then76.if.end84_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %58 = urem i32 %57, %mul
  %mul83 = sub i32 %57, %58
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul83, ptr %arg, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.then76.if.end84_crit_edge
  %60 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %61)
  %cmp.not.i221 = icmp eq i32 %57, %61
  br i1 %cmp.not.i221, label %if.end84.comedi_check_trigger_arg_is.exit224_crit_edge, label %if.then.i222

if.end84.comedi_check_trigger_arg_is.exit224_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit224

if.then.i222:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %scan_begin_arg79 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %scan_begin_arg79, align 4
  br label %comedi_check_trigger_arg_is.exit224

comedi_check_trigger_arg_is.exit224:              ; preds = %if.then.i222, %if.end84.comedi_check_trigger_arg_is.exit224_crit_edge
  %retval.0.i223 = phi i32 [ -22, %if.then.i222 ], [ 0, %if.end84.comedi_check_trigger_arg_is.exit224_crit_edge ]
  %or87 = or i32 %retval.0.i223, %err.4
  br label %if.end88

if.end88:                                         ; preds = %comedi_check_trigger_arg_is.exit224, %if.end73.if.end88_crit_edge
  %err.5 = phi i32 [ %or87, %comedi_check_trigger_arg_is.exit224 ], [ %err.4, %if.end73.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool89.not = icmp eq i32 %err.5, 0
  br i1 %tobool89.not, label %if.end91, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %if.end88
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %63 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chanlist, align 4
  %tobool92.not = icmp eq ptr %64, null
  br i1 %tobool92.not, label %if.end91.if.end98.thread_crit_edge, label %land.lhs.true

if.end91.if.end98.thread_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.thread

land.lhs.true:                                    ; preds = %if.end91
  %65 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp94.not = icmp eq i32 %66, 0
  br i1 %cmp94.not, label %land.lhs.true.if.end98.thread_crit_edge, label %if.end98

land.lhs.true.if.end98.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.thread

if.end98:                                         ; preds = %land.lhs.true
  %call96 = call fastcc i32 @pci9111_ai_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %phi.cmp = icmp eq i32 %call96, 0
  br i1 %phi.cmp, label %if.end98.if.end98.thread_crit_edge, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98.if.end98.thread_crit_edge:               ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.thread

if.end98.thread:                                  ; preds = %if.end98.if.end98.thread_crit_edge, %land.lhs.true.if.end98.thread_crit_edge, %if.end91.if.end98.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end98.thread, %if.end98.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end62.cleanup_crit_edge ], [ 4, %if.end88.cleanup_crit_edge ], [ 0, %if.end98.thread ], [ 5, %if.end98.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ai_do_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %6 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanlist_len, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr i32, ptr %5, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %shr = lshr i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %spec.select = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %9 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add = add i32 %13, 6
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %14 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %15 = trunc i32 %shr to i8
  %conv12 = and i8 %15, 7
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add14 = add i32 %17, 8
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %18 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv12) #6, !srcloc !45
  %scan_delay = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %scan_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %scan_delay, align 4
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %20 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp18 = icmp eq i32 %21, 16
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %entry
  %or21 = or i32 %spec.select, 2
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %23) #6
  %24 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %25, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add.i = add i32 %27, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %28 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #6, !srcloc !45
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add.i74 = add i32 %30, 10
  %and.i75 = and i32 %add.i74, 1048575
  %add1.i76 = or i32 %and.i75, -18874368
  %31 = inttoptr i32 %add1.i76 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add12.i = add i32 %34, 12
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %35 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 1) #6, !srcloc !45
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.i77 = add i32 %37, 76
  %and.i78 = and i32 %add.i77, 1048575
  %add21.i = or i32 %and.i78, -18874368
  %38 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 83) #6, !srcloc !45
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %39 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %40)
  %cmp23 = icmp eq i32 %40, 16
  br i1 %cmp23, label %if.then25, label %if.then20.do.body33_crit_edge

if.then20.do.body33_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %41 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_begin_arg, align 4
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %43 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %convert_arg, align 4
  %45 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %46, %44
  %div = udiv i32 %42, %mul
  %sub27 = add i32 %div, -1
  %47 = ptrtoint ptr %scan_delay to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub27, ptr %scan_delay, align 4
  br label %do.body33

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or30 = or i32 %spec.select, 4
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %add.i80 = add i32 %49, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %and.i81 = and i32 %add.i80, 1048575
  %add1.i82 = or i32 %and.i81, -18874368
  %50 = inttoptr i32 %add1.i82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 0) #6, !srcloc !45
  %51 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase, align 4
  %add.i84 = add i32 %52, 10
  %and.i85 = and i32 %add.i84, 1048575
  %add1.i86 = or i32 %and.i85, -18874368
  %53 = inttoptr i32 %add1.i86 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase, align 4
  %add12.i87 = add i32 %56, 12
  %and13.i88 = and i32 %add12.i87, 1048575
  %add14.i89 = or i32 %and13.i88, -18874368
  %57 = inttoptr i32 %add14.i89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 1) #6, !srcloc !45
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.i90 = add i32 %59, 76
  %and.i91 = and i32 %add.i90, 1048575
  %add21.i92 = or i32 %and.i91, -18874368
  %60 = inttoptr i32 %add21.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 83) #6, !srcloc !45
  br label %do.body33

do.body33:                                        ; preds = %if.else, %if.then25, %if.then20.do.body33_crit_edge
  %trig.1 = phi i32 [ %or21, %if.then25 ], [ %or21, %if.then20.do.body33_crit_edge ], [ %or30, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %conv36 = trunc i32 %trig.1 to i8
  %61 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase, align 4
  %add38 = add i32 %62, 10
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %63 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv36) #6, !srcloc !45
  %chunk_counter = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %chunk_counter to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %chunk_counter, align 4
  %65 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chanlist_len, align 4
  %67 = ptrtoint ptr %scan_delay to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %scan_delay, align 4
  %add44 = add i32 %68, 1
  %mul45 = mul i32 %add44, %66
  %chunk_num_samples = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %chunk_num_samples to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul45, ptr %chunk_num_samples, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %3, 76
  %and.i = and i32 %add.i, 1048575
  %add21.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 27) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #6, !srcloc !45
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add.i4 = add i32 %9, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %and.i5 = and i32 %add.i4, 1048575
  %add1.i = or i32 %and.i5, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !45
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci9111_ai_munge(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %data, i32 noundef %num_bytes, i32 noundef %start_chan_index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %maxdata1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %maxdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxdata1, align 4
  %add = add i32 %1, 1
  %shr = lshr i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %1)
  %cmp = icmp eq i32 %1, 65535
  %cond = select i1 %cmp, i32 0, i32 4
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %num_bytes, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp213.not = icmp eq i32 %shr.i, 0
  br i1 %cmp213.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %shr3 = lshr i32 %conv, %cond
  %and = and i32 %shr3, %1
  %xor = xor i32 %and, %shr
  %conv4 = trunc i32 %xor to i16
  store i16 %conv4, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.not = icmp eq i32 %7, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.015
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %and2 = and i32 %12, 1048575
  %add3 = or i32 %and2, -18874368
  %13 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #6, !srcloc !71
  %inc = add nuw i32 %i.015, 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %16 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %17, i32 %and
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val.0.lcssa, ptr %arrayidx5, align 4
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !60
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv = zext i16 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
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
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #6, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci9111_handle_fifo_half_full(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
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
  %ai_bounce_buffer = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 4
  %call = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef 512) #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %and = and i32 %5, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void @__raw_readsw(ptr noundef nonnull %6, ptr noundef %ai_bounce_buffer, i32 noundef %call) #6
  %scan_delay = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %scan_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp568.not = icmp eq i32 %call, 0
  br i1 %cmp568.not, label %while.cond.preheader.if.end33_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end33_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %chunk_counter = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 2
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %chunk_num_samples = getelementptr inbounds %struct.pci9111_private_data, ptr %1, i32 0, i32 3
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef %ai_bounce_buffer, i32 noundef %call) #6
  br label %if.end33

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %pos.069 = phi i32 [ 0, %while.body.lr.ph ], [ %add24, %if.end23.while.body_crit_edge ]
  %9 = ptrtoint ptr %chunk_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chunk_counter, align 4
  %11 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp6 = icmp ugt i32 %12, %10
  br i1 %cmp6, label %if.then7, label %if.else15

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %12, %10
  %sub10 = sub i32 %call, %pos.069
  %13 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub10)
  %add.ptr = getelementptr i16, ptr %ai_bounce_buffer, i32 %pos.069
  %call14 = tail call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef %add.ptr, i32 noundef %13) #6
  br label %if.end23

if.else15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %chunk_num_samples to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chunk_num_samples, align 4
  %sub17 = sub i32 %15, %10
  %sub18 = sub i32 %call, %pos.069
  %16 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %sub18)
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.then7
  %to_read.1 = phi i32 [ %13, %if.then7 ], [ %16, %if.else15 ]
  %add24 = add i32 %to_read.1, %pos.069
  %17 = ptrtoint ptr %chunk_counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chunk_counter, align 4
  %add26 = add i32 %18, %to_read.1
  %19 = ptrtoint ptr %chunk_num_samples to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chunk_num_samples, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %20)
  %cmp29.not = icmp ult i32 %add26, %20
  %spec.store.select = select i1 %cmp29.not, i32 %add26, i32 0
  %21 = ptrtoint ptr %chunk_counter to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %chunk_counter, align 4
  %cmp5 = icmp ugt i32 %call, %add24
  br i1 %cmp5, label %if.end23.while.body_crit_edge, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end33:                                         ; preds = %if.end23.if.end33_crit_edge, %if.then, %while.cond.preheader.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci9111_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp17 = icmp ugt i32 %5, 1
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.cleanup68_crit_edge

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %if.end43
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup68_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup68_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %1, i32 %i.018
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %i.018)
  %cmp16.not = icmp eq i32 %and7, %i.018
  br i1 %cmp16.not, label %if.end21, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci9111_ai_check_chanlist, %cleanup68)) #6
          to label %if.then20 [label %cleanup68], !srcloc !50

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.6) #6
  br label %cleanup68

if.end21:                                         ; preds = %for.body
  %shr101 = xor i32 %7, %3
  %10 = and i32 %shr101, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp22.not = icmp eq i32 %10, 0
  br i1 %cmp22.not, label %if.end43, label %do.body24

do.body24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci9111_ai_check_chanlist, %cleanup68)) #6
          to label %if.then38 [label %cleanup68], !srcloc !50

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev39 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev39, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %12, ptr noundef nonnull @.str.7) #6
  br label %cleanup68

if.end43:                                         ; preds = %if.end21
  %13 = and i32 %shr101, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44.not = icmp eq i32 %13, 0
  br i1 %cmp44.not, label %for.cond, label %do.body46

do.body46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci9111_ai_check_chanlist, %cleanup68)) #6
          to label %if.then60 [label %cleanup68], !srcloc !50

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev61 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %15, ptr noundef nonnull @.str.8) #6
  br label %cleanup68

cleanup68:                                        ; preds = %if.then60, %do.body46, %if.then38, %do.body24, %if.then20, %do.body, %for.cond.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.2 = phi i32 [ -22, %if.then20 ], [ -22, %if.then38 ], [ -22, %if.then60 ], [ -22, %do.body ], [ -22, %do.body24 ], [ -22, %do.body46 ], [ 0, %entry.cleanup68_crit_edge ], [ 0, %for.cond.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9111_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adl_pci9111_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_adl_pci9111__240_742_adl_pci9111_driver_init6, !1, !"__initcall__kmod_adl_pci9111__240_742_adl_pci9111_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 742, i32 1}
!2 = !{ptr @__exitcall_adl_pci9111_driver_exit, !1, !"__exitcall_adl_pci9111_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 744, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 745, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 746, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 716, i32 17}
!12 = !{ptr @adl_pci9111_driver, !13, !"adl_pci9111_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 715, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 490, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pci9111_interrupt.__UNIQUE_ID_ddebug239, !15, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!19 = !{ptr @pci9111_ai_range, !20, !"pci9111_ai_range", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 96, i32 35}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 214, i32 4}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug236, !22, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 220, i32 4}
!27 = !{ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug237, !26, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 226, i32 4}
!30 = !{ptr @pci9111_ai_check_chanlist.__UNIQUE_ID_ddebug238, !29, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!31 = !{ptr @adl_pci9111_pci_driver, !32, !"adl_pci9111_pci_driver", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 736, i32 26}
!33 = !{ptr @pci9111_pci_table, !34, !"pci9111_pci_table", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/adl_pci9111.c", i32 729, i32 35}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2154556383}
!45 = !{i64 4641549}
!46 = !{i64 2154578636}
!47 = !{i64 4641944}
!48 = !{i64 2154569339}
!49 = !{i64 2154571049}
!50 = !{i64 2148971493, i64 2148971498, i64 2148971511, i64 2148971555, i64 2148971589, i64 2148971610}
!51 = !{i64 2154573568}
!52 = !{i64 2154574010}
!53 = !{i64 2154574815}
!54 = !{i64 2154575244}
!55 = !{i64 2154575555}
!56 = !{i64 2154557541}
!57 = !{i64 2154557981}
!58 = !{i64 2154558313}
!59 = !{i64 2154575904}
!60 = !{i64 4641326}
!61 = !{i64 2154576718}
!62 = !{!"auto-init"}
!63 = !{i32 0, i32 33}
!64 = !{i64 2154567391}
!65 = !{i64 2154567790}
!66 = !{i64 2154556808}
!67 = !{i64 2154557198}
!68 = !{i64 2154568328}
!69 = !{i64 2154558656}
!70 = !{i64 2154577008}
!71 = !{i64 4641126}
!72 = !{i64 2154577917}
!73 = !{i64 2154578182}
!74 = !{i64 2154574439}
