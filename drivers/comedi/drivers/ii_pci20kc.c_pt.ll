; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ii_pci20kc.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ii_pci20kc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_ii_pci20kc__229_520_ii20k_driver_init6 = internal global ptr @ii20k_driver_init, section ".initcall6.init", align 4
@ii20k_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @ii20k_attach, ptr @ii20k_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_ii20k_driver_exit = internal global ptr @ii20k_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [48 x i8] c"ii_pci20kc.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [76 x i8] c"ii_pci20kc.description=Comedi driver for Intelligent Instruments PCI-20001C\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [50 x i8] c"ii_pci20kc.file=drivers/comedi/drivers/ii_pci20kc\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [23 x i8] c"ii_pci20kc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ii_pci20kc\00", [21 x i8] zeroinitializer }, align 32
@ii20k_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 428, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: invalid memory address specified\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ii20k_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/comedi/drivers/ii_pci20kc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ii20k_attach._entry_ptr = internal global ptr @ii20k_attach._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ii20k_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: I/O mem conflict (%#x,%u)\0A\00", [33 x i8] zeroinitializer }, align 32
@ii20k_attach._entry_ptr.8 = internal global ptr @ii20k_attach._entry.6, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@ii20k_ao_ranges = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [56 x i8] zeroinitializer }, align 32
@ii20k_ai_ranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -25000, i32 25000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 27, i64 29]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 119, i64 226, i64 227]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 119, i64 226, i64 227]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 119, i64 226, i64 227]
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"ii20k_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 514, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 515, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 426, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 433, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"ii20k_ao_ranges\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 120, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ii20k_ai_ranges\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../drivers/comedi/drivers/ii_pci20kc.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 128, i32 35 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ii20k_driver_exit, ptr @__initcall__kmod_ii_pci20kc__229_520_ii20k_driver_init6, ptr @ii20k_attach._entry, ptr @ii20k_attach._entry.6, ptr @ii20k_attach._entry_ptr, ptr @ii20k_attach._entry_ptr.8, ptr @ii20k_driver_exit, ptr @ii20k_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ii20k_ao_ranges, ptr @ii20k_ai_ranges], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ii20k_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ii20k_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ii20k_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ii20k_ao_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ii20k_ai_ranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @ii20k_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ii20k_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_driver_unregister(ptr noundef nonnull @ii20k_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %and = and i32 %1, -1047553
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_name, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %board_name2 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %board_name2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_name2, align 4
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 1024, ptr noundef %7, i32 noundef 0) #4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev8 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev8, align 4
  %10 = ptrtoint ptr %board_name2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_name2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %1, i32 noundef 1024) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %iobase, align 4
  %call11 = tail call ptr @ioremap(i32 noundef %1, i32 noundef 1024) #4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %mmio, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call11) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %conv = zext i8 %14 to i32
  %and19 = and i32 %conv, 31
  %15 = zext i32 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and19, label %if.end15.cleanup_crit_edge [
    i32 27, label %if.end15.sw.epilog_crit_edge
    i32 29, label %sw.bb20
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb20:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %if.end15.sw.epilog_crit_edge
  %has_dio.0.off0 = phi i1 [ true, %sw.bb20 ], [ false, %if.end15.sw.epilog_crit_edge ]
  %call21 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdevices, align 4
  %and27 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end24
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %index.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %add.i.i = shl i32 %22, 8
  %mul.i.i = add i32 %add.i.i, 256
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %mul.i.i
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %23, label %sw.default.i [
    i8 -30, label %if.else.sw.bb.i_crit_edge
    i8 -29, label %if.else.sw.bb.i_crit_edge182
    i8 119, label %sw.bb6.i
  ]

if.else.sw.bb.i_crit_edge182:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge182
  %type.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %type.i, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 4
  %26 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 131072, ptr %subdev_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -29, i8 %23)
  %cmp.i = icmp eq i8 %23, -29
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 3
  %27 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %n_chan.i, align 4
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 13
  %28 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %maxdata.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 15
  %29 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ii20k_ao_ranges, ptr %range_table.i, align 4
  %insn_write.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 19
  %30 = ptrtoint ptr %insn_write.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ii20k_ao_insn_write, ptr %insn_write.i, align 4
  %call5.i = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end34_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i.if.end34_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

sw.bb6.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %type7.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %31 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type7.i, align 4
  %subdev_flags8.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 4
  %32 = ptrtoint ptr %subdev_flags8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4259840, ptr %subdev_flags8.i, align 4
  %n_chan9.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 3
  %33 = ptrtoint ptr %n_chan9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %n_chan9.i, align 4
  %maxdata10.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 13
  %34 = ptrtoint ptr %maxdata10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %maxdata10.i, align 4
  %range_table11.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 15
  %35 = ptrtoint ptr %range_table11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ii20k_ai_ranges, ptr %range_table11.i, align 4
  %insn_read.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 18
  %36 = ptrtoint ptr %insn_read.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ii20k_ai_insn_read, ptr %insn_read.i, align 4
  br label %if.end34

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %type12.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 2
  %37 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type12.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %sw.default.i, %sw.bb6.i, %sw.bb.i.if.end34_crit_edge, %if.then29
  %38 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subdevices, align 4
  %and38 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %type41 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 2
  %40 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %type41, align 4
  br label %if.end47

if.else42:                                        ; preds = %if.end34
  %41 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio, align 4
  %index.i.i120 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 1
  %43 = ptrtoint ptr %index.i.i120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i.i120, align 4
  %add.i.i121 = shl i32 %44, 8
  %mul.i.i122 = add i32 %add.i.i121, 256
  %add.ptr.i.i123 = getelementptr i8, ptr %42, i32 %mul.i.i122
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i123) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %45, label %sw.default.i143 [
    i8 -30, label %if.else42.sw.bb.i134_crit_edge
    i8 -29, label %if.else42.sw.bb.i134_crit_edge183
    i8 119, label %sw.bb6.i141
  ]

if.else42.sw.bb.i134_crit_edge183:                ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i134

if.else42.sw.bb.i134_crit_edge:                   ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i134

sw.bb.i134:                                       ; preds = %if.else42.sw.bb.i134_crit_edge, %if.else42.sw.bb.i134_crit_edge183
  %arrayidx36 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1
  %type.i124 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 2
  %47 = ptrtoint ptr %type.i124 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %type.i124, align 4
  %subdev_flags.i125 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 4
  %48 = ptrtoint ptr %subdev_flags.i125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 131072, ptr %subdev_flags.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -29, i8 %45)
  %cmp.i126 = icmp eq i8 %45, -29
  %cond.i127 = select i1 %cmp.i126, i32 2, i32 1
  %n_chan.i128 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 3
  %49 = ptrtoint ptr %n_chan.i128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i127, ptr %n_chan.i128, align 4
  %maxdata.i129 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 13
  %50 = ptrtoint ptr %maxdata.i129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 65535, ptr %maxdata.i129, align 4
  %range_table.i130 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 15
  %51 = ptrtoint ptr %range_table.i130 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ii20k_ao_ranges, ptr %range_table.i130, align 4
  %insn_write.i131 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 19
  %52 = ptrtoint ptr %insn_write.i131 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ii20k_ao_insn_write, ptr %insn_write.i131, align 4
  %call5.i132 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i132)
  %tobool.not.i133 = icmp eq i32 %call5.i132, 0
  br i1 %tobool.not.i133, label %sw.bb.i134.if.end47_crit_edge, label %sw.bb.i134.cleanup_crit_edge

sw.bb.i134.cleanup_crit_edge:                     ; preds = %sw.bb.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i134.if.end47_crit_edge:                    ; preds = %sw.bb.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

sw.bb6.i141:                                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  %type7.i135 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 2
  %53 = ptrtoint ptr %type7.i135 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type7.i135, align 4
  %subdev_flags8.i136 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 4
  %54 = ptrtoint ptr %subdev_flags8.i136 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4259840, ptr %subdev_flags8.i136, align 4
  %n_chan9.i137 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 3
  %55 = ptrtoint ptr %n_chan9.i137 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %n_chan9.i137, align 4
  %maxdata10.i138 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 13
  %56 = ptrtoint ptr %maxdata10.i138 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65535, ptr %maxdata10.i138, align 4
  %range_table11.i139 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 15
  %57 = ptrtoint ptr %range_table11.i139 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ii20k_ai_ranges, ptr %range_table11.i139, align 4
  %insn_read.i140 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 18
  %58 = ptrtoint ptr %insn_read.i140 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ii20k_ai_insn_read, ptr %insn_read.i140, align 4
  br label %if.end47

sw.default.i143:                                  ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #6
  %type12.i142 = getelementptr %struct.comedi_subdevice, ptr %39, i32 1, i32 2
  %59 = ptrtoint ptr %type12.i142 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %type12.i142, align 4
  br label %if.end47

if.end47:                                         ; preds = %sw.default.i143, %sw.bb6.i141, %sw.bb.i134.if.end47_crit_edge, %if.then40
  %60 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subdevices, align 4
  %and51 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %type54 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 2
  %62 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %type54, align 4
  br label %if.end60

if.else55:                                        ; preds = %if.end47
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 4
  %index.i.i148 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 1
  %65 = ptrtoint ptr %index.i.i148 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index.i.i148, align 4
  %add.i.i149 = shl i32 %66, 8
  %mul.i.i150 = add i32 %add.i.i149, 256
  %add.ptr.i.i151 = getelementptr i8, ptr %64, i32 %mul.i.i150
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i151) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %67, label %sw.default.i171 [
    i8 -30, label %if.else55.sw.bb.i162_crit_edge
    i8 -29, label %if.else55.sw.bb.i162_crit_edge184
    i8 119, label %sw.bb6.i169
  ]

if.else55.sw.bb.i162_crit_edge184:                ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i162

if.else55.sw.bb.i162_crit_edge:                   ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i162

sw.bb.i162:                                       ; preds = %if.else55.sw.bb.i162_crit_edge, %if.else55.sw.bb.i162_crit_edge184
  %arrayidx49 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2
  %type.i152 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 2
  %69 = ptrtoint ptr %type.i152 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %type.i152, align 4
  %subdev_flags.i153 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 4
  %70 = ptrtoint ptr %subdev_flags.i153 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 131072, ptr %subdev_flags.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -29, i8 %67)
  %cmp.i154 = icmp eq i8 %67, -29
  %cond.i155 = select i1 %cmp.i154, i32 2, i32 1
  %n_chan.i156 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 3
  %71 = ptrtoint ptr %n_chan.i156 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond.i155, ptr %n_chan.i156, align 4
  %maxdata.i157 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 13
  %72 = ptrtoint ptr %maxdata.i157 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 65535, ptr %maxdata.i157, align 4
  %range_table.i158 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 15
  %73 = ptrtoint ptr %range_table.i158 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ii20k_ao_ranges, ptr %range_table.i158, align 4
  %insn_write.i159 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 19
  %74 = ptrtoint ptr %insn_write.i159 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @ii20k_ao_insn_write, ptr %insn_write.i159, align 4
  %call5.i160 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx49) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i160)
  %tobool.not.i161 = icmp eq i32 %call5.i160, 0
  br i1 %tobool.not.i161, label %sw.bb.i162.if.end60_crit_edge, label %sw.bb.i162.cleanup_crit_edge

sw.bb.i162.cleanup_crit_edge:                     ; preds = %sw.bb.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i162.if.end60_crit_edge:                    ; preds = %sw.bb.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

sw.bb6.i169:                                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  %type7.i163 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 2
  %75 = ptrtoint ptr %type7.i163 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %type7.i163, align 4
  %subdev_flags8.i164 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 4
  %76 = ptrtoint ptr %subdev_flags8.i164 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4259840, ptr %subdev_flags8.i164, align 4
  %n_chan9.i165 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 3
  %77 = ptrtoint ptr %n_chan9.i165 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %n_chan9.i165, align 4
  %maxdata10.i166 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 13
  %78 = ptrtoint ptr %maxdata10.i166 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 65535, ptr %maxdata10.i166, align 4
  %range_table11.i167 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 15
  %79 = ptrtoint ptr %range_table11.i167 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @ii20k_ai_ranges, ptr %range_table11.i167, align 4
  %insn_read.i168 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 18
  %80 = ptrtoint ptr %insn_read.i168 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ii20k_ai_insn_read, ptr %insn_read.i168, align 4
  br label %if.end60

sw.default.i171:                                  ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #6
  %type12.i170 = getelementptr %struct.comedi_subdevice, ptr %61, i32 2, i32 2
  %81 = ptrtoint ptr %type12.i170 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %type12.i170, align 4
  br label %if.end60

if.end60:                                         ; preds = %sw.default.i171, %sw.bb6.i169, %sw.bb.i162.if.end60_crit_edge, %if.then53
  %82 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %subdevices, align 4
  %type65 = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 2
  br i1 %has_dio.0.off0, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 5, ptr %type65, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 4
  %85 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196608, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 3
  %86 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 32, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 13
  %87 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 15
  %88 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 20
  %89 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @ii20k_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 21
  %90 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ii20k_dio_insn_config, ptr %insn_config, align 4
  %io_bits.i = getelementptr %struct.comedi_subdevice, ptr %83, i32 3, i32 12
  %91 = ptrtoint ptr %io_bits.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %io_bits.i, align 4
  %and.i = and i32 %92, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i175 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i175, i8 16, i8 0
  %.120.i = select i1 %tobool.not.i175, i32 0, i32 4
  %and15.i = and i32 %92, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or25.i = or i32 %.120.i, 8
  %conv30.i = or i8 %..i, 2
  %ctrl01.1.i = select i1 %tobool16.not.i, i8 %conv30.i, i8 %..i
  %dir_ena.1.in.i = select i1 %tobool16.not.i, i32 %.120.i, i32 %or25.i
  %and36.i = and i32 %92, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %93 = trunc i32 %dir_ena.1.in.i to i8
  %conv47.i = or i8 %93, 64
  %ctrl23.0.i = select i1 %tobool37.not.i, i32 16, i32 0
  %dir_ena.2.i = select i1 %tobool37.not.i, i8 %93, i8 %conv47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %92)
  %tobool58.not.i = icmp ult i32 %92, 16777216
  %94 = and i8 %dir_ena.2.i, 95
  %95 = or i8 %94, -128
  %conv72.i = or i32 %ctrl23.0.i, 2
  %96 = and i8 %dir_ena.2.i, 127
  %ctrl23.1.i = select i1 %tobool58.not.i, i32 %conv72.i, i32 %ctrl23.0.i
  %dir_ena.3.i = select i1 %tobool58.not.i, i8 %96, i8 %95
  %97 = trunc i32 %ctrl23.1.i to i8
  %conv82.i = or i8 %97, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %98 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %99, i32 131
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %ctrl01.1.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio, align 4
  %add.ptr87.i = getelementptr i8, ptr %101, i32 195
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i, i8 %conv82.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio, align 4
  %add.ptr92.i = getelementptr i8, ptr %103, i32 130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92.i, i8 %dir_ena.3.i) #4, !srcloc !43
  br label %cleanup

if.else66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %type65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else66, %if.then64, %sw.bb.i162.cleanup_crit_edge, %sw.bb.i134.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end7 ], [ -12, %if.end10.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ], [ %call21, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else66 ], [ 0, %if.then64 ], [ %call5.i, %sw.bb.i.cleanup_crit_edge ], [ %call5.i132, %sw.bb.i134.cleanup_crit_edge ], [ %call5.i160, %sw.bb.i162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ii20k_detach(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iounmap(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef 1024) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and4 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end16_crit_edge, label %do.body7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %state10 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state10, align 4
  %shr11 = lshr i32 %5, 8
  %conv13 = trunc i32 %shr11 to i8
  %mmio14 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio14, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 129
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %conv13) #4, !srcloc !43
  br label %if.end16

if.end16:                                         ; preds = %do.body7, %if.end.if.end16_crit_edge
  %and17 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end29_crit_edge, label %do.body20

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %state23 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %8 = ptrtoint ptr %state23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state23, align 4
  %shr24 = lshr i32 %9, 16
  %conv26 = trunc i32 %shr24 to i8
  %mmio27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio27, align 4
  %add.ptr28 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %conv26) #4, !srcloc !43
  br label %if.end29

if.end29:                                         ; preds = %do.body20, %if.end16.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call)
  %tobool31.not = icmp ult i32 %call, 16777216
  br i1 %tobool31.not, label %if.end29.if.end43_crit_edge, label %do.body33

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.body33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %state36 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %12 = ptrtoint ptr %state36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state36, align 4
  %shr37 = lshr i32 %13, 24
  %conv39 = trunc i32 %shr37 to i8
  %mmio40 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %mmio40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio40, align 4
  %add.ptr41 = getelementptr i8, ptr %15, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 %conv39) #4, !srcloc !43
  br label %if.end43

if.end43:                                         ; preds = %do.body33, %if.end29.if.end43_crit_edge, %entry.if.end43_crit_edge
  %mmio44 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %16 = ptrtoint ptr %mmio44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio44, align 4
  %add.ptr45 = getelementptr i8, ptr %17, i32 128
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %conv48 = zext i8 %18 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv48, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %mmio44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio44, align 4
  %add.ptr52 = getelementptr i8, ptr %21, i32 129
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %conv56 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv56, 8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %or = or i32 %24, %shl
  store i32 %or, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %mmio44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio44, align 4
  %add.ptr61 = getelementptr i8, ptr %26, i32 192
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %conv65 = zext i8 %27 to i32
  %shl66 = shl nuw nsw i32 %conv65, 16
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %or68 = or i32 %29, %shl66
  store i32 %or68, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %mmio44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio44, align 4
  %add.ptr72 = getelementptr i8, ptr %31, i32 193
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %conv76 = zext i8 %32 to i32
  %shl77 = shl nuw i32 %conv76, 24
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %or79 = or i32 %34, %shl77
  store i32 %or79, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %35 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n, align 4
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp1 = icmp ult i32 %and, 16
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp4 = icmp ult i32 %and, 24
  %. = select i1 %cmp4, i32 16711680, i32 -16777216
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 255, %entry.if.end8_crit_edge ], [ 65280, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %mask.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits.i, align 4
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 16, i8 0
  %.120.i = select i1 %tobool.not.i, i32 0, i32 4
  %and15.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or25.i = or i32 %.120.i, 8
  %conv30.i = or i8 %..i, 2
  %ctrl01.1.i = select i1 %tobool16.not.i, i8 %conv30.i, i8 %..i
  %dir_ena.1.in.i = select i1 %tobool16.not.i, i32 %.120.i, i32 %or25.i
  %and36.i = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %4 = trunc i32 %dir_ena.1.in.i to i8
  %conv47.i = or i8 %4, 64
  %ctrl23.0.i = select i1 %tobool37.not.i, i32 16, i32 0
  %dir_ena.2.i = select i1 %tobool37.not.i, i8 %4, i8 %conv47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool58.not.i = icmp ult i32 %3, 16777216
  %5 = and i8 %dir_ena.2.i, 95
  %6 = or i8 %5, -128
  %conv72.i = or i32 %ctrl23.0.i, 2
  %7 = and i8 %dir_ena.2.i, 127
  %ctrl23.1.i = select i1 %tobool58.not.i, i32 %conv72.i, i32 %ctrl23.0.i
  %dir_ena.3.i = select i1 %tobool58.not.i, i8 %7, i8 %6
  %8 = trunc i32 %ctrl23.1.i to i8
  %conv82.i = or i8 %8, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 131
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %ctrl01.1.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %12, i32 195
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.i, i8 %conv82.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %14, i32 130
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92.i, i8 %dir_ena.3.i) #4, !srcloc !43
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end10 ], [ %call, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %cmp33.not = icmp eq i32 %3, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %add.i = shl i32 %7, 8
  %mul.i = add i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %mul = shl nuw nsw i32 %and, 3
  %add = add nuw nsw i32 %mul, 13
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %add
  %add10 = add nuw nsw i32 %mul, 14
  %add.ptr11 = getelementptr i8, ptr %add.ptr.i, i32 %add10
  %add16 = add nuw nsw i32 %mul, 11
  %add.ptr17 = getelementptr i8, ptr %add.ptr.i, i32 %add16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.034
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx1 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx1, align 4
  %13 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %14, %9
  %shr.i = lshr i32 %14, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %xor2.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %shr = lshr i32 %xor2.i, 8
  %conv8 = trunc i32 %shr to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv8) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 0) #4, !srcloc !43
  %inc = add nuw i32 %i.034, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %add.i = shl i32 %3, 8
  %mul.i = add i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %shr.i = lshr i32 %5, 16
  %and1.i = and i32 %shr.i, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %add.ptr.i36 = getelementptr i8, ptr %add.ptr.i, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i36, i8 4) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #4, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %cmp.i = icmp ult i32 %and1.i, 3
  %conv.i = select i1 %cmp.i, i8 0, i8 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %conv.i) #4, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and1.i)
  %cmp10.i = icmp ult i32 %and1.i, 2
  %phi.cast.i = select i1 %cmp.i, i8 -109, i8 -103
  %spec.select.i = select i1 %cmp10.i, i8 88, i8 %phi.cast.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i, i32 21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 %spec.select.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 1) #4, !srcloc !43
  %and25.i = shl nuw nsw i32 %shr.i, 3
  %shl.i = and i32 %and25.i, 24
  %and26.i = and i32 %5, 3
  %or.i = or i32 %shl.i, %and26.i
  %6 = trunc i32 %or.i to i8
  %conv29.i = or i8 %6, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 %conv29.i) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %add.ptr37.i = getelementptr i8, ptr %add.ptr.i, i32 27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 0) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %add.ptr41.i = getelementptr i8, ptr %add.ptr.i, i32 25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41.i, i8 0) #4, !srcloc !43
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp40.not = icmp eq i32 %8, 0
  br i1 %cmp40.not, label %entry.cleanup19_crit_edge, label %for.body.lr.ph

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i, i32 2
  %add.ptr12 = getelementptr i8, ptr %add.ptr.i, i32 3
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %call3 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @ii20k_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup19_crit_edge

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup19

for.inc:                                          ; preds = %for.body
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %conv = zext i8 %10 to i32
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %conv16 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv16, 8
  %or = or i32 %shl, %conv
  %12 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %or, %13
  %shr.i37 = lshr i32 %13, 1
  %xor2.i = xor i32 %xor.i, %shr.i37
  %arrayidx = getelementptr i32, ptr %data, i32 %i.041
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor2.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.041, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %for.body.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup19_crit_edge ], [ %call3, %for.body.cleanup19_crit_edge ], [ %16, %for.inc.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ii20k_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %index.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %add.i = shl i32 %3, 8
  %mul.i = add i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 18
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp sgt i8 %4, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_ii_pci20kc__229_520_ii20k_driver_init6, !1, !"__initcall__kmod_ii_pci20kc__229_520_ii20k_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 520, i32 1}
!2 = !{ptr @__exitcall_ii20k_driver_exit, !1, !"__exitcall_ii20k_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 522, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 523, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 524, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 515, i32 17}
!12 = !{ptr @ii20k_driver, !13, !"ii20k_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 514, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 426, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ii20k_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ii20k_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 433, i32 3}
!24 = !{ptr @ii20k_attach._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ii20k_attach._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ii20k_ao_ranges, !27, !"ii20k_ao_ranges", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 120, i32 35}
!28 = !{ptr @ii20k_ai_ranges, !29, !"ii20k_ai_ranges", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/ii_pci20kc.c", i32 128, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 4047958}
!40 = !{i64 2153933816}
!41 = !{i64 2153929870}
!42 = !{i64 2153926826}
!43 = !{i64 4047563}
!44 = !{i64 2153927102}
!45 = !{i64 2153927379}
!46 = !{i64 2153927702}
!47 = !{i64 2153928010}
!48 = !{i64 2153928319}
!49 = !{i64 2153928629}
!50 = !{i64 2153928936}
!51 = !{i64 2153929171}
!52 = !{i64 2153929406}
!53 = !{i64 2153929641}
!54 = !{i64 2153920497}
!55 = !{i64 2153920848}
!56 = !{i64 2153921193}
!57 = !{i64 2153921954}
!58 = !{i64 2153922240}
!59 = !{i64 2153922544}
!60 = !{i64 2153922808}
!61 = !{i64 2153923070}
!62 = !{i64 2153923545}
!63 = !{i64 2153923807}
!64 = !{i64 2153924067}
!65 = !{i64 2153924343}
!66 = !{i64 2153924572}
!67 = !{i64 2153924801}
!68 = !{i64 2153921494}
