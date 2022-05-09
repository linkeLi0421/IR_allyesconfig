; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dmm32at.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dmm32at.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_dmm32at__236_611_dmm32at_driver_init6 = internal global ptr @dmm32at_driver_init, section ".initcall6.init", align 4
@dmm32at_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dmm32at_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dmm32at_driver_exit = internal global ptr @dmm32at_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"dmm32at.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"dmm32at.description=Comedi: Diamond Systems Diamond-MM-32-AT\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"dmm32at.file=drivers/comedi/drivers/dmm32at\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [20 x i8] c"dmm32at.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmm32at\00", [24 x i8] zeroinitializer }, align 32
@dmm32at_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"board detection failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmm32at_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/dmm32at.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dmm32at_attach._entry_ptr = internal global ptr @dmm32at_attach._entry, section ".printk_index", align 4
@dmm32at_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmm32at_isr\00", [20 x i8] zeroinitializer }, align 32
@dmm32at_isr._entry_ptr = internal global ptr @dmm32at_isr._entry, section ".printk_index", align 4
@dmm32at_airanges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@dmm32at_rangebits = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0C\0D\08\00", [28 x i8] zeroinitializer }, align 32
@dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dmm32at_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", [60 x i8] zeroinitializer }, align 32
@dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"entries in chanlist must all have the same gain\0A\00", [47 x i8] zeroinitializer }, align 32
@dmm32at_aoranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"dmm32at_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 605, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 606, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 555, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 410, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"dmm32at_airanges\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 129, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"dmm32at_rangebits\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 139, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 245, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 250, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"dmm32at_aoranges\00", align 1
@___asan_gen_.62 = private constant [36 x i8] c"../drivers/comedi/drivers/dmm32at.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 149, i32 35 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_dmm32at_driver_exit, ptr @__initcall__kmod_dmm32at__236_611_dmm32at_driver_init6, ptr @dmm32at_attach._entry, ptr @dmm32at_attach._entry_ptr, ptr @dmm32at_driver_exit, ptr @dmm32at_isr._entry, ptr @dmm32at_isr._entry_ptr, ptr @dmm32at_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dmm32at_airanges, ptr @dmm32at_rangebits, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dmm32at_aoranges], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_airanges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_rangebits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm32at_aoranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dmm32at_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmm32at_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dmm32at_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #6, !srcloc !50
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add6.i = add i32 %6, 7
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %7 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add14.i = add i32 %9, 9
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %10 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add22.i = add i32 %12, 2
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %13 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -128) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add30.i = add i32 %15, 3
  %and31.i = and i32 %add30.i, 1048575
  %add32.i = or i32 %and31.i, -18874368
  %16 = inttoptr i32 %add32.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -1) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add38.i = add i32 %18, 11
  %and39.i = and i32 %add38.i, 1048575
  %add40.i = or i32 %and39.i, -18874368
  %19 = inttoptr i32 %add40.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 12) #6, !srcloc !50
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add43.i = add i32 %21, 2
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %22 = inttoptr i32 %add45.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add50.i = add i32 %25, 3
  %and51.i = and i32 %add50.i, 1048575
  %add52.i = or i32 %and51.i, -18874368
  %26 = inttoptr i32 %add52.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add58.i = add i32 %29, 7
  %and59.i = and i32 %add58.i, 1048575
  %add60.i = or i32 %and59.i, -18874368
  %30 = inttoptr i32 %add60.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add66.i = add i32 %33, 8
  %and67.i = and i32 %add66.i, 1048575
  %add68.i = or i32 %and67.i, -18874368
  %34 = inttoptr i32 %add68.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add74.i = add i32 %37, 9
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %38 = inttoptr i32 %add76.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add82.i = add i32 %41, 11
  %and83.i = and i32 %add82.i, 1048575
  %add84.i = or i32 %and83.i, -18874368
  %42 = inttoptr i32 %add84.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %27)
  %cmp90.not.i = icmp eq i8 %27, 31
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp90.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %cmp94.not.i = icmp eq i8 %31, -128
  %or.cond124.i = select i1 %or.cond.i, i1 %cmp94.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %35)
  %cmp98.not.i = icmp eq i8 %35, 96
  %or.cond125.i = select i1 %or.cond124.i, i1 %cmp98.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp102.not.i = icmp eq i8 %39, 0
  %or.cond126.i = select i1 %or.cond125.i, i1 %cmp102.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %43)
  %cmp106.not.i = icmp eq i8 %43, 12
  %or.cond127.i = select i1 %or.cond126.i, i1 %cmp106.not.i, i1 false
  br i1 %or.cond127.i, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %44 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool7.not = icmp eq i32 %47, 0
  br i1 %tobool7.not, label %if.end4.if.end16_crit_edge, label %if.then8

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then8:                                         ; preds = %if.end4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %48 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %47, ptr noundef nonnull @dmm32at_isr, ptr noundef null, i32 noundef 0, ptr noundef %49, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then12, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx6, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %irq, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then8.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %call17 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %53 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 4
  %56 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 32, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 13
  %58 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 15
  %59 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @dmm32at_airanges, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 18
  %60 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @dmm32at_ai_insn_read, ptr %insn_read, align 4
  %irq22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %61 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool23.not = icmp eq i32 %62, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %63 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %54, ptr %read_subdev, align 4
  %64 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %65, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %66 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 5
  %68 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 22
  %69 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dmm32at_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 23
  %70 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dmm32at_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %54, i32 0, i32 25
  %71 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @dmm32at_ai_cancel, ptr %cancel, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %72 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %subdevices, align 4
  %arrayidx29 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1
  %type30 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 2
  %74 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %type30, align 4
  %subdev_flags31 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 4
  %75 = ptrtoint ptr %subdev_flags31 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 131072, ptr %subdev_flags31, align 4
  %n_chan32 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 3
  %76 = ptrtoint ptr %n_chan32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %n_chan32, align 4
  %maxdata33 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 13
  %77 = ptrtoint ptr %maxdata33 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4095, ptr %maxdata33, align 4
  %range_table34 = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 15
  %78 = ptrtoint ptr %range_table34 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dmm32at_aoranges, ptr %range_table34, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %73, i32 1, i32 19
  %79 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @dmm32at_ao_insn_write, ptr %insn_write, align 4
  %call35 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %subdevices, align 4
  %arrayidx40 = getelementptr %struct.comedi_subdevice, ptr %81, i32 2
  %call41 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx40, ptr noundef nonnull @dmm32at_8255_io, i32 noundef 12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end27.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call41, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call35, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_isr(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !63
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %1 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 9
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool4.not = icmp sgt i8 %7, -1
  br i1 %tobool4.not, label %if.end.do.body21_crit_edge, label %if.then5

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

if.then5:                                         ; preds = %if.end
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %8 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 17, i32 13
  %12 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46.not = icmp eq i32 %13, 0
  br i1 %cmp46.not, label %if.then5.for.end_crit_edge, label %for.body.lr.ph

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then5
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %and.i = and i32 %15, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %19, 1
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %20 = inttoptr i32 %add7.i to ptr
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %conv11.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %22 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxdata.i.i, align 4
  %xor.i.i = xor i32 %or.i, %23
  %shr.i.i = lshr i32 %23, 1
  %xor2.i.i = xor i32 %xor.i.i, %shr.i.i
  %conv9 = trunc i32 %xor2.i.i to i16
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv9, ptr %val, align 2
  %call10 = call i32 @comedi_buf_write_samples(ptr noundef %9, ptr noundef nonnull %val, i32 noundef 1) #6
  %inc = add nuw i32 %i.047, 1
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then5.for.end_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 17, i32 10
  %27 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp11 = icmp eq i32 %28, 32
  br i1 %cmp11, label %land.lhs.true, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %for.end
  %29 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 17, i32 11
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp14.not = icmp ult i32 %32, %34
  br i1 %cmp14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then16

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %events = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 16
  %35 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %events, align 4
  %or = or i32 %36, 2
  store i32 %or, ptr %events, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %for.end.if.end18_crit_edge
  %call19 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %9) #6
  br label %do.body21

do.body21:                                        ; preds = %if.end18, %if.end.do.body21_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add25 = add i32 %38, 8
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %39 = inttoptr i32 %add27 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 8) #6, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chan.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add2.i = add i32 %5, 7
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %6 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 2) #6, !srcloc !50
  %and.i = and i32 %1, 65535
  %rem.i = urem i32 %and.i, %3
  %shr.i = lshr i32 %1, 16
  %and1.i = and i32 %shr.i, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i32 %1 to i8
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add17.i = add i32 %8, 2
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %9 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv24.i = trunc i32 %rem.i to i8
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add26.i = add i32 %11, 3
  %and27.i = and i32 %add26.i, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %12 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv24.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr [4 x i8], ptr @dmm32at_rangebits, i32 0, i32 %and1.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add34.i = add i32 %16, 11
  %and35.i = and i32 %add34.i, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %17 = inttoptr i32 %add36.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #6, !srcloc !50
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dmm32at_ai_status, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp29.not = icmp eq i32 %19, 0
  br i1 %cmp29.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %do.body.lr.ph
  %i.030 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %if.end6.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %and = and i32 %21, 1048575
  %add1 = or i32 %and, -18874368
  %22 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 -1) #6, !srcloc !50
  %call3 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dmm32at_ai_status, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i, align 4
  %and.i27 = and i32 %24, 1048575
  %add1.i = or i32 %and.i27, -18874368
  %25 = inttoptr i32 %add1.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %conv.i28 = zext i8 %26 to i32
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %28, 1
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %29 = inttoptr i32 %add7.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %conv11.i = zext i8 %30 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i28
  %31 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %maxdata.i.i, align 4
  %xor.i.i = xor i32 %or.i, %32
  %shr.i.i = lshr i32 %32, 1
  %xor2.i.i = xor i32 %xor.i.i, %shr.i.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.030
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %xor2.i.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.030, 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %if.end6.do.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call3, %do.body.cleanup_crit_edge ], [ %35, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ai_cmd(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanlist, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 13
  %6 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanlist_len, align 4
  tail call fastcc void @dmm32at_ai_set_chanspec(ptr noundef %dev, ptr noundef %s, i32 noundef %5, i32 noundef %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add = add i32 %9, 8
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %10 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 8) #6, !srcloc !50
  %call3 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef null, ptr noundef nonnull @dmm32at_ai_status, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 11
  %13 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp4 = icmp ugt i32 %14, 1
  br i1 %cmp4, label %lor.lhs.false.if.then5_crit_edge, label %do.body6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 5
  %15 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_begin_arg, align 4
  %div.i = udiv i32 %16, 20000
  %and.i = lshr i32 %div.i, 8
  %conv2.i = trunc i32 %and.i to i8
  %conv5.i = trunc i32 %div.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add.i = add i32 %18, 10
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %19 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add12.i = add i32 %21, 8
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %22 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add20.i = add i32 %24, 15
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %25 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 86) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add28.i = add i32 %27, 13
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %28 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -56) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add36.i = add i32 %30, 15
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %31 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 -74) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add44.i = add i32 %33, 14
  %and45.i = and i32 %add44.i, 1048575
  %add46.i = or i32 %and45.i, -18874368
  %34 = inttoptr i32 %add46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv5.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add52.i = add i32 %36, 14
  %and53.i = and i32 %add52.i, 1048575
  %add54.i = or i32 %and53.i, -18874368
  %37 = inttoptr i32 %add54.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv2.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %add60.i = add i32 %39, 9
  %and61.i = and i32 %add60.i, 1048575
  %add62.i = or i32 %and61.i, -18874368
  %40 = inttoptr i32 %add62.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -125) #6, !srcloc !50
  br label %cleanup

do.body6:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add10 = add i32 %42, 9
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %43 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 -128) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %and19 = and i32 %45, 1048575
  %add20 = or i32 %and19, -18874368
  %46 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 -1) #6, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then5, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
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
  %and.i116 = and i32 %3, 16
  store i32 %and.i116, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i117 = icmp ne i32 %and.i116, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i116, i32 %3)
  %cmp1.not.i118 = icmp eq i32 %and.i116, %3
  %or.cond.i119 = and i1 %cmp.i117, %cmp1.not.i118
  %4 = select i1 %or.cond.i, i1 %or.cond.i119, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i121 = and i32 %6, 16
  store i32 %and.i121, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %cmp.i122 = icmp ne i32 %and.i121, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i121, i32 %6)
  %cmp1.not.i123 = icmp eq i32 %and.i121, %6
  %or.cond.i124 = and i1 %cmp.i122, %cmp1.not.i123
  %7 = select i1 %4, i1 %or.cond.i124, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i126 = and i32 %9, 32
  store i32 %and.i126, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %cmp.i127 = icmp ne i32 %and.i126, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i126, i32 %9)
  %cmp1.not.i128 = icmp eq i32 %and.i126, %9
  %or.cond.i129 = and i1 %cmp.i127, %cmp1.not.i128
  %10 = select i1 %7, i1 %or.cond.i129, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i131 = and i32 %12, 33
  store i32 %and.i131, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %cmp.i132 = icmp ne i32 %and.i131, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i131, i32 %12)
  %cmp1.not.i133 = icmp eq i32 %and.i131, %12
  %or.cond.i134 = and i1 %cmp.i132, %cmp1.not.i133
  %13 = select i1 %10, i1 %or.cond.i134, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i136 = icmp eq i32 %16, 0
  br i1 %cmp.not.i136, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end14.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i137 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %19)
  %cmp.i138 = icmp ult i32 %19, 1000000
  br i1 %cmp.i138, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge, label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit.sink.split

comedi_check_trigger_arg_min.exit:                ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %19)
  %cmp.i141 = icmp ugt i32 %19, 1000000000
  br i1 %cmp.i141, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit_crit_edge

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit.sink.split

comedi_check_trigger_arg_max.exit.sink.split:     ; preds = %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge
  %.sink = phi i32 [ 1000000, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ], [ 1000000000, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ]
  %or18163.ph = phi i32 [ -22, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ], [ %retval.0.i137, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ]
  %retval.0.i143.ph = phi i32 [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ], [ -22, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit.sink.split_crit_edge ]
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_max.exit:                ; preds = %comedi_check_trigger_arg_max.exit.sink.split, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit_crit_edge
  %or18163 = phi i32 [ %retval.0.i137, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit_crit_edge ], [ %or18163.ph, %comedi_check_trigger_arg_max.exit.sink.split ]
  %retval.0.i143 = phi i32 [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit_crit_edge ], [ %retval.0.i143.ph, %comedi_check_trigger_arg_max.exit.sink.split ]
  %or21 = or i32 %retval.0.i143, %or18163
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17499, i32 %22)
  %cmp = icmp ugt i32 %22, 17499
  br i1 %cmp, label %comedi_check_trigger_arg_max.exit.if.end37_crit_edge, label %if.else

comedi_check_trigger_arg_max.exit.if.end37_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.else:                                          ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499, i32 %22)
  %cmp25 = icmp ugt i32 %22, 12499
  br i1 %cmp25, label %if.else.if.end37_crit_edge, label %if.else28

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7499, i32 %22)
  %cmp30 = icmp ugt i32 %22, 7499
  %. = select i1 %cmp30, i32 10000, i32 5000
  br label %if.end37

if.end37:                                         ; preds = %if.else28, %if.else.if.end37_crit_edge, %comedi_check_trigger_arg_max.exit.if.end37_crit_edge
  %.sink167 = phi i32 [ 20000, %comedi_check_trigger_arg_max.exit.if.end37_crit_edge ], [ 15000, %if.else.if.end37_crit_edge ], [ %., %if.else28 ]
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink167, ptr %convert_arg, align 4
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i144 = icmp eq i32 %27, %25
  br i1 %cmp.not.i144, label %if.end37.comedi_check_trigger_arg_is.exit147_crit_edge, label %if.then.i145

if.end37.comedi_check_trigger_arg_is.exit147_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit147

if.then.i145:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit147

comedi_check_trigger_arg_is.exit147:              ; preds = %if.then.i145, %if.end37.comedi_check_trigger_arg_is.exit147_crit_edge
  %retval.0.i146 = phi i32 [ -22, %if.then.i145 ], [ 0, %if.end37.comedi_check_trigger_arg_is.exit147_crit_edge ]
  %or39 = or i32 %or21, %retval.0.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp41 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i148 = icmp eq i32 %30, 0
  br i1 %cmp41, label %if.then42, label %if.else45

if.then42:                                        ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.then42.if.end49.sink.split_crit_edge, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42.if.end49.sink.split_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.sink.split

if.else45:                                        ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.else45.if.end49_crit_edge, label %if.else45.if.end49.sink.split_crit_edge

if.else45.if.end49.sink.split_crit_edge:          ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.sink.split

if.else45.if.end49_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end49.sink.split:                              ; preds = %if.else45.if.end49.sink.split_crit_edge, %if.then42.if.end49.sink.split_crit_edge
  %.sink168 = phi i32 [ 1, %if.then42.if.end49.sink.split_crit_edge ], [ 0, %if.else45.if.end49.sink.split_crit_edge ]
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink168, ptr %stop_arg, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %if.else45.if.end49_crit_edge, %if.then42.if.end49_crit_edge
  %call43.pn = phi i32 [ 0, %if.then42.if.end49_crit_edge ], [ 0, %if.else45.if.end49_crit_edge ], [ -22, %if.end49.sink.split ]
  %err.0 = or i32 %or39, %call43.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool50.not = icmp eq i32 %err.0, 0
  br i1 %tobool50.not, label %if.end52, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end49
  %32 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %convert_arg, align 4
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %35, %33
  %36 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %mul)
  %cmp.i156 = icmp ult i32 %37, %mul
  br i1 %cmp.i156, label %comedi_check_trigger_arg_min.exit159, label %if.end60

comedi_check_trigger_arg_min.exit159:             ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul, ptr %scan_begin_arg, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %39 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chanlist, align 4
  %tobool61.not = icmp eq ptr %40, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp63.not = icmp eq i32 %25, 0
  %or.cond = select i1 %tobool61.not, i1 true, i1 %cmp63.not
  br i1 %or.cond, label %if.end60.if.end67.thread_crit_edge, label %if.end67

if.end60.if.end67.thread_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.thread

if.end67:                                         ; preds = %if.end60
  %call65 = tail call fastcc i32 @dmm32at_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %phi.cmp = icmp eq i32 %call65, 0
  br i1 %phi.cmp, label %if.end67.if.end67.thread_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67.if.end67.thread_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.thread

if.end67.thread:                                  ; preds = %if.end67.if.end67.thread_crit_edge, %if.end60.if.end67.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end67.thread, %if.end67.cleanup_crit_edge, %comedi_check_trigger_arg_min.exit159, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end49.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_min.exit159 ], [ 0, %if.end67.thread ], [ 5, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 9
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !50
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp40.not = icmp eq i32 %3, 0
  br i1 %cmp40.not, label %entry.cleanup23_crit_edge, label %for.body.lr.ph

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %shl = shl nuw nsw i32 %and, 6
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 4
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %shr = lshr i32 %5, 8
  %or = or i32 %shr, %shl
  %conv7 = trunc i32 %or to i8
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add9 = add i32 %10, 5
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %11 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv7) #6, !srcloc !50
  %call13 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dmm32at_ao_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup23_crit_edge

for.body.cleanup23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.inc:                                          ; preds = %for.body
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add15 = add i32 %13, 5
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %14 = inttoptr i32 %add17 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %16 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %readback, align 4
  %arrayidx20 = getelementptr i32, ptr %17, i32 %and
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %arrayidx20, align 4
  %inc = add nuw i32 %i.041, 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup23_crit_edge

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup23:                                        ; preds = %for.inc.cleanup23_crit_edge, %for.body.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup23_crit_edge ], [ %call13, %for.body.cleanup23_crit_edge ], [ %20, %for.inc.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_8255_io(ptr nocapture noundef readonly %dev, i32 noundef %dir, i32 noundef %port, i32 noundef %data, i32 noundef %regbase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #6, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %data to i8
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add5 = add i32 %regbase, %port
  %add6 = add i32 %add5, %4
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #6, !srcloc !50
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add11 = add i32 %regbase, %port
  %add12 = add i32 %add11, %7
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %conv17 = zext i8 %9 to i32
  br label %return

return:                                           ; preds = %if.end, %do.body2
  %retval.0 = phi i32 [ 0, %do.body2 ], [ %conv17, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmm32at_ai_set_chanspec(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %chanspec, i32 noundef %nchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_chan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add2 = add i32 %3, 7
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %4 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #6, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nchan)
  %cmp = icmp sgt i32 %nchan, 1
  br i1 %cmp, label %do.body5, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add9 = add i32 %6, 7
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 4) #6, !srcloc !50
  br label %do.body13

do.body13:                                        ; preds = %do.body5, %entry.do.body13_crit_edge
  %and = and i32 %chanspec, 65535
  %add = add i32 %nchan, -1
  %sub = add i32 %add, %and
  %rem = urem i32 %sub, %1
  %shr = lshr i32 %chanspec, 16
  %and1 = and i32 %shr, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %chanspec to i8
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add17 = add i32 %9, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %10 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv24 = trunc i32 %rem to i8
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add26 = add i32 %12, 3
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %13 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv24) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr [4 x i8], ptr @dmm32at_rangebits, i32 0, i32 %and1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add34 = add i32 %17, 11
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %18 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #6, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ai_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %context
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmm32at_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
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
  %and = and i32 %3, 65535
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp61 = icmp ugt i32 %5, 1
  br i1 %cmp61, label %for.body.lr.ph, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chan, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %inc = add nuw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup40_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %1, i32 %i.062
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %9, 65535
  %add = add i32 %i.062, %and
  %rem = urem i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %rem)
  %cmp11.not = icmp eq i32 %and6, %rem
  br i1 %cmp11.not, label %if.end16, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dmm32at_ai_check_chanlist, %cleanup40)) #6
          to label %if.then15 [label %cleanup40], !srcloc !94

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.10) #6
  br label %cleanup40

if.end16:                                         ; preds = %for.body
  %shr952 = xor i32 %9, %3
  %12 = and i32 %shr952, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %for.cond, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dmm32at_ai_check_chanlist, %cleanup40)) #6
          to label %if.then33 [label %cleanup40], !srcloc !94

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.11) #6
  br label %cleanup40

cleanup40:                                        ; preds = %if.then33, %do.body19, %if.then15, %do.body, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %if.then15 ], [ -22, %if.then33 ], [ -22, %do.body ], [ -22, %do.body19 ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmm32at_ao_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_dmm32at__236_611_dmm32at_driver_init6, !1, !"__initcall__kmod_dmm32at__236_611_dmm32at_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 611, i32 1}
!2 = !{ptr @__exitcall_dmm32at_driver_exit, !1, !"__exitcall_dmm32at_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 613, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 614, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 615, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 606, i32 17}
!12 = !{ptr @dmm32at_driver, !13, !"dmm32at_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 605, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 555, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dmm32at_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dmm32at_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 410, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dmm32at_isr._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dmm32at_isr._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @dmm32at_airanges, !28, !"dmm32at_airanges", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 129, i32 35}
!29 = !{ptr @dmm32at_rangebits, !30, !"dmm32at_rangebits", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 139, i32 28}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 245, i32 4}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug234, !32, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 250, i32 4}
!37 = !{ptr @dmm32at_ai_check_chanlist.__UNIQUE_ID_ddebug235, !36, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!38 = !{ptr @dmm32at_aoranges, !39, !"dmm32at_aoranges", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/dmm32at.c", i32 149, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2154228337}
!50 = !{i64 4639154}
!51 = !{i64 2154228688}
!52 = !{i64 2154229039}
!53 = !{i64 2154229391}
!54 = !{i64 2154229743}
!55 = !{i64 2154230100}
!56 = !{i64 4639549}
!57 = !{i64 2154230529}
!58 = !{i64 2154230831}
!59 = !{i64 2154231133}
!60 = !{i64 2154231435}
!61 = !{i64 2154231737}
!62 = !{i64 2154232039}
!63 = !{!"auto-init"}
!64 = !{i64 2154224910}
!65 = !{i64 2154211728}
!66 = !{i64 2154212030}
!67 = !{i64 2154225333}
!68 = !{i64 2154209761}
!69 = !{i64 2154210570}
!70 = !{i64 2154210927}
!71 = !{i64 2154211299}
!72 = !{i64 2154212648}
!73 = !{i64 2154221721}
!74 = !{i64 2154218422}
!75 = !{i64 2154218816}
!76 = !{i64 2154219173}
!77 = !{i64 2154219524}
!78 = !{i64 2154219881}
!79 = !{i64 2154220232}
!80 = !{i64 2154220583}
!81 = !{i64 2154221264}
!82 = !{i64 2154222206}
!83 = !{i64 2154222558}
!84 = !{i32 0, i32 33}
!85 = !{i64 2154222909}
!86 = !{i64 2154226108}
!87 = !{i64 2154226500}
!88 = !{i64 2154226929}
!89 = !{i64 2154227196}
!90 = !{i64 2154227553}
!91 = !{i64 2154228007}
!92 = !{i64 2154210218}
!93 = !{i64 2154212333}
!94 = !{i64 2148969098, i64 2148969103, i64 2148969116, i64 2148969160, i64 2148969194, i64 2148969215}
!95 = !{i64 2154225762}
