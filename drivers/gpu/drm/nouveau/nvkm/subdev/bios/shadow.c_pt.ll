; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_source = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.shadow = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_image = type { i32, i32, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@nvbios_of = external dso_local constant %struct.nvbios_source, align 4
@nvbios_ramin = external dso_local constant %struct.nvbios_source, align 4
@nvbios_rom = external dso_local constant %struct.nvbios_source, align 4
@nvbios_acpi_fast = external dso_local constant %struct.nvbios_source, align 4
@nvbios_acpi_slow = external dso_local constant %struct.nvbios_source, align 4
@nvbios_pcirom = external dso_local constant %struct.nvbios_source, align 4
@nvbios_platform = external dso_local constant %struct.nvbios_source, align 4
@__const.nvbios_shadow.mthds = private unnamed_addr constant [8 x %struct.shadow] [%struct.shadow { i32 0, ptr @nvbios_of, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_ramin, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_rom, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_acpi_fast, ptr null, i32 0, i32 0 }, %struct.shadow { i32 4, ptr @nvbios_acpi_slow, ptr null, i32 0, i32 0 }, %struct.shadow { i32 1, ptr @nvbios_pcirom, ptr null, i32 0, i32 0 }, %struct.shadow { i32 1, ptr @nvbios_platform, ptr null, i32 0, i32 0 }, %struct.shadow zeroinitializer], align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NvBios\00", [25 x i8] zeroinitializer }, align 32
@shadow_fw = internal constant { %struct.nvbios_source, [40 x i8] } { %struct.nvbios_source { ptr @.str.32, ptr @shadow_fw_init, ptr @release_firmware, ptr @shadow_fw_read, ptr null, i8 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@nvbios_shadow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s invalid\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvbios_shadow\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvbios_shadow._entry_ptr = internal global ptr @nvbios_shadow._entry, section ".printk_index", align 4
@nvbios_shadow._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: unable to locate usable image\0A\00", [61 x i8] zeroinitializer }, align 32
@nvbios_shadow._entry_ptr.8 = internal global ptr @nvbios_shadow._entry.6, section ".printk_index", align 4
@nvbios_shadow._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: using image from %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvbios_shadow._entry_ptr.12 = internal global ptr @nvbios_shadow._entry.9, section ".printk_index", align 4
@shadow_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 115, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: trying %s...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shadow_method\00", [18 x i8] zeroinitializer }, align 32
@shadow_method._entry_ptr = internal global ptr @shadow_method._entry, section ".printk_index", align 4
@shadow_method._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 126, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: scored %d\0A\00", [17 x i8] zeroinitializer }, align 32
@shadow_method._entry_ptr.17 = internal global ptr @shadow_method._entry.15, section ".printk_index", align 4
@shadow_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 66, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %08x: header fetch failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"shadow_image\00", [19 x i8] zeroinitializer }, align 32
@shadow_image._entry_ptr = internal global ptr @shadow_image._entry, section ".printk_index", align 4
@shadow_image._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 71, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: image %d invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@shadow_image._entry_ptr.22 = internal global ptr @shadow_image._entry.20, section ".printk_index", align 4
@shadow_image._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 76, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %08x: type %02x, %d bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@shadow_image._entry_ptr.25 = internal global ptr @shadow_image._entry.23, section ".printk_index", align 4
@shadow_image._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 79, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %08x: fetch failed\0A\00", [40 x i8] zeroinitializer }, align 32
@shadow_image._entry_ptr.28 = internal global ptr @shadow_image._entry.26, section ".printk_index", align 4
@shadow_image._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.3, i32 88, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %08x: checksum failed\0A\00", [37 x i8] zeroinitializer }, align 32
@shadow_image._entry_ptr.31 = internal global ptr @shadow_image._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 186, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"shadow_fw\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 158, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 207, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 232, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 236, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 115, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 126, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 65, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 71, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 75, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 79, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 87, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 159, i32 10 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @nvbios_shadow._entry, ptr @nvbios_shadow._entry.6, ptr @nvbios_shadow._entry.9, ptr @nvbios_shadow._entry_ptr, ptr @nvbios_shadow._entry_ptr.12, ptr @nvbios_shadow._entry_ptr.8, ptr @shadow_image._entry, ptr @shadow_image._entry.20, ptr @shadow_image._entry.23, ptr @shadow_image._entry.26, ptr @shadow_image._entry.29, ptr @shadow_image._entry_ptr, ptr @shadow_image._entry_ptr.22, ptr @shadow_image._entry_ptr.25, ptr @shadow_image._entry_ptr.28, ptr @shadow_image._entry_ptr.31, ptr @shadow_method._entry, ptr @shadow_method._entry.15, ptr @shadow_method._entry_ptr, ptr @shadow_method._entry_ptr.17, ptr @.str, ptr @shadow_fw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_fw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_shadow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_shadow._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvbios_shadow._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_method._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_image._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_image._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_image._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_image._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvbios_shadow(ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  %mthds = alloca [8 x %struct.shadow], align 4
  %optlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mthds) #6
  %2 = call ptr @memcpy(ptr %mthds, ptr @__const.nvbios_shadow.mthds, i32 160)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optlen) #6
  %3 = ptrtoint ptr %optlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %optlen, align 4, !annotation !62
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %call = call ptr @nvkm_stropt(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %optlen) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then40_crit_edge, label %cond.end

entry.if.then40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

cond.end:                                         ; preds = %entry
  %6 = ptrtoint ptr %optlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %optlen, align 4
  %call3 = call ptr @kstrndup(ptr noundef nonnull %call, i32 noundef %7, i32 noundef 3264) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cond.end.if.then40_crit_edge, label %for.cond.preheader

cond.end.if.then40_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

for.cond.preheader:                               ; preds = %cond.end
  %func194 = getelementptr inbounds %struct.shadow, ptr %mthds, i32 0, i32 1
  %8 = ptrtoint ptr %func194 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func194, align 4
  %tobool5.not195 = icmp eq ptr %9, null
  br i1 %tobool5.not195, label %for.cond.preheader.if.then20_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then20_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi ptr [ %14, %for.inc.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %best.0198 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %mthd.0196 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %mthds, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call10 = call i32 @strcasecmp(ptr noundef nonnull %call3, ptr noundef nonnull %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call fastcc i32 @shadow_method(ptr noundef %bios, ptr noundef %mthd.0196, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.for.inc_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best.1 = phi ptr [ %best.0198, %land.lhs.true.for.inc_crit_edge ], [ %mthd.0196, %if.then12.for.inc_crit_edge ], [ %best.0198, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.shadow, ptr %mthd.0196, i32 1
  %func = getelementptr %struct.shadow, ptr %mthd.0196, i32 1, i32 1
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then12.for.end_crit_edge
  %mthd.0.lcssa193 = phi ptr [ %incdec.ptr, %for.inc.for.end_crit_edge ], [ %mthd.0196, %if.then12.for.end_crit_edge ]
  %best.2 = phi ptr [ %best.1, %for.inc.for.end_crit_edge ], [ %mthd.0196, %if.then12.for.end_crit_edge ]
  %tobool17.not = icmp eq ptr %best.2, null
  br i1 %tobool17.not, label %land.lhs.true18, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true18:                                  ; preds = %for.end
  %tobool19.not = icmp eq ptr %mthd.0.lcssa193, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end24_crit_edge, label %land.lhs.true18.if.then20_crit_edge

land.lhs.true18.if.then20_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true18.if.then20_crit_edge, %for.cond.preheader.if.then20_crit_edge
  %mthd.0.lcssa193219225 = phi ptr [ %mthd.0.lcssa193, %land.lhs.true18.if.then20_crit_edge ], [ %mthds, %for.cond.preheader.if.then20_crit_edge ]
  %func.le220224 = getelementptr inbounds %struct.shadow, ptr %mthd.0.lcssa193219225, i32 0, i32 1
  %15 = ptrtoint ptr %func.le220224 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @shadow_fw, ptr %func.le220224, align 4
  %call22 = call fastcc i32 @shadow_method(ptr noundef %bios, ptr noundef nonnull %mthd.0.lcssa193219225, ptr noundef nonnull %call3)
  %16 = ptrtoint ptr %func.le220224 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %func.le220224, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true18.if.end24_crit_edge, %for.end.if.end24_crit_edge
  %best.3 = phi ptr [ %best.2, %for.end.if.end24_crit_edge ], [ %mthd.0.lcssa193219225, %if.then20 ], [ null, %land.lhs.true18.if.end24_crit_edge ]
  %score = getelementptr inbounds %struct.shadow, ptr %best.3, i32 0, i32 4
  %17 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %score, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %do.body, label %if.end24.if.end36_crit_edge

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.body:                                          ; preds = %if.end24
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %do.body.if.end32_crit_edge, label %do.end

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name30 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %name30, ptr noundef nonnull %call3) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end, %do.body.if.end32_crit_edge
  call void @kfree(ptr noundef nonnull %call3) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end24.if.end36_crit_edge
  %source.0 = phi ptr [ %call3, %if.end24.if.end36_crit_edge ], [ null, %if.end32 ]
  %tobool37.not = icmp eq ptr %best.3, null
  br i1 %tobool37.not, label %if.end36.if.then40_crit_edge, label %lor.lhs.false

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end36
  %25 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %score, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not = icmp eq i32 %26, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.then40_crit_edge, label %lor.lhs.false.if.end65_crit_edge

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end36.if.then40_crit_edge, %cond.end.if.then40_crit_edge, %entry.if.then40_crit_edge
  %source.0192 = phi ptr [ %source.0, %lor.lhs.false.if.then40_crit_edge ], [ %source.0, %if.end36.if.then40_crit_edge ], [ null, %cond.end.if.then40_crit_edge ], [ null, %entry.if.then40_crit_edge ]
  %func43204 = getelementptr inbounds %struct.shadow, ptr %mthds, i32 0, i32 1
  %27 = ptrtoint ptr %func43204 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func43204, align 4
  %tobool44.not205 = icmp eq ptr %28, null
  br i1 %tobool44.not205, label %if.then40.if.end65_crit_edge, label %if.then40.for.body45_crit_edge

if.then40.for.body45_crit_edge:                   ; preds = %if.then40
  br label %for.body45

if.then40.if.end65_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

for.body45:                                       ; preds = %for.inc62.for.body45_crit_edge, %if.then40.for.body45_crit_edge
  %best.5208 = phi ptr [ %best.6, %for.inc62.for.body45_crit_edge ], [ %mthds, %if.then40.for.body45_crit_edge ]
  %mthd.1206 = phi ptr [ %incdec.ptr63, %for.inc62.for.body45_crit_edge ], [ %mthds, %if.then40.for.body45_crit_edge ]
  %29 = ptrtoint ptr %mthd.1206 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mthd.1206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not = icmp eq i32 %30, 0
  br i1 %tobool46.not, label %for.body45.if.then51_crit_edge, label %lor.lhs.false47

for.body45.if.then51_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

lor.lhs.false47:                                  ; preds = %for.body45
  %score48 = getelementptr inbounds %struct.shadow, ptr %best.5208, i32 0, i32 4
  %31 = ptrtoint ptr %score48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %score48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp50 = icmp ult i32 %32, %30
  br i1 %cmp50, label %lor.lhs.false47.if.then51_crit_edge, label %lor.lhs.false47.for.inc62_crit_edge

lor.lhs.false47.for.inc62_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

lor.lhs.false47.if.then51_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false47.if.then51_crit_edge, %for.body45.if.then51_crit_edge
  %call52 = call fastcc i32 @shadow_method(ptr noundef %bios, ptr noundef %mthd.1206, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.for.inc62_crit_edge, label %if.then54

if.then51.for.inc62_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %score55 = getelementptr inbounds %struct.shadow, ptr %mthd.1206, i32 0, i32 4
  %33 = ptrtoint ptr %score55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %score55, align 4
  %score56 = getelementptr inbounds %struct.shadow, ptr %best.5208, i32 0, i32 4
  %35 = ptrtoint ptr %score56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %score56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp57 = icmp sgt i32 %34, %36
  %spec.select = select i1 %cmp57, ptr %mthd.1206, ptr %best.5208
  br label %for.inc62

for.inc62:                                        ; preds = %if.then54, %if.then51.for.inc62_crit_edge, %lor.lhs.false47.for.inc62_crit_edge
  %best.6 = phi ptr [ %best.5208, %if.then51.for.inc62_crit_edge ], [ %best.5208, %lor.lhs.false47.for.inc62_crit_edge ], [ %spec.select, %if.then54 ]
  %incdec.ptr63 = getelementptr %struct.shadow, ptr %mthd.1206, i32 1
  %func43 = getelementptr %struct.shadow, ptr %mthd.1206, i32 1, i32 1
  %37 = ptrtoint ptr %func43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %func43, align 4
  %tobool44.not = icmp eq ptr %38, null
  br i1 %tobool44.not, label %for.inc62.if.end65_crit_edge, label %for.inc62.for.body45_crit_edge

for.inc62.for.body45_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.inc62.if.end65_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end65:                                         ; preds = %for.inc62.if.end65_crit_edge, %if.then40.if.end65_crit_edge, %lor.lhs.false.if.end65_crit_edge
  %source.0191 = phi ptr [ %source.0, %lor.lhs.false.if.end65_crit_edge ], [ %source.0192, %if.then40.if.end65_crit_edge ], [ %source.0192, %for.inc62.if.end65_crit_edge ]
  %best.7 = phi ptr [ %best.3, %lor.lhs.false.if.end65_crit_edge ], [ %mthds, %if.then40.if.end65_crit_edge ], [ %best.6, %for.inc62.if.end65_crit_edge ]
  %func68211 = getelementptr inbounds %struct.shadow, ptr %mthds, i32 0, i32 1
  %39 = ptrtoint ptr %func68211 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %func68211, align 4
  %tobool69.not212 = icmp eq ptr %40, null
  br i1 %tobool69.not212, label %if.end65.for.end76_crit_edge, label %if.end65.for.body70_crit_edge

if.end65.for.body70_crit_edge:                    ; preds = %if.end65
  br label %for.body70

if.end65.for.end76_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end76

for.body70:                                       ; preds = %for.inc74.for.body70_crit_edge, %if.end65.for.body70_crit_edge
  %mthd.2213 = phi ptr [ %incdec.ptr75, %for.inc74.for.body70_crit_edge ], [ %mthds, %if.end65.for.body70_crit_edge ]
  %cmp71.not = icmp eq ptr %mthd.2213, %best.7
  br i1 %cmp71.not, label %for.body70.for.inc74_crit_edge, label %if.then72

for.body70.for.inc74_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc74

if.then72:                                        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.shadow, ptr %mthd.2213, i32 0, i32 2
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %42) #6
  br label %for.inc74

for.inc74:                                        ; preds = %if.then72, %for.body70.for.inc74_crit_edge
  %incdec.ptr75 = getelementptr %struct.shadow, ptr %mthd.2213, i32 1
  %func68 = getelementptr %struct.shadow, ptr %mthd.2213, i32 1, i32 1
  %43 = ptrtoint ptr %func68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %func68, align 4
  %tobool69.not = icmp eq ptr %44, null
  br i1 %tobool69.not, label %for.inc74.for.end76_crit_edge, label %for.inc74.for.body70_crit_edge

for.inc74.for.body70_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.inc74.for.end76_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end76

for.end76:                                        ; preds = %for.inc74.for.end76_crit_edge, %if.end65.for.end76_crit_edge
  %score77 = getelementptr inbounds %struct.shadow, ptr %best.7, i32 0, i32 4
  %45 = ptrtoint ptr %score77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %score77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool78.not = icmp eq i32 %46, 0
  %debug82 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %47 = ptrtoint ptr %debug82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug82, align 4
  br i1 %tobool78.not, label %do.body80, label %do.body96

do.body80:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp83.not = icmp eq i32 %48, 0
  br i1 %cmp83.not, label %do.body80.cleanup_crit_edge, label %do.end87

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end87:                                         ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device2, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev89, align 8
  %name90 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.7, ptr noundef %name90) #9
  br label %cleanup

do.body96:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp99 = icmp ugt i32 %48, 3
  br i1 %cmp99, label %do.end103, label %do.body96.if.end116_crit_edge

do.body96.if.end116_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end103:                                        ; preds = %do.body96
  %53 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device2, align 4
  %dev105 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev105, align 8
  %name106 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %func108 = getelementptr inbounds %struct.shadow, ptr %best.7, i32 0, i32 1
  %57 = ptrtoint ptr %func108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %func108, align 4
  %tobool109.not = icmp eq ptr %58, null
  br i1 %tobool109.not, label %do.end103.cond.end114_crit_edge, label %cond.true110

do.end103.cond.end114_crit_edge:                  ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end114

cond.true110:                                     ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  br label %cond.end114

cond.end114:                                      ; preds = %cond.true110, %do.end103.cond.end114_crit_edge
  %cond115 = phi ptr [ %60, %cond.true110 ], [ %source.0191, %do.end103.cond.end114_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.10, ptr noundef %name106, ptr noundef %cond115) #9
  br label %if.end116

if.end116:                                        ; preds = %cond.end114, %do.body96.if.end116_crit_edge
  %data119 = getelementptr inbounds %struct.shadow, ptr %best.7, i32 0, i32 2
  %61 = ptrtoint ptr %data119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data119, align 4
  %data120 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %63 = ptrtoint ptr %data120 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %data120, align 4
  %size = getelementptr inbounds %struct.shadow, ptr %best.7, i32 0, i32 3
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  %size121 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %66 = ptrtoint ptr %size121 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size121, align 4
  call void @kfree(ptr noundef %source.0191) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end87, %do.body80.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end116 ], [ -22, %do.end87 ], [ -22, %do.body80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optlen) #6
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mthds) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_stropt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shadow_method(ptr noundef %bios, ptr nocapture noundef %mthd, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %func1 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 1
  %0 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %do.body

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name6 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %tobool7.not = icmp eq ptr %name, null
  %.name = select i1 %tobool7.not, ptr %3, ptr %name
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef %name6, ptr noundef nonnull %.name) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %init = getelementptr inbounds %struct.nvbios_source, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end.if.end19_crit_edge, label %if.then12

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then12:                                        ; preds = %if.end
  %call = tail call ptr %11(ptr noundef %bios, ptr noundef %name) #6
  %data = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %data, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %data, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %call20 = tail call fastcc i32 @shadow_image(ptr noundef %bios, i32 noundef 0, i32 noundef 0, ptr noundef %mthd)
  %score = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 4
  %14 = ptrtoint ptr %score to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20, ptr %score, align 4
  %fini = getelementptr inbounds %struct.nvbios_source, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fini, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end19.do.body26_crit_edge, label %if.then22

if.end19.do.body26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %data24 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %17 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data24, align 4
  tail call void %16(ptr noundef %18) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then22, %if.end19.do.body26_crit_edge
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp29 = icmp ugt i32 %20, 3
  br i1 %cmp29, label %do.end33, label %do.body26.if.end39_crit_edge

do.body26.if.end39_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %device34 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %21 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device34, align 4
  %dev35 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev35, align 8
  %name36 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %25 = ptrtoint ptr %score to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %score, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef %name36, i32 noundef %26) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %do.body26.if.end39_crit_edge
  %data42 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %27 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data42, align 4
  %data43 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %29 = ptrtoint ptr %data43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %data43, align 4
  %size = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %size44 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 3
  %32 = ptrtoint ptr %size44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %size44, align 4
  store ptr null, ptr %data42, align 4
  store i32 0, ptr %size, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end39, %entry.if.end47_crit_edge
  %score48 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 4
  %33 = ptrtoint ptr %score48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %score48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then16
  %retval.0 = phi i32 [ 0, %if.then16 ], [ %34, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shadow_image(ptr noundef %bios, i32 noundef %idx, i32 noundef %offset, ptr nocapture noundef readonly %mthd) unnamed_addr #0 align 64 {
entry:
  %image = alloca %struct.nvbios_image, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %image) #6
  %0 = call ptr @memset(ptr %image, i32 255, i32 12)
  %func = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 1
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 4
  %no_pcir = getelementptr inbounds %struct.nvbios_source, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %no_pcir to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %no_pcir, align 2, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %image, align 4
  %type = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.nvbios_source, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %size, align 4
  %data = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call = tail call i32 %8(ptr noundef %10) #6
  %size3 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 1
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %size3, align 4
  %last = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 3
  %12 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %last, align 1
  br label %do.body30

if.else:                                          ; preds = %entry
  %add = add i32 %offset, 4096
  %add.i = add i32 %offset, 4099
  %and.i = and i32 %add.i, -4
  %size.i = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %data1.i = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %15 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data1.i, align 4
  %call.i = tail call i32 @nvbios_extend(ptr noundef %bios, i32 noundef %and.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.shadow_fetch.exit_crit_edge

if.else.shadow_fetch.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %shadow_fetch.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  %read2.i = getelementptr inbounds %struct.nvbios_source, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %read2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read2.i, align 4
  %sub.i = sub i32 %and.i, %14
  %call3.i = tail call i32 %20(ptr noundef %16, i32 noundef %14, i32 noundef %sub.i, ptr noundef %bios) #6
  %add4.i = add i32 %call3.i, %14
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add4.i, ptr %size.i, align 4
  br label %shadow_fetch.exit

shadow_fetch.exit:                                ; preds = %if.then.i, %if.else.shadow_fetch.exit_crit_edge
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add)
  %cmp7.i.not = icmp ult i32 %23, %add
  br i1 %cmp7.i.not, label %do.body, label %if.end10

do.body:                                          ; preds = %shadow_fetch.exit
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp = icmp ugt i32 %25, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %offset) #9
  br label %cleanup

if.end10:                                         ; preds = %shadow_fetch.exit
  %call11 = call zeroext i1 @nvbios_image(ptr noundef %bios, i32 noundef %idx, ptr noundef nonnull %image) #6
  br i1 %call11, label %if.end10.do.body30_crit_edge, label %do.body13

if.end10.do.body30_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body13:                                        ; preds = %if.end10
  %debug15 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %30 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp16 = icmp ugt i32 %31, 3
  br i1 %cmp16, label %do.end20, label %do.body13.cleanup_crit_edge

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %device21 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %32 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device21, align 4
  %dev22 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev22, align 8
  %name23 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.21, ptr noundef %name23, i32 noundef %idx) #9
  br label %cleanup

do.body30:                                        ; preds = %if.end10.do.body30_crit_edge, %if.then
  %debug32 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %36 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp33 = icmp ugt i32 %37, 3
  br i1 %cmp33, label %do.end37, label %do.body30.if.end45_crit_edge

do.body30.if.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end37:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %device38 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %38 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device38, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev39, align 8
  %name40 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %42 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %image, align 4
  %type43 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 2
  %44 = ptrtoint ptr %type43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type43, align 4
  %conv = zext i8 %45 to i32
  %size44 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 1
  %46 = ptrtoint ptr %size44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef %name40, i32 noundef %43, i32 noundef %conv, i32 noundef %47) #9
  br label %if.end45

if.end45:                                         ; preds = %do.end37, %do.body30.if.end45_crit_edge
  %48 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %image, align 4
  %size49 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 1
  %50 = ptrtoint ptr %size49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size49, align 4
  %add50 = add i32 %51, %49
  %add.i161 = add i32 %add50, 3
  %and.i162 = and i32 %add.i161, -4
  %size.i163 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 1
  %52 = ptrtoint ptr %size.i163 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i163, align 4
  %data1.i164 = getelementptr inbounds %struct.shadow, ptr %mthd, i32 0, i32 2
  %54 = ptrtoint ptr %data1.i164 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data1.i164, align 4
  %call.i165 = call i32 @nvbios_extend(ptr noundef %bios, i32 noundef %and.i162) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp sgt i32 %call.i165, 0
  br i1 %cmp.i166, label %if.then.i172, label %if.end45.shadow_fetch.exit174_crit_edge

if.end45.shadow_fetch.exit174_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %shadow_fetch.exit174

if.then.i172:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %func, align 4
  %read2.i168 = getelementptr inbounds %struct.nvbios_source, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %read2.i168 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read2.i168, align 4
  %sub.i169 = sub i32 %and.i162, %53
  %call3.i170 = call i32 %59(ptr noundef %55, i32 noundef %53, i32 noundef %sub.i169, ptr noundef %bios) #6
  %add4.i171 = add i32 %call3.i170, %53
  %60 = ptrtoint ptr %size.i163 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add4.i171, ptr %size.i163, align 4
  br label %shadow_fetch.exit174

shadow_fetch.exit174:                             ; preds = %if.then.i172, %if.end45.shadow_fetch.exit174_crit_edge
  %61 = ptrtoint ptr %size.i163 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add50)
  %cmp7.i173.not = icmp ult i32 %62, %add50
  br i1 %cmp7.i173.not, label %do.body53, label %if.end70

do.body53:                                        ; preds = %shadow_fetch.exit174
  %63 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp56 = icmp ugt i32 %64, 3
  br i1 %cmp56, label %do.end61, label %do.body53.cleanup_crit_edge

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end61:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %device62 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %65 = ptrtoint ptr %device62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device62, align 4
  %dev63 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev63, align 8
  %name64 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %69 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %image, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.27, ptr noundef %name64, i32 noundef %70) #9
  br label %cleanup

if.end70:                                         ; preds = %shadow_fetch.exit174
  %type71 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 2
  %71 = ptrtoint ptr %type71 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %type71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cond = icmp eq i8 %72, 0
  br i1 %cond, label %sw.bb, label %if.end70.sw.epilog_crit_edge

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end70
  %73 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %func, align 4
  %ignore_checksum = getelementptr inbounds %struct.nvbios_source, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %ignore_checksum to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ignore_checksum, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool74.not = icmp eq i8 %76, 0
  br i1 %tobool74.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %data75 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %77 = ptrtoint ptr %data75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data75, align 4
  %79 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %image, align 4
  %arrayidx = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %size49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size49, align 4
  %call78 = call zeroext i8 @nvbios_checksum(ptr noundef %arrayidx, i32 noundef %82) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call78)
  %tobool80.not = icmp eq i8 %call78, 0
  br i1 %tobool80.not, label %land.lhs.true.sw.epilog_crit_edge, label %do.body82

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body82:                                        ; preds = %land.lhs.true
  %83 = ptrtoint ptr %debug32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %debug32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp85 = icmp ugt i32 %84, 3
  br i1 %cmp85, label %do.end90, label %do.body82.if.end96_crit_edge

do.body82.if.end96_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

do.end90:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %device91 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %85 = ptrtoint ptr %device91 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device91, align 4
  %dev92 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev92, align 8
  %name93 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  %89 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %image, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.30, ptr noundef %name93, i32 noundef %90) #9
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %do.body82.if.end96_crit_edge
  %91 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %func, align 4
  %require_checksum = getelementptr inbounds %struct.nvbios_source, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %require_checksum to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %require_checksum, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool100.not = icmp eq i8 %94, 0
  br i1 %tobool100.not, label %if.then101, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %rw = getelementptr inbounds %struct.nvbios_source, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rw, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool103.not = icmp eq i8 %96, 0
  %spec.select = select i1 %tobool103.not, i32 2, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then101, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end70.sw.epilog_crit_edge
  %score.1 = phi i32 [ %spec.select, %if.then101 ], [ 4, %land.lhs.true.sw.epilog_crit_edge ], [ 4, %sw.bb.sw.epilog_crit_edge ], [ 4, %if.end70.sw.epilog_crit_edge ]
  %last114 = getelementptr inbounds %struct.nvbios_image, ptr %image, i32 0, i32 3
  %97 = ptrtoint ptr %last114 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %last114, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool115.not = icmp eq i8 %98, 0
  br i1 %tobool115.not, label %if.then116, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then116:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %add117 = add i32 %idx, 1
  %99 = ptrtoint ptr %size49 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size49, align 4
  %add119 = add i32 %100, %offset
  %call120 = call fastcc i32 @shadow_image(ptr noundef %bios, i32 noundef %add117, i32 noundef %add119, ptr noundef %mthd)
  %add121 = add i32 %call120, %score.1
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %sw.epilog.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %do.end61, %do.body53.cleanup_crit_edge, %do.end20, %do.body13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end20 ], [ 0, %do.body13.cleanup_crit_edge ], [ 0, %do.end61 ], [ 0, %do.body53.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ], [ %score.1, %sw.epilog.cleanup_crit_edge ], [ %add121, %if.then116 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %image) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_image(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_checksum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @shadow_fw_init(ptr nocapture noundef readonly %bios, ptr noundef %name) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !62
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @shadow_fw_read(ptr nocapture noundef readonly %data, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef readonly %bios) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %length, %offset
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp.not = icmp ugt i32 %add, %1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data1 = getelementptr inbounds %struct.nvkm_bios, ptr %bios, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %data2 = getelementptr inbounds %struct.firmware, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 %offset
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr3, i32 %length)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 186, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 207, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvbios_shadow._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvbios_shadow._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 232, i32 3}
!12 = !{ptr @nvbios_shadow._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvbios_shadow._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 236, i32 2}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvbios_shadow._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvbios_shadow._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 115, i32 3}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @shadow_method._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @shadow_method._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 126, i32 3}
!26 = !{ptr @shadow_method._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @shadow_method._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 65, i32 4}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @shadow_image._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @shadow_image._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 71, i32 4}
!35 = !{ptr @shadow_image._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @shadow_image._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 75, i32 2}
!39 = !{ptr @shadow_image._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @shadow_image._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 79, i32 3}
!43 = !{ptr @shadow_image._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @shadow_image._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 87, i32 4}
!47 = !{ptr @shadow_image._entry.29, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @shadow_image._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 159, i32 10}
!51 = !{ptr @shadow_fw, !52, !"shadow_fw", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c", i32 158, i32 1}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i8 0, i8 2}
