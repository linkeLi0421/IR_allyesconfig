; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/icp_multi.c_pt.bc'
source_filename = "../drivers/comedi/drivers/icp_multi.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_icp_multi__236_331_icp_multi_driver_init6 = internal global ptr @icp_multi_driver_init, section ".initcall6.init", align 4
@icp_multi_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @icp_multi_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@icp_multi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @icp_multi_pci_table, ptr @icp_multi_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_icp_multi_driver_exit = internal global ptr @icp_multi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [47 x i8] c"icp_multi.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [62 x i8] c"icp_multi.description=Comedi driver for Inova ICP_MULTI board\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"icp_multi.file=drivers/comedi/drivers/icp_multi\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"icp_multi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"icp_multi\00", [22 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@icp_multi_ranges = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_codes_analog = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00 \100", [28 x i8] zeroinitializer }, align 32
@icp_multi_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"icp_multi_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 306, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"icp_multi_pci_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 325, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 307, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"icp_multi_ranges\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 76, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"range_codes_analog\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 85, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"icp_multi_pci_table\00", align 1
@___asan_gen_.18 = private constant [38 x i8] c"../drivers/comedi/drivers/icp_multi.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 319, i32 35 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_icp_multi_driver_exit, ptr @__initcall__kmod_icp_multi__236_331_icp_multi_driver_init6, ptr @icp_multi_driver_exit, ptr @icp_multi_driver, ptr @icp_multi_pci_driver, ptr @.str, ptr @icp_multi_ranges, ptr @range_codes_analog, ptr @icp_multi_pci_table], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp_multi_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp_multi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp_multi_ranges to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_codes_analog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icp_multi_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @icp_multi_driver, ptr noundef nonnull @icp_multi_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @icp_multi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @icp_multi_driver, ptr noundef nonnull @icp_multi_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  %call1 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 2) #4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %mmio, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 -256) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr10.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr15.i = getelementptr i8, ptr %8, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr21.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 256) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr10.1.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.1.i, i16 1) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr15.1.i = getelementptr i8, ptr %15, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.1.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.1.i, i16 257) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr10.2.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.2.i, i16 2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr15.2.i = getelementptr i8, ptr %22, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.2.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.2.i, i16 258) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %add.ptr10.3.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.3.i, i16 3) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %add.ptr15.3.i = getelementptr i8, ptr %29, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.3.i, i16 0) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr21.3.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.3.i, i16 259) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %add.ptr26.i = getelementptr i8, ptr %34, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 0) #4, !srcloc !32
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %35 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 4
  %38 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7405568, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 13
  %40 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4095, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 15
  %41 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @icp_multi_ranges, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %36, i32 0, i32 18
  %42 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @icp_multi_ai_insn_read, ptr %insn_read, align 4
  %43 = load ptr, ptr %subdevices, align 4
  %arrayidx13 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1
  %type14 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 2
  %44 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %type14, align 4
  %subdev_flags15 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 4
  %45 = ptrtoint ptr %subdev_flags15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3276800, ptr %subdev_flags15, align 4
  %n_chan16 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 3
  %46 = ptrtoint ptr %n_chan16 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %n_chan16, align 4
  %maxdata17 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 13
  %47 = ptrtoint ptr %maxdata17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4095, ptr %maxdata17, align 4
  %range_table18 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 15
  %48 = ptrtoint ptr %range_table18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @icp_multi_ranges, ptr %range_table18, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 19
  %49 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @icp_multi_ao_insn_write, ptr %insn_write, align 4
  %call19 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %subdevices, align 4
  %type25 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 2
  %52 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %type25, align 4
  %subdev_flags26 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 4
  %53 = ptrtoint ptr %subdev_flags26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65536, ptr %subdev_flags26, align 4
  %n_chan27 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 3
  %54 = ptrtoint ptr %n_chan27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %n_chan27, align 4
  %maxdata28 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 13
  %55 = ptrtoint ptr %maxdata28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %maxdata28, align 4
  %range_table29 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 15
  %56 = ptrtoint ptr %range_table29 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @range_unipolar5, ptr %range_table29, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 20
  %57 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @icp_multi_di_insn_bits, ptr %insn_bits, align 4
  %58 = load ptr, ptr %subdevices, align 4
  %type32 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 2
  %59 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %type32, align 4
  %subdev_flags33 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 4
  %60 = ptrtoint ptr %subdev_flags33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 131072, ptr %subdev_flags33, align 4
  %n_chan34 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 3
  %61 = ptrtoint ptr %n_chan34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %n_chan34, align 4
  %maxdata35 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 13
  %62 = ptrtoint ptr %maxdata35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %maxdata35, align 4
  %range_table36 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 15
  %63 = ptrtoint ptr %range_table36 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @range_unipolar5, ptr %range_table36, align 4
  %insn_bits37 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 20
  %64 = ptrtoint ptr %insn_bits37 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @icp_multi_do_insn_bits, ptr %insn_bits37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call19, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %2 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %2)
  %cmp = icmp eq i32 %2, 33554432
  %and6 = shl i32 %1, 9
  %shl = and i32 %and6, 3584
  %or = or i32 %shl, 64
  %and7 = shl i32 %1, 8
  %shl8 = and i32 %and7, 3840
  %adc_csr.0 = select i1 %cmp, i32 %or, i32 %shl8
  %arrayidx = getelementptr [4 x i8], ptr @range_codes_analog, i32 0, i32 %and2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %or9 = or i32 %adc_csr.0, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %conv10 = trunc i32 %or9 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #4, !srcloc !32
  %n11 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1249.not = icmp eq i32 %9, 0
  br i1 %cmp1249.not, label %entry.for.end_crit_edge, label %do.body14.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body14.lr.ph:                                  ; preds = %entry
  %conv18 = or i16 %conv10, 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  br label %do.body14

do.body14:                                        ; preds = %if.end22.do.body14_crit_edge, %do.body14.lr.ph
  %n.050 = phi i32 [ 0, %do.body14.lr.ph ], [ %inc, %if.end22.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #4
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @icp_multi_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22, label %do.body14.for.end_crit_edge

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end22:                                         ; preds = %do.body14
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 2
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24) #4, !srcloc !40
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %18 = lshr i16 %17, 4
  %19 = zext i16 %18 to i32
  %arrayidx30 = getelementptr i32, ptr %data, i32 %n.050
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx30, align 4
  %inc = add nuw i32 %n.050, 1
  %21 = ptrtoint ptr %n11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n11, align 4
  %cmp12 = icmp ult i32 %inc, %22
  br i1 %cmp12, label %if.end22.do.body14_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end22.do.body14_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %do.body14.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end22.for.end_crit_edge ], [ %call, %do.body14.for.end_crit_edge ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  %and3 = shl i32 %1, 8
  %shl = and i32 %and3, 768
  %arrayidx = getelementptr [4 x i8], ptr @range_codes_analog, i32 0, i32 %and2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %conv4 = trunc i32 %or to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #4, !srcloc !32
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp44.not = icmp eq i32 %8, 0
  br i1 %cmp44.not, label %entry.cleanup23_crit_edge, label %for.body.lr.ph

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %entry
  %conv17 = or i16 %conv4, 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %data, i32 %i.045
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @icp_multi_ao_ready, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup23_crit_edge

for.body.cleanup23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

for.inc:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %conv10 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %12) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %9) #4, !srcloc !32
  %17 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %readback, align 4
  %arrayidx20 = getelementptr i32, ptr %18, i32 %and
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %arrayidx20, align 4
  %inc = add nuw i32 %i.045, 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup23_crit_edge

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup23:                                        ; preds = %for.inc.cleanup23_crit_edge, %for.body.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup23_crit_edge ], [ %call, %for.body.cleanup23_crit_edge ], [ %21, %for.inc.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !40
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  %conv = zext i16 %3 to i32
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
define internal i32 @icp_multi_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #4, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state1, align 4
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_ao_ready(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icp_multi_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @icp_multi_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_icp_multi__236_331_icp_multi_driver_init6, !1, !"__initcall__kmod_icp_multi__236_331_icp_multi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 331, i32 1}
!2 = !{ptr @__exitcall_icp_multi_driver_exit, !1, !"__exitcall_icp_multi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 333, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 334, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 335, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 307, i32 17}
!12 = !{ptr @icp_multi_driver, !13, !"icp_multi_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 306, i32 29}
!14 = !{ptr @icp_multi_ranges, !15, !"icp_multi_ranges", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 76, i32 35}
!16 = !{ptr @range_codes_analog, !17, !"range_codes_analog", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 85, i32 19}
!18 = !{ptr @icp_multi_pci_driver, !19, !"icp_multi_pci_driver", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 325, i32 26}
!20 = !{ptr @icp_multi_pci_table, !21, !"icp_multi_pci_table", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/icp_multi.c", i32 319, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2154543444}
!32 = !{i64 4996525}
!33 = !{i64 2154543836}
!34 = !{i64 2154544256}
!35 = !{i64 2154544652}
!36 = !{i64 2154545151}
!37 = !{i64 2154546179}
!38 = !{i64 2154538477}
!39 = !{i64 2154538997}
!40 = !{i64 4996725}
!41 = !{i64 2154540281}
!42 = !{i64 2154541165}
!43 = !{i64 2154541563}
!44 = !{i64 2154542068}
!45 = !{i64 2154542816}
!46 = !{i64 2154543039}
!47 = !{i64 2154537933}
!48 = !{i64 2154540768}
