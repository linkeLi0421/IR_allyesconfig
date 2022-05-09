; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/cfi_probe.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.chip_probe = type { ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.map_word = type { [8 x i32] }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>

@cfi_chip_probe = internal global { %struct.chip_probe, [24 x i8] } { %struct.chip_probe { ptr @.str, ptr @cfi_probe_chip }, [24 x i8] zeroinitializer }, align 32
@cfi_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr @cfi_probe, ptr null, ptr null, ptr @.str.19, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_cfi_probe__177_457_cfi_probe_init6 = internal global ptr @cfi_probe_init, section ".initcall6.init", align 4
@__exitcall_cfi_probe_exit = internal global ptr @cfi_probe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file178 = internal constant [43 x i8] c"cfi_probe.file=drivers/mtd/chips/cfi_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [22 x i8] c"cfi_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author180 = internal constant [62 x i8] c"cfi_probe.author=David Woodhouse <dwmw2@infradead.org> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description181 = internal constant [63 x i8] c"cfi_probe.description=Probe code for CFI-compliant flash chips\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFI\00", [28 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015Probe at base[0x00](0x%08lx) past the end of the map(0x%08lx)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfi_probe_chip\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/chips/cfi_probe.c\00", [34 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry_ptr = internal global ptr @cfi_probe_chip._entry, section ".printk_index", align 4
@cfi_probe_chip._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015Probe at base[0x55](0x%08lx) past the end of the map(0x%08lx)\0A\00", [63 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry_ptr.6 = internal global ptr @cfi_probe_chip._entry.4, section ".printk_index", align 4
@cfi_probe_chip._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Found an alias at 0x%x for the chip at 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry_ptr.9 = internal global ptr @cfi_probe_chip._entry.7, section ".printk_index", align 4
@cfi_probe_chip._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry_ptr.11 = internal global ptr @cfi_probe_chip._entry.10, section ".printk_index", align 4
@cfi_probe_chip._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank\0A\00", [45 x i8] zeroinitializer }, align 32
@cfi_probe_chip._entry_ptr.14 = internal global ptr @cfi_probe_chip._entry.12, section ".printk_index", align 4
@cfi_chip_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank. Manufacturer ID %#08x Chip ID %#08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfi_chip_setup\00", [17 x i8] zeroinitializer }, align 32
@cfi_chip_setup._entry_ptr = internal global ptr @cfi_chip_setup._entry, section ".printk_index", align 4
@fixup_s70gl02gs_chips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Bad S70GL02GS CFI data; adjust to detect 2 chips\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fixup_s70gl02gs_chips\00", [42 x i8] zeroinitializer }, align 32
@fixup_s70gl02gs_chips._entry_ptr = internal global ptr @fixup_s70gl02gs_chips._entry, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"cfi_chip_probe\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 426, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"cfi_chipdrv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 440, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 427, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 101, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 107, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 143, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 155, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 171, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 280, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 186, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [33 x i8] c"../drivers/mtd/chips/cfi_probe.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 442, i32 11 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author180, ptr @__UNIQUE_ID_description181, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_cfi_probe_exit, ptr @__initcall__kmod_cfi_probe__177_457_cfi_probe_init6, ptr @cfi_chip_setup._entry, ptr @cfi_chip_setup._entry_ptr, ptr @cfi_probe_chip._entry, ptr @cfi_probe_chip._entry.10, ptr @cfi_probe_chip._entry.12, ptr @cfi_probe_chip._entry.4, ptr @cfi_probe_chip._entry.7, ptr @cfi_probe_chip._entry_ptr, ptr @cfi_probe_chip._entry_ptr.11, ptr @cfi_probe_chip._entry_ptr.14, ptr @cfi_probe_chip._entry_ptr.6, ptr @cfi_probe_chip._entry_ptr.9, ptr @cfi_probe_exit, ptr @fixup_s70gl02gs_chips._entry, ptr @fixup_s70gl02gs_chips._entry_ptr, ptr @cfi_chip_probe, ptr @cfi_chipdrv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_chip_probe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_probe_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_probe_chip._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_probe_chip._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_probe_chip._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_probe_chip._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_chip_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixup_s70gl02gs_chips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfi_probe(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtd_do_chip_probe(ptr noundef %map, ptr noundef nonnull @cfi_chip_probe) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_do_chip_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cfi_probe_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @cfi_chipdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_probe_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @cfi_chipdrv) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_probe_chip(ptr noundef %map, i32 noundef %base, ptr noundef %chip_map, ptr noundef %cfi) #0 align 64 {
entry:
  %val.i237.i = alloca %union.map_word, align 4
  %val.i215.i = alloca %union.map_word, align 4
  %val.i192.i = alloca %union.map_word, align 4
  %val.i.i = alloca %union.map_word, align 4
  %tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %base)
  %cmp.not = icmp ugt i32 %1, %base
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %1, -1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %base, i32 noundef %sub) #11
  br label %cleanup77

if.end:                                           ; preds = %entry
  %add2 = add i32 %base, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %1)
  %cmp4.not = icmp ult i32 %add2, %1
  br i1 %cmp4.not, label %do.end17, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add10 = add i32 %base, 85
  %sub12 = add i32 %1, -1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %add10, i32 noundef %sub12) #11
  br label %cleanup77

do.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @cfi_qry_mode_on(i32 noundef %base, ptr noundef %map, ptr noundef %cfi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %do.end17.cleanup77_crit_edge, label %if.end23

do.end17.cleanup77_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end23:                                         ; preds = %do.end17
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 11
  %2 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not = icmp eq i32 %3, 0
  br i1 %tobool24.not, label %if.then25, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end23
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 13
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %shr133 = lshr i32 %base, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr133)
  %cmp28134.not = icmp eq i32 %shr133, 0
  br i1 %cmp28134.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then25:                                        ; preds = %if.end23
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  %6 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interleave.i, align 4
  %device_type.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %8 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_type.i, align 4
  %mul.i = mul i32 %9, %7
  %mul1.i = mul i32 %mul.i, 44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i.i) #8
  %read.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %10 = call ptr @memset(ptr %val.i.i, i32 255, i32 32)
  %11 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i, align 4
  call void %12(ptr nonnull sret(%union.map_word) align 4 %val.i.i, ptr noundef %map, i32 noundef %mul1.i) #8
  %bankwidth.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %13 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bankwidth.i.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.else31.i.i [
    i32 1, label %if.then.i191.i
    i32 2, label %if.then4.i.i
  ]

if.then.i191.i:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i, align 4
  br label %cfi_read_query.exit.i

if.then4.i.i:                                     ; preds = %if.then25
  %swap.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %18 = ptrtoint ptr %swap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %swap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %cond.true7.i.i, label %cond.false9.i.i

cond.true7.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i, align 4
  br label %cfi_read_query.exit.i

cond.false9.i.i:                                  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp16.i.i = icmp eq i32 %19, 3
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i, align 4
  br i1 %cmp16.i.i, label %cond.true18.i.i, label %cond.false22.i.i

cond.true18.i.i:                                  ; preds = %cond.false9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i.i = and i32 %24, 65535
  br label %cfi_read_query.exit.i

cond.false22.i.i:                                 ; preds = %cond.false9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i = trunc i32 %24 to i16
  %25 = call i16 @llvm.bswap.i16(i16 %conv24.i.i) #8
  %conv25.i.i = zext i16 %25 to i32
  br label %cfi_read_query.exit.i

if.else31.i.i:                                    ; preds = %if.then25
  %swap32.i.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %26 = ptrtoint ptr %swap32.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %swap32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %cond.true40.i.i, label %cond.false42.i.i

cond.true40.i.i:                                  ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i, align 4
  br label %cfi_read_query.exit.i

cond.false42.i.i:                                 ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp49.i.i = icmp eq i32 %27, 3
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %spec.select.i.i = select i1 %cmp49.i.i, i32 %32, i32 %33
  br label %cfi_read_query.exit.i

cfi_read_query.exit.i:                            ; preds = %cond.false42.i.i, %cond.true40.i.i, %cond.false22.i.i, %cond.true18.i.i, %cond.true7.i.i, %if.then.i191.i
  %retval.0.in.i.i = phi i32 [ %17, %if.then.i191.i ], [ %22, %cond.true7.i.i ], [ %conv21.i.i, %cond.true18.i.i ], [ %conv25.i.i, %cond.false22.i.i ], [ %30, %cond.true40.i.i ], [ %spec.select.i.i, %cond.false42.i.i ]
  %retval.0.i.i = trunc i32 %retval.0.in.i.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i)
  %tobool.not.i = icmp eq i8 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %cfi_read_query.exit.i.cleanup77_crit_edge, label %if.end.i

cfi_read_query.exit.i.cleanup77_crit_edge:        ; preds = %cfi_read_query.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end.i:                                         ; preds = %cfi_read_query.exit.i
  %conv.i = shl i32 %retval.0.in.i.i, 2
  %mul2.i = and i32 %conv.i, 1020
  %add3.i = add nuw nsw i32 %mul2.i, 29
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3264) #12
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 8
  %34 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i, ptr %cfiq.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup77_crit_edge, label %if.end8.i

if.end.i.cleanup77_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end8.i:                                        ; preds = %if.end.i
  %35 = call ptr @memset(ptr %call9.i.i, i32 0, i32 29)
  %cfi_mode.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 4
  %36 = ptrtoint ptr %cfi_mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %cfi_mode.i, align 4
  %sector_erase_cmd.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #8
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp.i, i32 noundef 48, ptr noundef %map, ptr noundef %cfi) #8
  %37 = call ptr @memcpy(ptr %sector_erase_cmd.i, ptr %tmp.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #8
  %swap.i196.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cfi_read_query.exit214.i.for.body.i_crit_edge, %if.end8.i
  %i.0263.i = phi i32 [ 0, %if.end8.i ], [ %inc.i, %cfi_read_query.exit214.i.for.body.i_crit_edge ]
  %add16.i = add nuw nsw i32 %i.0263.i, 16
  %mul17.i = mul i32 %add16.i, %mul.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i192.i) #8
  %38 = call ptr @memset(ptr %val.i192.i, i32 255, i32 32)
  %39 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i.i, align 4
  call void %40(ptr nonnull sret(%union.map_word) align 4 %val.i192.i, ptr noundef %map, i32 noundef %mul17.i) #8
  %41 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bankwidth.i.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %42, label %if.else31.i207.i [
    i32 1, label %if.then.i195.i
    i32 2, label %if.then4.i197.i
  ]

if.then.i195.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i192.i, align 4
  br label %cfi_read_query.exit214.i

if.then4.i197.i:                                  ; preds = %for.body.i
  %46 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %cond.true7.i198.i, label %cond.false9.i200.i

cond.true7.i198.i:                                ; preds = %if.then4.i197.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i192.i, align 4
  br label %cfi_read_query.exit214.i

cond.false9.i200.i:                               ; preds = %if.then4.i197.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp16.i199.i = icmp eq i32 %47, 3
  %51 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i192.i, align 4
  br i1 %cmp16.i199.i, label %cond.true18.i202.i, label %cond.false22.i205.i

cond.true18.i202.i:                               ; preds = %cond.false9.i200.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i201.i = and i32 %52, 65535
  br label %cfi_read_query.exit214.i

cond.false22.i205.i:                              ; preds = %cond.false9.i200.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i203.i = trunc i32 %52 to i16
  %53 = call i16 @llvm.bswap.i16(i16 %conv24.i203.i) #8
  %conv25.i204.i = zext i16 %53 to i32
  br label %cfi_read_query.exit214.i

if.else31.i207.i:                                 ; preds = %for.body.i
  %54 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %56 = icmp ult i32 %55, 2
  br i1 %56, label %cond.true40.i208.i, label %cond.false42.i211.i

cond.true40.i208.i:                               ; preds = %if.else31.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i192.i, align 4
  br label %cfi_read_query.exit214.i

cond.false42.i211.i:                              ; preds = %if.else31.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp49.i209.i = icmp eq i32 %55, 3
  %59 = ptrtoint ptr %val.i192.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i192.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  %spec.select.i210.i = select i1 %cmp49.i209.i, i32 %60, i32 %61
  br label %cfi_read_query.exit214.i

cfi_read_query.exit214.i:                         ; preds = %cond.false42.i211.i, %cond.true40.i208.i, %cond.false22.i205.i, %cond.true18.i202.i, %cond.true7.i198.i, %if.then.i195.i
  %retval.0.in.i212.i = phi i32 [ %45, %if.then.i195.i ], [ %50, %cond.true7.i198.i ], [ %conv21.i201.i, %cond.true18.i202.i ], [ %conv25.i204.i, %cond.false22.i205.i ], [ %58, %cond.true40.i208.i ], [ %spec.select.i210.i, %cond.false42.i211.i ]
  %retval.0.i213.i = trunc i32 %retval.0.in.i212.i to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i192.i) #8
  %62 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfiq.i, align 4
  %arrayidx.i127 = getelementptr i8, ptr %63, i32 %i.0263.i
  %64 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i213.i, ptr %arrayidx.i127, align 1
  %inc.i = add nuw nsw i32 %i.0263.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add3.i
  br i1 %exitcond.not.i, label %for.end.i, label %cfi_read_query.exit214.i.for.body.i_crit_edge

cfi_read_query.exit214.i.for.body.i_crit_edge:    ; preds = %cfi_read_query.exit214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cfi_read_query.exit214.i
  %65 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfiq.i, align 4
  %P_ID.i = getelementptr inbounds %struct.cfi_ident, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %P_ID.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %P_ID.i, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #8
  %70 = ptrtoint ptr %P_ID.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %P_ID.i, align 1
  %71 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfiq.i, align 4
  %P_ADR.i = getelementptr inbounds %struct.cfi_ident, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %P_ADR.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %P_ADR.i, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #8
  %76 = ptrtoint ptr %P_ADR.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %P_ADR.i, align 1
  %77 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfiq.i, align 4
  %A_ID.i = getelementptr inbounds %struct.cfi_ident, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %A_ID.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %A_ID.i, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #8
  %82 = ptrtoint ptr %A_ID.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %A_ID.i, align 1
  %83 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfiq.i, align 4
  %A_ADR.i = getelementptr inbounds %struct.cfi_ident, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %A_ADR.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %A_ADR.i, align 1
  %87 = call i16 @llvm.bswap.i16(i16 %86) #8
  %88 = ptrtoint ptr %A_ADR.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %A_ADR.i, align 1
  %89 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfiq.i, align 4
  %InterfaceDesc.i = getelementptr inbounds %struct.cfi_ident, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %InterfaceDesc.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %InterfaceDesc.i, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92) #8
  %94 = ptrtoint ptr %InterfaceDesc.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %InterfaceDesc.i, align 1
  %95 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfiq.i, align 4
  %MaxBufWriteSize.i = getelementptr inbounds %struct.cfi_ident, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %MaxBufWriteSize.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %MaxBufWriteSize.i, align 1
  %99 = call i16 @llvm.bswap.i16(i16 %98) #8
  %100 = ptrtoint ptr %MaxBufWriteSize.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %MaxBufWriteSize.i, align 1
  %101 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions264.i = getelementptr inbounds %struct.cfi_ident, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %NumEraseRegions264.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %NumEraseRegions264.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp42266.not.i = icmp eq i8 %104, 0
  br i1 %cmp42266.not.i, label %for.end.i.for.end52.i_crit_edge, label %for.end.i.for.body44.i_crit_edge

for.end.i.for.body44.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body44.i

for.end.i.for.end52.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.end.i.for.body44.i_crit_edge
  %105 = phi ptr [ %111, %for.body44.i.for.body44.i_crit_edge ], [ %102, %for.end.i.for.body44.i_crit_edge ]
  %i.1267.i = phi i32 [ %inc51.i, %for.body44.i.for.body44.i_crit_edge ], [ 0, %for.end.i.for.body44.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.cfi_ident, ptr %105, i32 0, i32 21, i32 %i.1267.i
  %106 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx46.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #8
  %109 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %arrayidx46.i, align 1
  %inc51.i = add nuw nsw i32 %i.1267.i, 1
  %110 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %111, i32 0, i32 20
  %112 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %NumEraseRegions.i, align 1
  %conv41.i = zext i8 %113 to i32
  %cmp42.i = icmp ult i32 %inc51.i, %conv41.i
  br i1 %cmp42.i, label %for.body44.i.for.body44.i_crit_edge, label %for.body44.i.for.end52.i_crit_edge

for.body44.i.for.end52.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52.i

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.i

for.end52.i:                                      ; preds = %for.body44.i.for.end52.i_crit_edge, %for.end.i.for.end52.i_crit_edge
  %.lcssa.i = phi ptr [ %102, %for.end.i.for.end52.i_crit_edge ], [ %111, %for.body44.i.for.end52.i_crit_edge ]
  %P_ID54.i = getelementptr inbounds %struct.cfi_ident, ptr %.lcssa.i, i32 0, i32 1
  %114 = ptrtoint ptr %P_ID54.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %P_ID54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1793, i16 %115)
  %cmp56.i = icmp eq i16 %115, 1793
  %spec.select.i = select i1 %cmp56.i, i32 21845, i32 1365
  %spec.select190.i = select i1 %cmp56.i, i32 10922, i32 682
  %116 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %device_type.i, align 4
  %call61.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef 0, ptr noundef %map, ptr noundef %cfi, i32 noundef %117, ptr noundef null) #8
  %118 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %device_type.i, align 4
  %call63.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %spec.select.i, i32 noundef 0, ptr noundef %map, ptr noundef %cfi, i32 noundef %119, ptr noundef null) #8
  %120 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %device_type.i, align 4
  %call65.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %spec.select190.i, i32 noundef 0, ptr noundef %map, ptr noundef %cfi, i32 noundef %121, ptr noundef null) #8
  %122 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %device_type.i, align 4
  %call67.i = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %spec.select.i, i32 noundef 0, ptr noundef %map, ptr noundef %cfi, i32 noundef %123, ptr noundef null) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i215.i) #8
  %124 = call ptr @memset(ptr %val.i215.i, i32 255, i32 32)
  %125 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read.i.i, align 4
  call void %126(ptr nonnull sret(%union.map_word) align 4 %val.i215.i, ptr noundef %map, i32 noundef 0) #8
  %127 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bankwidth.i.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %128, label %if.else31.i230.i [
    i32 1, label %if.then.i218.i
    i32 2, label %if.then4.i220.i
  ]

if.then.i218.i:                                   ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %val.i215.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val.i215.i, align 4
  %and.i.i = and i32 %131, 255
  br label %cfi_read_query16.exit.i

if.then4.i220.i:                                  ; preds = %for.end52.i
  %132 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %134 = icmp ult i32 %133, 2
  br i1 %134, label %cond.true7.i221.i, label %cond.false9.i223.i

cond.true7.i221.i:                                ; preds = %if.then4.i220.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %val.i215.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %val.i215.i, align 4
  br label %cfi_read_query16.exit.i

cond.false9.i223.i:                               ; preds = %if.then4.i220.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp16.i222.i = icmp eq i32 %133, 3
  %137 = ptrtoint ptr %val.i215.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %val.i215.i, align 4
  br i1 %cmp16.i222.i, label %cond.true18.i225.i, label %cond.false22.i228.i

cond.true18.i225.i:                               ; preds = %cond.false9.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i224.i = and i32 %138, 65535
  br label %cfi_read_query16.exit.i

cond.false22.i228.i:                              ; preds = %cond.false9.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i226.i = trunc i32 %138 to i16
  %139 = call i16 @llvm.bswap.i16(i16 %conv24.i226.i) #8
  %conv25.i227.i = zext i16 %139 to i32
  br label %cfi_read_query16.exit.i

if.else31.i230.i:                                 ; preds = %for.end52.i
  %140 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %142 = icmp ult i32 %141, 2
  br i1 %142, label %cond.true40.i231.i, label %cond.false42.i234.i

cond.true40.i231.i:                               ; preds = %if.else31.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %val.i215.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %val.i215.i, align 4
  br label %cfi_read_query16.exit.i

cond.false42.i234.i:                              ; preds = %if.else31.i230.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %141)
  %cmp49.i232.i = icmp eq i32 %141, 3
  %145 = ptrtoint ptr %val.i215.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %val.i215.i, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146) #8
  %spec.select.i233.i = select i1 %cmp49.i232.i, i32 %146, i32 %147
  br label %cfi_read_query16.exit.i

cfi_read_query16.exit.i:                          ; preds = %cond.false42.i234.i, %cond.true40.i231.i, %cond.false22.i228.i, %cond.true18.i225.i, %cond.true7.i221.i, %if.then.i218.i
  %retval.0.in.i235.i = phi i32 [ %and.i.i, %if.then.i218.i ], [ %136, %cond.true7.i221.i ], [ %conv21.i224.i, %cond.true18.i225.i ], [ %conv25.i227.i, %cond.false22.i228.i ], [ %144, %cond.true40.i231.i ], [ %spec.select.i233.i, %cond.false42.i234.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i215.i) #8
  %conv69.i = and i32 %retval.0.in.i235.i, 65535
  %mfr.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 9
  %148 = ptrtoint ptr %mfr.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv69.i, ptr %mfr.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i237.i) #8
  %149 = call ptr @memset(ptr %val.i237.i, i32 255, i32 32)
  %150 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read.i.i, align 4
  call void %151(ptr nonnull sret(%union.map_word) align 4 %val.i237.i, ptr noundef %map, i32 noundef %mul.i) #8
  %152 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bankwidth.i.i, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %153, label %if.else31.i253.i [
    i32 1, label %if.then.i241.i
    i32 2, label %if.then4.i243.i
  ]

if.then.i241.i:                                   ; preds = %cfi_read_query16.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %val.i237.i, align 4
  %and.i240.i = and i32 %156, 255
  br label %cfi_read_query16.exit260.i

if.then4.i243.i:                                  ; preds = %cfi_read_query16.exit.i
  %157 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158)
  %159 = icmp ult i32 %158, 2
  br i1 %159, label %cond.true7.i244.i, label %cond.false9.i246.i

cond.true7.i244.i:                                ; preds = %if.then4.i243.i
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %val.i237.i, align 4
  br label %cfi_read_query16.exit260.i

cond.false9.i246.i:                               ; preds = %if.then4.i243.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %158)
  %cmp16.i245.i = icmp eq i32 %158, 3
  %162 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %val.i237.i, align 4
  br i1 %cmp16.i245.i, label %cond.true18.i248.i, label %cond.false22.i251.i

cond.true18.i248.i:                               ; preds = %cond.false9.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i247.i = and i32 %163, 65535
  br label %cfi_read_query16.exit260.i

cond.false22.i251.i:                              ; preds = %cond.false9.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i249.i = trunc i32 %163 to i16
  %164 = call i16 @llvm.bswap.i16(i16 %conv24.i249.i) #8
  %conv25.i250.i = zext i16 %164 to i32
  br label %cfi_read_query16.exit260.i

if.else31.i253.i:                                 ; preds = %cfi_read_query16.exit.i
  %165 = ptrtoint ptr %swap.i196.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %swap.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %cond.true40.i254.i, label %cond.false42.i257.i

cond.true40.i254.i:                               ; preds = %if.else31.i253.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %val.i237.i, align 4
  br label %cfi_read_query16.exit260.i

cond.false42.i257.i:                              ; preds = %if.else31.i253.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %166)
  %cmp49.i255.i = icmp eq i32 %166, 3
  %170 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val.i237.i, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  %spec.select.i256.i = select i1 %cmp49.i255.i, i32 %171, i32 %172
  br label %cfi_read_query16.exit260.i

cfi_read_query16.exit260.i:                       ; preds = %cond.false42.i257.i, %cond.true40.i254.i, %cond.false22.i251.i, %cond.true18.i248.i, %cond.true7.i244.i, %if.then.i241.i
  %retval.0.in.i258.i = phi i32 [ %and.i240.i, %if.then.i241.i ], [ %161, %cond.true7.i244.i ], [ %conv21.i247.i, %cond.true18.i248.i ], [ %conv25.i250.i, %cond.false22.i251.i ], [ %169, %cond.true40.i254.i ], [ %spec.select.i256.i, %cond.false42.i257.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i237.i) #8
  %conv72.i = and i32 %retval.0.in.i258.i, 65535
  %id.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 10
  %173 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv72.i, ptr %id.i, align 4
  %174 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp74.i = icmp eq i32 %175, 1
  %and.i128 = and i32 %retval.0.in.i258.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i128)
  %cmp77.i = icmp eq i32 %and.i128, 126
  %or.cond.i = select i1 %cmp74.i, i1 %cmp77.i, i1 false
  br i1 %or.cond.i, label %if.then79.i, label %cfi_read_query16.exit260.i.if.end89.i_crit_edge

cfi_read_query16.exit260.i.if.end89.i_crit_edge:  ; preds = %cfi_read_query16.exit260.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then79.i:                                      ; preds = %cfi_read_query16.exit260.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul80.i = mul i32 %mul.i, 14
  %call82.i = call fastcc zeroext i8 @cfi_read_query(ptr noundef %map, i32 noundef %mul80.i) #8
  %conv83.i = zext i8 %call82.i to i32
  %shl.i = shl nuw nsw i32 %conv83.i, 8
  %mul84.i = mul i32 %mul.i, 15
  %call86.i = call fastcc zeroext i8 @cfi_read_query(ptr noundef %map, i32 noundef %mul84.i) #8
  %conv87.i = zext i8 %call86.i to i32
  %or.i = or i32 %shl.i, %conv87.i
  %176 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i, ptr %id.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then79.i, %cfi_read_query16.exit260.i.if.end89.i_crit_edge
  call void @cfi_qry_mode_off(i32 noundef 0, ptr noundef %map, ptr noundef %cfi) #8
  %177 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp5.i.i = icmp eq i32 %178, 1
  br i1 %cmp5.i.i, label %lor.lhs.false10.i.i, label %if.end89.i.cfi_early_fixup.exit.i_crit_edge

if.end89.i.cfi_early_fixup.exit.i_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cfi_early_fixup.exit.i

lor.lhs.false10.i.i:                              ; preds = %if.end89.i
  %179 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18433, i32 %180)
  %cmp14.i.i = icmp eq i32 %180, 18433
  br i1 %cmp14.i.i, label %if.then.i261.i, label %lor.lhs.false10.i.i.cfi_early_fixup.exit.i_crit_edge

lor.lhs.false10.i.i.cfi_early_fixup.exit.i_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cfi_early_fixup.exit.i

if.then.i261.i:                                   ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfiq.i, align 4
  %DevSize.i.i.i = getelementptr inbounds %struct.cfi_ident, ptr %182, i32 0, i32 17
  %183 = ptrtoint ptr %DevSize.i.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 27, ptr %DevSize.i.i.i, align 1
  %184 = load ptr, ptr %cfiq.i, align 4
  %EraseRegionInfo.i.i.i = getelementptr inbounds %struct.cfi_ident, ptr %184, i32 0, i32 21
  %185 = ptrtoint ptr %EraseRegionInfo.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 33555455, ptr %EraseRegionInfo.i.i.i, align 1
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %cfi_early_fixup.exit.i

cfi_early_fixup.exit.i:                           ; preds = %if.then.i261.i, %lor.lhs.false10.i.i.cfi_early_fixup.exit.i_crit_edge, %if.end89.i.cfi_early_fixup.exit.i_crit_edge
  %186 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %map, align 4
  %188 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %interleave.i, align 4
  %190 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %device_type.i, align 4
  %mul99.i = shl i32 %191, 3
  %192 = ptrtoint ptr %bankwidth.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %bankwidth.i.i, align 4
  %mul100.i = shl i32 %193, 3
  %194 = ptrtoint ptr %mfr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mfr.i, align 4
  %196 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %id.i, align 4
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %187, i32 noundef %189, i32 noundef %mul99.i, i32 noundef 0, i32 noundef %mul100.i, i32 noundef %195, i32 noundef %197) #11
  br label %cleanup77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %198 = phi i32 [ %208, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %i.0135 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0135, 5
  %arrayidx.i = getelementptr i32, ptr %chip_map, i32 %div3.i
  %199 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0135, 31
  %201 = shl nuw i32 1, %and.i
  %202 = and i32 %200, %201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool30.not = icmp eq i32 %202, 0
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %shl = shl i32 %i.0135, %198
  %call34 = tail call i32 @cfi_qry_present(ptr noundef %map, i32 noundef %shl, ptr noundef %cfi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.for.inc_crit_edge, label %if.then36

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %if.end32
  tail call void @cfi_qry_mode_off(i32 noundef %shl, ptr noundef %map, ptr noundef %cfi) #8
  %call37 = tail call i32 @cfi_qry_present(ptr noundef %map, i32 noundef %shl, ptr noundef %cfi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %map, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %204, i32 noundef %base, i32 noundef %shl) #11
  br label %cleanup77

if.end48:                                         ; preds = %if.then36
  tail call void @cfi_qry_mode_off(i32 noundef %base, ptr noundef %map, ptr noundef %cfi) #8
  %call49 = tail call i32 @cfi_qry_present(ptr noundef %map, i32 noundef %base, ptr noundef %cfi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.for.inc_crit_edge, label %do.end57

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %map, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %206, i32 noundef %base, i32 noundef %shl) #11
  br label %cleanup77

for.inc:                                          ; preds = %if.end48.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0135, 1
  %207 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %chipshift, align 4
  %shr = lshr i32 %base, %208
  %cmp28 = icmp ult i32 %inc, %shr
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %shr.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %shr, %for.inc.for.end_crit_edge ]
  tail call void @_set_bit(i32 noundef %shr.lcssa, ptr noundef %chip_map) #8
  %209 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %numchips, align 4
  %inc66 = add i32 %210, 1
  store i32 %inc66, ptr %numchips, align 4
  tail call void @cfi_qry_mode_off(i32 noundef %base, ptr noundef %map, ptr noundef %cfi) #8
  %211 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %map, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  %213 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %interleave, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %215 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %device_type, align 4
  %mul = shl i32 %216, 3
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %217 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bankwidth, align 4
  %mul75 = shl i32 %218, 3
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %212, i32 noundef %214, i32 noundef %mul, i32 noundef %base, i32 noundef %mul75) #11
  br label %cleanup77

cleanup77:                                        ; preds = %for.end, %do.end57, %do.end45, %cfi_early_fixup.exit.i, %if.end.i.cleanup77_crit_edge, %cfi_read_query.exit.i.cleanup77_crit_edge, %do.end17.cleanup77_crit_edge, %do.end8, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ 1, %for.end ], [ 0, %do.end17.cleanup77_crit_edge ], [ 1, %cfi_early_fixup.exit.i ], [ 0, %cfi_read_query.exit.i.cleanup77_crit_edge ], [ 0, %if.end.i.cleanup77_crit_edge ], [ 0, %do.end57 ], [ 0, %do.end45 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_mode_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_present(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_qry_mode_off(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @cfi_read_query(ptr noundef %map, i32 noundef %addr) unnamed_addr #5 align 64 {
entry:
  %val = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #8
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %0 = call ptr @memset(ptr %val, i32 255, i32 32)
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  call void %2(ptr nonnull sret(%union.map_word) align 4 %val, ptr noundef %map, i32 noundef %addr) #8
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %3 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bankwidth, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %4, label %if.else31 [
    i32 1, label %if.then
    i32 2, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  br label %cleanup

if.then4:                                         ; preds = %entry
  %swap = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %8 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  br label %cleanup

cond.false9:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp16 = icmp eq i32 %9, 3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  br i1 %cmp16, label %cond.true18, label %cond.false22

cond.true18:                                      ; preds = %cond.false9
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = and i32 %14, 65535
  br label %cleanup

cond.false22:                                     ; preds = %cond.false9
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = trunc i32 %14 to i16
  %15 = call i16 @llvm.bswap.i16(i16 %conv24)
  %conv25 = zext i16 %15 to i32
  br label %cleanup

if.else31:                                        ; preds = %entry
  %swap32 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %16 = ptrtoint ptr %swap32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %swap32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  br label %cleanup

cond.false42:                                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp49 = icmp eq i32 %17, 3
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %spec.select = select i1 %cmp49, i32 %22, i32 %23
  br label %cleanup

cleanup:                                          ; preds = %cond.false42, %cond.true40, %cond.false22, %cond.true18, %cond.true7, %if.then
  %retval.0.in = phi i32 [ %7, %if.then ], [ %12, %cond.true7 ], [ %conv21, %cond.true18 ], [ %conv25, %cond.false22 ], [ %20, %cond.true40 ], [ %spec.select, %cond.false42 ]
  %retval.0 = trunc i32 %retval.0.in to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #8
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_build_cmd(ptr sret(%union.map_word) align 4, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_cfi_probe__177_457_cfi_probe_init6, !1, !"__initcall__kmod_cfi_probe__177_457_cfi_probe_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_cfi_probe_exit, !3, !"__exitcall_cfi_probe_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 458, i32 1}
!4 = !{ptr @__UNIQUE_ID_file178, !5, !"__UNIQUE_ID_file178", i1 false, i1 false}
!5 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 460, i32 1}
!6 = !{ptr @__UNIQUE_ID_license179, !5, !"__UNIQUE_ID_license179", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author180, !8, !"__UNIQUE_ID_author180", i1 false, i1 false}
!8 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 461, i32 1}
!9 = !{ptr @__UNIQUE_ID_description181, !10, !"__UNIQUE_ID_description181", i1 false, i1 false}
!10 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 462, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 427, i32 11}
!13 = !{ptr @cfi_chip_probe, !14, !"cfi_chip_probe", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 426, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 101, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cfi_probe_chip._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cfi_probe_chip._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 107, i32 3}
!23 = !{ptr @cfi_probe_chip._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cfi_probe_chip._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 143, i32 5}
!27 = !{ptr @cfi_probe_chip._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cfi_probe_chip._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cfi_probe_chip._entry.10, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 155, i32 5}
!31 = !{ptr @cfi_probe_chip._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 171, i32 2}
!34 = !{ptr @cfi_probe_chip._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cfi_probe_chip._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 280, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cfi_chip_setup._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cfi_chip_setup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"cfi_early_fixup_table", i1 false, i1 false}
!42 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 189, i32 37}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 186, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fixup_s70gl02gs_chips._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @fixup_s70gl02gs_chips._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 442, i32 11}
!50 = !{ptr @cfi_chipdrv, !51, !"cfi_chipdrv", i1 false, i1 false}
!51 = !{!"../drivers/mtd/chips/cfi_probe.c", i32 440, i32 31}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
