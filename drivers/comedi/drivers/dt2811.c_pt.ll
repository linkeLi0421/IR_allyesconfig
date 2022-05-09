; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt2811.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt2811.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.dt2811_board = type { ptr, i8 }
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
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_dt2811__234_640_dt2811_driver_init6 = internal global ptr @dt2811_driver_init, section ".initcall6.init", align 4
@dt2811_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dt2811_attach, ptr @comedi_legacy_detach, ptr null, i32 2, ptr @dt2811_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dt2811_driver_exit = internal global ptr @dt2811_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"dt2811.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [75 x i8] c"dt2811.description=Comedi driver for Data Translation DT2811 series boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"dt2811.file=drivers/comedi/drivers/dt2811\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"dt2811.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2811\00", [25 x i8] zeroinitializer }, align 32
@dt2811_boards = internal constant { [2 x %struct.dt2811_board], [16 x i8] } { [2 x %struct.dt2811_board] [%struct.dt2811_board { ptr @.str.4, i8 -128 }, %struct.dt2811_board { ptr @.str.5, i8 0 }], [16 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@dt2811_pgh_ai_ranges = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@dt2811_pgl_ai_ranges = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -250000, i32 250000, i32 0 }, %struct.comedi_krange { i32 -25000, i32 25000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@dt2811_clk_dividers = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 6, i32 12], [32 x i8] zeroinitializer }, align 32
@dt2811_ao_ranges = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }] }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt2811-pgh\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt2811-pgl\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"dt2811_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 631, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 632, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"dt2811_boards\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 168, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"dt2811_pgh_ai_ranges\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"dt2811_pgl_ai_ranges\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 127, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"dt2811_clk_dividers\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 89, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"dt2811_ao_ranges\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 155, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 170, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [35 x i8] c"../drivers/comedi/drivers/dt2811.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 173, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_dt2811_driver_exit, ptr @__initcall__kmod_dt2811__234_640_dt2811_driver_init6, ptr @dt2811_driver_exit, ptr @dt2811_driver, ptr @.str, ptr @dt2811_boards, ptr @dt2811_pgh_ai_ranges, ptr @dt2811_pgl_ai_ranges, ptr @dt2811_clk_dividers, ptr @dt2811_ao_ranges, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_boards to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_pgh_ai_ranges to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_pgl_ai_ranges to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_clk_dividers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2811_ao_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dt2811_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt2811_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dt2811_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 4) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %and.i = and i32 %5, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #6, !srcloc !40
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %8, 2
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add10.i = add i32 %12, 3
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %13 = inttoptr i32 %add12.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %and20.i = and i32 %16, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %17 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 16) #6, !srcloc !40
  %arrayidx6 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp = icmp slt i32 %19, 8
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end4
  %shl = shl nuw nsw i32 1, %19
  %and = and i32 %shl, 172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end19_crit_edge, label %if.then10

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then10:                                        ; preds = %land.lhs.true
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @dt2811_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %21, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp eq i32 %call.i, 0
  br i1 %cmp14, label %if.then15, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then10.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %call20 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %type, align 4
  %arrayidx26 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp27 = icmp eq i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp30 = icmp eq i32 %29, 2
  %phi.bo = select i1 %cmp30, i32 2162688, i32 1114112
  %cond31 = select i1 %cmp27, i32 4259840, i32 %phi.bo
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 4
  %30 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond31, ptr %subdev_flags, align 4
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp34 = icmp eq i32 %32, 1
  %cond35 = select i1 %cmp34, i32 8, i32 16
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 3
  %33 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond35, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 13
  %34 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4095, ptr %maxdata, align 4
  %is_pgh = getelementptr inbounds %struct.dt2811_board, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %is_pgh to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %is_pgh, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool36.not = icmp sgt i8 %bf.load, -1
  %cond37 = select i1 %tobool36.not, ptr @dt2811_pgl_ai_ranges, ptr @dt2811_pgh_ai_ranges
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 15
  %36 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cond37, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 18
  %37 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dt2811_ai_insn_read, ptr %insn_read, align 4
  %irq38 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %38 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool39.not = icmp eq i32 %39, 0
  br i1 %tobool39.not, label %if.end23.if.end43_crit_edge, label %if.then40

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %40 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %26, ptr %read_subdev, align 4
  %41 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subdev_flags, align 4
  %or42 = or i32 %42, 32768
  store i32 %or42, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 5
  %43 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 23
  %44 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dt2811_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 22
  %45 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dt2811_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %26, i32 0, i32 25
  %46 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @dt2811_ai_cancel, ptr %cancel, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end23.if.end43_crit_edge
  %47 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %subdevices, align 4
  %arrayidx45 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1
  %type46 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 2
  %49 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %type46, align 4
  %subdev_flags47 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 4
  %50 = ptrtoint ptr %subdev_flags47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 131072, ptr %subdev_flags47, align 4
  %n_chan48 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 3
  %51 = ptrtoint ptr %n_chan48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %n_chan48, align 4
  %maxdata49 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 13
  %52 = ptrtoint ptr %maxdata49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4095, ptr %maxdata49, align 4
  %range_table50 = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 15
  %53 = ptrtoint ptr %range_table50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dt2811_ao_ranges, ptr %range_table50, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %48, i32 1, i32 19
  %54 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dt2811_ao_insn_write, ptr %insn_write, align 4
  %call51 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 2
  %57 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 4
  %58 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 65536, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 3
  %59 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 13
  %60 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 15
  %61 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %56, i32 2, i32 20
  %62 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dt2811_di_insn_bits, ptr %insn_bits, align 4
  %63 = load ptr, ptr %subdevices, align 4
  %type64 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 2
  %64 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %type64, align 4
  %subdev_flags65 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 4
  %65 = ptrtoint ptr %subdev_flags65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131072, ptr %subdev_flags65, align 4
  %n_chan66 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 3
  %66 = ptrtoint ptr %n_chan66 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %n_chan66, align 4
  %maxdata67 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 13
  %67 = ptrtoint ptr %maxdata67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %maxdata67, align 4
  %range_table68 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 15
  %68 = ptrtoint ptr %range_table68 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @range_unipolar5, ptr %range_table68, align 4
  %insn_bits69 = getelementptr %struct.comedi_subdevice, ptr %63, i32 3, i32 20
  %69 = ptrtoint ptr %insn_bits69 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dt2811_do_insn_bits, ptr %insn_bits69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end43.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call51, %if.end43.cleanup_crit_edge ]
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
define internal i32 @dt2811_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %and = and i32 %6, 1048575
  %add3 = or i32 %and, -18874368
  %7 = inttoptr i32 %add3 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %conv = zext i8 %8 to i32
  %and5 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %events = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %events, align 4
  %or = or i32 %10, 32
  store i32 %or, ptr %events, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %or8 = or i8 %8, 16
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %and12 = and i32 %12, 1048575
  %add13 = or i32 %and12, -18874368
  %13 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or8) #6, !srcloc !40
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end.if.end15_crit_edge
  %and16 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add.i = add i32 %15, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %19, 3
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %20 = inttoptr i32 %add7.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %conv11.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i, %23
  %conv20 = trunc i32 %and12.i to i16
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv20, ptr %val, align 2
  %call21 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %25 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp = icmp eq i32 %26, 32
  br i1 %cmp, label %land.lhs.true, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end22
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %27 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp24.not = icmp ult i32 %28, %30
  br i1 %cmp24.not, label %land.lhs.true.if.end29_crit_edge, label %if.then26

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %events27 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %events27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %events27, align 4
  %or28 = or i32 %32, 2
  store i32 %or28, ptr %events27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %call30 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %and2.i = and i32 %3, 15
  %4 = lshr i32 %3, 10
  %shl4.i = and i32 %4, 192
  %or.i = or i32 %shl4.i, %and2.i
  %conv.i = trunc i32 %or.i to i8
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %6, 1
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %7 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv.i) #6, !srcloc !40
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dt2811_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i14 = add i32 %9, 2
  %and.i = and i32 %add.i14, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %conv.i15 = zext i8 %11 to i32
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %13, 3
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %conv11.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i16 = or i32 %shl.i, %conv.i15
  %16 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i16, %17
  %arrayidx = getelementptr i32, ptr %data, i32 %i.018
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and12.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.018, 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %20, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i111 = and i32 %5, 4
  store i32 %and.i111, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %cmp.i112 = icmp ne i32 %and.i111, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i111, i32 %5)
  %cmp1.not.i113 = icmp eq i32 %and.i111, %5
  %or.cond.i114 = and i1 %cmp.i112, %cmp1.not.i113
  %6 = select i1 %or.cond.i, i1 %or.cond.i114, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i116 = and i32 %8, 80
  store i32 %and.i116, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i117 = icmp ne i32 %and.i116, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i116, i32 %8)
  %cmp1.not.i118 = icmp eq i32 %and.i116, %8
  %or.cond.i119 = and i1 %cmp.i117, %cmp1.not.i118
  %9 = select i1 %6, i1 %or.cond.i119, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i121 = and i32 %11, 32
  store i32 %and.i121, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %cmp.i122 = icmp ne i32 %and.i121, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i121, i32 %11)
  %cmp1.not.i123 = icmp eq i32 %and.i121, %11
  %or.cond.i124 = and i1 %cmp.i122, %cmp1.not.i123
  %12 = select i1 %9, i1 %or.cond.i124, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i126 = and i32 %14, 33
  store i32 %and.i126, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %cmp.i127 = icmp ne i32 %and.i126, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i126, i32 %14)
  %cmp1.not.i128 = icmp eq i32 %and.i126, %14
  %or.cond.i129 = and i1 %cmp.i127, %cmp1.not.i128
  %15 = select i1 %12, i1 %or.cond.i129, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #6, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %8) #6, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i131 = icmp ult i32 %17, 2
  %18 = tail call i32 @llvm.ctpop.i32(i32 %14) #6, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i133 = icmp ult i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp = icmp ne i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp20.not = icmp eq i32 %3, 64
  %or.cond = select i1 %cmp, i1 true, i1 %cmp20.not
  %19 = select i1 %or.cond, i1 %cmp.not.i, i1 false
  %20 = select i1 %19, i1 %cmp.not.i131, i1 false
  %or.cond171 = select i1 %20, i1 %cmp.not.i133, i1 false
  br i1 %or.cond171, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i135 = icmp eq i32 %22, 0
  br i1 %cmp.not.i135, label %if.end26.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end26.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end26.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i136 = phi i32 [ -22, %if.then.i ], [ 0, %if.end26.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i137 = icmp eq i32 %25, 0
  br i1 %cmp.not.i137, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit140_crit_edge, label %if.then.i138

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit140_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit140

if.then.i138:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit140

comedi_check_trigger_arg_is.exit140:              ; preds = %if.then.i138, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit140_crit_edge
  %retval.0.i139 = phi i32 [ -22, %if.then.i138 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit140_crit_edge ]
  %or30 = or i32 %retval.0.i139, %retval.0.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp32 = icmp eq i32 %8, 16
  br i1 %cmp32, label %if.then33, label %comedi_check_trigger_arg_is.exit140.if.end36_crit_edge

comedi_check_trigger_arg_is.exit140.if.end36_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then33:                                        ; preds = %comedi_check_trigger_arg_is.exit140
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %28)
  %cmp.i141 = icmp ult i32 %28, 12500
  br i1 %cmp.i141, label %if.then.i142, label %if.then33.comedi_check_trigger_arg_min.exit_crit_edge

if.then33.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i142:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12500, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i142, %if.then33.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i143 = phi i32 [ -22, %if.then.i142 ], [ 0, %if.then33.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or35 = or i32 %retval.0.i143, %or30
  br label %if.end36

if.end36:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit140.if.end36_crit_edge
  %err.1 = phi i32 [ %or35, %comedi_check_trigger_arg_min.exit ], [ %or30, %comedi_check_trigger_arg_is.exit140.if.end36_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %30 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chanlist_len, align 4
  %32 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i144 = icmp eq i32 %33, %31
  br i1 %cmp.not.i144, label %if.end36.comedi_check_trigger_arg_is.exit147_crit_edge, label %if.then.i145

if.end36.comedi_check_trigger_arg_is.exit147_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit147

if.then.i145:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit147

comedi_check_trigger_arg_is.exit147:              ; preds = %if.then.i145, %if.end36.comedi_check_trigger_arg_is.exit147_crit_edge
  %retval.0.i146 = phi i32 [ -22, %if.then.i145 ], [ 0, %if.end36.comedi_check_trigger_arg_is.exit147_crit_edge ]
  %or38 = or i32 %retval.0.i146, %err.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp40 = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %35 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i148 = icmp eq i32 %36, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.then41.if.end47.sink.split_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then41.if.end47.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.else.if.end47_crit_edge, label %if.else.if.end47.sink.split_crit_edge

if.else.if.end47.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.sink.split

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47.sink.split:                              ; preds = %if.else.if.end47.sink.split_crit_edge, %if.then41.if.end47.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then41.if.end47.sink.split_crit_edge ], [ 0, %if.else.if.end47.sink.split_crit_edge ]
  %37 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else.if.end47_crit_edge, %if.then41.if.end47_crit_edge
  %call42.pn = phi i32 [ 0, %if.then41.if.end47_crit_edge ], [ 0, %if.else.if.end47_crit_edge ], [ -22, %if.end47.sink.split ]
  %err.2 = or i32 %or38, %call42.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool48.not = icmp eq i32 %err.2, 0
  br i1 %tobool48.not, label %if.end50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  %convert_arg54 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %38 = ptrtoint ptr %convert_arg54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_arg54, align 4
  br i1 %cmp32, label %if.then53, label %if.end62.thread

if.then53:                                        ; preds = %if.end50
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %conv10.i = zext i32 %39 to i64
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %cleanup.i.7.for.cond1.preheader.i_crit_edge, %if.then53
  %ns_lo.0104.i = phi i32 [ -1, %if.then53 ], [ %ns_lo.3.i.7, %cleanup.i.7.for.cond1.preheader.i_crit_edge ]
  %_div.0103.i = phi i32 [ 0, %if.then53 ], [ %inc33.i, %cleanup.i.7.for.cond1.preheader.i_crit_edge ]
  %divisor_lo.0102.i = phi i32 [ 0, %if.then53 ], [ %divisor_lo.3.i.7, %cleanup.i.7.for.cond1.preheader.i_crit_edge ]
  %divisor_hi.0101.i = phi i32 [ 0, %if.then53 ], [ %divisor_hi.3.i.7, %cleanup.i.7.for.cond1.preheader.i_crit_edge ]
  %ns_hi.0100.i = phi i32 [ 0, %if.then53 ], [ %ns_hi.3.i.7, %cleanup.i.7.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr @dt2811_clk_dividers, i32 0, i32 %_div.0103.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %and.i156 = shl i32 %_div.0103.i, 3
  %conv.i = zext i32 %43 to i64
  %mul7.i = mul nuw nsw i64 %conv.i, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i)
  %cmp8.i = icmp ugt i64 %mul7.i, 4294967295
  br i1 %cmp8.i, label %for.cond1.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond1.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i, i64 %conv10.i)
  %cmp11.not.i = icmp ule i64 %mul7.i, %conv10.i
  %conv13.i = zext i32 %ns_hi.0100.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i, i64 %conv13.i)
  %cmp14.i = icmp ugt i64 %mul7.i, %conv13.i
  %or.cond.i157 = select i1 %cmp11.not.i, i1 %cmp14.i, i1 false
  %conv17.i = trunc i64 %mul7.i to i32
  %ns_hi.2.i = select i1 %or.cond.i157, i32 %conv17.i, i32 %ns_hi.0100.i
  %divisor_hi.2.i = select i1 %or.cond.i157, i32 %and.i156, i32 %divisor_hi.0101.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i, i64 %conv10.i)
  %cmp20.not.i = icmp uge i64 %mul7.i, %conv10.i
  %conv23.i = zext i32 %ns_lo.0104.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i, i64 %conv23.i)
  %cmp24.i = icmp ult i64 %mul7.i, %conv23.i
  %or.cond92.i = select i1 %cmp20.not.i, i1 %cmp24.i, i1 false
  %divisor_lo.2.i = select i1 %or.cond92.i, i32 %and.i156, i32 %divisor_lo.0102.i
  %ns_lo.2.i = select i1 %or.cond92.i, i32 %conv17.i, i32 %ns_lo.0104.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.cond1.preheader.i.cleanup.i_crit_edge
  %ns_hi.3.i = phi i32 [ %ns_hi.2.i, %if.end.i ], [ %ns_hi.0100.i, %for.cond1.preheader.i.cleanup.i_crit_edge ]
  %divisor_hi.3.i = phi i32 [ %divisor_hi.2.i, %if.end.i ], [ %divisor_hi.0101.i, %for.cond1.preheader.i.cleanup.i_crit_edge ]
  %divisor_lo.3.i = phi i32 [ %divisor_lo.2.i, %if.end.i ], [ %divisor_lo.0102.i, %for.cond1.preheader.i.cleanup.i_crit_edge ]
  %ns_lo.3.i = phi i32 [ %ns_lo.2.i, %if.end.i ], [ %ns_lo.0104.i, %for.cond1.preheader.i.cleanup.i_crit_edge ]
  %mul.i.1 = mul i32 %43, 10
  %conv.i.1 = zext i32 %mul.i.1 to i64
  %mul7.i.1 = mul nuw nsw i64 %conv.i.1, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.1)
  %cmp8.i.1 = icmp ugt i64 %mul7.i.1, 4294967295
  br i1 %cmp8.i.1, label %cleanup.i.cleanup.i.1_crit_edge, label %if.end.i.1

cleanup.i.cleanup.i.1_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.1

if.end.i.1:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.1 = or i32 %and.i156, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.1, i64 %conv10.i)
  %cmp11.not.i.1 = icmp ule i64 %mul7.i.1, %conv10.i
  %conv13.i.1 = zext i32 %ns_hi.3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.1, i64 %conv13.i.1)
  %cmp14.i.1 = icmp ugt i64 %mul7.i.1, %conv13.i.1
  %or.cond.i157.1 = select i1 %cmp11.not.i.1, i1 %cmp14.i.1, i1 false
  %conv17.i.1 = trunc i64 %mul7.i.1 to i32
  %ns_hi.2.i.1 = select i1 %or.cond.i157.1, i32 %conv17.i.1, i32 %ns_hi.3.i
  %divisor_hi.2.i.1 = select i1 %or.cond.i157.1, i32 %or.i.1, i32 %divisor_hi.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.1, i64 %conv10.i)
  %cmp20.not.i.1 = icmp uge i64 %mul7.i.1, %conv10.i
  %conv23.i.1 = zext i32 %ns_lo.3.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.1, i64 %conv23.i.1)
  %cmp24.i.1 = icmp ult i64 %mul7.i.1, %conv23.i.1
  %or.cond92.i.1 = select i1 %cmp20.not.i.1, i1 %cmp24.i.1, i1 false
  %divisor_lo.2.i.1 = select i1 %or.cond92.i.1, i32 %or.i.1, i32 %divisor_lo.3.i
  %ns_lo.2.i.1 = select i1 %or.cond92.i.1, i32 %conv17.i.1, i32 %ns_lo.3.i
  br label %cleanup.i.1

cleanup.i.1:                                      ; preds = %if.end.i.1, %cleanup.i.cleanup.i.1_crit_edge
  %ns_hi.3.i.1 = phi i32 [ %ns_hi.2.i.1, %if.end.i.1 ], [ %ns_hi.3.i, %cleanup.i.cleanup.i.1_crit_edge ]
  %divisor_hi.3.i.1 = phi i32 [ %divisor_hi.2.i.1, %if.end.i.1 ], [ %divisor_hi.3.i, %cleanup.i.cleanup.i.1_crit_edge ]
  %divisor_lo.3.i.1 = phi i32 [ %divisor_lo.2.i.1, %if.end.i.1 ], [ %divisor_lo.3.i, %cleanup.i.cleanup.i.1_crit_edge ]
  %ns_lo.3.i.1 = phi i32 [ %ns_lo.2.i.1, %if.end.i.1 ], [ %ns_lo.3.i, %cleanup.i.cleanup.i.1_crit_edge ]
  %mul.i.2 = mul i32 %43, 100
  %conv.i.2 = zext i32 %mul.i.2 to i64
  %mul7.i.2 = mul nuw nsw i64 %conv.i.2, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.2)
  %cmp8.i.2 = icmp ugt i64 %mul7.i.2, 4294967295
  br i1 %cmp8.i.2, label %cleanup.i.1.cleanup.i.2_crit_edge, label %if.end.i.2

cleanup.i.1.cleanup.i.2_crit_edge:                ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.2

if.end.i.2:                                       ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.2 = or i32 %and.i156, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.2, i64 %conv10.i)
  %cmp11.not.i.2 = icmp ule i64 %mul7.i.2, %conv10.i
  %conv13.i.2 = zext i32 %ns_hi.3.i.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.2, i64 %conv13.i.2)
  %cmp14.i.2 = icmp ugt i64 %mul7.i.2, %conv13.i.2
  %or.cond.i157.2 = select i1 %cmp11.not.i.2, i1 %cmp14.i.2, i1 false
  %conv17.i.2 = trunc i64 %mul7.i.2 to i32
  %ns_hi.2.i.2 = select i1 %or.cond.i157.2, i32 %conv17.i.2, i32 %ns_hi.3.i.1
  %divisor_hi.2.i.2 = select i1 %or.cond.i157.2, i32 %or.i.2, i32 %divisor_hi.3.i.1
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.2, i64 %conv10.i)
  %cmp20.not.i.2 = icmp uge i64 %mul7.i.2, %conv10.i
  %conv23.i.2 = zext i32 %ns_lo.3.i.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.2, i64 %conv23.i.2)
  %cmp24.i.2 = icmp ult i64 %mul7.i.2, %conv23.i.2
  %or.cond92.i.2 = select i1 %cmp20.not.i.2, i1 %cmp24.i.2, i1 false
  %divisor_lo.2.i.2 = select i1 %or.cond92.i.2, i32 %or.i.2, i32 %divisor_lo.3.i.1
  %ns_lo.2.i.2 = select i1 %or.cond92.i.2, i32 %conv17.i.2, i32 %ns_lo.3.i.1
  br label %cleanup.i.2

cleanup.i.2:                                      ; preds = %if.end.i.2, %cleanup.i.1.cleanup.i.2_crit_edge
  %ns_hi.3.i.2 = phi i32 [ %ns_hi.2.i.2, %if.end.i.2 ], [ %ns_hi.3.i.1, %cleanup.i.1.cleanup.i.2_crit_edge ]
  %divisor_hi.3.i.2 = phi i32 [ %divisor_hi.2.i.2, %if.end.i.2 ], [ %divisor_hi.3.i.1, %cleanup.i.1.cleanup.i.2_crit_edge ]
  %divisor_lo.3.i.2 = phi i32 [ %divisor_lo.2.i.2, %if.end.i.2 ], [ %divisor_lo.3.i.1, %cleanup.i.1.cleanup.i.2_crit_edge ]
  %ns_lo.3.i.2 = phi i32 [ %ns_lo.2.i.2, %if.end.i.2 ], [ %ns_lo.3.i.1, %cleanup.i.1.cleanup.i.2_crit_edge ]
  %mul.i.3 = mul i32 %43, 1000
  %conv.i.3 = zext i32 %mul.i.3 to i64
  %mul7.i.3 = mul nuw nsw i64 %conv.i.3, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.3)
  %cmp8.i.3 = icmp ugt i64 %mul7.i.3, 4294967295
  br i1 %cmp8.i.3, label %cleanup.i.2.cleanup.i.3_crit_edge, label %if.end.i.3

cleanup.i.2.cleanup.i.3_crit_edge:                ; preds = %cleanup.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.3

if.end.i.3:                                       ; preds = %cleanup.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.3 = or i32 %and.i156, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.3, i64 %conv10.i)
  %cmp11.not.i.3 = icmp ule i64 %mul7.i.3, %conv10.i
  %conv13.i.3 = zext i32 %ns_hi.3.i.2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.3, i64 %conv13.i.3)
  %cmp14.i.3 = icmp ugt i64 %mul7.i.3, %conv13.i.3
  %or.cond.i157.3 = select i1 %cmp11.not.i.3, i1 %cmp14.i.3, i1 false
  %conv17.i.3 = trunc i64 %mul7.i.3 to i32
  %ns_hi.2.i.3 = select i1 %or.cond.i157.3, i32 %conv17.i.3, i32 %ns_hi.3.i.2
  %divisor_hi.2.i.3 = select i1 %or.cond.i157.3, i32 %or.i.3, i32 %divisor_hi.3.i.2
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.3, i64 %conv10.i)
  %cmp20.not.i.3 = icmp uge i64 %mul7.i.3, %conv10.i
  %conv23.i.3 = zext i32 %ns_lo.3.i.2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.3, i64 %conv23.i.3)
  %cmp24.i.3 = icmp ult i64 %mul7.i.3, %conv23.i.3
  %or.cond92.i.3 = select i1 %cmp20.not.i.3, i1 %cmp24.i.3, i1 false
  %divisor_lo.2.i.3 = select i1 %or.cond92.i.3, i32 %or.i.3, i32 %divisor_lo.3.i.2
  %ns_lo.2.i.3 = select i1 %or.cond92.i.3, i32 %conv17.i.3, i32 %ns_lo.3.i.2
  br label %cleanup.i.3

cleanup.i.3:                                      ; preds = %if.end.i.3, %cleanup.i.2.cleanup.i.3_crit_edge
  %ns_hi.3.i.3 = phi i32 [ %ns_hi.2.i.3, %if.end.i.3 ], [ %ns_hi.3.i.2, %cleanup.i.2.cleanup.i.3_crit_edge ]
  %divisor_hi.3.i.3 = phi i32 [ %divisor_hi.2.i.3, %if.end.i.3 ], [ %divisor_hi.3.i.2, %cleanup.i.2.cleanup.i.3_crit_edge ]
  %divisor_lo.3.i.3 = phi i32 [ %divisor_lo.2.i.3, %if.end.i.3 ], [ %divisor_lo.3.i.2, %cleanup.i.2.cleanup.i.3_crit_edge ]
  %ns_lo.3.i.3 = phi i32 [ %ns_lo.2.i.3, %if.end.i.3 ], [ %ns_lo.3.i.2, %cleanup.i.2.cleanup.i.3_crit_edge ]
  %mul.i.4 = mul i32 %43, 10000
  %conv.i.4 = zext i32 %mul.i.4 to i64
  %mul7.i.4 = mul nuw nsw i64 %conv.i.4, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.4)
  %cmp8.i.4 = icmp ugt i64 %mul7.i.4, 4294967295
  br i1 %cmp8.i.4, label %cleanup.i.3.cleanup.i.4_crit_edge, label %if.end.i.4

cleanup.i.3.cleanup.i.4_crit_edge:                ; preds = %cleanup.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.4

if.end.i.4:                                       ; preds = %cleanup.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.4 = or i32 %and.i156, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.4, i64 %conv10.i)
  %cmp11.not.i.4 = icmp ule i64 %mul7.i.4, %conv10.i
  %conv13.i.4 = zext i32 %ns_hi.3.i.3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.4, i64 %conv13.i.4)
  %cmp14.i.4 = icmp ugt i64 %mul7.i.4, %conv13.i.4
  %or.cond.i157.4 = select i1 %cmp11.not.i.4, i1 %cmp14.i.4, i1 false
  %conv17.i.4 = trunc i64 %mul7.i.4 to i32
  %ns_hi.2.i.4 = select i1 %or.cond.i157.4, i32 %conv17.i.4, i32 %ns_hi.3.i.3
  %divisor_hi.2.i.4 = select i1 %or.cond.i157.4, i32 %or.i.4, i32 %divisor_hi.3.i.3
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.4, i64 %conv10.i)
  %cmp20.not.i.4 = icmp uge i64 %mul7.i.4, %conv10.i
  %conv23.i.4 = zext i32 %ns_lo.3.i.3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.4, i64 %conv23.i.4)
  %cmp24.i.4 = icmp ult i64 %mul7.i.4, %conv23.i.4
  %or.cond92.i.4 = select i1 %cmp20.not.i.4, i1 %cmp24.i.4, i1 false
  %divisor_lo.2.i.4 = select i1 %or.cond92.i.4, i32 %or.i.4, i32 %divisor_lo.3.i.3
  %ns_lo.2.i.4 = select i1 %or.cond92.i.4, i32 %conv17.i.4, i32 %ns_lo.3.i.3
  br label %cleanup.i.4

cleanup.i.4:                                      ; preds = %if.end.i.4, %cleanup.i.3.cleanup.i.4_crit_edge
  %ns_hi.3.i.4 = phi i32 [ %ns_hi.2.i.4, %if.end.i.4 ], [ %ns_hi.3.i.3, %cleanup.i.3.cleanup.i.4_crit_edge ]
  %divisor_hi.3.i.4 = phi i32 [ %divisor_hi.2.i.4, %if.end.i.4 ], [ %divisor_hi.3.i.3, %cleanup.i.3.cleanup.i.4_crit_edge ]
  %divisor_lo.3.i.4 = phi i32 [ %divisor_lo.2.i.4, %if.end.i.4 ], [ %divisor_lo.3.i.3, %cleanup.i.3.cleanup.i.4_crit_edge ]
  %ns_lo.3.i.4 = phi i32 [ %ns_lo.2.i.4, %if.end.i.4 ], [ %ns_lo.3.i.3, %cleanup.i.3.cleanup.i.4_crit_edge ]
  %mul.i.5 = mul i32 %43, 100000
  %conv.i.5 = zext i32 %mul.i.5 to i64
  %mul7.i.5 = mul nuw nsw i64 %conv.i.5, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.5)
  %cmp8.i.5 = icmp ugt i64 %mul7.i.5, 4294967295
  br i1 %cmp8.i.5, label %cleanup.i.4.cleanup.i.5_crit_edge, label %if.end.i.5

cleanup.i.4.cleanup.i.5_crit_edge:                ; preds = %cleanup.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.5

if.end.i.5:                                       ; preds = %cleanup.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.5 = or i32 %and.i156, 5
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.5, i64 %conv10.i)
  %cmp11.not.i.5 = icmp ule i64 %mul7.i.5, %conv10.i
  %conv13.i.5 = zext i32 %ns_hi.3.i.4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.5, i64 %conv13.i.5)
  %cmp14.i.5 = icmp ugt i64 %mul7.i.5, %conv13.i.5
  %or.cond.i157.5 = select i1 %cmp11.not.i.5, i1 %cmp14.i.5, i1 false
  %conv17.i.5 = trunc i64 %mul7.i.5 to i32
  %ns_hi.2.i.5 = select i1 %or.cond.i157.5, i32 %conv17.i.5, i32 %ns_hi.3.i.4
  %divisor_hi.2.i.5 = select i1 %or.cond.i157.5, i32 %or.i.5, i32 %divisor_hi.3.i.4
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.5, i64 %conv10.i)
  %cmp20.not.i.5 = icmp uge i64 %mul7.i.5, %conv10.i
  %conv23.i.5 = zext i32 %ns_lo.3.i.4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.5, i64 %conv23.i.5)
  %cmp24.i.5 = icmp ult i64 %mul7.i.5, %conv23.i.5
  %or.cond92.i.5 = select i1 %cmp20.not.i.5, i1 %cmp24.i.5, i1 false
  %divisor_lo.2.i.5 = select i1 %or.cond92.i.5, i32 %or.i.5, i32 %divisor_lo.3.i.4
  %ns_lo.2.i.5 = select i1 %or.cond92.i.5, i32 %conv17.i.5, i32 %ns_lo.3.i.4
  br label %cleanup.i.5

cleanup.i.5:                                      ; preds = %if.end.i.5, %cleanup.i.4.cleanup.i.5_crit_edge
  %ns_hi.3.i.5 = phi i32 [ %ns_hi.2.i.5, %if.end.i.5 ], [ %ns_hi.3.i.4, %cleanup.i.4.cleanup.i.5_crit_edge ]
  %divisor_hi.3.i.5 = phi i32 [ %divisor_hi.2.i.5, %if.end.i.5 ], [ %divisor_hi.3.i.4, %cleanup.i.4.cleanup.i.5_crit_edge ]
  %divisor_lo.3.i.5 = phi i32 [ %divisor_lo.2.i.5, %if.end.i.5 ], [ %divisor_lo.3.i.4, %cleanup.i.4.cleanup.i.5_crit_edge ]
  %ns_lo.3.i.5 = phi i32 [ %ns_lo.2.i.5, %if.end.i.5 ], [ %ns_lo.3.i.4, %cleanup.i.4.cleanup.i.5_crit_edge ]
  %mul.i.6 = mul i32 %43, 1000000
  %conv.i.6 = zext i32 %mul.i.6 to i64
  %mul7.i.6 = mul nuw nsw i64 %conv.i.6, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.6)
  %cmp8.i.6 = icmp ugt i64 %mul7.i.6, 4294967295
  br i1 %cmp8.i.6, label %cleanup.i.5.cleanup.i.6_crit_edge, label %if.end.i.6

cleanup.i.5.cleanup.i.6_crit_edge:                ; preds = %cleanup.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.6

if.end.i.6:                                       ; preds = %cleanup.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.6 = or i32 %and.i156, 6
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.6, i64 %conv10.i)
  %cmp11.not.i.6 = icmp ule i64 %mul7.i.6, %conv10.i
  %conv13.i.6 = zext i32 %ns_hi.3.i.5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.6, i64 %conv13.i.6)
  %cmp14.i.6 = icmp ugt i64 %mul7.i.6, %conv13.i.6
  %or.cond.i157.6 = select i1 %cmp11.not.i.6, i1 %cmp14.i.6, i1 false
  %conv17.i.6 = trunc i64 %mul7.i.6 to i32
  %ns_hi.2.i.6 = select i1 %or.cond.i157.6, i32 %conv17.i.6, i32 %ns_hi.3.i.5
  %divisor_hi.2.i.6 = select i1 %or.cond.i157.6, i32 %or.i.6, i32 %divisor_hi.3.i.5
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.6, i64 %conv10.i)
  %cmp20.not.i.6 = icmp uge i64 %mul7.i.6, %conv10.i
  %conv23.i.6 = zext i32 %ns_lo.3.i.5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.6, i64 %conv23.i.6)
  %cmp24.i.6 = icmp ult i64 %mul7.i.6, %conv23.i.6
  %or.cond92.i.6 = select i1 %cmp20.not.i.6, i1 %cmp24.i.6, i1 false
  %divisor_lo.2.i.6 = select i1 %or.cond92.i.6, i32 %or.i.6, i32 %divisor_lo.3.i.5
  %ns_lo.2.i.6 = select i1 %or.cond92.i.6, i32 %conv17.i.6, i32 %ns_lo.3.i.5
  br label %cleanup.i.6

cleanup.i.6:                                      ; preds = %if.end.i.6, %cleanup.i.5.cleanup.i.6_crit_edge
  %ns_hi.3.i.6 = phi i32 [ %ns_hi.2.i.6, %if.end.i.6 ], [ %ns_hi.3.i.5, %cleanup.i.5.cleanup.i.6_crit_edge ]
  %divisor_hi.3.i.6 = phi i32 [ %divisor_hi.2.i.6, %if.end.i.6 ], [ %divisor_hi.3.i.5, %cleanup.i.5.cleanup.i.6_crit_edge ]
  %divisor_lo.3.i.6 = phi i32 [ %divisor_lo.2.i.6, %if.end.i.6 ], [ %divisor_lo.3.i.5, %cleanup.i.5.cleanup.i.6_crit_edge ]
  %ns_lo.3.i.6 = phi i32 [ %ns_lo.2.i.6, %if.end.i.6 ], [ %ns_lo.3.i.5, %cleanup.i.5.cleanup.i.6_crit_edge ]
  %mul.i.7 = mul i32 %43, 10000000
  %conv.i.7 = zext i32 %mul.i.7 to i64
  %mul7.i.7 = mul nuw nsw i64 %conv.i.7, 1666
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul7.i.7)
  %cmp8.i.7 = icmp ugt i64 %mul7.i.7, 4294967295
  br i1 %cmp8.i.7, label %cleanup.i.6.cleanup.i.7_crit_edge, label %if.end.i.7

cleanup.i.6.cleanup.i.7_crit_edge:                ; preds = %cleanup.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.7

if.end.i.7:                                       ; preds = %cleanup.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.7 = or i32 %and.i156, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.7, i64 %conv10.i)
  %cmp11.not.i.7 = icmp ule i64 %mul7.i.7, %conv10.i
  %conv13.i.7 = zext i32 %ns_hi.3.i.6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.7, i64 %conv13.i.7)
  %cmp14.i.7 = icmp ugt i64 %mul7.i.7, %conv13.i.7
  %or.cond.i157.7 = select i1 %cmp11.not.i.7, i1 %cmp14.i.7, i1 false
  %conv17.i.7 = trunc i64 %mul7.i.7 to i32
  %ns_hi.2.i.7 = select i1 %or.cond.i157.7, i32 %conv17.i.7, i32 %ns_hi.3.i.6
  %divisor_hi.2.i.7 = select i1 %or.cond.i157.7, i32 %or.i.7, i32 %divisor_hi.3.i.6
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.7, i64 %conv10.i)
  %cmp20.not.i.7 = icmp uge i64 %mul7.i.7, %conv10.i
  %conv23.i.7 = zext i32 %ns_lo.3.i.6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul7.i.7, i64 %conv23.i.7)
  %cmp24.i.7 = icmp ult i64 %mul7.i.7, %conv23.i.7
  %or.cond92.i.7 = select i1 %cmp20.not.i.7, i1 %cmp24.i.7, i1 false
  %divisor_lo.2.i.7 = select i1 %or.cond92.i.7, i32 %or.i.7, i32 %divisor_lo.3.i.6
  %ns_lo.2.i.7 = select i1 %or.cond92.i.7, i32 %conv17.i.7, i32 %ns_lo.3.i.6
  br label %cleanup.i.7

cleanup.i.7:                                      ; preds = %if.end.i.7, %cleanup.i.6.cleanup.i.7_crit_edge
  %ns_hi.3.i.7 = phi i32 [ %ns_hi.2.i.7, %if.end.i.7 ], [ %ns_hi.3.i.6, %cleanup.i.6.cleanup.i.7_crit_edge ]
  %divisor_hi.3.i.7 = phi i32 [ %divisor_hi.2.i.7, %if.end.i.7 ], [ %divisor_hi.3.i.6, %cleanup.i.6.cleanup.i.7_crit_edge ]
  %divisor_lo.3.i.7 = phi i32 [ %divisor_lo.2.i.7, %if.end.i.7 ], [ %divisor_lo.3.i.6, %cleanup.i.6.cleanup.i.7_crit_edge ]
  %ns_lo.3.i.7 = phi i32 [ %ns_lo.2.i.7, %if.end.i.7 ], [ %ns_lo.3.i.6, %cleanup.i.6.cleanup.i.7_crit_edge ]
  %inc33.i = add nuw nsw i32 %_div.0103.i, 1
  %exitcond105.not.i = icmp eq i32 %inc33.i, 8
  br i1 %exitcond105.not.i, label %for.end34.i, label %cleanup.i.7.for.cond1.preheader.i_crit_edge

cleanup.i.7.for.cond1.preheader.i_crit_edge:      ; preds = %cleanup.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

for.end34.i:                                      ; preds = %cleanup.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ns_lo.3.i.7)
  %cmp35.i = icmp eq i32 %ns_lo.3.i.7, -1
  %spec.select.i = select i1 %cmp35.i, i32 %divisor_hi.3.i.7, i32 %divisor_lo.3.i.7
  %spec.select93.i = select i1 %cmp35.i, i32 %ns_hi.3.i.7, i32 %ns_lo.3.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ns_hi.3.i.7)
  %cmp39.i = icmp eq i32 %ns_hi.3.i.7, 0
  %ns_hi.4.i = select i1 %cmp39.i, i32 %spec.select93.i, i32 %ns_hi.3.i.7
  %divisor_hi.4.i = select i1 %cmp39.i, i32 %spec.select.i, i32 %divisor_hi.3.i.7
  %and43.i = and i32 %41, 196608
  %44 = zext i32 %and43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and43.i, label %sw.default.i [
    i32 65536, label %sw.bb50.i
    i32 131072, label %for.end34.i.dt2811_ns_to_timer.exit_crit_edge
  ]

for.end34.i.dt2811_ns_to_timer.exit_crit_edge:    ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt2811_ns_to_timer.exit

sw.default.i:                                     ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %ns_hi.4.i, %39
  %sub44.i = sub i32 %39, %spec.select93.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub44.i)
  %cmp45.i = icmp ult i32 %sub.i, %sub44.i
  %spec.select93.ns_hi.4.i = select i1 %cmp45.i, i32 %spec.select93.i, i32 %ns_hi.4.i
  %spec.select.divisor_hi.4.i = select i1 %cmp45.i, i32 %spec.select.i, i32 %divisor_hi.4.i
  br label %dt2811_ns_to_timer.exit

sw.bb50.i:                                        ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt2811_ns_to_timer.exit

dt2811_ns_to_timer.exit:                          ; preds = %sw.bb50.i, %sw.default.i, %for.end34.i.dt2811_ns_to_timer.exit_crit_edge
  %ns_hi.4.sink.i = phi i32 [ %ns_hi.4.i, %sw.bb50.i ], [ %spec.select93.ns_hi.4.i, %sw.default.i ], [ %spec.select93.i, %for.end34.i.dt2811_ns_to_timer.exit_crit_edge ]
  %retval.0.i158 = phi i32 [ %divisor_hi.4.i, %sw.bb50.i ], [ %spec.select.divisor_hi.4.i, %sw.default.i ], [ %spec.select.i, %for.end34.i.dt2811_ns_to_timer.exit_crit_edge ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i158, ptr %1, align 4
  %46 = ptrtoint ptr %convert_arg54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %convert_arg54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %ns_hi.4.sink.i)
  %cmp.not.i159 = icmp eq i32 %47, %ns_hi.4.sink.i
  br i1 %cmp.not.i159, label %dt2811_ns_to_timer.exit.cleanup_crit_edge, label %if.end62

dt2811_ns_to_timer.exit.cleanup_crit_edge:        ; preds = %dt2811_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %39, ptr %1, align 4
  br label %cleanup

if.end62:                                         ; preds = %dt2811_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %convert_arg54 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %ns_hi.4.sink.i, ptr %convert_arg54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end62.thread, %dt2811_ns_to_timer.exit.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end47.cleanup_crit_edge ], [ 4, %if.end62 ], [ 0, %if.end62.thread ], [ 0, %dt2811_ns_to_timer.exit.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %6 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp2 = icmp eq i32 %7, 16
  %. = select i1 %cmp2, i8 6, i8 7
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %mode.0 = phi i8 [ 5, %entry.do.body_crit_edge ], [ %., %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %and = and i32 %9, 1048575
  %add6 = or i32 %and, -18874368
  %10 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %mode.0) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %conv10 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add12 = add i32 %14, 7
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %15 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv10) #6, !srcloc !40
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %16 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chanlist, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %and2.i = and i32 %19, 15
  %20 = lshr i32 %19, 10
  %shl4.i = and i32 %20, 192
  %or.i = or i32 %shl4.i, %and2.i
  %conv.i = trunc i32 %or.i to i8
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add.i = add i32 %22, 1
  %and5.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %23 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv.i) #6, !srcloc !40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %cmp32.not = icmp eq i32 %7, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 2
  %add13 = add nuw nsw i32 %mul, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.033
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add3 = add i32 %add, %11
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %12 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %shr = lshr i32 %9, 8
  %conv10 = trunc i32 %shr to i8
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add14 = add i32 %add13, %14
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %15 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv10) #6, !srcloc !40
  %inc = add nuw i32 %i.033, 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %readback, align 4
  %arrayidx19 = getelementptr i32, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.0.lcssa, ptr %arrayidx19, align 4
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
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
define internal i32 @dt2811_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #6, !srcloc !40
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2811_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_dt2811__234_640_dt2811_driver_init6, !1, !"__initcall__kmod_dt2811__234_640_dt2811_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt2811.c", i32 640, i32 1}
!2 = !{ptr @__exitcall_dt2811_driver_exit, !1, !"__exitcall_dt2811_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt2811.c", i32 642, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt2811.c", i32 643, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt2811.c", i32 644, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt2811.c", i32 632, i32 17}
!12 = !{ptr @dt2811_driver, !13, !"dt2811_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt2811.c", i32 631, i32 29}
!14 = !{ptr @dt2811_pgh_ai_ranges, !15, !"dt2811_pgh_ai_ranges", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt2811.c", i32 108, i32 35}
!16 = !{ptr @dt2811_pgl_ai_ranges, !17, !"dt2811_pgl_ai_ranges", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/dt2811.c", i32 127, i32 35}
!18 = !{ptr @dt2811_clk_dividers, !19, !"dt2811_clk_dividers", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/dt2811.c", i32 89, i32 27}
!20 = distinct !{null, !21, !"dt2811_clk_multipliers", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/dt2811.c", i32 93, i32 27}
!22 = !{ptr @dt2811_ao_ranges, !23, !"dt2811_ao_ranges", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/dt2811.c", i32 155, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/dt2811.c", i32 170, i32 12}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/dt2811.c", i32 173, i32 12}
!28 = !{ptr @dt2811_boards, !29, !"dt2811_boards", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/dt2811.c", i32 168, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154214766}
!40 = !{i64 4631569}
!41 = !{i64 4631964}
!42 = !{i64 2154215195}
!43 = !{i64 2154215497}
!44 = !{i64 2154215871}
!45 = !{i64 2154209865}
!46 = !{i64 2154210286}
!47 = !{i64 2154209261}
!48 = !{i64 2154209563}
!49 = !{i64 2154211269}
!50 = !{i32 0, i32 33}
!51 = !{i64 2154211818}
!52 = !{i64 2154212185}
!53 = !{i64 2154210768}
!54 = !{i64 2154213278}
!55 = !{i64 2154213700}
!56 = !{i64 2154214148}
!57 = !{i64 2154214377}
!58 = !{i64 2154212894}
