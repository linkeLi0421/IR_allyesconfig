; ModuleID = '/llk/IR_all_yes/drivers/pci/rom.c_pt.bc'
source_filename = "../drivers/pci/rom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_enable_rom\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_enable_rom\09\09\09\09"
module asm "\09.long\09__crc_pci_enable_rom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_disable_rom\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_disable_rom\09\09\09\09"
module asm "\09.long\09__crc_pci_disable_rom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_map_rom\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_map_rom\09\09\09\09"
module asm "\09.long\09__crc_pci_map_rom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_map_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_map_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_map_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_unmap_rom\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_unmap_rom\09\09\09\09"
module asm "\09.long\09__crc_pci_unmap_rom\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unmap_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unmap_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unmap_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@__kstrtab_pci_enable_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_rom to i32), ptr @__kstrtab_pci_enable_rom, ptr @__kstrtabns_pci_enable_rom }, section "___ksymtab_gpl+pci_enable_rom", align 4
@__kstrtab_pci_disable_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_rom to i32), ptr @__kstrtab_pci_disable_rom, ptr @__kstrtabns_pci_disable_rom }, section "___ksymtab_gpl+pci_disable_rom", align 4
@__kstrtab_pci_map_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_map_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_map_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_map_rom to i32), ptr @__kstrtab_pci_map_rom, ptr @__kstrtabns_pci_map_rom }, section "___ksymtab+pci_map_rom", align 4
@__kstrtab_pci_unmap_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unmap_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unmap_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unmap_rom to i32), ptr @__kstrtab_pci_unmap_rom, ptr @__kstrtabns_pci_unmap_rom }, section "___ksymtab+pci_unmap_rom", align 4
@pci_get_rom_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Invalid PCI ROM header signature: expecting 0xaa55, got %#06x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_get_rom_size\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/pci/rom.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_get_rom_size._entry_ptr = internal global ptr @pci_get_rom_size._entry, section ".printk_index", align 4
@pci_get_rom_size._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Invalid PCI ROM data signature: expecting 0x52494350, got %#010x\0A\00", [62 x i8] zeroinitializer }, align 32
@pci_get_rom_size._entry_ptr.7 = internal global ptr @pci_get_rom_size._entry.5, section ".printk_index", align 4
@pci_get_rom_size._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No more image in the PCI ROM\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_get_rom_size._entry_ptr.10 = internal global ptr @pci_get_rom_size._entry.8, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 95, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 102, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [21 x i8] c"../drivers/pci/rom.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 114, i32 5 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_pci_disable_rom, ptr @__ksymtab_pci_enable_rom, ptr @__ksymtab_pci_map_rom, ptr @__ksymtab_pci_unmap_rom, ptr @pci_get_rom_size._entry, ptr @pci_get_rom_size._entry.5, ptr @pci_get_rom_size._entry.8, ptr @pci_get_rom_size._entry_ptr, ptr @pci_get_rom_size._entry_ptr.10, ptr @pci_get_rom_size._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_get_rom_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_get_rom_size._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_get_rom_size._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_enable_rom(ptr noundef %pdev) #0 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  %rom_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #5
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_addr) #5
  %3 = ptrtoint ptr %rom_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rom_addr, align 4, !annotation !33
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %7, ptr noundef nonnull %region, ptr noundef %arrayidx) #5
  %rom_base_reg = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 23
  %8 = ptrtoint ptr %rom_base_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rom_base_reg, align 4
  %conv = zext i8 %9 to i32
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %rom_addr) #5
  %10 = ptrtoint ptr %rom_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rom_addr, align 4
  %and5 = and i32 %11, 2046
  %12 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %region, align 4
  %or = or i32 %and5, %13
  %or6 = or i32 %or, 1
  store i32 %or6, ptr %rom_addr, align 4
  %14 = ptrtoint ptr %rom_base_reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rom_base_reg, align 4
  %conv8 = zext i8 %15 to i32
  %call9 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %conv8, i32 noundef %or6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_disable_rom(ptr noundef %pdev) #0 align 64 {
entry:
  %rom_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_addr) #5
  %0 = ptrtoint ptr %rom_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rom_addr, align 4, !annotation !33
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rom_base_reg = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 23
  %3 = ptrtoint ptr %rom_base_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rom_base_reg, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %rom_addr) #5
  %5 = ptrtoint ptr %rom_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rom_addr, align 4
  %and1 = and i32 %6, -2
  store i32 %and1, ptr %rom_addr, align 4
  %7 = ptrtoint ptr %rom_base_reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rom_base_reg, align 4
  %conv3 = zext i8 %8 to i32
  %call4 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %conv3, i32 noundef %and1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_map_rom(ptr noundef %pdev, ptr nocapture noundef %size) #0 align 64 {
entry:
  %rom_addr.i55 = alloca i32, align 4
  %region.i = alloca %struct.pci_bus_region, align 4
  %rom_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6
  %parent = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @pci_assign_resource(ptr noundef %pdev, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp6, i32 0, i32 %add
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp14 = icmp eq i32 %cond, 0
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region.i) #5
  %7 = ptrtoint ptr %region.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %region.i, align 4, !annotation !33
  %8 = getelementptr inbounds %struct.pci_bus_region, ptr %region.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_addr.i) #5
  %10 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rom_addr.i, align 4, !annotation !33
  %flags.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %pci_enable_rom.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end17
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  call void @pcibios_resource_to_bus(ptr noundef %14, ptr noundef nonnull %region.i, ptr noundef %arrayidx) #5
  %rom_base_reg.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 23
  %15 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rom_base_reg.i, align 4
  %conv.i = zext i8 %16 to i32
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv.i, ptr noundef nonnull %rom_addr.i) #5
  %17 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rom_addr.i, align 4
  %and5.i = and i32 %18, 2046
  %19 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %region.i, align 4
  %or.i = or i32 %20, %and5.i
  %or6.i = or i32 %or.i, 1
  store i32 %or6.i, ptr %rom_addr.i, align 4
  %21 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rom_base_reg.i, align 4
  %conv8.i = zext i8 %22 to i32
  %call9.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %conv8.i, i32 noundef %or6.i) #5
  br label %if.end21

pci_enable_rom.exit:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end4.i, %if.end.i.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region.i) #5
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %call23 = call ptr @ioremap(i32 noundef %3, i32 noundef %24) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.err_ioremap_crit_edge, label %if.end26

if.end21.err_ioremap_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ioremap

if.end26:                                         ; preds = %if.end21
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %add.ptr50.i = getelementptr i8, ptr %call23, i32 %26
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end26
  %image.0.i = phi ptr [ %call23, %if.end26 ], [ %add.ptr49.i, %cleanup.i.do.body.i_crit_edge ]
  %27 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %image.0.i) #5, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %27)
  %cmp.not.i = icmp eq i16 %27, 21930
  br i1 %cmp.not.i, label %if.end.i53, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %28 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %image.0.i) #5, !srcloc !34
  %29 = call i16 @llvm.bswap.i16(i16 %28) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %conv9.i = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %conv9.i) #8
  br label %pci_get_rom_size.exit

if.end.i53:                                       ; preds = %do.body.i
  %add.ptr.i = getelementptr i8, ptr %image.0.i, i32 24
  %30 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !34
  %31 = call i16 @llvm.bswap.i16(i16 %30) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %conv15.i = zext i16 %31 to i32
  %add.ptr16.i = getelementptr i8, ptr %image.0.i, i32 %conv15.i
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346586962, i32 %32)
  %cmp22.not.i = icmp eq i32 %32, 1346586962
  br i1 %cmp22.not.i, label %if.end34.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !srcloc !38
  %34 = call i32 @llvm.bswap.i32(i32 %33) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28.i, ptr noundef nonnull @.str.6, i32 noundef %34) #8
  br label %pci_get_rom_size.exit

if.end34.i:                                       ; preds = %if.end.i53
  %add.ptr37.i = getelementptr i8, ptr %add.ptr16.i, i32 21
  %35 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37.i) #5, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %add.ptr44.i = getelementptr i8, ptr %add.ptr16.i, i32 16
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44.i) #5, !srcloc !34
  %37 = call i16 @llvm.bswap.i16(i16 %36) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %conv48.i = zext i16 %37 to i32
  %mul.i = shl nuw nsw i32 %conv48.i, 9
  %add.ptr49.i = getelementptr i8, ptr %image.0.i, i32 %mul.i
  %cmp51.not.i = icmp ult ptr %add.ptr49.i, %add.ptr50.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool.not.i54 = icmp sgt i8 %35, -1
  %or.cond = select i1 %cmp51.not.i, i1 %tobool.not.i54, i1 false
  br i1 %or.cond, label %if.then55.i, label %if.end34.i.pci_get_rom_size.exit_crit_edge

if.end34.i.pci_get_rom_size.exit_crit_edge:       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_get_rom_size.exit

if.then55.i:                                      ; preds = %if.end34.i
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49.i) #5, !srcloc !34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %38)
  %cmp62.not.i = icmp eq i16 %38, 21930
  br i1 %cmp62.not.i, label %cleanup.i, label %do.end67.i

do.end67.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev68.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68.i, ptr noundef nonnull @.str.9) #8
  br label %pci_get_rom_size.exit

cleanup.i:                                        ; preds = %if.then55.i
  %tobool72.not.i.not = icmp eq i16 %36, 0
  br i1 %tobool72.not.i.not, label %cleanup.i.pci_get_rom_size.exit_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

cleanup.i.pci_get_rom_size.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_get_rom_size.exit

pci_get_rom_size.exit:                            ; preds = %cleanup.i.pci_get_rom_size.exit_crit_edge, %do.end67.i, %if.end34.i.pci_get_rom_size.exit_crit_edge, %do.end27.i, %do.end.i
  %image.1111.i = phi ptr [ %add.ptr49.i, %do.end67.i ], [ %image.0.i, %do.end27.i ], [ %image.0.i, %do.end.i ], [ %add.ptr49.i, %cleanup.i.pci_get_rom_size.exit_crit_edge ], [ %add.ptr49.i, %if.end34.i.pci_get_rom_size.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %image.1111.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i, i32 %26) #5
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool28.not = icmp eq i32 %39, 0
  br i1 %tobool28.not, label %invalid_rom, label %pci_get_rom_size.exit.cleanup_crit_edge

pci_get_rom_size.exit.cleanup_crit_edge:          ; preds = %pci_get_rom_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

invalid_rom:                                      ; preds = %pci_get_rom_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @iounmap(ptr noundef nonnull %call23) #5
  br label %err_ioremap

err_ioremap:                                      ; preds = %invalid_rom, %if.end21.err_ioremap_crit_edge
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %err_ioremap.cleanup_crit_edge

err_ioremap.cleanup_crit_edge:                    ; preds = %err_ioremap
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %err_ioremap
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_addr.i55) #5
  %43 = ptrtoint ptr %rom_addr.i55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %rom_addr.i55, align 4, !annotation !33
  %and.i57 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58, label %if.end.i62, label %if.then32.pci_disable_rom.exit_crit_edge

if.then32.pci_disable_rom.exit_crit_edge:         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_disable_rom.exit

if.end.i62:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %rom_base_reg.i59 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 23
  %44 = ptrtoint ptr %rom_base_reg.i59 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rom_base_reg.i59, align 4
  %conv.i60 = zext i8 %45 to i32
  %call.i61 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv.i60, ptr noundef nonnull %rom_addr.i55) #5
  %46 = ptrtoint ptr %rom_addr.i55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rom_addr.i55, align 4
  %and1.i = and i32 %47, -2
  store i32 %and1.i, ptr %rom_addr.i55, align 4
  %48 = ptrtoint ptr %rom_base_reg.i59 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rom_base_reg.i59, align 4
  %conv3.i = zext i8 %49 to i32
  %call4.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %conv3.i, i32 noundef %and1.i) #5
  br label %pci_disable_rom.exit

pci_disable_rom.exit:                             ; preds = %if.end.i62, %if.then32.pci_disable_rom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr.i55) #5
  br label %cleanup

cleanup:                                          ; preds = %pci_disable_rom.exit, %err_ioremap.cleanup_crit_edge, %pci_get_rom_size.exit.cleanup_crit_edge, %pci_enable_rom.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %pci_enable_rom.exit ], [ %call23, %pci_get_rom_size.exit.cleanup_crit_edge ], [ null, %pci_disable_rom.exit ], [ null, %err_ioremap.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_unmap_rom(ptr noundef %pdev, ptr noundef %rom) #0 align 64 {
entry:
  %rom_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iounmap(ptr noundef %rom) #5
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 6, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rom_addr.i) #5
  %2 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rom_addr.i, align 4, !annotation !33
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.pci_disable_rom.exit_crit_edge

if.then.pci_disable_rom.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_disable_rom.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rom_base_reg.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 23
  %3 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rom_base_reg.i, align 4
  %conv.i = zext i8 %4 to i32
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv.i, ptr noundef nonnull %rom_addr.i) #5
  %5 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rom_addr.i, align 4
  %and1.i = and i32 %6, -2
  store i32 %and1.i, ptr %rom_addr.i, align 4
  %7 = ptrtoint ptr %rom_base_reg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rom_base_reg.i, align 4
  %conv3.i = zext i8 %8 to i32
  %call4.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %conv3.i, i32 noundef %and1.i) #5
  br label %pci_disable_rom.exit

pci_disable_rom.exit:                             ; preds = %if.end.i, %if.then.pci_disable_rom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rom_addr.i) #5
  br label %if.end

if.end:                                           ; preds = %pci_disable_rom.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_pci_enable_rom, !1, !"__ksymtab_pci_enable_rom", i1 false, i1 false}
!1 = !{!"../drivers/pci/rom.c", i32 49, i32 1}
!2 = !{ptr @__ksymtab_pci_disable_rom, !3, !"__ksymtab_pci_disable_rom", i1 false, i1 false}
!3 = !{!"../drivers/pci/rom.c", i32 70, i32 1}
!4 = !{ptr @__ksymtab_pci_map_rom, !5, !"__ksymtab_pci_map_rom", i1 false, i1 false}
!5 = !{!"../drivers/pci/rom.c", i32 178, i32 1}
!6 = !{ptr @__ksymtab_pci_unmap_rom, !7, !"__ksymtab_pci_unmap_rom", i1 false, i1 false}
!7 = !{!"../drivers/pci/rom.c", i32 197, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/rom.c", i32 95, i32 4}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pci_get_rom_size._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @pci_get_rom_size._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/rom.c", i32 102, i32 4}
!18 = !{ptr @pci_get_rom_size._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pci_get_rom_size._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/rom.c", i32 114, i32 5}
!22 = !{ptr @pci_get_rom_size._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @pci_get_rom_size._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{i64 4982918}
!35 = !{i64 2154452795}
!36 = !{i64 2154455324}
!37 = !{i64 2154455782}
!38 = !{i64 4983756}
!39 = !{i64 2154456212}
!40 = !{i64 2154458758}
!41 = !{i64 4983536}
!42 = !{i64 2154458972}
!43 = !{i64 2154459422}
!44 = !{i64 2154459860}
