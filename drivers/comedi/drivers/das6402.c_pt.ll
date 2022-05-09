; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das6402.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das6402.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.das6402_boardinfo = type { ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.das6402_private = type { i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_das6402__238_663_das6402_driver_init6 = internal global ptr @das6402_driver_init, section ".initcall6.init", align 4
@das6402_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @das6402_attach, ptr @comedi_legacy_detach, ptr null, i32 2, ptr @das6402_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_das6402_driver_exit = internal global ptr @das6402_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [64 x i8] c"das6402.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [64 x i8] c"das6402.description=Comedi driver for DAS6402 compatible boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [44 x i8] c"das6402.file=drivers/comedi/drivers/das6402\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [20 x i8] c"das6402.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das6402\00", [24 x i8] zeroinitializer }, align 32
@das6402_boards = internal global { [2 x %struct.das6402_boardinfo], [16 x i8] } { [2 x %struct.das6402_boardinfo] [%struct.das6402_boardinfo { ptr @.str.9, i32 4095 }, %struct.das6402_boardinfo { ptr @.str.10, i32 65535 }], [16 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das6402_ai_ranges = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@das6402_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"das6402_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/das6402.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chanlist must be consecutive\0A\00", [34 x i8] zeroinitializer }, align 32
@das6402_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"chanlist must have the same range\0A\00", [61 x i8] zeroinitializer }, align 32
@das6402_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chanlist must have the same reference\0A\00", [57 x i8] zeroinitializer }, align 32
@das6402_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chanlist differential channel too large\0A\00", [55 x i8] zeroinitializer }, align 32
@das6402_ao_ranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das6402-12\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das6402-16\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 15]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"das6402_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 654, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 655, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"das6402_boards\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 120, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"das6402_ai_ranges\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 88, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 261, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 267, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 273, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 279, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"das6402_ao_ranges\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 106, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 122, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [36 x i8] c"../drivers/comedi/drivers/das6402.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 125, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_das6402_driver_exit, ptr @__initcall__kmod_das6402__238_663_das6402_driver_init6, ptr @das6402_driver_exit, ptr @das6402_driver, ptr @.str, ptr @das6402_boards, ptr @das6402_ai_ranges, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @das6402_ao_ranges, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das6402_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das6402_boards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das6402_ai_ranges to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das6402_ao_ranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @das6402_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @das6402_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @das6402_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 11
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 16) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %10, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 16) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add5.i.i = add i32 %13, 8
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %14 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -112) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add13.i.i = add i32 %16, 8
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %17 = inttoptr i32 %add15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -128) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add6.i = add i32 %19, 9
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %20 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add.i70.i = add i32 %22, 11
  %and.i71.i = and i32 %add.i70.i, 1048575
  %add1.i72.i = or i32 %and.i71.i, -18874368
  %23 = inttoptr i32 %add1.i72.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 112) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add14.i = add i32 %25, 2
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %26 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 0) #5, !srcloc !55
  %ao_range.i = getelementptr inbounds %struct.das6402_private, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %ao_range.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 160, ptr %ao_range.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %ao_range.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ao_range.i, align 4
  %conv.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i, align 4
  %add23.i = add i32 %31, 10
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %32 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i, align 4
  %add31.i = add i32 %34, 4
  %and32.i = and i32 %add31.i, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %35 = inttoptr i32 %add33.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 0) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add39.i = add i32 %37, 4
  %and40.i = and i32 %add39.i, 1048575
  %add41.i = or i32 %and40.i, -18874368
  %38 = inttoptr i32 %add41.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 0) #5, !srcloc !55
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i, align 4
  %add44.i = add i32 %40, 4
  %and45.i = and i32 %add44.i, 1048575
  %add46.i = or i32 %and45.i, -18874368
  %41 = inttoptr i32 %add46.i to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %add53.i = add i32 %44, 3
  %and54.i = and i32 %add53.i, 1048575
  %add55.i = or i32 %and54.i, -18874368
  %45 = inttoptr i32 %add55.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add.i74.i = add i32 %47, 8
  %and.i75.i = and i32 %add.i74.i, 1048575
  %add1.i76.i = or i32 %and.i75.i, -18874368
  %48 = inttoptr i32 %add1.i76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 7) #5, !srcloc !48
  %arrayidx6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx6, align 4
  %shl = shl nuw i32 1, %50
  %and = and i32 %shl, 36076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end24_crit_edge, label %if.then8

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then8:                                         ; preds = %if.end4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %51 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %50, ptr noundef nonnull @das6402_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %52, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then12, label %if.then8.if.end24_crit_edge

if.then8.if.end24_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then12:                                        ; preds = %if.then8
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx6, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %irq, align 4
  %56 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %sw.default [
    i32 10, label %if.then12.if.end24.sink.split_crit_edge
    i32 11, label %sw.bb17
    i32 15, label %sw.bb19
  ]

if.then12.if.end24.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split

sw.bb17:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split

sw.bb19:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split

sw.default:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %sw.default, %sw.bb19, %sw.bb17, %if.then12.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ %54, %sw.default ], [ 6, %sw.bb19 ], [ 1, %sw.bb17 ], [ 4, %if.then12.if.end24.sink.split_crit_edge ]
  %57 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %call, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.then8.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i, align 4
  %add = add i32 %59, 12
  %call25 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 100, i32 noundef 1, i32 noundef 0) #5
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %60 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call25, ptr %pacer, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %61 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 4
  %64 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 64, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.das6402_boardinfo, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %maxdata, align 4
  %maxdata35 = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 13
  %68 = ptrtoint ptr %maxdata35 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %maxdata35, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 15
  %69 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @das6402_ai_ranges, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 18
  %70 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @das6402_ai_insn_read, ptr %insn_read, align 4
  %irq36 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %71 = ptrtoint ptr %irq36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool37.not = icmp eq i32 %72, 0
  br i1 %tobool37.not, label %if.end33.if.end41_crit_edge, label %if.then38

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %73 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %62, ptr %read_subdev, align 4
  %74 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %75, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %76 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 5
  %78 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 23
  %79 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @das6402_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 22
  %80 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @das6402_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 25
  %81 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @das6402_ai_cancel, ptr %cancel, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end33.if.end41_crit_edge
  %82 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %subdevices, align 4
  %arrayidx43 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1
  %type44 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 2
  %84 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %type44, align 4
  %subdev_flags45 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 4
  %85 = ptrtoint ptr %subdev_flags45 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 131072, ptr %subdev_flags45, align 4
  %n_chan46 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 3
  %86 = ptrtoint ptr %n_chan46 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %n_chan46, align 4
  %87 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %maxdata, align 4
  %maxdata48 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 13
  %89 = ptrtoint ptr %maxdata48 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %maxdata48, align 4
  %range_table49 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 15
  %90 = ptrtoint ptr %range_table49 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @das6402_ao_ranges, ptr %range_table49, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 19
  %91 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @das6402_ao_insn_write, ptr %insn_write, align 4
  %insn_read50 = getelementptr %struct.comedi_subdevice, ptr %83, i32 1, i32 18
  %92 = ptrtoint ptr %insn_read50 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @das6402_ao_insn_read, ptr %insn_read50, align 4
  %call51 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx43) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 2
  %95 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 4
  %96 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 65536, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 3
  %97 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 13
  %98 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 15
  %99 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %94, i32 2, i32 20
  %100 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @das6402_di_insn_bits, ptr %insn_bits, align 4
  %101 = load ptr, ptr %subdevices, align 4
  %type64 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 2
  %102 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 4, ptr %type64, align 4
  %subdev_flags65 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 4
  %103 = ptrtoint ptr %subdev_flags65 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 131072, ptr %subdev_flags65, align 4
  %n_chan66 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 3
  %104 = ptrtoint ptr %n_chan66 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 8, ptr %n_chan66, align 4
  %maxdata67 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 13
  %105 = ptrtoint ptr %maxdata67 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %maxdata67, align 4
  %range_table68 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 15
  %106 = ptrtoint ptr %range_table68 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @range_unipolar5, ptr %range_table68, align 4
  %insn_bits69 = getelementptr %struct.comedi_subdevice, ptr %101, i32 3, i32 20
  %107 = ptrtoint ptr %insn_bits69 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @das6402_do_insn_bits, ptr %insn_bits69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end41.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call51, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 8
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %6 = inttoptr i32 %add3 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %conv = zext i8 %7 to i32
  %and5 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp = icmp eq i32 %and5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %events = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %events, align 4
  %or = or i32 %9, 32
  store i32 %or, ptr %events, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end
  %and9 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end24_crit_edge, label %if.then11

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %and.i = and i32 %11, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #5, !srcloc !59
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %16)
  %cmp.i = icmp eq i32 %16, 4095
  %shr.i = lshr i16 %14, 4
  %spec.select.i = select i1 %cmp.i, i16 %shr.i, i16 %14
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %spec.select.i, ptr %val, align 2
  %call14 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #5
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %18 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp15 = icmp eq i32 %19, 32
  br i1 %cmp15, label %land.lhs.true, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then11
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %22 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp17.not = icmp ult i32 %21, %23
  br i1 %cmp17.not, label %land.lhs.true.if.end22_crit_edge, label %if.then19

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %events20 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %24 = ptrtoint ptr %events20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events20, align 4
  %or21 = or i32 %25, 2
  store i32 %or21, ptr %events20, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %if.then11.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.else.if.end24_crit_edge, %if.then8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add.i = add i32 %27, 8
  %and.i44 = and i32 %add.i, 1048575
  %add1.i45 = or i32 %and.i44, -18874368
  %28 = inttoptr i32 %add1.i45 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 7) #5, !srcloc !48
  %call25 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %2 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %2)
  %cmp = icmp eq i32 %2, 33554432
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %1, 65535
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %4, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %div)
  %cmp3 = icmp ugt i32 %and, %div
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 9
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #5, !srcloc !48
  %8 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanspec, align 4
  %shr.i = lshr i32 %9, 16
  %and.i = and i32 %shr.i, 255
  %shl.i = shl nuw nsw i32 %and.i, 2
  %10 = and i32 %9, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %or3.i = or i32 %shl.i, 32
  %spec.select.i = select i1 %cmp.i, i32 %or3.i, i32 %shl.i
  %range_table.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %11 = ptrtoint ptr %range_table.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %range_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %12, i32 0, i32 1, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %or5.i = or i32 %spec.select.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i12.i = icmp slt i32 %14, 0
  %mode.addr.1.i = select i1 %cmp.i12.i, i32 %spec.select.i, i32 %or5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %15 = trunc i32 %mode.addr.1.i to i8
  %conv.i.i = or i8 %15, 16
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %17, 11
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %19 = trunc i32 %1 to i16
  %20 = and i16 %19, 63
  %conv = mul nuw nsw i16 %20, 257
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add14 = add i32 %23, 2
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %24 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #5, !srcloc !55
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %25 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1861.not = icmp eq i32 %26, 0
  br i1 %cmp1861.not, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end22.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add.i = add i32 %28, 8
  %and.i47 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i47, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 1) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase, align 4
  %and.i49 = and i32 %31, 1048575
  %add1.i50 = or i32 %and.i49, -18874368
  %32 = inttoptr i32 %add1.i50 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 0) #5, !srcloc !55
  %call20 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das6402_ai_eoc, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end22, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end22:                                         ; preds = %for.body
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %and.i52 = and i32 %34, 1048575
  %add1.i53 = or i32 %and.i52, -18874368
  %35 = inttoptr i32 %add1.i53 to ptr
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %35) #5, !srcloc !59
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %conv.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %39)
  %cmp.i54 = icmp eq i32 %39, 4095
  %shr.i55 = lshr i32 %conv.i, 4
  %spec.select.i56 = select i1 %cmp.i54, i32 %shr.i55, i32 %conv.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.062
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i56, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.062, 1
  %41 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n, align 4
  %cmp18 = icmp ult i32 %inc, %42
  br i1 %cmp18, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %add.i58 = add i32 %44, 8
  %and.i59 = and i32 %add.i58, 1048575
  %add1.i60 = or i32 %and.i59, -18874368
  %45 = inttoptr i32 %add1.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 1) #5, !srcloc !48
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %47, %for.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #5
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
  %and.i95 = and i32 %3, 4
  store i32 %and.i95, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %cmp.i96 = icmp ne i32 %and.i95, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i95, i32 %3)
  %cmp1.not.i97 = icmp eq i32 %and.i95, %3
  %or.cond.i98 = and i1 %cmp.i96, %cmp1.not.i97
  %4 = select i1 %or.cond.i, i1 %or.cond.i98, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i100 = and i32 %6, 16
  store i32 %and.i100, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %cmp.i101 = icmp ne i32 %and.i100, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i100, i32 %6)
  %cmp1.not.i102 = icmp eq i32 %and.i100, %6
  %or.cond.i103 = and i1 %cmp.i101, %cmp1.not.i102
  %7 = select i1 %4, i1 %or.cond.i103, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i105 = and i32 %9, 32
  store i32 %and.i105, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %cmp.i106 = icmp ne i32 %and.i105, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i105, i32 %9)
  %cmp1.not.i107 = icmp eq i32 %and.i105, %9
  %or.cond.i108 = and i1 %cmp.i106, %cmp1.not.i107
  %10 = select i1 %7, i1 %or.cond.i108, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i110 = and i32 %12, 33
  store i32 %and.i110, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp.i111 = icmp ne i32 %and.i110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i110, i32 %12)
  %cmp1.not.i112 = icmp eq i32 %and.i110, %12
  %or.cond.i113 = and i1 %cmp.i111, %cmp1.not.i112
  %13 = select i1 %10, i1 %or.cond.i113, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %12) #5, !range !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i115 = icmp eq i32 %16, 0
  br i1 %cmp.not.i115, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end14.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i116 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i117 = icmp eq i32 %19, 0
  br i1 %cmp.not.i117, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit120_crit_edge, label %if.then.i118

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit120_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit120

if.then.i118:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit120

comedi_check_trigger_arg_is.exit120:              ; preds = %if.then.i118, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit120_crit_edge
  %retval.0.i119 = phi i32 [ -22, %if.then.i118 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit120_crit_edge ]
  %or18 = or i32 %retval.0.i119, %retval.0.i116
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %22)
  %cmp.i121 = icmp ult i32 %22, 10000
  br i1 %cmp.i121, label %if.then.i122, label %comedi_check_trigger_arg_is.exit120.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_is.exit120.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit120
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_min.exit

if.then.i122:                                     ; preds = %comedi_check_trigger_arg_is.exit120
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i122, %comedi_check_trigger_arg_is.exit120.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i123 = phi i32 [ -22, %if.then.i122 ], [ 0, %comedi_check_trigger_arg_is.exit120.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i123
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i124 = icmp eq i32 %25, 0
  br i1 %cmp.i124, label %if.then.i125, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_min.exit127_crit_edge

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_min.exit127_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_min.exit127

if.then.i125:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit127

comedi_check_trigger_arg_min.exit127:             ; preds = %if.then.i125, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_min.exit127_crit_edge
  %retval.0.i126 = phi i32 [ -22, %if.then.i125 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_min.exit127_crit_edge ]
  %or22 = or i32 %or20, %retval.0.i126
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %27 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chanlist_len, align 4
  %29 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.not.i128 = icmp eq i32 %30, %28
  br i1 %cmp.not.i128, label %comedi_check_trigger_arg_min.exit127.comedi_check_trigger_arg_is.exit131_crit_edge, label %if.then.i129

comedi_check_trigger_arg_min.exit127.comedi_check_trigger_arg_is.exit131_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit127
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit131

if.then.i129:                                     ; preds = %comedi_check_trigger_arg_min.exit127
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit131

comedi_check_trigger_arg_is.exit131:              ; preds = %if.then.i129, %comedi_check_trigger_arg_min.exit127.comedi_check_trigger_arg_is.exit131_crit_edge
  %retval.0.i130 = phi i32 [ -22, %if.then.i129 ], [ 0, %comedi_check_trigger_arg_min.exit127.comedi_check_trigger_arg_is.exit131_crit_edge ]
  %or25 = or i32 %or22, %retval.0.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %32 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i132 = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %comedi_check_trigger_arg_is.exit131
  br i1 %cmp.i132, label %if.then27.if.end33.sink.split_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then27.if.end33.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit131
  br i1 %cmp.i132, label %if.else.if.end33_crit_edge, label %if.else.if.end33.sink.split_crit_edge

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.sink.split

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %if.then27.if.end33.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then27.if.end33.sink.split_crit_edge ], [ 0, %if.else.if.end33.sink.split_crit_edge ]
  %34 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %if.then27.if.end33_crit_edge
  %call28.pn = phi i32 [ 0, %if.then27.if.end33_crit_edge ], [ 0, %if.else.if.end33_crit_edge ], [ -22, %if.end33.sink.split ]
  %err.0 = or i32 %or25, %call28.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool34.not = icmp eq i32 %err.0, 0
  br i1 %tobool34.not, label %if.end36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %35 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_arg, align 4
  %37 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %38 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %39, ptr noundef nonnull %arg, i32 noundef %41) #5
  %42 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arg, align 4
  %44 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.not.i140 = icmp eq i32 %45, %43
  br i1 %cmp.not.i140, label %if.end43, label %comedi_check_trigger_arg_is.exit143

comedi_check_trigger_arg_is.exit143:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %convert_arg, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %47 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chanlist, align 4
  %tobool44.not = icmp eq ptr %48, null
  br i1 %tobool44.not, label %if.end43.if.end50.thread_crit_edge, label %land.lhs.true

if.end43.if.end50.thread_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.thread

land.lhs.true:                                    ; preds = %if.end43
  %49 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp46.not = icmp eq i32 %50, 0
  br i1 %cmp46.not, label %land.lhs.true.if.end50.thread_crit_edge, label %if.end50

land.lhs.true.if.end50.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.thread

if.end50:                                         ; preds = %land.lhs.true
  %call48 = call fastcc i32 @das6402_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %phi.cmp = icmp eq i32 %call48, 0
  br i1 %phi.cmp, label %if.end50.if.end50.thread_crit_edge, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50.if.end50.thread_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %if.end50.if.end50.thread_crit_edge, %land.lhs.true.if.end50.thread_crit_edge, %if.end43.if.end50.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50.thread, %if.end50.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit143, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end33.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit143 ], [ 0, %if.end50.thread ], [ 5, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %8 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanlist_len, align 4
  %sub = add i32 %9, -1
  %arrayidx3 = getelementptr i32, ptr %5, i32 %sub
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %shr.i = lshr i32 %7, 16
  %and.i = and i32 %shr.i, 255
  %shl.i = shl nuw nsw i32 %and.i, 2
  %12 = and i32 %7, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %spec.select.i.v = select i1 %cmp.i, i32 36, i32 4
  %spec.select.i = or i32 %shl.i, %spec.select.i.v
  %range_table.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %13 = ptrtoint ptr %range_table.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %range_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %14, i32 0, i32 1, i32 %and.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %or5.i = or i32 %spec.select.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i12.i = icmp slt i32 %16, 0
  %mode.addr.1.i = select i1 %cmp.i12.i, i32 %spec.select.i, i32 %or5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %17 = trunc i32 %mode.addr.1.i to i8
  %conv.i.i = or i8 %17, 16
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %19, 11
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %20 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %and7 = shl i32 %11, 8
  %shl = and i32 %and7, 16128
  %and8 = and i32 %7, 63
  %or = or i32 %shl, %and8
  %conv = trunc i32 %or to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %22 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i.i, align 4
  %add = add i32 %23, 2
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %24 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #5, !srcloc !55
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %25 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %26) #5
  %27 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %28, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %.tr = trunc i32 %30 to i8
  %31 = shl i8 %.tr, 4
  %conv19 = or i8 %31, -125
  %32 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i.i, align 4
  %add21 = add i32 %33, 9
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %34 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv19) #5, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 9
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #5, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %ao_range = getelementptr inbounds %struct.das6402_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ao_range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ao_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 4, i32 6
  %shl = shl nuw nsw i32 3, %cond
  %neg = xor i32 %shl, -1
  %and3 = and i32 %5, %neg
  %shl6 = shl nuw nsw i32 %and2, %cond
  %or = or i32 %and3, %shl6
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp.not = icmp eq i32 %or, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ao_range to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %ao_range, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %or to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 10
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv) #5, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1181.not = icmp eq i32 %11, 0
  br i1 %cmp1181.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %iobase33 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul34 = shl nuw nsw i32 %and, 1
  %add35 = add nuw nsw i32 %mul34, 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.082
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readback, align 4
  %arrayidx13 = getelementptr i32, ptr %15, i32 %and
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx13, align 4
  %17 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %18)
  %cmp14 = icmp eq i32 %18, 4095
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp14, label %if.then16, label %do.body28

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %.tr = trunc i32 %13 to i16
  %conv21 = shl i16 %.tr, 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %20 = ptrtoint ptr %iobase33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase33, align 4
  %add24 = add i32 %add35, %21
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %22 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #5, !srcloc !55
  br label %for.inc

do.body28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv32 = trunc i32 %13 to i8
  %23 = ptrtoint ptr %iobase33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase33, align 4
  %add36 = add i32 %24, %add35
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %25 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv32) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %shr43 = lshr i32 %13, 8
  %conv45 = trunc i32 %shr43 to i8
  %26 = ptrtoint ptr %iobase33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase33, align 4
  %add49 = add i32 %27, %add35
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %28 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv45) #5, !srcloc !48
  br label %for.inc

for.inc:                                          ; preds = %do.body28, %if.then16
  %inc = add nuw i32 %i.082, 1
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n, align 4
  %cmp11 = icmp ult i32 %inc, %30
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %30, %for.inc.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ao_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and = shl i32 %1, 1
  %mul = and i32 %and, 131070
  %add = add i32 %3, 4
  %add1 = add i32 %add, %mul
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %4 = inttoptr i32 %add3 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %call5 = tail call i32 @comedi_readback_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #5
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #5, !srcloc !48
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das6402_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das6402_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 65535
  %shr6 = lshr i32 %3, 24
  %and7 = and i32 %shr6, 3
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp135 = icmp ugt i32 %5, 1
  br i1 %cmp135, label %for.body.lr.ph, label %entry.cleanup94_crit_edge

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and7)
  %cmp69 = icmp eq i32 %and7, 2
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr i32, ptr %1, i32 %i.0136
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 4
  %and10 = and i32 %7, 65535
  %shr17 = lshr i32 %7, 24
  %and18 = and i32 %shr17, 3
  %add = add i32 %i.0136, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %add)
  %cmp19.not = icmp eq i32 %and10, %add
  br i1 %cmp19.not, label %if.end24, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das6402_ai_check_chanlist, %cleanup94)) #5
          to label %if.then23 [label %cleanup94], !srcloc !80

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %9, ptr noundef nonnull @.str.4) #5
  br label %cleanup94

if.end24:                                         ; preds = %for.body
  %shr13114 = xor i32 %7, %3
  %10 = and i32 %shr13114, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25.not = icmp eq i32 %10, 0
  br i1 %cmp25.not, label %if.end46, label %do.body27

do.body27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das6402_ai_check_chanlist, %cleanup94)) #5
          to label %if.then41 [label %cleanup94], !srcloc !80

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev42 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %12, ptr noundef nonnull @.str.5) #5
  br label %cleanup94

if.end46:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %and7)
  %cmp47.not = icmp eq i32 %and18, %and7
  br i1 %cmp47.not, label %if.end68, label %do.body49

do.body49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das6402_ai_check_chanlist, %cleanup94)) #5
          to label %if.then63 [label %cleanup94], !srcloc !80

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev64 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %14, ptr noundef nonnull @.str.6) #5
  br label %cleanup94

if.end68:                                         ; preds = %if.end46
  br i1 %cmp69, label %land.lhs.true, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end68
  %15 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %16, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %div)
  %cmp70 = icmp ugt i32 %and10, %div
  br i1 %cmp70, label %do.body72, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das6402_ai_check_chanlist, %cleanup94)) #5
          to label %if.then86 [label %cleanup94], !srcloc !80

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev87 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %18, ptr noundef nonnull @.str.7) #5
  br label %cleanup94

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end68.for.inc_crit_edge
  %inc = add nuw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup94_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup94_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup94

cleanup94:                                        ; preds = %for.inc.cleanup94_crit_edge, %if.then86, %do.body72, %if.then63, %do.body49, %if.then41, %do.body27, %if.then23, %do.body, %entry.cleanup94_crit_edge
  %retval.2 = phi i32 [ -22, %if.then23 ], [ -22, %if.then41 ], [ -22, %if.then63 ], [ -22, %if.then86 ], [ -22, %do.body ], [ -22, %do.body27 ], [ -22, %do.body49 ], [ -22, %do.body72 ], [ 0, %entry.cleanup94_crit_edge ], [ 0, %for.inc.cleanup94_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_readback_insn_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_das6402__238_663_das6402_driver_init6, !1, !"__initcall__kmod_das6402__238_663_das6402_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das6402.c", i32 663, i32 1}
!2 = !{ptr @__exitcall_das6402_driver_exit, !1, !"__exitcall_das6402_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/das6402.c", i32 665, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/das6402.c", i32 666, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/das6402.c", i32 667, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das6402.c", i32 655, i32 17}
!12 = !{ptr @das6402_driver, !13, !"das6402_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/das6402.c", i32 654, i32 29}
!14 = !{ptr @das6402_ai_ranges, !15, !"das6402_ai_ranges", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/das6402.c", i32 88, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/das6402.c", i32 261, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug234, !17, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/das6402.c", i32 267, i32 4}
!23 = !{ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug235, !22, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/das6402.c", i32 273, i32 4}
!26 = !{ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug236, !25, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/das6402.c", i32 279, i32 4}
!29 = !{ptr @das6402_ai_check_chanlist.__UNIQUE_ID_ddebug237, !28, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!30 = !{ptr @das6402_ao_ranges, !31, !"das6402_ao_ranges", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/das6402.c", i32 106, i32 35}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/das6402.c", i32 122, i32 12}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/das6402.c", i32 125, i32 12}
!36 = !{ptr @das6402_boards, !37, !"das6402_boards", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/das6402.c", i32 120, i32 33}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2154226901}
!48 = !{i64 4631567}
!49 = !{i64 2154205950}
!50 = !{i64 2154206413}
!51 = !{i64 2154206764}
!52 = !{i64 2154227377}
!53 = !{i64 2154205493}
!54 = !{i64 2154228062}
!55 = !{i64 4631144}
!56 = !{i64 2154228678}
!57 = !{i64 2154229095}
!58 = !{i64 2154229619}
!59 = !{i64 4631344}
!60 = !{i64 2154230620}
!61 = !{i64 2154230842}
!62 = !{i64 2154207445}
!63 = !{i64 4631962}
!64 = !{i64 2154209018}
!65 = !{i64 2154208716}
!66 = !{i64 2154222397}
!67 = !{i64 2154222917}
!68 = !{i64 2154207902}
!69 = !{i64 2154221451}
!70 = !{i32 0, i32 33}
!71 = !{i64 2154210010}
!72 = !{i64 2154210769}
!73 = !{i64 2154221066}
!74 = !{i64 2154223598}
!75 = !{i64 2154224955}
!76 = !{i64 2154225913}
!77 = !{i64 2154226215}
!78 = !{i64 2154226444}
!79 = !{i64 2154221971}
!80 = !{i64 2148969259, i64 2148969264, i64 2148969277, i64 2148969321, i64 2148969355, i64 2148969376}
