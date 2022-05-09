; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/rti800.c_pt.bc'
source_filename = "../drivers/comedi/drivers/rti800.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.rti800_board = type { ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rti800_private = type { i8, [2 x i8], [2 x ptr], i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_rti800__234_353_rti800_driver_init6 = internal global ptr @rti800_driver_init, section ".initcall6.init", align 4
@rti800_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @rti800_attach, ptr @comedi_legacy_detach, ptr null, i32 2, ptr @rti800_boardtypes, i32 8 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_rti800_driver_exit = internal global ptr @rti800_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [70 x i8] c"rti800.description=Comedi: RTI-800 Multifunction Analog/Digital board\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [44 x i8] c"rti800.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"rti800.file=drivers/comedi/drivers/rti800\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"rti800.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rti800\00", [25 x i8] zeroinitializer }, align 32
@rti800_boardtypes = internal constant { [2 x %struct.rti800_board], [16 x i8] } { [2 x %struct.rti800_board] [%struct.rti800_board { ptr @.str, i32 0 }, %struct.rti800_board { ptr @.str.4, i32 1 }], [16 x i8] zeroinitializer }, align 32
@rti800_ai_ranges = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @range_rti800_ai_10_bipolar, ptr @range_rti800_ai_5_bipolar, ptr @range_rti800_ai_unipolar], [20 x i8] zeroinitializer }, align 32
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@rti800_ao_ranges = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @range_bipolar10, ptr @range_unipolar10], [24 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@range_rti800_ai_10_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_rti800_ai_5_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_rti800_ai_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rti815\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"rti800_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 344, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 345, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"rti800_boardtypes\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 117, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"rti800_ai_ranges\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 101, i32 42 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"rti800_ao_ranges\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 107, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"range_rti800_ai_10_bipolar\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 74, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"range_rti800_ai_5_bipolar\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 83, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"range_rti800_ai_unipolar\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 92, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [35 x i8] c"../drivers/comedi/drivers/rti800.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 121, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_rti800_driver_exit, ptr @__initcall__kmod_rti800__234_353_rti800_driver_init6, ptr @rti800_driver_exit, ptr @rti800_driver, ptr @.str, ptr @rti800_boardtypes, ptr @rti800_ai_ranges, ptr @rti800_ao_ranges, ptr @range_rti800_ai_10_bipolar, ptr @range_rti800_ai_5_bipolar, ptr @range_rti800_ai_unipolar, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti800_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti800_boardtypes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti800_ai_ranges to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rti800_ao_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_rti800_ai_10_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_rti800_ai_5_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_rti800_ai_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @rti800_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rti800_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_driver_unregister(ptr noundef nonnull @rti800_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
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
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %and = and i32 %5, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #3, !srcloc !38
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add4 = add i32 %8, 4
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %9 = inttoptr i32 %add6 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add13 = add i32 %12, 9
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %13 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #3, !srcloc !38
  %call17 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 16) #3
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %if.end20

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %do.body
  %arrayidx22 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %frombool = zext i1 %cmp to i8
  %16 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %call17, align 4
  %arrayidx24 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp eq i32 %18, 0
  %dac_2comp = getelementptr inbounds %struct.rti800_private, ptr %call17, i32 0, i32 1
  %frombool27 = zext i1 %cmp25 to i8
  %19 = ptrtoint ptr %dac_2comp to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool27, ptr %dac_2comp, align 1
  %arrayidx29 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp30 = icmp eq i32 %21, 0
  %arrayidx32 = getelementptr %struct.rti800_private, ptr %call17, i32 0, i32 1, i32 1
  %frombool33 = zext i1 %cmp30 to i8
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool33, ptr %arrayidx32, align 1
  %muxgain_bits = getelementptr inbounds %struct.rti800_private, ptr %call17, i32 0, i32 3
  %23 = ptrtoint ptr %muxgain_bits to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %muxgain_bits, align 4
  %call34 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end37:                                         ; preds = %if.end20
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
  store i32 1114112, ptr %subdev_flags, align 4
  %arrayidx40 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool41.not = icmp eq i32 %29, 0
  %cond = select i1 %tobool41.not, i32 8, i32 16
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %n_chan, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 18
  %31 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rti800_ai_insn_read, ptr %insn_read, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 13
  %32 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4095, ptr %maxdata, align 4
  %arrayidx43 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp44 = icmp ult i32 %34, 3
  br i1 %cmp44, label %cond.true, label %if.end37.cond.end_crit_edge

if.end37.cond.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx47 = getelementptr [3 x ptr], ptr @rti800_ai_ranges, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx47, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end37.cond.end_crit_edge
  %cond48 = phi ptr [ %36, %cond.true ], [ @range_unknown, %if.end37.cond.end_crit_edge ]
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 15
  %37 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cond48, ptr %range_table, align 4
  %38 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subdevices, align 4
  %arrayidx50 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1
  %has_ao = getelementptr inbounds %struct.rti800_board, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %has_ao to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %has_ao, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not = icmp eq i32 %41, 0
  %type85 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 2
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %cond.end
  %42 = ptrtoint ptr %type85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %type85, align 4
  %subdev_flags54 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 4
  %43 = ptrtoint ptr %subdev_flags54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 131072, ptr %subdev_flags54, align 4
  %n_chan55 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 3
  %44 = ptrtoint ptr %n_chan55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %n_chan55, align 4
  %maxdata56 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 13
  %45 = ptrtoint ptr %maxdata56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4095, ptr %maxdata56, align 4
  %ao_range_type_list = getelementptr inbounds %struct.rti800_private, ptr %call17, i32 0, i32 2
  %range_table_list = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 16
  %46 = ptrtoint ptr %range_table_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ao_range_type_list, ptr %range_table_list, align 4
  %arrayidx58 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp59 = icmp ult i32 %48, 2
  br i1 %cmp59, label %cond.true60, label %if.then52.cond.end65_crit_edge

if.then52.cond.end65_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end65

cond.true60:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx63 = getelementptr [2 x ptr], ptr @rti800_ao_ranges, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx63, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true60, %if.then52.cond.end65_crit_edge
  %cond66 = phi ptr [ %50, %cond.true60 ], [ @range_unknown, %if.then52.cond.end65_crit_edge ]
  %51 = ptrtoint ptr %ao_range_type_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cond66, ptr %ao_range_type_list, align 4
  %arrayidx70 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 7
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp71 = icmp ult i32 %53, 2
  br i1 %cmp71, label %cond.true72, label %cond.end65.cond.end77_crit_edge

cond.end65.cond.end77_crit_edge:                  ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end77

cond.true72:                                      ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx75 = getelementptr [2 x ptr], ptr @rti800_ao_ranges, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx75, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %cond.true72, %cond.end65.cond.end77_crit_edge
  %cond78 = phi ptr [ %55, %cond.true72 ], [ @range_unknown, %cond.end65.cond.end77_crit_edge ]
  %arrayidx80 = getelementptr %struct.rti800_private, ptr %call17, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cond78, ptr %arrayidx80, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 19
  %57 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @rti800_ao_insn_write, ptr %insn_write, align 4
  %call81 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx50) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cond.end77.if.end86_crit_edge, label %cond.end77.cleanup_crit_edge

cond.end77.cleanup_crit_edge:                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.end77.if.end86_crit_edge:                    ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end86

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %type85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %type85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else, %cond.end77.if.end86_crit_edge
  %59 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subdevices, align 4
  %type89 = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 2
  %61 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %type89, align 4
  %subdev_flags90 = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 4
  %62 = ptrtoint ptr %subdev_flags90 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 65536, ptr %subdev_flags90, align 4
  %n_chan91 = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 3
  %63 = ptrtoint ptr %n_chan91 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8, ptr %n_chan91, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 20
  %64 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @rti800_di_insn_bits, ptr %insn_bits, align 4
  %maxdata92 = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 13
  %65 = ptrtoint ptr %maxdata92 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %maxdata92, align 4
  %range_table93 = getelementptr %struct.comedi_subdevice, ptr %60, i32 2, i32 15
  %66 = ptrtoint ptr %range_table93 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @range_unipolar5, ptr %range_table93, align 4
  %67 = load ptr, ptr %subdevices, align 4
  %type96 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 2
  %68 = ptrtoint ptr %type96 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %type96, align 4
  %subdev_flags97 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 4
  %69 = ptrtoint ptr %subdev_flags97 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 131072, ptr %subdev_flags97, align 4
  %n_chan98 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 3
  %70 = ptrtoint ptr %n_chan98 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %n_chan98, align 4
  %insn_bits99 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 20
  %71 = ptrtoint ptr %insn_bits99 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @rti800_do_insn_bits, ptr %insn_bits99, align 4
  %maxdata100 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 13
  %72 = ptrtoint ptr %maxdata100 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %maxdata100, align 4
  %range_table101 = getelementptr %struct.comedi_subdevice, ptr %67, i32 3, i32 15
  %73 = ptrtoint ptr %range_table101 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @range_unipolar5, ptr %range_table101, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %cond.end77.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end86 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ %call34, %if.end20.cleanup_crit_edge ], [ %call81, %cond.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 4
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %6 = inttoptr i32 %add4 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add7 = add i32 %9, 9
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %10 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #3, !srcloc !38
  %shl = shl nuw nsw i32 %shr, 5
  %or = or i32 %shl, %3
  %muxgain_bits12 = getelementptr inbounds %struct.rti800_private, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %muxgain_bits12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %muxgain_bits12, align 4
  %13 = trunc i32 %or to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp.not = icmp eq i8 %12, %13
  br i1 %cmp.not, label %entry.if.end47_crit_edge, label %if.then

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %muxgain_bits12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %muxgain_bits12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %muxgain_bits12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %muxgain_bits12, align 4
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add21 = add i32 %18, 1
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %19 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #3, !srcloc !38
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25.not = icmp eq i32 %21, 0
  br i1 %cmp25.not, label %if.then.if.end47_crit_edge, label %if.then27

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then27:                                        ; preds = %if.then
  %trunc = trunc i32 %shr to i8
  %22 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %cond.false33 [
    i8 0, label %if.then27.cond.false45_crit_edge
    i8 1, label %cond.end37.fold.split
  ]

if.then27.cond.false45_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.false33:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  %23 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %23)
  %cmp34 = icmp eq i32 %23, 131072
  %cond = select i1 %cmp34, i32 40, i32 80
  br label %cond.false45

cond.end37.fold.split:                            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.false45:                                     ; preds = %cond.end37.fold.split, %cond.false33, %if.then27.cond.false45_crit_edge
  %cond38 = phi i32 [ 10, %if.then27.cond.false45_crit_edge ], [ %cond, %cond.false33 ], [ 20, %cond.end37.fold.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %cond38) #3
  br label %if.end47

if.end47:                                         ; preds = %cond.false45, %if.then.if.end47_crit_edge, %entry.if.end47_crit_edge
  %n48 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %25 = ptrtoint ptr %n48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49125.not = icmp eq i32 %26, 0
  br i1 %cmp49125.not, label %if.end47.cleanup88_crit_edge, label %for.body.lr.ph

if.end47.cleanup88_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup88

for.body.lr.ph:                                   ; preds = %if.end47
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add55 = add i32 %28, 2
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %29 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #3, !srcloc !38
  %call59 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @rti800_ai_eoc, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool.not = icmp eq i32 %call59, 0
  br i1 %tobool.not, label %if.end61, label %for.body.cleanup88_crit_edge

for.body.cleanup88_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup88

if.end61:                                         ; preds = %for.body
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase, align 4
  %add64 = add i32 %31, 3
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %32 = inttoptr i32 %add66 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %conv70 = zext i8 %33 to i32
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add73 = add i32 %35, 4
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %36 = inttoptr i32 %add75 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  %38 = and i8 %37, 15
  %and80 = zext i8 %38 to i32
  %shl81 = shl nuw nsw i32 %and80, 8
  %or82 = or i32 %shl81, %conv70
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool83.not = icmp eq i8 %40, 0
  br i1 %tobool83.not, label %if.end61.for.inc_crit_edge, label %if.then84

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then84:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %42, %or82
  %shr.i = lshr i32 %42, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %for.inc

for.inc:                                          ; preds = %if.then84, %if.end61.for.inc_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then84 ], [ %or82, %if.end61.for.inc_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0126
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %val.0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0126, 1
  %44 = ptrtoint ptr %n48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n48, align 4
  %cmp49 = icmp ult i32 %inc, %45
  br i1 %cmp49, label %for.inc.for.body_crit_edge, label %for.inc.cleanup88_crit_edge

for.inc.cleanup88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup88

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup88:                                        ; preds = %for.inc.cleanup88_crit_edge, %for.body.cleanup88_crit_edge, %if.end47.cleanup88_crit_edge
  %retval.2 = phi i32 [ 0, %if.end47.cleanup88_crit_edge ], [ %call59, %for.body.cleanup88_crit_edge ], [ %45, %for.inc.cleanup88_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 5, i32 7
  %cond2 = select i1 %tobool.not, i32 6, i32 8
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.not = icmp eq i32 %3, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %arrayidx4 = getelementptr %struct.rti800_private, ptr %5, i32 0, i32 1, i32 %and
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.035
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %9, i32 %and
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %for.body.do.body_crit_edge, label %if.then

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %14, %7
  %shr.i = lshr i32 %14, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then ], [ %7, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %conv = trunc i32 %val.0 to i8
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add = add i32 %16, %cond
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %17 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv) #3, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %shr = lshr i32 %val.0, 8
  %conv14 = trunc i32 %shr to i8
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add16 = add i32 %19, %cond2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %20 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv14) #3, !srcloc !38
  %inc = add nuw i32 %i.035, 1
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %22, %do.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
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
define internal i32 @rti800_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = trunc i32 %1 to i8
  %conv = xor i8 %2, -1
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 11
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #3, !srcloc !38
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
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rti800_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 9
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #3, !srcloc !38
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and10 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 -16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -75, %do.body ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_rti800__234_353_rti800_driver_init6, !1, !"__initcall__kmod_rti800__234_353_rti800_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/rti800.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_rti800_driver_exit, !1, !"__exitcall_rti800_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/rti800.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/rti800.c", i32 356, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/rti800.c", i32 357, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/rti800.c", i32 345, i32 17}
!12 = !{ptr @rti800_driver, !13, !"rti800_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/rti800.c", i32 344, i32 29}
!14 = !{ptr @rti800_ai_ranges, !15, !"rti800_ai_ranges", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/rti800.c", i32 101, i32 42}
!16 = !{ptr @range_rti800_ai_10_bipolar, !17, !"range_rti800_ai_10_bipolar", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/rti800.c", i32 74, i32 35}
!18 = !{ptr @range_rti800_ai_5_bipolar, !19, !"range_rti800_ai_5_bipolar", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/rti800.c", i32 83, i32 35}
!20 = !{ptr @range_rti800_ai_unipolar, !21, !"range_rti800_ai_unipolar", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/rti800.c", i32 92, i32 35}
!22 = !{ptr @rti800_ao_ranges, !23, !"rti800_ao_ranges", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/rti800.c", i32 107, i32 42}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/rti800.c", i32 121, i32 12}
!26 = !{ptr @rti800_boardtypes, !27, !"rti800_boardtypes", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/rti800.c", i32 117, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2154204371}
!38 = !{i64 4630136}
!39 = !{i64 4630531}
!40 = !{i64 2154204800}
!41 = !{i64 2154205022}
!42 = !{i64 2154200482}
!43 = !{i64 2154200704}
!44 = !{i64 2154201073}
!45 = !{i64 2154201982}
!46 = !{i64 2154202411}
!47 = !{i64 2154202713}
!48 = !{i8 0, i8 2}
!49 = !{i64 2154202991}
!50 = !{i64 2154203355}
!51 = !{i64 2154203786}
!52 = !{i64 2154204022}
!53 = !{i64 2154199595}
!54 = !{i64 2154199899}
