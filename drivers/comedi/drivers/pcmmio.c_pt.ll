; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcmmio.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcmmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.pcmmio_private = type { %struct.spinlock, %struct.spinlock, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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

@__initcall__kmod_pcmmio__234_772_pcmmio_driver_init6 = internal global ptr @pcmmio_driver_init, section ".initcall6.init", align 4
@pcmmio_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcmmio_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcmmio_driver_exit = internal global ptr @pcmmio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"pcmmio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [69 x i8] c"pcmmio.description=Comedi driver for Winsystems PCM-MIO PC/104 board\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"pcmmio.file=drivers/comedi/drivers/pcmmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"pcmmio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmmio\00", [25 x i8] zeroinitializer }, align 32
@pcmmio_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&devpriv->pagelock\00", [45 x i8] zeroinitializer }, align 32
@pcmmio_attach.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&devpriv->spinlock\00", [45 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pcmmio_ai_ranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@pcmmio_ao_ranges = internal constant { { i32, [6 x %struct.comedi_krange] }, [52 x i8] } { { i32, [6 x %struct.comedi_krange] } { i32 6, [6 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 7500000, i32 0 }] }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"pcmmio_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 766, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 767, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 678, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 679, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"pcmmio_ai_ranges\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 157, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"pcmmio_ao_ranges\00", align 1
@___asan_gen_.28 = private constant [35 x i8] c"../drivers/comedi/drivers/pcmmio.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 166, i32 35 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pcmmio_driver_exit, ptr @__initcall__kmod_pcmmio__234_772_pcmmio_driver_init6, ptr @pcmmio_driver_exit, ptr @pcmmio_driver, ptr @.str, ptr @pcmmio_attach.__key, ptr @.str.1, ptr @pcmmio_attach.__key.2, ptr @.str.3, ptr @pcmmio_ai_ranges, ptr @pcmmio_ao_ranges], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmmio_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmmio_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmmio_attach.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmmio_ai_ranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmmio_ao_ranges to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcmmio_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcmmio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcmmio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 96) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call1, ptr noundef nonnull @.str.1, ptr noundef nonnull @pcmmio_attach.__key, i16 noundef signext 3) #6
  %spinlock = getelementptr inbounds %struct.pcmmio_private, ptr %call1, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @pcmmio_attach.__key.2, i16 noundef signext 3) #6
  %private.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 4
  %iobase1.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase1.i.i, align 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add13.i.i = add i32 %5, 16
  %and14.i.i = and i32 %add13.i.i, 1048575
  %add15.i.i = or i32 %and14.i.i, -18874368
  %6 = inttoptr i32 %add15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %add24.i.i = add i32 %5, 17
  %and25.i.i = and i32 %add24.i.i, 1048575
  %add26.i.i = or i32 %and25.i.i, -18874368
  %7 = inttoptr i32 %add26.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %add36.i.i = add i32 %5, 18
  %and37.i.i = and i32 %add36.i.i, 1048575
  %add38.i.i = or i32 %and37.i.i, -18874368
  %8 = inttoptr i32 %add38.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3.i.i) #6
  %9 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i.i, align 4
  %11 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase1.i.i, align 4
  %call3.i7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add13.i8.i = add i32 %12, 19
  %and14.i9.i = and i32 %add13.i8.i, 1048575
  %add15.i10.i = or i32 %and14.i9.i, -18874368
  %13 = inttoptr i32 %add15.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %add24.i11.i = add i32 %12, 20
  %and25.i12.i = and i32 %add24.i11.i, 1048575
  %add26.i13.i = or i32 %and25.i12.i, -18874368
  %14 = inttoptr i32 %add26.i13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %add36.i14.i = add i32 %12, 21
  %and37.i15.i = and i32 %add36.i14.i, 1048575
  %add38.i16.i = or i32 %and37.i15.i, -18874368
  %15 = inttoptr i32 %add38.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3.i7.i) #6
  %16 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i.i, align 4
  %18 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase1.i.i, align 4
  %call3.i19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i.i = add i32 %19, 23
  %and46.i.i = and i32 %add45.i.i, 1048575
  %add47.i.i = or i32 %and46.i.i, -18874368
  %20 = inttoptr i32 %add47.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 64) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add54.i.i = add i32 %19, 24
  %and55.i.i = and i32 %add54.i.i, 1048575
  %add56.i.i = or i32 %and55.i.i, -18874368
  %21 = inttoptr i32 %add56.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add64.i.i = add i32 %19, 25
  %and65.i.i = and i32 %add64.i.i, 1048575
  %add66.i.i = or i32 %and65.i.i, -18874368
  %22 = inttoptr i32 %add66.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add74.i.i = add i32 %19, 26
  %and75.i.i = and i32 %add74.i.i, 1048575
  %add76.i.i = or i32 %and75.i.i, -18874368
  %23 = inttoptr i32 %add76.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3.i19.i) #6
  %24 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i.i, align 4
  %26 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase1.i.i, align 4
  %call3.i22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i23.i = add i32 %27, 23
  %and46.i24.i = and i32 %add45.i23.i, 1048575
  %add47.i25.i = or i32 %and46.i24.i, -18874368
  %28 = inttoptr i32 %add47.i25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -128) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add54.i26.i = add i32 %27, 24
  %and55.i27.i = and i32 %add54.i26.i, 1048575
  %add56.i28.i = or i32 %and55.i27.i, -18874368
  %29 = inttoptr i32 %add56.i28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add64.i29.i = add i32 %27, 25
  %and65.i30.i = and i32 %add64.i29.i, 1048575
  %add66.i31.i = or i32 %and65.i30.i, -18874368
  %30 = inttoptr i32 %add66.i31.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add74.i32.i = add i32 %27, 26
  %and75.i33.i = and i32 %add74.i32.i, 1048575
  %add76.i34.i = or i32 %and75.i33.i, -18874368
  %31 = inttoptr i32 %add76.i34.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call3.i22.i) #6
  %32 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private.i.i, align 4
  %34 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase1.i.i, align 4
  %call3.i37.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i38.i = add i32 %35, 23
  %and46.i39.i = and i32 %add45.i38.i, 1048575
  %add47.i40.i = or i32 %and46.i39.i, -18874368
  %36 = inttoptr i32 %add47.i40.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -64) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add54.i41.i = add i32 %35, 24
  %and55.i42.i = and i32 %add54.i41.i, 1048575
  %add56.i43.i = or i32 %and55.i42.i, -18874368
  %37 = inttoptr i32 %add56.i43.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add64.i44.i = add i32 %35, 25
  %and65.i45.i = and i32 %add64.i44.i, 1048575
  %add66.i46.i = or i32 %and65.i45.i, -18874368
  %38 = inttoptr i32 %add66.i46.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add74.i47.i = add i32 %35, 26
  %and75.i48.i = and i32 %add74.i47.i, 1048575
  %add76.i49.i = or i32 %and75.i48.i, -18874368
  %39 = inttoptr i32 %add76.i49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call3.i37.i) #6
  %arrayidx11 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.not = icmp eq i32 %41, 0
  br i1 %tobool12.not, label %do.body.if.end36_crit_edge, label %if.then13

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then13:                                        ; preds = %do.body
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %42 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @interrupt_pcmmio, ptr noundef null, i32 noundef 0, ptr noundef %43, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then17, label %if.then13.if.end36_crit_edge

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %irq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase1.i.i, align 4
  %add = add i32 %48, 3
  %and = and i32 %add, 1048575
  %add23 = or i32 %and, -18874368
  %49 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 16) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %52 = trunc i32 %51 to i8
  %conv = and i8 %52, 15
  %53 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase1.i.i, align 4
  %add31 = add i32 %54, 2
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %55 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv) #6, !srcloc !33
  br label %if.end36

if.end36:                                         ; preds = %if.then17, %if.then13.if.end36_crit_edge, %do.body.if.end36_crit_edge
  %call37 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %56 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 4
  %59 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 3
  %60 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 13
  %61 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 15
  %62 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pcmmio_ai_ranges, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 18
  %63 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pcmmio_ai_insn_read, ptr %insn_read, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase1.i.i, align 4
  %add46 = add i32 %65, 3
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %66 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase1.i.i, align 4
  %add55 = add i32 %68, 7
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %69 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 0) #6, !srcloc !33
  %70 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %subdevices, align 4
  %arrayidx60 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1
  %type61 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 2
  %72 = ptrtoint ptr %type61 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %type61, align 4
  %subdev_flags62 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 4
  %73 = ptrtoint ptr %subdev_flags62 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 65536, ptr %subdev_flags62, align 4
  %n_chan63 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 3
  %74 = ptrtoint ptr %n_chan63 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8, ptr %n_chan63, align 4
  %maxdata64 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 13
  %75 = ptrtoint ptr %maxdata64 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 65535, ptr %maxdata64, align 4
  %range_table65 = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 15
  %76 = ptrtoint ptr %range_table65 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @pcmmio_ao_ranges, ptr %range_table65, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %71, i32 1, i32 19
  %77 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pcmmio_ao_insn_write, ptr %insn_write, align 4
  %call66 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body70, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body70:                                        ; preds = %if.end40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iobase1.i.i, align 4
  %add74 = add i32 %79, 11
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %80 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase1.i.i, align 4
  %add83 = add i32 %82, 15
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %83 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 0) #6, !srcloc !33
  %84 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %subdevices, align 4
  %type89 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 2
  %86 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %type89, align 4
  %subdev_flags90 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 4
  %87 = ptrtoint ptr %subdev_flags90 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 196608, ptr %subdev_flags90, align 4
  %n_chan91 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 3
  %88 = ptrtoint ptr %n_chan91 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 24, ptr %n_chan91, align 4
  %maxdata92 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 13
  %89 = ptrtoint ptr %maxdata92 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %maxdata92, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 5
  %90 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %len_chanlist, align 4
  %range_table93 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 15
  %91 = ptrtoint ptr %range_table93 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @range_unipolar5, ptr %range_table93, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 20
  %92 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @pcmmio_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 21
  %93 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @pcmmio_dio_insn_config, ptr %insn_config, align 4
  %irq94 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %94 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool95.not = icmp eq i32 %95, 0
  br i1 %tobool95.not, label %do.body70.if.end100_crit_edge, label %if.then96

do.body70.if.end100_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then96:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx88 = getelementptr %struct.comedi_subdevice, ptr %85, i32 2
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %96 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx88, ptr %read_subdev, align 4
  %97 = ptrtoint ptr %subdev_flags90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %subdev_flags90, align 4
  %or = or i32 %98, 805339136
  store i32 %or, ptr %subdev_flags90, align 4
  %99 = ptrtoint ptr %n_chan91 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_chan91, align 4
  %101 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %len_chanlist, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 25
  %102 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @pcmmio_cancel, ptr %cancel, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 22
  %103 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @pcmmio_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %85, i32 2, i32 23
  %104 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @pcmmio_cmdtest, ptr %do_cmdtest, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %do.body70.if.end100_crit_edge
  %105 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %subdevices, align 4
  %type103 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 2
  %107 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 5, ptr %type103, align 4
  %subdev_flags104 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 4
  %108 = ptrtoint ptr %subdev_flags104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 196608, ptr %subdev_flags104, align 4
  %n_chan105 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 3
  %109 = ptrtoint ptr %n_chan105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 24, ptr %n_chan105, align 4
  %maxdata106 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 13
  %110 = ptrtoint ptr %maxdata106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %maxdata106, align 4
  %range_table107 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 15
  %111 = ptrtoint ptr %range_table107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @range_unipolar5, ptr %range_table107, align 4
  %insn_bits108 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 20
  %112 = ptrtoint ptr %insn_bits108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @pcmmio_dio_insn_bits, ptr %insn_bits108, align 4
  %insn_config109 = getelementptr %struct.comedi_subdevice, ptr %106, i32 3, i32 21
  %113 = ptrtoint ptr %insn_config109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @pcmmio_dio_insn_config, ptr %insn_config109, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end100 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call66, %if.end40.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_pcmmio(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 22
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %add43.i = add i32 %10, 23
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %11 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -64) #6, !srcloc !33
  %add48.i = add i32 %10, 24
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %12 = inttoptr i32 %add50.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %conv54.i = zext i8 %13 to i32
  %add56.i = add i32 %10, 25
  %and57.i = and i32 %add56.i, 1048575
  %add58.i = or i32 %and57.i, -18874368
  %14 = inttoptr i32 %add58.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv62.i = zext i8 %15 to i32
  %shl63.i = shl nuw nsw i32 %conv62.i, 8
  %or64.i = or i32 %shl63.i, %conv54.i
  %add66.i = add i32 %10, 26
  %and67.i = and i32 %add66.i, 1048575
  %add68.i = or i32 %and67.i, -18874368
  %16 = inttoptr i32 %add68.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %conv72.i = zext i8 %17 to i32
  %shl73.i = shl nuw nsw i32 %conv72.i, 16
  %or74.i = or i32 %shl73.i, %or64.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call3.i) #6
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %call3.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i16 = add i32 %21, 23
  %and46.i = and i32 %add45.i16, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %22 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 -64) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add54.i = add i32 %21, 24
  %and55.i = and i32 %add54.i, 1048575
  %add56.i17 = or i32 %and55.i, -18874368
  %23 = inttoptr i32 %add56.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add64.i = add i32 %21, 25
  %and65.i = and i32 %add64.i, 1048575
  %add66.i18 = or i32 %and65.i, -18874368
  %24 = inttoptr i32 %add66.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add74.i = add i32 %21, 26
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %25 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call3.i15) #6
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private.i, align 4
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %async.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val.i, align 4
  %spinlock.i = getelementptr inbounds %struct.pcmmio_private, ptr %27, i32 0, i32 1
  %call3.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #6
  %active.i = getelementptr inbounds %struct.pcmmio_private, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.pcmmio_handle_dio_intr.exit_crit_edge, label %if.end.i

if.end.pcmmio_handle_dio_intr.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmmio_handle_dio_intr.exit

if.end.i:                                         ; preds = %if.end
  %enabled_mask.i = getelementptr inbounds %struct.pcmmio_private, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %enabled_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enabled_mask.i, align 4
  %and.i = and i32 %33, %or74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.pcmmio_handle_dio_intr.exit_crit_edge, label %for.cond.preheader.i

if.end.i.pcmmio_handle_dio_intr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmmio_handle_dio_intr.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 17, i32 13
  %34 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp944.not.i = icmp eq i32 %35, 0
  br i1 %cmp944.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 17, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end16.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chanlist.i, align 4
  %arrayidx.i = getelementptr i32, ptr %37, i32 %i.045.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %and11.i = and i32 %39, 65535
  %shl.i = shl nuw i32 1, %and11.i
  %and12.i = and i32 %shl.i, %or74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %for.body.i.if.end16.i_crit_edge, label %if.then14.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl15.i = shl nuw i32 1, %i.045.i
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %or.i = or i32 %41, %shl15.i
  store i32 %or.i, ptr %val.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %for.body.i.if.end16.i_crit_edge
  %inc.i = add nuw i32 %i.045.i, 1
  %42 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chanlist_len.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %43
  br i1 %cmp9.i, label %if.end16.i.for.body.i_crit_edge, label %if.end16.i.for.end.i_crit_edge

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end16.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call17.i = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1) #6
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 17, i32 10
  %44 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %cmp18.i = icmp eq i32 %45, 32
  br i1 %cmp18.i, label %land.lhs.true.i, label %for.end.i.pcmmio_handle_dio_intr.exit_crit_edge

for.end.i.pcmmio_handle_dio_intr.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmmio_handle_dio_intr.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %46 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %async.i, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %29, i32 0, i32 17, i32 11
  %50 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp21.not.i = icmp ult i32 %49, %51
  br i1 %cmp21.not.i, label %land.lhs.true.i.pcmmio_handle_dio_intr.exit_crit_edge, label %if.then23.i

land.lhs.true.i.pcmmio_handle_dio_intr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcmmio_handle_dio_intr.exit

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 16
  %52 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %events.i, align 4
  %or25.i = or i32 %53, 2
  store i32 %or25.i, ptr %events.i, align 4
  br label %pcmmio_handle_dio_intr.exit

pcmmio_handle_dio_intr.exit:                      ; preds = %if.then23.i, %land.lhs.true.i.pcmmio_handle_dio_intr.exit_crit_edge, %for.end.i.pcmmio_handle_dio_intr.exit_crit_edge, %if.end.i.pcmmio_handle_dio_intr.exit_crit_edge, %if.end.pcmmio_handle_dio_intr.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i20) #6
  %call28.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pcmmio_handle_dio_intr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %pcmmio_handle_dio_intr.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase1, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65528
  %shr = lshr i32 %3, 16
  %and3 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %sub = add i32 %3, 248
  %add = add i32 %1, 4
  %chan.0 = select i1 %cmp.not, i32 %3, i32 %sub
  %iobase.0 = select i1 %cmp.not, i32 %1, i32 %add
  %4 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp eq i32 %4, 0
  %cmd.0 = select i1 %cmp7, i8 -128, i8 0
  %5 = trunc i32 %chan.0 to i8
  %6 = shl i8 %5, 6
  %7 = and i8 %6, 64
  %8 = shl i8 %5, 3
  %9 = and i8 %8, 48
  %and20 = shl nuw nsw i32 %shr, 2
  %10 = trunc i32 %and20 to i8
  %11 = and i8 %10, 12
  %12 = or i8 %11, %cmd.0
  %conv19 = or i8 %12, %7
  %conv24 = or i8 %conv19, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %add25 = add i32 %iobase.0, 2
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %13 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv24) #6, !srcloc !33
  %call28 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcmmio_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %entry
  %and33 = and i32 %iobase.0, 1048575
  %add34 = or i32 %and33, -18874368
  %14 = inttoptr i32 %add34 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %add39 = add i32 %iobase.0, 1
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %16 = inttoptr i32 %add41 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp48126.not = icmp eq i32 %19, 0
  br i1 %cmp48126.not, label %if.end31.cleanup_crit_edge, label %do.body50.lr.ph

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body50.lr.ph:                                  ; preds = %if.end31
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body50

do.body50:                                        ; preds = %if.end82.do.body50_crit_edge, %do.body50.lr.ph
  %i.0127 = phi i32 [ 0, %do.body50.lr.ph ], [ %inc, %if.end82.do.body50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv24) #6, !srcloc !33
  %call57 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcmmio_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %do.body50.cleanup_crit_edge

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %do.body50
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %conv68 = zext i8 %20 to i32
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv76 = zext i8 %21 to i32
  %shl77 = shl nuw nsw i32 %conv76, 8
  %or78 = or i32 %shl77, %conv68
  %22 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %23, i32 0, i32 1, i32 %and3
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp slt i32 %25, 0
  br i1 %cmp.i, label %if.then80, label %if.end60.if.end82_crit_edge

if.end60.if.end82_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then80:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %27, %or78
  %shr.i = lshr i32 %27, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end60.if.end82_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then80 ], [ %or78, %if.end60.if.end82_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0127
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %val.0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0127, 1
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n, align 4
  %cmp48 = icmp ult i32 %inc, %30
  br i1 %cmp48, label %if.end82.do.body50_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82.do.body50_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

cleanup:                                          ; preds = %if.end82.cleanup_crit_edge, %do.body50.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call57, %do.body50.cleanup_crit_edge ], [ %30, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase1, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  %add = add i32 %1, 4
  %iobase.0 = select i1 %cmp, i32 %add, i32 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %4 = trunc i32 %shr to i8
  %conv13 = and i8 %4, 15
  %add14 = add i32 %iobase.0, 8
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %5 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv13) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %add20 = add i32 %iobase.0, 9
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %6 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %.tr = trunc i32 %3 to i8
  %7 = shl i8 %.tr, 1
  %8 = and i8 %7, 6
  %conv29 = or i8 %8, 96
  %add30 = add i32 %iobase.0, 10
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %9 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv29) #6, !srcloc !33
  %call34 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcmmio_ao_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup74_crit_edge

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp37110.not = icmp eq i32 %11, 0
  br i1 %cmp37110.not, label %for.cond.preheader.cleanup74_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup74_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv63 = or i8 %8, 112
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0111
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %conv43 = trunc i32 %13 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv43) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %shr51 = lshr i32 %13, 8
  %conv53 = trunc i32 %shr51 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv53) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv63) #6, !srcloc !33
  %call68 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcmmio_ao_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.inc, label %for.body.cleanup74_crit_edge

for.body.cleanup74_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.inc:                                          ; preds = %for.body
  %14 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readback, align 4
  %arrayidx72 = getelementptr i32, ptr %15, i32 %and
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx72, align 4
  %inc = add nuw i32 %i.0111, 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %cmp37 = icmp ult i32 %inc, %18
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.cleanup74_crit_edge

for.inc.cleanup74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup74:                                        ; preds = %for.inc.cleanup74_crit_edge, %for.body.cleanup74_crit_edge, %for.cond.preheader.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.2 = phi i32 [ %call34, %entry.cleanup74_crit_edge ], [ 0, %for.cond.preheader.cleanup74_crit_edge ], [ %18, %for.inc.cleanup74_crit_edge ], [ %call68, %for.body.cleanup74_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %cond = select i1 %cmp, i32 0, i32 3
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chan, align 4
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %neg, %sub
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %6 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bits, align 4
  %and1 = and i32 %and, %7
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %iobase1.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv11.i = trunc i32 %and1 to i8
  %add12.i = add i32 %11, %cond
  %add13.i = add i32 %add12.i, 16
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %12 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv11.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %and1, 8
  %conv21.i = trunc i32 %shr.i to i8
  %add24.i = add i32 %add12.i, 17
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %13 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv21.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %shr31.i = lshr i32 %and1, 16
  %conv33.i = trunc i32 %shr31.i to i8
  %add36.i = add i32 %add12.i, 18
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %14 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv33.i) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call3.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %private.i15 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %15 = ptrtoint ptr %private.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i15, align 4
  %iobase1.i16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %iobase1.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase1.i16, align 4
  %call3.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %add8.i = add i32 %18, %cond
  %add9.i = add i32 %add8.i, 16
  %and.i = and i32 %add9.i, 1048575
  %add10.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add10.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %conv14.i = zext i8 %20 to i32
  %add18.i = add i32 %add8.i, 17
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %21 = inttoptr i32 %add20.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %conv24.i = zext i8 %22 to i32
  %shl.i = shl nuw nsw i32 %conv24.i, 8
  %or.i = or i32 %shl.i, %conv14.i
  %add28.i = add i32 %add8.i, 18
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %23 = inttoptr i32 %add30.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %conv72.i = zext i8 %24 to i32
  %shl73.i = shl nuw nsw i32 %conv72.i, 16
  %or74.i = or i32 %shl73.i, %or.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call3.i17) #6
  %neg3 = xor i32 %or74.i, -1
  %and4 = and i32 %neg3, %sub
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and4, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %cond = select i1 %cmp, i32 0, i32 3
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %iobase1.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv11.i = trunc i32 %5 to i8
  %add12.i = add i32 %9, %cond
  %add13.i = add i32 %add12.i, 16
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %10 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv11.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %shr.i = lshr i32 %5, 8
  %conv21.i = trunc i32 %shr.i to i8
  %add24.i = add i32 %add12.i, 17
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %11 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv21.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %shr31.i = lshr i32 %5, 16
  %conv33.i = trunc i32 %shr31.i to i8
  %add36.i = add i32 %add12.i, 18
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %12 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv33.i) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3.i) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %active = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %enabled_mask.i = getelementptr inbounds %struct.pcmmio_private, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %enabled_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %enabled_mask.i, align 4
  %active.i = getelementptr inbounds %struct.pcmmio_private, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %active.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %active.i, align 4
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %7 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async.i, align 4
  %inttrig.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %inttrig.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %inttrig.i, align 4
  %10 = load ptr, ptr %private, align 4
  %iobase1.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase1.i.i, align 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i.i = add i32 %12, 23
  %and46.i.i = and i32 %add45.i.i, 1048575
  %add47.i.i = or i32 %and46.i.i, -18874368
  %13 = inttoptr i32 %add47.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -128) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add54.i.i = add i32 %12, 24
  %and55.i.i = and i32 %add54.i.i, 1048575
  %add56.i.i = or i32 %and55.i.i, -18874368
  %14 = inttoptr i32 %add56.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add64.i.i = add i32 %12, 25
  %and65.i.i = and i32 %add64.i.i, 1048575
  %add66.i.i = or i32 %and65.i.i, -18874368
  %15 = inttoptr i32 %add66.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %add74.i.i = add i32 %12, 26
  %and75.i.i = and i32 %add74.i.i, 1048575
  %add76.i.i = or i32 %and75.i.i, -18874368
  %16 = inttoptr i32 %add76.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %spinlock = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %active = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp6 = icmp eq i32 %6, 128
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pcmmio_inttrig_start_intr, ptr %inttrig, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pcmmio_start_intr(ptr noundef %dev, ptr noundef %s)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcmmio_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #6, !range !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #6, !range !66
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_ao_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 11
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmmio_inttrig_start_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
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
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.pcmmio_private, ptr %5, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inttrig, align 4
  %active = getelementptr inbounds %struct.pcmmio_private, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body2.if.end9_crit_edge, label %if.then8

do.body2.if.end9_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pcmmio_start_intr(ptr noundef %dev, ptr noundef %s)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body2.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmmio_start_intr(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
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
  %enabled_mask = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %enabled_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %enabled_mask, align 4
  %active = getelementptr inbounds %struct.pcmmio_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %8 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp49.not = icmp eq i32 %9, 0
  br i1 %cmp49.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pol_bits.051 = phi i32 [ %or9, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bits.050 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.052
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 65535
  %shl = shl nuw i32 1, %and
  %or = or i32 %shl, %bits.050
  %12 = and i32 %11, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp ne i32 %12, 0
  %cond = zext i1 %13 to i32
  %shl8 = shl nuw i32 %cond, %and
  %or9 = or i32 %shl8, %pol_bits.051
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %bits.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %or, %for.body.if.end_crit_edge ]
  %pol_bits.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %or9, %for.body.if.end_crit_edge ]
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_chan, align 4
  %notmask = shl nsw i32 -1, %15
  %sub = xor i32 %notmask, -1
  %and11 = and i32 %bits.1, %sub
  %16 = ptrtoint ptr %enabled_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and11, ptr %enabled_mask, align 4
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %iobase1.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %iobase1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase1.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i = add i32 %20, 23
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %21 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 64) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv53.i = trunc i32 %pol_bits.1 to i8
  %add54.i = add i32 %20, 24
  %and55.i = and i32 %add54.i, 1048575
  %add56.i = or i32 %and55.i, -18874368
  %22 = inttoptr i32 %add56.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv53.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %shr61.i = lshr i32 %pol_bits.1, 8
  %conv63.i = trunc i32 %shr61.i to i8
  %add64.i = add i32 %20, 25
  %and65.i = and i32 %add64.i, 1048575
  %add66.i = or i32 %and65.i, -18874368
  %23 = inttoptr i32 %add66.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv63.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %shr71.i = lshr i32 %pol_bits.1, 16
  %conv73.i = trunc i32 %shr71.i to i8
  %add74.i = add i32 %20, 26
  %and75.i = and i32 %add74.i, 1048575
  %add76.i = or i32 %and75.i, -18874368
  %24 = inttoptr i32 %add76.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv73.i) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call3.i) #6
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private, align 4
  %27 = ptrtoint ptr %iobase1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase1.i, align 4
  %call3.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add45.i32 = add i32 %28, 23
  %and46.i33 = and i32 %add45.i32, 1048575
  %add47.i34 = or i32 %and46.i33, -18874368
  %29 = inttoptr i32 %add47.i34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 -128) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %conv53.i35 = trunc i32 %and11 to i8
  %add54.i36 = add i32 %28, 24
  %and55.i37 = and i32 %add54.i36, 1048575
  %add56.i38 = or i32 %and55.i37, -18874368
  %30 = inttoptr i32 %add56.i38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv53.i35) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %shr61.i39 = lshr i32 %and11, 8
  %conv63.i40 = trunc i32 %shr61.i39 to i8
  %add64.i41 = add i32 %28, 25
  %and65.i42 = and i32 %add64.i41, 1048575
  %add66.i43 = or i32 %and65.i42, -18874368
  %31 = inttoptr i32 %add66.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv63.i40) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %shr71.i44 = lshr i32 %and11, 16
  %conv73.i45 = trunc i32 %shr71.i44 to i8
  %add74.i46 = add i32 %28, 26
  %and75.i47 = and i32 %add74.i46, 1048575
  %add76.i48 = or i32 %and75.i47, -18874368
  %32 = inttoptr i32 %add76.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv73.i45) #6, !srcloc !33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %call3.i31) #6
  ret void
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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_pcmmio__234_772_pcmmio_driver_init6, !1, !"__initcall__kmod_pcmmio__234_772_pcmmio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 772, i32 1}
!2 = !{ptr @__exitcall_pcmmio_driver_exit, !1, !"__exitcall_pcmmio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 774, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 775, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 776, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 767, i32 17}
!12 = !{ptr @pcmmio_driver, !13, !"pcmmio_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 766, i32 29}
!14 = !{ptr @pcmmio_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 678, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pcmmio_attach.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 679, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pcmmio_ai_ranges, !21, !"pcmmio_ai_ranges", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 157, i32 35}
!22 = !{ptr @pcmmio_ao_ranges, !23, !"pcmmio_ao_ranges", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcmmio.c", i32 166, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4636624}
!34 = !{i64 2154206733}
!35 = !{i64 2154207140}
!36 = !{i64 2154207910}
!37 = !{i64 2154208295}
!38 = !{i64 2154208681}
!39 = !{i64 2154219590}
!40 = !{i64 2154219993}
!41 = !{i64 2154220391}
!42 = !{i64 2154220768}
!43 = !{i64 2154221135}
!44 = !{i64 2154221496}
!45 = !{i64 4637019}
!46 = !{i64 2154212294}
!47 = !{i64 2154210473}
!48 = !{i64 2154210917}
!49 = !{i64 2154211239}
!50 = !{i64 2154211561}
!51 = !{i64 2154214539}
!52 = !{i64 2154214953}
!53 = !{i64 2154215245}
!54 = !{i64 2154215464}
!55 = !{i64 2154215878}
!56 = !{i64 2154216170}
!57 = !{i64 2154216947}
!58 = !{i64 2154217286}
!59 = !{i64 2154217651}
!60 = !{i64 2154217999}
!61 = !{i64 2154218354}
!62 = !{i64 2154218719}
!63 = !{i64 2154209524}
!64 = !{i64 2154209867}
!65 = !{i64 2154210210}
!66 = !{i32 0, i32 33}
!67 = !{i64 2154213906}
!68 = !{i64 2154216472}
