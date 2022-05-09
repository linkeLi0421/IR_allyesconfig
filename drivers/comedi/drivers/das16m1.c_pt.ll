; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das16m1.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das16m1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.das16m1_private = type { ptr, i32, i32, i16, [1024 x i16], i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__initcall__kmod_das16m1__236_617_das16m1_driver_init6 = internal global ptr @das16m1_driver_init, section ".initcall6.init", align 4
@das16m1_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @das16m1_attach, ptr @das16m1_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_das16m1_driver_exit = internal global ptr @das16m1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"das16m1.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"das16m1.description=Comedi driver for CIO-DAS16/M1 ISA cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"das16m1.file=drivers/comedi/drivers/das16m1\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"das16m1.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das16m1\00", [24 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das16m1_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"premature interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"das16m1_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/das16m1.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@das16m1_interrupt._entry_ptr = internal global ptr @das16m1_interrupt._entry, section ".printk_index", align 4
@das16m1_interrupt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@das16m1_interrupt._entry_ptr.8 = internal global ptr @das16m1_interrupt._entry.6, section ".printk_index", align 4
@das16m1_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"das16m1_handler\00", [16 x i8] zeroinitializer }, align 32
@das16m1_handler._entry_ptr = internal global ptr @das16m1_handler._entry, section ".printk_index", align 4
@range_das16m1 = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"das16m1_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"chanlist must be of even length or length 1\0A\00", [51 x i8] zeroinitializer }, align 32
@das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"even/odd channels must go have even/odd chanlist indices\0A\00", [38 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@switch.table.das16m1_irq_bits = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 4, i32 5, i32 0, i32 6, i32 0, i32 7, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 3], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"das16m1_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 611, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 612, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 456, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 465, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 429, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"range_das16m1\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 82, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 148, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [36 x i8] c"../drivers/comedi/drivers/das16m1.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 157, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"switch.table.das16m1_irq_bits\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_das16m1_driver_exit, ptr @__initcall__kmod_das16m1__236_617_das16m1_driver_init6, ptr @das16m1_driver_exit, ptr @das16m1_handler._entry, ptr @das16m1_handler._entry_ptr, ptr @das16m1_interrupt._entry, ptr @das16m1_interrupt._entry.6, ptr @das16m1_interrupt._entry_ptr, ptr @das16m1_interrupt._entry_ptr.8, ptr @das16m1_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @range_das16m1, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.das16m1_irq_bits], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16m1_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16m1_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16m1_interrupt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16m1_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das16m1 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.das16m1_irq_bits to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @das16m1_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @das16m1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @comedi_driver_unregister(ptr noundef nonnull @das16m1_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 2068) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 1024
  %call5 = tail call i32 @__comedi_request_region(ptr noundef %dev, i32 noundef %add, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add10 = add i32 %5, 1024
  %extra_iobase = getelementptr inbounds %struct.das16m1_private, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %extra_iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add10, ptr %extra_iobase, align 4
  %arrayidx12 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, 56572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end8.if.end22_crit_edge, label %if.then14

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then14:                                        ; preds = %if.end8
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @das16m1_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %10, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then18, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then14.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add24 = add i32 %15, 12
  %call25 = tail call ptr @comedi_8254_init(i32 noundef %add24, i32 noundef 100, i32 noundef 1, i32 noundef 0) #8
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %pacer, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add31 = add i32 %18, 8
  %call32 = tail call ptr @comedi_8254_init(i32 noundef %add31, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %call, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call37 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 4
  %23 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4259840, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 13
  %25 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4095, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 15
  %26 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @range_das16m1, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 18
  %27 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @das16m1_ai_insn_read, ptr %insn_read, align 4
  %irq42 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %28 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %30 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %read_subdev, align 4
  %31 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %32, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 5
  %33 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 256, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 23
  %34 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @das16m1_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 22
  %35 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @das16m1_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 25
  %36 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @das16m1_ai_cancel, ptr %cancel, align 4
  %poll = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 24
  %37 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @das16m1_ai_poll, ptr %poll, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 27
  %38 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @das16m1_ai_munge, ptr %munge, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40.if.end46_crit_edge
  %39 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subdevices, align 4
  %type49 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 2
  %41 = ptrtoint ptr %type49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %type49, align 4
  %subdev_flags50 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 4
  %42 = ptrtoint ptr %subdev_flags50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %subdev_flags50, align 4
  %n_chan51 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 3
  %43 = ptrtoint ptr %n_chan51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %n_chan51, align 4
  %maxdata52 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 13
  %44 = ptrtoint ptr %maxdata52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %maxdata52, align 4
  %range_table53 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 15
  %45 = ptrtoint ptr %range_table53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @range_unipolar5, ptr %range_table53, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 20
  %46 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @das16m1_di_insn_bits, ptr %insn_bits, align 4
  %47 = load ptr, ptr %subdevices, align 4
  %type56 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 2
  %48 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 4
  %49 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 131072, ptr %subdev_flags57, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 3
  %50 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 13
  %51 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %maxdata59, align 4
  %range_table60 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 15
  %52 = ptrtoint ptr %range_table60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @range_unipolar5, ptr %range_table60, align 4
  %insn_bits61 = getelementptr %struct.comedi_subdevice, ptr %47, i32 2, i32 20
  %53 = ptrtoint ptr %insn_bits61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @das16m1_do_insn_bits, ptr %insn_bits61, align 4
  %54 = load ptr, ptr %subdevices, align 4
  %arrayidx63 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3
  %call64 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx63, ptr noundef null, i32 noundef 1024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase, align 4
  %add69 = add i32 %56, 3
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %57 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #8, !srcloc !50
  %58 = ptrtoint ptr %irq42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq42, align 4
  %call74 = tail call fastcc i32 @das16m1_irq_bits(i32 noundef %59)
  %and75 = shl i32 %call74, 4
  %shl76 = and i32 %and75, 112
  %intr_ctrl = getelementptr inbounds %struct.das16m1_private, ptr %call, i32 0, i32 1
  %60 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl76, ptr %intr_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %intr_ctrl, align 4
  %conv = trunc i32 %62 to i8
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase, align 4
  %add82 = add i32 %64, 5
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %65 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %conv) #8, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end46.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call64, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das16m1_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %extra_iobase = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extra_iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 8) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %5) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %conv = zext i8 %6 to i32
  %and3 = and i32 %conv, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev9 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7) #11
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @das16m1_handler(ptr noundef %d, i32 noundef %conv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add16 = add i32 %10, 4
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #8, !srcloc !50
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end8 ], [ 1, %if.end11 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 6
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %4 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %and8.i = and i32 %1, 7
  %5 = lshr i32 %1, 12
  %shl10.i = and i32 %5, 240
  %or.i = or i32 %shl10.i, %and8.i
  %conv11.i = trunc i32 %or.i to i8
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add13.i = add i32 %7, 7
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %8 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv11.i) #8, !srcloc !50
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp33.not = icmp eq i32 %10, 0
  br i1 %cmp33.not, label %entry.cleanup19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add = add i32 %12, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %13 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %and7 = and i32 %15, 1048575
  %add8 = or i32 %and7, -18874368
  %16 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #8, !srcloc !50
  %call10 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das16m1_ai_eoc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup19_crit_edge

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.inc:                                          ; preds = %for.body
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %and13 = and i32 %18, 1048575
  %add14 = or i32 %and13, -18874368
  %19 = inttoptr i32 %add14 to ptr
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #8, !srcloc !59
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %22 = lshr i16 %21, 4
  %23 = zext i16 %22 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.034
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.034, 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %for.body.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup19_crit_edge ], [ %call10, %for.body.cleanup19_crit_edge ], [ %26, %for.inc.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 66
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
  %and.i115 = and i32 %3, 4
  store i32 %and.i115, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %cmp.i116 = icmp ne i32 %and.i115, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i115, i32 %3)
  %cmp1.not.i117 = icmp eq i32 %and.i115, %3
  %or.cond.i118 = and i1 %cmp.i116, %cmp1.not.i117
  %4 = select i1 %or.cond.i, i1 %or.cond.i118, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i120 = and i32 %6, 80
  store i32 %and.i120, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %cmp.i121 = icmp ne i32 %and.i120, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i120, i32 %6)
  %cmp1.not.i122 = icmp eq i32 %and.i120, %6
  %or.cond.i123 = and i1 %cmp.i121, %cmp1.not.i122
  %7 = select i1 %4, i1 %or.cond.i123, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i125 = and i32 %9, 32
  store i32 %and.i125, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %cmp.i126 = icmp ne i32 %and.i125, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i125, i32 %9)
  %cmp1.not.i127 = icmp eq i32 %and.i125, %9
  %or.cond.i128 = and i1 %cmp.i126, %cmp1.not.i127
  %10 = select i1 %7, i1 %or.cond.i128, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i130 = and i32 %12, 33
  store i32 %and.i130, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %cmp.i131 = icmp ne i32 %and.i130, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i130, i32 %12)
  %cmp1.not.i132 = icmp eq i32 %and.i130, %12
  %or.cond.i133 = and i1 %cmp.i131, %cmp1.not.i132
  %13 = select i1 %10, i1 %or.cond.i133, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #8, !range !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %6) #8, !range !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i135 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i135, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %12) #8, !range !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i137 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i137, i1 false
  br i1 %18, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i139 = icmp eq i32 %20, 0
  br i1 %cmp.not.i139, label %if.end20.if.then24_crit_edge, label %if.then.i

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.then.i, %if.end20.if.then24_crit_edge
  %retval.0.i140 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.if.then24_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i141 = icmp eq i32 %23, 0
  br i1 %cmp.not.i141, label %if.then24.comedi_check_trigger_arg_is.exit144_crit_edge, label %if.then.i142

if.then24.comedi_check_trigger_arg_is.exit144_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit144

if.then.i142:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit144

comedi_check_trigger_arg_is.exit144:              ; preds = %if.then.i142, %if.then24.comedi_check_trigger_arg_is.exit144_crit_edge
  %retval.0.i143 = phi i32 [ -22, %if.then.i142 ], [ 0, %if.then24.comedi_check_trigger_arg_is.exit144_crit_edge ]
  %or26 = or i32 %retval.0.i143, %retval.0.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp29 = icmp eq i32 %6, 16
  br i1 %cmp29, label %if.then30, label %comedi_check_trigger_arg_is.exit144.if.end33_crit_edge

comedi_check_trigger_arg_is.exit144.if.end33_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %comedi_check_trigger_arg_is.exit144
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %26)
  %cmp.i145 = icmp ult i32 %26, 1000
  br i1 %cmp.i145, label %if.then.i146, label %if.then30.comedi_check_trigger_arg_min.exit_crit_edge

if.then30.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i146:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i146, %if.then30.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i147 = phi i32 [ -22, %if.then.i146 ], [ 0, %if.then30.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or32 = or i32 %retval.0.i147, %or26
  br label %if.end33

if.end33:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit144.if.end33_crit_edge
  %err.1 = phi i32 [ %or32, %comedi_check_trigger_arg_min.exit ], [ %or26, %comedi_check_trigger_arg_is.exit144.if.end33_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %28 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len, align 4
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i148 = icmp eq i32 %31, %29
  br i1 %cmp.not.i148, label %if.end33.comedi_check_trigger_arg_is.exit151_crit_edge, label %if.then.i149

if.end33.comedi_check_trigger_arg_is.exit151_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit151

if.then.i149:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit151

comedi_check_trigger_arg_is.exit151:              ; preds = %if.then.i149, %if.end33.comedi_check_trigger_arg_is.exit151_crit_edge
  %retval.0.i150 = phi i32 [ -22, %if.then.i149 ], [ 0, %if.end33.comedi_check_trigger_arg_is.exit151_crit_edge ]
  %or35 = or i32 %retval.0.i150, %err.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp37 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i152 = icmp eq i32 %34, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %comedi_check_trigger_arg_is.exit151
  br i1 %cmp.i152, label %if.then38.if.end44.sink.split_crit_edge, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then38.if.end44.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit151
  br i1 %cmp.i152, label %if.else.if.end44_crit_edge, label %if.else.if.end44.sink.split_crit_edge

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.sink.split

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.else.if.end44.sink.split_crit_edge, %if.then38.if.end44.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then38.if.end44.sink.split_crit_edge ], [ 0, %if.else.if.end44.sink.split_crit_edge ]
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge, %if.then38.if.end44_crit_edge
  %call39.pn = phi i32 [ 0, %if.then38.if.end44_crit_edge ], [ 0, %if.else.if.end44_crit_edge ], [ -22, %if.end44.sink.split ]
  %err.2 = or i32 %or35, %call39.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool45.not = icmp eq i32 %err.2, 0
  br i1 %tobool45.not, label %if.end47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  br i1 %cmp29, label %if.then50, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then50:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %convert_arg51 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %36 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %convert_arg51, align 4
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %39 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %40, ptr noundef nonnull %arg, i32 noundef %42) #8
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arg, align 4
  %45 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %convert_arg51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i160 = icmp eq i32 %46, %44
  br i1 %cmp.not.i160, label %comedi_check_trigger_arg_is.exit163.thread, label %comedi_check_trigger_arg_is.exit163

comedi_check_trigger_arg_is.exit163.thread:       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  br label %if.end58

comedi_check_trigger_arg_is.exit163:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %convert_arg51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %convert_arg51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  br label %cleanup

if.end58:                                         ; preds = %comedi_check_trigger_arg_is.exit163.thread, %if.end47.if.end58_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %48 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chanlist, align 4
  %tobool59.not = icmp eq ptr %49, null
  br i1 %tobool59.not, label %if.end58.if.end65.thread_crit_edge, label %land.lhs.true

if.end58.if.end65.thread_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.thread

land.lhs.true:                                    ; preds = %if.end58
  %50 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp61.not = icmp eq i32 %51, 0
  br i1 %cmp61.not, label %land.lhs.true.if.end65.thread_crit_edge, label %if.end65

land.lhs.true.if.end65.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.thread

if.end65:                                         ; preds = %land.lhs.true
  %call63 = call fastcc i32 @das16m1_ai_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %phi.cmp114 = icmp eq i32 %call63, 0
  br i1 %phi.cmp114, label %if.end65.if.end65.thread_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65.if.end65.thread_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.thread

if.end65.thread:                                  ; preds = %if.end65.if.end65.thread_crit_edge, %land.lhs.true.if.end65.thread_crit_edge, %if.end58.if.end65.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end65.thread, %if.end65.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit163, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end44.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit163 ], [ 0, %if.end65.thread ], [ 5, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %adc_count = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %adc_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %adc_count, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = tail call i32 @comedi_8254_set_mode(ptr noundef %6, i32 noundef 1, i32 noundef 4) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @comedi_8254_write(ptr noundef %8, i32 noundef 1, i32 noundef 0) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @comedi_8254_read(ptr noundef %10, i32 noundef 1) #8
  %conv = trunc i32 %call5 to i16
  %initial_hw_count = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %initial_hw_count to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %initial_hw_count, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %12 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %14 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23.not.i = icmp eq i32 %15, 0
  br i1 %cmp23.not.i, label %entry.das16m1_ai_set_queue.exit_crit_edge, label %for.body.lr.ph.i

entry.das16m1_ai_set_queue.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %das16m1_ai_set_queue.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %13, i32 %i.024.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %i.024.i to i8
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %19, 6
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %20 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %and8.i = and i32 %17, 7
  %21 = lshr i32 %17, 12
  %shl10.i = and i32 %21, 240
  %or.i = or i32 %shl10.i, %and8.i
  %conv11.i = trunc i32 %or.i to i8
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add13.i = add i32 %23, 7
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %24 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv11.i) #8, !srcloc !50
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.body.i.das16m1_ai_set_queue.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.das16m1_ai_set_queue.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das16m1_ai_set_queue.exit

das16m1_ai_set_queue.exit:                        ; preds = %for.body.i.das16m1_ai_set_queue.exit_crit_edge, %entry.das16m1_ai_set_queue.exit_crit_edge
  %intr_ctrl = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_ctrl, align 4
  %and = and i32 %26, -4
  store i32 %and, ptr %intr_ctrl, align 4
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %27 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp = icmp eq i32 %28, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %das16m1_ai_set_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %29 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %30) #8
  %31 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %32, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #8
  %33 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_ctrl, align 4
  %or = or i32 %34, 3
  br label %if.end

if.else:                                          ; preds = %das16m1_ai_set_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %and, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or10, %if.else ], [ %or, %if.then ]
  %35 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %intr_ctrl, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %36 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %37)
  %cmp11 = icmp eq i32 %37, 64
  br i1 %cmp11, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp14.not = icmp ne i32 %39, 64
  %spec.select = zext i1 %cmp14.not to i8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %if.end.do.body_crit_edge
  %byte.0 = phi i8 [ 0, %if.end.do.body_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase, align 4
  %add = add i32 %41, 2
  %and20 = and i32 %add, 1048575
  %add21 = or i32 %and20, -18874368
  %42 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %byte.0) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %add27 = add i32 %44, 4
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %45 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #8, !srcloc !50
  %46 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %intr_ctrl, align 4
  %or32 = or i32 %47, 128
  store i32 %or32, ptr %intr_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %intr_ctrl, align 4
  %conv37 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase, align 4
  %add39 = add i32 %51, 5
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %52 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %conv37) #8, !srcloc !50
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %intr_ctrl = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_ctrl, align 4
  %and = and i32 %3, -132
  store i32 %and, ptr %intr_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %intr_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_ctrl, align 4
  %conv = trunc i32 %5 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 5
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #8, !srcloc !50
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_poll(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %conv9 = zext i8 %3 to i32
  tail call fastcc void @das16m1_handler(ptr noundef %dev, i32 noundef %conv9)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #8
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async.i, align 4
  %buf_write_count.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %buf_write_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_write_count.i, align 4
  %buf_read_count.i = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %buf_read_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_read_count.i, align 4
  %sub.i = sub i32 %7, %9
  ret i32 %sub.i
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das16m1_ai_munge(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %data, i32 noundef %num_bytes, i32 noundef %start_chan_index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %num_bytes, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp7.not = icmp eq i32 %shr.i, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = lshr i16 %3, 4
  store i16 %4, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #8, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @das16m1_irq_bits(i32 noundef %irq) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %irq, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 14
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.das16m1_irq_bits, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das16m1_handler(ptr noundef %dev, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call i32 @comedi_8254_read(ptr noundef %7, i32 noundef 1) #8
  %adc_count = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %adc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %initial_hw_count = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %initial_hw_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %initial_hw_count, align 4
  %12 = trunc i32 %call to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp6 = icmp eq i16 %11, %12
  br i1 %cmp6, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %13 = add i32 %9, %call
  %14 = trunc i32 %13 to i16
  %conv11 = sub i16 0, %14
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %num_samples.0 = phi i16 [ %conv11, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %15 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp12 = icmp eq i32 %16, 32
  br i1 %cmp12, label %if.then14, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = zext i16 %num_samples.0 to i32
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %17 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stop_arg, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %19 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv15)
  %cmp16 = icmp ult i32 %mul, %conv15
  %conv22 = trunc i32 %mul to i16
  %spec.select = select i1 %cmp16, i16 %conv22, i16 %num_samples.0
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.end.if.end24_crit_edge
  %num_samples.1 = phi i16 [ %num_samples.0, %if.end.if.end24_crit_edge ], [ %spec.select, %if.then14 ]
  %21 = tail call i16 @llvm.umin.i16(i16 %num_samples.1, i16 1024)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %and = and i32 %23, 1048575
  %add = or i32 %and, -18874368
  %24 = inttoptr i32 %add to ptr
  %ai_buffer = getelementptr inbounds %struct.das16m1_private, ptr %1, i32 0, i32 4
  %conv31 = zext i16 %21 to i32
  tail call void @__raw_readsw(ptr noundef nonnull %24, ptr noundef %ai_buffer, i32 noundef %conv31) #8
  %call35 = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %ai_buffer, i32 noundef %conv31) #8
  %25 = ptrtoint ptr %adc_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %adc_count, align 4
  %add38 = add i32 %26, %conv31
  store i32 %add38, ptr %adc_count, align 4
  %27 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp40 = icmp eq i32 %28, 32
  br i1 %cmp40, label %if.then42, label %if.end24.if.end51_crit_edge

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then42:                                        ; preds = %if.end24
  %stop_arg44 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %29 = ptrtoint ptr %stop_arg44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg44, align 4
  %chanlist_len45 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %31 = ptrtoint ptr %chanlist_len45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chanlist_len45, align 4
  %mul46 = mul i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %mul46)
  %cmp47.not = icmp ult i32 %add38, %mul46
  br i1 %cmp47.not, label %if.then42.if.end51_crit_edge, label %if.then49

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %33 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %events, align 4
  %or = or i32 %34, 2
  store i32 %or, ptr %events, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then42.if.end51_crit_edge, %if.end24.if.end51_crit_edge
  %and52 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool.not = icmp eq i32 %and52, 0
  br i1 %tobool.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %events54 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %35 = ptrtoint ptr %events54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %events54, align 4
  %or55 = or i32 %36, 16
  store i32 %or55, ptr %events54, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %call57 = tail call i32 @comedi_handle_events(ptr noundef %dev, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16m1_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das16m1_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %0 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end:                                           ; preds = %entry
  %rem = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  br i1 %cmp2.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp117.not = icmp eq i32 %1, 0
  br i1 %cmp117.not, label %for.cond.preheader.cleanup36_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup36_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  br label %for.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das16m1_ai_check_chanlist, %cleanup36)) #8
          to label %if.then7 [label %cleanup36], !srcloc !70

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %5, ptr noundef nonnull @.str.13) #8
  br label %cleanup36

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup36_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup36_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %rem12 = srem i32 %i.08, 2
  %rem13 = and i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem12, i32 %rem13)
  %cmp14.not = icmp eq i32 %rem12, %rem13
  br i1 %cmp14.not, label %for.cond, label %do.body16

do.body16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das16m1_ai_check_chanlist, %cleanup36)) #8
          to label %if.then30 [label %cleanup36], !srcloc !70

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %9, ptr noundef nonnull @.str.14) #8
  br label %cleanup36

cleanup36:                                        ; preds = %if.then30, %do.body16, %for.cond.cleanup36_crit_edge, %if.then7, %do.body, %for.cond.preheader.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup36_crit_edge ], [ -22, %if.then7 ], [ -22, %if.then30 ], [ -22, %do.body ], [ -22, %do.body16 ], [ 0, %for.cond.preheader.cleanup36_crit_edge ], [ 0, %for.cond.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_set_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_das16m1__236_617_das16m1_driver_init6, !1, !"__initcall__kmod_das16m1__236_617_das16m1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das16m1.c", i32 617, i32 1}
!2 = !{ptr @__exitcall_das16m1_driver_exit, !1, !"__exitcall_das16m1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/das16m1.c", i32 619, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/das16m1.c", i32 620, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/das16m1.c", i32 621, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das16m1.c", i32 612, i32 17}
!12 = !{ptr @das16m1_driver, !13, !"das16m1_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/das16m1.c", i32 611, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/das16m1.c", i32 456, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @das16m1_interrupt._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @das16m1_interrupt._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/das16m1.c", i32 465, i32 3}
!24 = !{ptr @das16m1_interrupt._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @das16m1_interrupt._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/das16m1.c", i32 429, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @das16m1_handler._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @das16m1_handler._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @range_das16m1, !32, !"range_das16m1", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/das16m1.c", i32 82, i32 35}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/das16m1.c", i32 148, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug234, !34, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/das16m1.c", i32 157, i32 4}
!39 = !{ptr @das16m1_ai_check_chanlist.__UNIQUE_ID_ddebug235, !38, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2154222830}
!50 = !{i64 5035744}
!51 = !{i64 2154223242}
!52 = !{i64 5036139}
!53 = !{i64 2154220378}
!54 = !{i64 2154222336}
!55 = !{i64 2154205812}
!56 = !{i64 2154206259}
!57 = !{i64 2154214170}
!58 = !{i64 2154214519}
!59 = !{i64 5035521}
!60 = !{i64 2154215333}
!61 = !{i32 0, i32 33}
!62 = !{i64 2154212141}
!63 = !{i64 2154212490}
!64 = !{i64 2154212938}
!65 = !{i64 2154213434}
!66 = !{i64 2154218495}
!67 = !{i64 2154215660}
!68 = !{i64 2154215889}
!69 = !{i64 2154213863}
!70 = !{i64 2148968496, i64 2148968501, i64 2148968514, i64 2148968558, i64 2148968592, i64 2148968613}
