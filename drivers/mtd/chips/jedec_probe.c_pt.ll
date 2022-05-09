; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/jedec_probe.c_pt.bc'
source_filename = "../drivers/mtd/chips/jedec_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.chip_probe = type { ptr, ptr }
%struct.unlock_addr = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amd_flash_info = type { ptr, i16, i16, i8, i8, i16, [6 x i32], i8, i8 }
%union.map_word = type { [8 x i32] }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>

@jedec_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr @jedec_probe, ptr null, ptr null, ptr @.str, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_jedec_probe__201_2310_jedec_probe_init6 = internal global ptr @jedec_probe_init, section ".initcall6.init", align 4
@__exitcall_jedec_probe_exit = internal global ptr @jedec_probe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file202 = internal constant [47 x i8] c"jedec_probe.file=drivers/mtd/chips/jedec_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [24 x i8] c"jedec_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [63 x i8] c"jedec_probe.author=Erwin Authried <eauth@softsys.co.at> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [67 x i8] c"jedec_probe.description=Probe code for JEDEC-compliant flash chips\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@jedec_chip_probe = internal global { %struct.chip_probe, [24 x i8] } { %struct.chip_probe { ptr @.str.1, ptr @jedec_probe_chip }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JEDEC\00", [26 x i8] zeroinitializer }, align 32
@unlock_addrs = internal constant { [9 x %struct.unlock_addr], [56 x i8] } { [9 x %struct.unlock_addr] [%struct.unlock_addr { i32 65535, i32 65535 }, %struct.unlock_addr { i32 1365, i32 682 }, %struct.unlock_addr { i32 1365, i32 2730 }, %struct.unlock_addr { i32 21845, i32 10922 }, %struct.unlock_addr { i32 2730, i32 1364 }, %struct.unlock_addr { i32 2730, i32 1365 }, %struct.unlock_addr { i32 43690, i32 21845 }, %struct.unlock_addr zeroinitializer, %struct.unlock_addr zeroinitializer], [56 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015Probe at base(0x%08x) past the end of the map(0x%08lx)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jedec_probe_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/chips/jedec_probe.c\00", [32 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry_ptr = internal global ptr @jedec_probe_chip._entry, section ".printk_index", align 4
@jedec_probe_chip.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 2, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Search for id:(%02x %02x) interleave(%d) type(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@jedec_table = internal constant { [120 x %struct.amd_flash_info], [1184 x i8] } { [120 x %struct.amd_flash_info] [%struct.amd_flash_info { ptr @.str.30, i16 1, i16 65, i8 22, i8 1, i16 2, [6 x i32] [i32 16777279, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.31, i16 1, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.32, i16 1, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.33, i16 1, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.34, i16 1, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.35, i16 1, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.36, i16 1, i16 8907, i8 20, i8 6, i16 2, [6 x i32] [i32 4194304, i32 8388608, i32 2097155, i32 8388608, i32 4194304, i32 16777229], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.37, i16 1, i16 8778, i8 20, i8 6, i16 2, [6 x i32] [i32 16777229, i32 4194304, i32 8388608, i32 2097155, i32 8388608, i32 4194304], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.38, i16 1, i16 8792, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.39, i16 1, i16 8922, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.40, i16 1, i16 8918, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.41, i16 1, i16 61, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 7 }, %struct.amd_flash_info { ptr @.str.42, i16 1, i16 173, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.43, i16 1, i16 213, i8 20, i8 1, i16 2, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.44, i16 1, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.45, i16 1, i16 79, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.46, i16 1, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.47, i16 1, i16 8938, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.48, i16 1, i16 8811, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.49, i16 31, i16 3, i8 16, i8 1, i16 2, [6 x i32] [i32 16777216, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.50, i16 31, i16 61, i8 16, i8 1, i16 2, [6 x i32] [i32 33023, i32 33023, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.51, i16 31, i16 192, i8 21, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { ptr @.str.52, i16 31, i16 194, i8 21, i8 2, i16 2, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { ptr @.str.53, i16 31, i16 200, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { ptr @.str.54, i16 31, i16 201, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 2 }, %struct.amd_flash_info { ptr @.str.55, i16 28, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.56, i16 28, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.57, i16 28, i16 8938, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.58, i16 28, i16 8811, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.59, i16 4, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 5 }, %struct.amd_flash_info { ptr @.str.60, i16 4, i16 8792, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.61, i16 4, i16 8919, i8 23, i8 1, i16 2, [6 x i32] [i32 16777343, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 7 }, %struct.amd_flash_info { ptr @.str.62, i16 4, i16 8950, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.63, i16 4, i16 8953, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.64, i16 4, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.65, i16 4, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.66, i16 4, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.67, i16 4, i16 8922, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.68, i16 4, i16 8890, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.69, i16 4, i16 8889, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.70, i16 173, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.71, i16 137, i16 213, i8 19, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777222, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.72, i16 137, i16 212, i8 19, i8 2, i16 3, [6 x i32] [i32 16777222, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.73, i16 137, i16 -30571, i8 19, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777222, i32 0, i32 0, i32 0, i32 0], i8 3, i8 8 }, %struct.amd_flash_info { ptr @.str.74, i16 137, i16 -30572, i8 19, i8 2, i16 3, [6 x i32] [i32 16777222, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 8 }, %struct.amd_flash_info { ptr @.str.75, i16 137, i16 211, i8 20, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777230, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.76, i16 137, i16 210, i8 20, i8 2, i16 3, [6 x i32] [i32 16777230, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.77, i16 137, i16 166, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.78, i16 137, i16 160, i8 21, i8 1, i16 1, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.79, i16 137, i16 162, i8 20, i8 1, i16 3, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.80, i16 137, i16 -30573, i8 20, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777230, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.81, i16 137, i16 -30574, i8 20, i8 2, i16 3, [6 x i32] [i32 16777230, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.82, i16 137, i16 209, i8 21, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.83, i16 137, i16 170, i8 21, i8 1, i16 3, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.84, i16 137, i16 208, i8 21, i8 2, i16 3, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.85, i16 137, i16 -30575, i8 21, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777246, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.86, i16 137, i16 -30576, i8 21, i8 2, i16 3, [6 x i32] [i32 16777246, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.87, i16 137, i16 -30569, i8 22, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.88, i16 137, i16 -30570, i8 22, i8 2, i16 3, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.89, i16 137, i16 -30567, i8 23, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.90, i16 137, i16 -30568, i8 23, i8 2, i16 3, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.91, i16 137, i16 -30515, i8 23, i8 2, i16 3, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.92, i16 137, i16 173, i8 19, i8 1, i16 1, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.93, i16 137, i16 172, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.94, i16 194, i16 79, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.95, i16 194, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.96, i16 16, i16 8732, i8 23, i8 3, i16 2, [6 x i32] [i32 2097159, i32 16777341, i32 2097159, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.97, i16 194, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.98, i16 194, i16 164, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.99, i16 194, i16 173, i8 21, i8 1, i16 2, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.100, i16 194, i16 69, i8 19, i8 4, i16 2, [6 x i32] [i32 16777222, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.101, i16 194, i16 70, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.102, i16 194, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.103, i16 157, i16 109, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.104, i16 157, i16 110, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.105, i16 157, i16 106, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.106, i16 176, i16 176, i8 23, i8 2, i16 1, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 2, i8 8 }, %struct.amd_flash_info { ptr @.str.107, i16 191, i16 212, i8 16, i8 1, i16 2, [6 x i32] [i32 1048591, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.108, i16 191, i16 213, i8 17, i8 1, i16 2, [6 x i32] [i32 1048607, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.109, i16 191, i16 16, i8 18, i8 1, i16 258, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.110, i16 191, i16 18, i8 18, i8 1, i16 258, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.111, i16 191, i16 214, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.112, i16 191, i16 215, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.113, i16 191, i16 181, i8 17, i8 1, i16 2, [6 x i32] [i32 1048607, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.114, i16 191, i16 182, i8 18, i8 1, i16 2, [6 x i32] [i32 1048639, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.115, i16 191, i16 183, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.116, i16 191, i16 80, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.117, i16 191, i16 96, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.118, i16 191, i16 90, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.119, i16 191, i16 28, i8 19, i8 1, i16 2, [6 x i32] [i32 1048671, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.120, i16 191, i16 81, i8 19, i8 1, i16 2, [6 x i32] [i32 1048703, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.121, i16 191, i16 91, i8 20, i8 1, i16 2, [6 x i32] [i32 1048831, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 3 }, %struct.amd_flash_info { ptr @.str.122, i16 191, i16 10114, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.123, i16 191, i16 9035, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.124, i16 191, i16 10059, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.125, i16 191, i16 10058, i8 21, i8 2, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 0, i32 0, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.126, i16 191, i16 9051, i8 22, i8 4, i16 2, [6 x i32] [i32 1048831, i32 1048831, i32 1048831, i32 1048831, i32 0, i32 0], i8 2, i8 6 }, %struct.amd_flash_info { ptr @.str.127, i16 191, i16 29524, i8 22, i8 1, i16 2, [6 x i32] [i32 16777279, i32 0, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.128, i16 32, i16 88, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.129, i16 32, i16 8919, i8 20, i8 4, i16 2, [6 x i32] [i32 16777230, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.130, i16 32, i16 8795, i8 20, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777230, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.131, i16 32, i16 238, i8 19, i8 4, i16 2, [6 x i32] [i32 4194310, i32 2097152, i32 8388609, i32 16777216, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.132, i16 32, i16 239, i8 19, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777222, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.133, i16 32, i16 8900, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 1 }, %struct.amd_flash_info { ptr @.str.134, i16 32, i16 8777, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 1 }, %struct.amd_flash_info { ptr @.str.135, i16 32, i16 227, i8 19, i8 1, i16 2, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 1 }, %struct.amd_flash_info { ptr @.str.136, i16 32, i16 44, i8 19, i8 1, i16 1, [6 x i32] [i32 16777223, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.137, i16 32, i16 45, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.138, i16 32, i16 46, i8 21, i8 1, i16 1, [6 x i32] [i32 16777247, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.139, i16 32, i16 47, i8 20, i8 1, i16 1, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.140, i16 32, i16 128, i8 20, i8 4, i16 1, [6 x i32] [i32 1048591, i32 16777228, i32 1048591, i32 1048591, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.141, i16 32, i16 129, i8 20, i8 4, i16 1, [6 x i32] [i32 1048591, i32 1048591, i32 16777228, i32 1048591, i32 0, i32 0], i8 1, i8 8 }, %struct.amd_flash_info { ptr @.str.142, i16 -224, i16 -23, i8 20, i8 1, i16 2, [6 x i32] [i32 16777231, i32 0, i32 0, i32 0, i32 0, i32 0], i8 2, i8 4 }, %struct.amd_flash_info { ptr @.str.143, i16 152, i16 194, i8 21, i8 4, i16 2, [6 x i32] [i32 16777246, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.144, i16 152, i16 67, i8 21, i8 4, i16 2, [6 x i32] [i32 4194304, i32 2097153, i32 8388608, i32 16777246, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.145, i16 152, i16 156, i8 22, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777278, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.146, i16 152, i16 154, i8 22, i8 2, i16 2, [6 x i32] [i32 16777278, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.147, i16 152, i16 149, i8 23, i8 2, i16 2, [6 x i32] [i32 2097159, i32 16777342, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.148, i16 152, i16 147, i8 23, i8 2, i16 2, [6 x i32] [i32 16777342, i32 2097159, i32 0, i32 0, i32 0, i32 0], i8 3, i8 5 }, %struct.amd_flash_info { ptr @.str.149, i16 218, i16 176, i8 18, i8 4, i16 2, [6 x i32] [i32 16777218, i32 8388608, i32 2097153, i32 4194304, i32 0, i32 0], i8 1, i8 3 }], [1184 x i8] zeroinitializer }, align 32
@jedec_probe_chip.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 2, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"MTD %s(): matched device 0x%x,0x%x unlock_addrs: 0x%.4x 0x%.4x\0A\00", [32 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017%s: Found different chip or no chip at all (mfr 0x%x, id 0x%x) at 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry_ptr.9 = internal global ptr @jedec_probe_chip._entry.7, section ".printk_index", align 4
@jedec_probe_chip._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Found an alias at 0x%x for the chip at 0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry_ptr.12 = internal global ptr @jedec_probe_chip._entry.10, section ".printk_index", align 4
@jedec_probe_chip._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 2257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry_ptr.14 = internal global ptr @jedec_probe_chip._entry.13, section ".printk_index", align 4
@jedec_probe_chip._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: Found %d x%d devices at 0x%x in %d-bit bank\0A\00", [45 x i8] zeroinitializer }, align 32
@jedec_probe_chip._entry_ptr.17 = internal global ptr @jedec_probe_chip._entry.15, section ".printk_index", align 4
@jedec_reset.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 1, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_reset\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset unlock called %x %x \0A\00", [36 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 2, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_match\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): ID is not 8bit\0A\00", [42 x i8] zeroinitializer }, align 32
@jedec_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014MTD %s(): Unsupported device type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@jedec_match._entry_ptr = internal global ptr @jedec_match._entry, section ".printk_index", align 4
@jedec_match.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.23, i8 2, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MTD %s(): Check fit 0x%.8x + 0x%.8x = 0x%.8x\0A\00", [50 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.24, i8 2, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MTD %s(): 0x%.4x 0x%.4x %dKiB doesn't fit\0A\00", [53 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.25, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MTD %s(): check unlock addrs 0x%.4x 0x%.4x\0A\00", [52 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.26, i8 2, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MTD %s(): 0x%.4x 0x%.4x did not match\0A\00", [57 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.27, i8 2, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MTD %s(): check ID's disappear when not in ID mode\0A\00", [44 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.28, i8 2, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"MTD %s(): ID 0x%.2x:0x%.2x did not change after reset:\0AYou might need to manually specify JEDEC parameters.\0A\00", [51 x i8] zeroinitializer }, align 32
@jedec_match.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.29, i8 2, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MTD %s(): return to ID mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMD AM29F032B\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV160DT\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV160DB\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV400BB\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV400BT\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV800BB\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29DL800BB\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29DL800BT\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AMD AM29F800BB\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29LV800BT\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AMD AM29F800BT\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMD AM29F017D\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMD AM29F016D\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMD AM29F080\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMD AM29F040\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AMD AM29LV040B\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMD AM29F002T\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29SL800DT\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMD AM29SL800DB\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Atmel AT49BV512\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Atmel AT29LV512\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Atmel AT49BV16X\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Atmel AT49BV16XT\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Atmel AT49BV32X\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Atmel AT49BV32XT\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Eon EN29LV400AT\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Eon EN29LV400AB\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Eon EN29SL800BT\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Eon EN29SL800BB\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Fujitsu MBM29F040C\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fujitsu MBM29F800BA\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV650UE\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV320TE\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV320BE\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV160TE\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV160BE\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV800BA\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV800TA\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV400BC\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu MBM29LV400TC\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hyundai HY29F002T\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F004B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F004B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F400B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F400B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F008B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F008B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel 28F008S5\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel 28F016S5\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel 28F008SA\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F800B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F800B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F016B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel I28F016S3\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F016B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F160B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F160B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F320B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F320B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F640B3B\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F640B3T\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Intel 28F640C3B\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Intel 82802AB\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Intel 82802AC\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Macronix MX29LV040C\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MXIC MX29LV160T\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NEC uPD29F064115\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MXIC MX29LV160B\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Macronix MX29F040\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Macronix MX29F016\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Macronix MX29F004T\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Macronix MX29F004B\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Macronix MX29F002T\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PMC Pm49FL002\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PMC Pm49FL004\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PMC Pm49FL008\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LH28F640BF\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39LF512\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39LF010\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 29EE020\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 29LE020\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39LF020\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39LF040\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39SF010A\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39SF020A\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39SF040\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF040B\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF004B\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF008A\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF030A\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF040A\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 49LF080A\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SST 39LF160\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39VF1601\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39WF1601\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39WF1602\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 39VF3201\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SST 36VF3203\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29F800AB\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W800DT\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W800DB\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W400DT\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W400DB\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W160DT\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M29W160DB\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST M29W040B\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST M50FW040\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST M50FW080\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST M50FW016\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST M50LPW080\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ST M50FLW080A\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ST M50FLW080B\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ST PSD4256G6V\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVT160\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVB160\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVB321\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVT321\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVB641\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Toshiba TC58FVT641\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Winbond W49V002A\00", [47 x i8] zeroinitializer }, align 32
@cfi_jedec_setup.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.4, ptr @.str.151, i8 1, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfi_jedec_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Rejecting potential %s with incompatible %d-bit device type\0A\00", [35 x i8] zeroinitializer }, align 32
@cfi_jedec_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.4, i32 1983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016Found: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@cfi_jedec_setup._entry_ptr = internal global ptr @cfi_jedec_setup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"jedec_chipdrv\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2293, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2295, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"jedec_chip_probe\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2279, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2280, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"unlock_addrs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 220, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2169, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2199, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"jedec_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 296, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2203, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2221, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2244, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2256, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2272, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1955, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2058, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2072, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2082, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2085, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2096, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2101, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2117, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2123, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 2136, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 300, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 312, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 327, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 342, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 357, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 372, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 388, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 405, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 422, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 437, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 452, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 467, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 479, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 491, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 503, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 515, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 527, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 542, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 557, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 572, i32 12 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 584, i32 12 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 597, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 610, i32 12 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 623, i32 12 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 636, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 649, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 664, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 679, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 694, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 709, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 721, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 736, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 748, i32 12 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 761, i32 12 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 774, i32 12 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 789, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 804, i32 12 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 819, i32 12 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 834, i32 12 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 849, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 864, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 879, i32 12 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 892, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 905, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 918, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 931, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 944, i32 12 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 957, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 969, i32 12 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 981, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 993, i32 12 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1006, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1019, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1032, i32 12 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1044, i32 12 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1057, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1070, i32 12 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1083, i32 12 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1096, i32 12 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1109, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1122, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1135, i32 12 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1148, i32 12 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1160, i32 12 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1172, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1184, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1199, i32 12 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1213, i32 12 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1228, i32 12 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1240, i32 12 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1252, i32 12 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1267, i32 12 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1282, i32 12 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1297, i32 12 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1309, i32 12 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1321, i32 12 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1333, i32 12 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1346, i32 12 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1358, i32 12 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1370, i32 12 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1381, i32 12 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1392, i32 12 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1404, i32 12 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1416, i32 12 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1428, i32 12 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1440, i32 12 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1452, i32 12 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1465, i32 12 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1477, i32 12 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1489, i32 12 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1501, i32 12 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1513, i32 12 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1525, i32 12 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1538, i32 12 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1552, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1566, i32 12 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1579, i32 12 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1594, i32 12 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1606, i32 12 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1621, i32 12 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1636, i32 12 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1651, i32 21 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1666, i32 21 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1681, i32 12 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1696, i32 12 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1711, i32 12 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1723, i32 12 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1735, i32 12 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1747, i32 12 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1759, i32 12 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1771, i32 12 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1786, i32 12 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1801, i32 12 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1813, i32 12 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1828, i32 12 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1843, i32 12 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1856, i32 12 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1869, i32 12 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1882, i32 12 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1895, i32 12 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1978, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.619 = private constant [35 x i8] c"../drivers/mtd/chips/jedec_probe.c\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1983, i32 2 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_jedec_probe_exit, ptr @__initcall__kmod_jedec_probe__201_2310_jedec_probe_init6, ptr @cfi_jedec_setup._entry, ptr @cfi_jedec_setup._entry_ptr, ptr @jedec_match._entry, ptr @jedec_match._entry_ptr, ptr @jedec_probe_chip._entry, ptr @jedec_probe_chip._entry.10, ptr @jedec_probe_chip._entry.13, ptr @jedec_probe_chip._entry.15, ptr @jedec_probe_chip._entry.7, ptr @jedec_probe_chip._entry_ptr, ptr @jedec_probe_chip._entry_ptr.12, ptr @jedec_probe_chip._entry_ptr.14, ptr @jedec_probe_chip._entry_ptr.17, ptr @jedec_probe_chip._entry_ptr.9, ptr @jedec_probe_exit, ptr @jedec_chipdrv, ptr @.str, ptr @jedec_chip_probe, ptr @.str.1, ptr @unlock_addrs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jedec_table, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_chip_probe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlock_addrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_table to i32), i32 4800, i32 5984, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe_chip._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe_chip._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe_chip._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_probe_chip._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jedec_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_jedec_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jedec_probe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_mtd_chip_driver(ptr noundef nonnull @jedec_chipdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jedec_probe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_mtd_chip_driver(ptr noundef nonnull @jedec_chipdrv) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @jedec_probe(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtd_do_chip_probe(ptr noundef %map, ptr noundef nonnull @jedec_chip_probe) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_do_chip_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jedec_probe_chip(ptr noundef %map, i32 noundef %base, ptr noundef %chip_map, ptr noundef %cfi) #2 align 64 {
entry:
  %tmp.i448 = alloca %union.map_word, align 4
  %tmp.i428 = alloca %union.map_word, align 4
  %tmp.i418 = alloca %union.map_word, align 4
  %tmp.i398 = alloca %union.map_word, align 4
  %tmp.i388 = alloca %union.map_word, align 4
  %tmp.i368 = alloca %union.map_word, align 4
  %tmp.i358 = alloca %union.map_word, align 4
  %tmp.i338 = alloca %union.map_word, align 4
  %tmp.i329 = alloca %union.map_word, align 4
  %tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 11
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %read.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 9
  %id = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 10
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  %uaddr_idx.0 = phi i32 [ 0, %entry ], [ %uaddr_idx.1, %retry.backedge ]
  %0 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %retry.if.end5_crit_edge

retry.if.end5_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %retry
  %inc = add i32 %uaddr_idx.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp = icmp eq i32 %inc, 8
  br i1 %cmp, label %if.then.cleanup184_crit_edge, label %if.end

if.then.cleanup184_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup184

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_type, align 4
  %div = udiv i32 %3, %5
  %6 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %addr_unlock1, align 4
  %addr2 = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %inc, i32 1
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr2, align 4
  %div4 = udiv i32 %8, %5
  %9 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div4, ptr %addr_unlock2, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %retry.if.end5_crit_edge
  %uaddr_idx.1 = phi i32 [ %uaddr_idx.0, %retry.if.end5_crit_edge ], [ %inc, %if.end ]
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %base)
  %cmp6.not = icmp ugt i32 %11, %base
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %11, -1
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %base, i32 noundef %sub) #11
  br label %cleanup184

if.end9:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_unlock1, align 4
  %call11 = call i32 @cfi_build_cmd_addr(i32 noundef %13, ptr noundef %map, ptr noundef %cfi) #8
  %14 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_unlock2, align 4
  %call13 = call i32 @cfi_build_cmd_addr(i32 noundef %15, ptr noundef %map, ptr noundef %cfi) #8
  %16 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bankwidth, align 4
  %add = add i32 %17, %base
  %add14 = add i32 %add, %call11
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %19)
  %cmp16.not = icmp ult i32 %add14, %19
  %add19 = add i32 %add, %call13
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %19)
  %cmp21.not = icmp ult i32 %add19, %19
  %or.cond = select i1 %cmp16.not, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %if.end23, label %if.end9.retry.backedge_crit_edge

if.end9.retry.backedge_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.backedge

retry.backedge:                                   ; preds = %for.inc.retry.backedge_crit_edge, %if.end9.retry.backedge_crit_edge
  br label %retry

if.end23:                                         ; preds = %if.end9
  call fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi)
  %20 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_unlock1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %if.end23.if.end33_crit_edge, label %if.then26

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_type, align 4
  %call29 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %21, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %23, ptr noundef null) #8
  %24 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr_unlock2, align 4
  %26 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device_type, align 4
  %call32 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %25, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %27, ptr noundef null) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end23.if.end33_crit_edge
  %28 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr_unlock1, align 4
  %30 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_type, align 4
  %call36 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %29, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %31, ptr noundef null) #8
  %32 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool38.not = icmp eq i32 %33, 0
  br i1 %tobool38.not, label %if.end33.do.body.i_crit_edge, label %if.end33.do.body.i346_crit_edge

if.end33.do.body.i346_crit_edge:                  ; preds = %if.end33
  br label %do.body.i346

if.end33.do.body.i_crit_edge:                     ; preds = %if.end33
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end33.do.body.i_crit_edge
  %bank.0.i = phi i32 [ %inc.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end33.do.body.i_crit_edge ]
  %shl.i = shl i32 %bank.0.i, 8
  %call.i = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i, ptr noundef %map, ptr noundef %cfi) #8
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %35)
  %cmp.not.i = icmp ult i32 %call.i, %35
  br i1 %cmp.not.i, label %do.cond.i, label %do.body.i.jedec_read_mfr.exit_crit_edge

do.body.i.jedec_read_mfr.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit

do.cond.i:                                        ; preds = %do.body.i
  %36 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device_type, align 4
  %mul.i = shl i32 %37, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #8
  %38 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i, align 4
  %add2.i = add i32 %call.i, %base
  call void %39(ptr nonnull sret(%union.map_word) align 4 %tmp.i, ptr noundef %map, i32 noundef %add2.i) #8
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %result.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #8
  %inc.i = add i32 %bank.0.i, 1
  %and.i328 = and i32 %result.sroa.0.0.copyload.i, %sub.i
  %cmp3.i = icmp eq i32 %and.i328, 127
  br i1 %cmp3.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.jedec_read_mfr.exit_crit_edge

do.cond.i.jedec_read_mfr.exit_crit_edge:          ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

jedec_read_mfr.exit:                              ; preds = %do.cond.i.jedec_read_mfr.exit_crit_edge, %do.body.i.jedec_read_mfr.exit_crit_edge
  %retval.2.i = phi i32 [ %and.i328, %do.cond.i.jedec_read_mfr.exit_crit_edge ], [ 0, %do.body.i.jedec_read_mfr.exit_crit_edge ]
  %41 = ptrtoint ptr %mfr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.2.i, ptr %mfr, align 4
  %call.i330 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %42 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_type, align 4
  %mul.i332 = shl i32 %43, 3
  %notmask.i333 = shl nsw i32 -1, %mul.i332
  %sub.i334 = xor i32 %notmask.i333, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i329) #8
  %44 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i, align 4
  %add.i = add i32 %call.i330, %base
  call void %45(ptr nonnull sret(%union.map_word) align 4 %tmp.i329, ptr noundef %map, i32 noundef %add.i) #8
  %46 = ptrtoint ptr %tmp.i329 to i32
  call void @__asan_load4_noabort(i32 %46)
  %result.sroa.0.0.copyload.i336 = load i32, ptr %tmp.i329, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i329) #8
  %and.i337 = and i32 %result.sroa.0.0.copyload.i336, %sub.i334
  %47 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i337, ptr %id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_probe_chip.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_probe_chip, %if.then48)) #8
          to label %for.body [label %if.then48], !srcloc !340

if.then48:                                        ; preds = %jedec_read_mfr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mfr, align 4
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %52 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %interleave, align 4
  %54 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %device_type, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_probe_chip.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.5, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then48, %jedec_read_mfr.exit
  %i.0478 = phi i32 [ %inc85, %for.inc.for.body_crit_edge ], [ 0, %jedec_read_mfr.exit ], [ 0, %if.then48 ]
  %arrayidx56 = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %i.0478
  %call57 = call fastcc i32 @jedec_match(i32 noundef %base, ptr noundef %map, ptr noundef %cfi, ptr noundef %arrayidx56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.inc, label %do.body60

do.body60:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_probe_chip.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_probe_chip, %if.then72)) #8
          to label %do.end79 [label %if.then72], !srcloc !340

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mfr, align 4
  %58 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id, align 4
  %60 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr_unlock1, align 4
  %62 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr_unlock2, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_probe_chip.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then72, %do.body60
  %call80 = call fastcc i32 @cfi_jedec_setup(ptr noundef %map, ptr noundef %cfi, i32 noundef %i.0478)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end79.cleanup184_crit_edge, label %do.end79.ok_out_crit_edge

do.end79.ok_out_crit_edge:                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok_out

do.end79.cleanup184_crit_edge:                    ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup184

for.inc:                                          ; preds = %for.body
  %inc85 = add nuw nsw i32 %i.0478, 1
  %exitcond.not = icmp eq i32 %inc85, 120
  br i1 %exitcond.not, label %for.inc.retry.backedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.retry.backedge_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.backedge

do.body.i346:                                     ; preds = %do.cond.i355.do.body.i346_crit_edge, %if.end33.do.body.i346_crit_edge
  %bank.0.i342 = phi i32 [ %inc.i352, %do.cond.i355.do.body.i346_crit_edge ], [ 0, %if.end33.do.body.i346_crit_edge ]
  %shl.i343 = shl i32 %bank.0.i342, 8
  %call.i344 = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i343, ptr noundef %map, ptr noundef %cfi) #8
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i344, i32 %65)
  %cmp.not.i345 = icmp ult i32 %call.i344, %65
  br i1 %cmp.not.i345, label %do.cond.i355, label %do.body.i346.jedec_read_mfr.exit357_crit_edge

do.body.i346.jedec_read_mfr.exit357_crit_edge:    ; preds = %do.body.i346
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit357

do.cond.i355:                                     ; preds = %do.body.i346
  %66 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_type, align 4
  %mul.i347 = shl i32 %67, 3
  %notmask.i348 = shl nsw i32 -1, %mul.i347
  %sub.i349 = xor i32 %notmask.i348, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i338) #8
  %68 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read.i, align 4
  %add2.i350 = add i32 %call.i344, %base
  call void %69(ptr nonnull sret(%union.map_word) align 4 %tmp.i338, ptr noundef %map, i32 noundef %add2.i350) #8
  %70 = ptrtoint ptr %tmp.i338 to i32
  call void @__asan_load4_noabort(i32 %70)
  %result.sroa.0.0.copyload.i351 = load i32, ptr %tmp.i338, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i338) #8
  %inc.i352 = add i32 %bank.0.i342, 1
  %and.i353 = and i32 %result.sroa.0.0.copyload.i351, %sub.i349
  %cmp3.i354 = icmp eq i32 %and.i353, 127
  br i1 %cmp3.i354, label %do.cond.i355.do.body.i346_crit_edge, label %do.cond.i355.jedec_read_mfr.exit357_crit_edge

do.cond.i355.jedec_read_mfr.exit357_crit_edge:    ; preds = %do.cond.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit357

do.cond.i355.do.body.i346_crit_edge:              ; preds = %do.cond.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i346

jedec_read_mfr.exit357:                           ; preds = %do.cond.i355.jedec_read_mfr.exit357_crit_edge, %do.body.i346.jedec_read_mfr.exit357_crit_edge
  %retval.2.i356 = phi i32 [ %and.i353, %do.cond.i355.jedec_read_mfr.exit357_crit_edge ], [ 0, %do.body.i346.jedec_read_mfr.exit357_crit_edge ]
  %call.i359 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %71 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %device_type, align 4
  %mul.i361 = shl i32 %72, 3
  %notmask.i362 = shl nsw i32 -1, %mul.i361
  %sub.i363 = xor i32 %notmask.i362, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i358) #8
  %73 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read.i, align 4
  %add.i365 = add i32 %call.i359, %base
  call void %74(ptr nonnull sret(%union.map_word) align 4 %tmp.i358, ptr noundef %map, i32 noundef %add.i365) #8
  %75 = ptrtoint ptr %tmp.i358 to i32
  call void @__asan_load4_noabort(i32 %75)
  %result.sroa.0.0.copyload.i366 = load i32, ptr %tmp.i358, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i358) #8
  %and.i367 = and i32 %result.sroa.0.0.copyload.i366, %sub.i363
  %conv91 = and i32 %retval.2.i356, 65535
  %76 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv91, i32 %77)
  %cmp93.not = icmp eq i32 %conv91, %77
  %conv96 = and i32 %and.i367, 65535
  br i1 %cmp93.not, label %lor.lhs.false95, label %jedec_read_mfr.exit357.do.end103_crit_edge

jedec_read_mfr.exit357.do.end103_crit_edge:       ; preds = %jedec_read_mfr.exit357
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

lor.lhs.false95:                                  ; preds = %jedec_read_mfr.exit357
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv96, i32 %79)
  %cmp98.not = icmp eq i32 %conv96, %79
  br i1 %cmp98.not, label %for.cond111.preheader, label %lor.lhs.false95.do.end103_crit_edge

lor.lhs.false95.do.end103_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

for.cond111.preheader:                            ; preds = %lor.lhs.false95
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 13
  %80 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chipshift, align 4
  %shr480 = lshr i32 %base, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr480)
  %cmp112481.not = icmp eq i32 %shr480, 0
  br i1 %cmp112481.not, label %for.cond111.preheader.for.end169_crit_edge, label %for.cond111.preheader.for.body114_crit_edge

for.cond111.preheader.for.body114_crit_edge:      ; preds = %for.cond111.preheader
  br label %for.body114

for.cond111.preheader.for.end169_crit_edge:       ; preds = %for.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end169

do.end103:                                        ; preds = %lor.lhs.false95.do.end103_crit_edge, %jedec_read_mfr.exit357.do.end103_crit_edge
  %82 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map, align 4
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %83, i32 noundef %conv91, i32 noundef %conv96, i32 noundef %base) #11
  call fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi)
  br label %cleanup184

for.body114:                                      ; preds = %for.inc167.for.body114_crit_edge, %for.cond111.preheader.for.body114_crit_edge
  %84 = phi i32 [ %142, %for.inc167.for.body114_crit_edge ], [ %81, %for.cond111.preheader.for.body114_crit_edge ]
  %i.1482 = phi i32 [ %inc168, %for.inc167.for.body114_crit_edge ], [ 0, %for.cond111.preheader.for.body114_crit_edge ]
  %div3.i = lshr i32 %i.1482, 5
  %arrayidx.i = getelementptr i32, ptr %chip_map, i32 %div3.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1482, 31
  %87 = shl nuw i32 1, %and.i
  %88 = and i32 %86, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool116.not = icmp eq i32 %88, 0
  br i1 %tobool116.not, label %for.body114.for.inc167_crit_edge, label %if.end118

for.body114.for.inc167_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc167

if.end118:                                        ; preds = %for.body114
  %shl = shl i32 %i.1482, %84
  br label %do.body.i376

do.body.i376:                                     ; preds = %do.cond.i385.do.body.i376_crit_edge, %if.end118
  %bank.0.i372 = phi i32 [ 0, %if.end118 ], [ %inc.i382, %do.cond.i385.do.body.i376_crit_edge ]
  %shl.i373 = shl i32 %bank.0.i372, 8
  %call.i374 = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i373, ptr noundef %map, ptr noundef %cfi) #8
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i374, i32 %90)
  %cmp.not.i375 = icmp ult i32 %call.i374, %90
  br i1 %cmp.not.i375, label %do.cond.i385, label %do.body.i376.jedec_read_mfr.exit387_crit_edge

do.body.i376.jedec_read_mfr.exit387_crit_edge:    ; preds = %do.body.i376
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit387

do.cond.i385:                                     ; preds = %do.body.i376
  %91 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %device_type, align 4
  %mul.i377 = shl i32 %92, 3
  %notmask.i378 = shl nsw i32 -1, %mul.i377
  %sub.i379 = xor i32 %notmask.i378, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i368) #8
  %93 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read.i, align 4
  %add2.i380 = add i32 %call.i374, %shl
  call void %94(ptr nonnull sret(%union.map_word) align 4 %tmp.i368, ptr noundef %map, i32 noundef %add2.i380) #8
  %95 = ptrtoint ptr %tmp.i368 to i32
  call void @__asan_load4_noabort(i32 %95)
  %result.sroa.0.0.copyload.i381 = load i32, ptr %tmp.i368, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i368) #8
  %inc.i382 = add i32 %bank.0.i372, 1
  %and.i383 = and i32 %result.sroa.0.0.copyload.i381, %sub.i379
  %cmp3.i384 = icmp eq i32 %and.i383, 127
  br i1 %cmp3.i384, label %do.cond.i385.do.body.i376_crit_edge, label %do.cond.i385.jedec_read_mfr.exit387_crit_edge

do.cond.i385.jedec_read_mfr.exit387_crit_edge:    ; preds = %do.cond.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit387

do.cond.i385.do.body.i376_crit_edge:              ; preds = %do.cond.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i376

jedec_read_mfr.exit387:                           ; preds = %do.cond.i385.jedec_read_mfr.exit387_crit_edge, %do.body.i376.jedec_read_mfr.exit387_crit_edge
  %retval.2.i386 = phi i32 [ %and.i383, %do.cond.i385.jedec_read_mfr.exit387_crit_edge ], [ 0, %do.body.i376.jedec_read_mfr.exit387_crit_edge ]
  %96 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i386, i32 %97)
  %cmp122 = icmp eq i32 %retval.2.i386, %97
  br i1 %cmp122, label %land.lhs.true, label %jedec_read_mfr.exit387.for.inc167_crit_edge

jedec_read_mfr.exit387.for.inc167_crit_edge:      ; preds = %jedec_read_mfr.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc167

land.lhs.true:                                    ; preds = %jedec_read_mfr.exit387
  %call.i389 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %98 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %device_type, align 4
  %mul.i391 = shl i32 %99, 3
  %notmask.i392 = shl nsw i32 -1, %mul.i391
  %sub.i393 = xor i32 %notmask.i392, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i388) #8
  %100 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read.i, align 4
  %add.i395 = add i32 %call.i389, %shl
  call void %101(ptr nonnull sret(%union.map_word) align 4 %tmp.i388, ptr noundef %map, i32 noundef %add.i395) #8
  %102 = ptrtoint ptr %tmp.i388 to i32
  call void @__asan_load4_noabort(i32 %102)
  %result.sroa.0.0.copyload.i396 = load i32, ptr %tmp.i388, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i388) #8
  %and.i397 = and i32 %result.sroa.0.0.copyload.i396, %sub.i393
  %103 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i397, i32 %104)
  %cmp126 = icmp eq i32 %and.i397, %104
  br i1 %cmp126, label %if.then128, label %land.lhs.true.for.inc167_crit_edge

land.lhs.true.for.inc167_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc167

if.then128:                                       ; preds = %land.lhs.true
  call fastcc void @jedec_reset(i32 noundef %shl, ptr noundef %map, ptr noundef %cfi)
  br label %do.body.i406

do.body.i406:                                     ; preds = %do.cond.i415.do.body.i406_crit_edge, %if.then128
  %bank.0.i402 = phi i32 [ 0, %if.then128 ], [ %inc.i412, %do.cond.i415.do.body.i406_crit_edge ]
  %shl.i403 = shl i32 %bank.0.i402, 8
  %call.i404 = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i403, ptr noundef %map, ptr noundef %cfi) #8
  %105 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i404, i32 %106)
  %cmp.not.i405 = icmp ult i32 %call.i404, %106
  br i1 %cmp.not.i405, label %do.cond.i415, label %do.body.i406.jedec_read_mfr.exit417_crit_edge

do.body.i406.jedec_read_mfr.exit417_crit_edge:    ; preds = %do.body.i406
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit417

do.cond.i415:                                     ; preds = %do.body.i406
  %107 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %device_type, align 4
  %mul.i407 = shl i32 %108, 3
  %notmask.i408 = shl nsw i32 -1, %mul.i407
  %sub.i409 = xor i32 %notmask.i408, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i398) #8
  %109 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read.i, align 4
  %add2.i410 = add i32 %call.i404, %base
  call void %110(ptr nonnull sret(%union.map_word) align 4 %tmp.i398, ptr noundef %map, i32 noundef %add2.i410) #8
  %111 = ptrtoint ptr %tmp.i398 to i32
  call void @__asan_load4_noabort(i32 %111)
  %result.sroa.0.0.copyload.i411 = load i32, ptr %tmp.i398, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i398) #8
  %inc.i412 = add i32 %bank.0.i402, 1
  %and.i413 = and i32 %result.sroa.0.0.copyload.i411, %sub.i409
  %cmp3.i414 = icmp eq i32 %and.i413, 127
  br i1 %cmp3.i414, label %do.cond.i415.do.body.i406_crit_edge, label %do.cond.i415.jedec_read_mfr.exit417_crit_edge

do.cond.i415.jedec_read_mfr.exit417_crit_edge:    ; preds = %do.cond.i415
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit417

do.cond.i415.do.body.i406_crit_edge:              ; preds = %do.cond.i415
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i406

jedec_read_mfr.exit417:                           ; preds = %do.cond.i415.jedec_read_mfr.exit417_crit_edge, %do.body.i406.jedec_read_mfr.exit417_crit_edge
  %retval.2.i416 = phi i32 [ %and.i413, %do.cond.i415.jedec_read_mfr.exit417_crit_edge ], [ 0, %do.body.i406.jedec_read_mfr.exit417_crit_edge ]
  %112 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i416, i32 %113)
  %cmp131.not = icmp eq i32 %retval.2.i416, %113
  br i1 %cmp131.not, label %lor.lhs.false133, label %jedec_read_mfr.exit417.do.end141_crit_edge

jedec_read_mfr.exit417.do.end141_crit_edge:       ; preds = %jedec_read_mfr.exit417
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end141

lor.lhs.false133:                                 ; preds = %jedec_read_mfr.exit417
  %call.i419 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %114 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %device_type, align 4
  %mul.i421 = shl i32 %115, 3
  %notmask.i422 = shl nsw i32 -1, %mul.i421
  %sub.i423 = xor i32 %notmask.i422, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i418) #8
  %116 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read.i, align 4
  %add.i425 = add i32 %call.i419, %base
  call void %117(ptr nonnull sret(%union.map_word) align 4 %tmp.i418, ptr noundef %map, i32 noundef %add.i425) #8
  %118 = ptrtoint ptr %tmp.i418 to i32
  call void @__asan_load4_noabort(i32 %118)
  %result.sroa.0.0.copyload.i426 = load i32, ptr %tmp.i418, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i418) #8
  %and.i427 = and i32 %result.sroa.0.0.copyload.i426, %sub.i423
  %119 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i427, i32 %120)
  %cmp136.not = icmp eq i32 %and.i427, %120
  br i1 %cmp136.not, label %if.end145, label %lor.lhs.false133.do.end141_crit_edge

lor.lhs.false133.do.end141_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end141

do.end141:                                        ; preds = %lor.lhs.false133.do.end141_crit_edge, %jedec_read_mfr.exit417.do.end141_crit_edge
  %121 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %map, align 4
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %122, i32 noundef %base, i32 noundef %shl) #11
  br label %cleanup184

if.end145:                                        ; preds = %lor.lhs.false133
  call fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi)
  br label %do.body.i436

do.body.i436:                                     ; preds = %do.cond.i445.do.body.i436_crit_edge, %if.end145
  %bank.0.i432 = phi i32 [ 0, %if.end145 ], [ %inc.i442, %do.cond.i445.do.body.i436_crit_edge ]
  %shl.i433 = shl i32 %bank.0.i432, 8
  %call.i434 = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i433, ptr noundef %map, ptr noundef %cfi) #8
  %123 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i434, i32 %124)
  %cmp.not.i435 = icmp ult i32 %call.i434, %124
  br i1 %cmp.not.i435, label %do.cond.i445, label %do.body.i436.jedec_read_mfr.exit447_crit_edge

do.body.i436.jedec_read_mfr.exit447_crit_edge:    ; preds = %do.body.i436
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit447

do.cond.i445:                                     ; preds = %do.body.i436
  %125 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %device_type, align 4
  %mul.i437 = shl i32 %126, 3
  %notmask.i438 = shl nsw i32 -1, %mul.i437
  %sub.i439 = xor i32 %notmask.i438, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i428) #8
  %127 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read.i, align 4
  %add2.i440 = add i32 %call.i434, %base
  call void %128(ptr nonnull sret(%union.map_word) align 4 %tmp.i428, ptr noundef %map, i32 noundef %add2.i440) #8
  %129 = ptrtoint ptr %tmp.i428 to i32
  call void @__asan_load4_noabort(i32 %129)
  %result.sroa.0.0.copyload.i441 = load i32, ptr %tmp.i428, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i428) #8
  %inc.i442 = add i32 %bank.0.i432, 1
  %and.i443 = and i32 %result.sroa.0.0.copyload.i441, %sub.i439
  %cmp3.i444 = icmp eq i32 %and.i443, 127
  br i1 %cmp3.i444, label %do.cond.i445.do.body.i436_crit_edge, label %do.cond.i445.jedec_read_mfr.exit447_crit_edge

do.cond.i445.jedec_read_mfr.exit447_crit_edge:    ; preds = %do.cond.i445
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit447

do.cond.i445.do.body.i436_crit_edge:              ; preds = %do.cond.i445
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i436

jedec_read_mfr.exit447:                           ; preds = %do.cond.i445.jedec_read_mfr.exit447_crit_edge, %do.body.i436.jedec_read_mfr.exit447_crit_edge
  %retval.2.i446 = phi i32 [ %and.i443, %do.cond.i445.jedec_read_mfr.exit447_crit_edge ], [ 0, %do.body.i436.jedec_read_mfr.exit447_crit_edge ]
  %130 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mfr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i446, i32 %131)
  %cmp148 = icmp eq i32 %retval.2.i446, %131
  br i1 %cmp148, label %land.lhs.true150, label %jedec_read_mfr.exit447.for.inc167_crit_edge

jedec_read_mfr.exit447.for.inc167_crit_edge:      ; preds = %jedec_read_mfr.exit447
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc167

land.lhs.true150:                                 ; preds = %jedec_read_mfr.exit447
  %call.i449 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %132 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %device_type, align 4
  %mul.i451 = shl i32 %133, 3
  %notmask.i452 = shl nsw i32 -1, %mul.i451
  %sub.i453 = xor i32 %notmask.i452, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i448) #8
  %134 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read.i, align 4
  %add.i455 = add i32 %call.i449, %base
  call void %135(ptr nonnull sret(%union.map_word) align 4 %tmp.i448, ptr noundef %map, i32 noundef %add.i455) #8
  %136 = ptrtoint ptr %tmp.i448 to i32
  call void @__asan_load4_noabort(i32 %136)
  %result.sroa.0.0.copyload.i456 = load i32, ptr %tmp.i448, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i448) #8
  %and.i457 = and i32 %result.sroa.0.0.copyload.i456, %sub.i453
  %137 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i457, i32 %138)
  %cmp153 = icmp eq i32 %and.i457, %138
  br i1 %cmp153, label %do.end158, label %land.lhs.true150.for.inc167_crit_edge

land.lhs.true150.for.inc167_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc167

do.end158:                                        ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map, align 4
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %140, i32 noundef %base, i32 noundef %shl) #11
  br label %cleanup184

for.inc167:                                       ; preds = %land.lhs.true150.for.inc167_crit_edge, %jedec_read_mfr.exit447.for.inc167_crit_edge, %land.lhs.true.for.inc167_crit_edge, %jedec_read_mfr.exit387.for.inc167_crit_edge, %for.body114.for.inc167_crit_edge
  %inc168 = add nuw i32 %i.1482, 1
  %141 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %chipshift, align 4
  %shr = lshr i32 %base, %142
  %cmp112 = icmp ult i32 %inc168, %shr
  br i1 %cmp112, label %for.inc167.for.body114_crit_edge, label %for.inc167.for.end169_crit_edge

for.inc167.for.end169_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end169

for.inc167.for.body114_crit_edge:                 ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body114

for.end169:                                       ; preds = %for.inc167.for.end169_crit_edge, %for.cond111.preheader.for.end169_crit_edge
  %shr.lcssa = phi i32 [ 0, %for.cond111.preheader.for.end169_crit_edge ], [ %shr, %for.inc167.for.end169_crit_edge ]
  call void @_set_bit(i32 noundef %shr.lcssa, ptr noundef %chip_map) #8
  %143 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %numchips, align 4
  %inc173 = add i32 %144, 1
  store i32 %inc173, ptr %numchips, align 4
  br label %ok_out

ok_out:                                           ; preds = %for.end169, %do.end79.ok_out_crit_edge
  call fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi)
  %145 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %map, align 4
  %147 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %interleave, align 4
  %149 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %device_type, align 4
  %mul = shl i32 %150, 3
  %151 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bankwidth, align 4
  %mul182 = shl i32 %152, 3
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %146, i32 noundef %148, i32 noundef %mul, i32 noundef %base, i32 noundef %mul182) #11
  br label %cleanup184

cleanup184:                                       ; preds = %ok_out, %do.end158, %do.end141, %do.end103, %do.end79.cleanup184_crit_edge, %do.end, %if.then.cleanup184_crit_edge
  %retval.3 = phi i32 [ 0, %do.end ], [ 1, %ok_out ], [ 0, %do.end79.cleanup184_crit_edge ], [ 0, %do.end103 ], [ 0, %do.end158 ], [ 0, %do.end141 ], [ 0, %if.then.cleanup184_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_build_cmd_addr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %0 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_unlock1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_reset.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_reset, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !340

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_unlock1, align 4
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %4 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_unlock2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_reset.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %6 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_unlock1, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %8 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_type, align 4
  %call7 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %7, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %9, ptr noundef null) #8
  %addr_unlock28 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %10 = ptrtoint ptr %addr_unlock28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_unlock28, align 4
  %12 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_type, align 4
  %call10 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %11, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %13, ptr noundef null) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %14 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_unlock1, align 4
  %device_type13 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %16 = ptrtoint ptr %device_type13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_type13, align 4
  %call14 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef %15, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %17, ptr noundef null) #8
  %18 = ptrtoint ptr %device_type13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_type13, align 4
  %call16 = tail call i32 @cfi_send_gen_cmd(i8 noundef zeroext -1, i32 noundef 0, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %19, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jedec_match(i32 noundef %base, ptr noundef %map, ptr noundef %cfi, ptr nocapture noundef readonly %finfo) unnamed_addr #5 align 64 {
entry:
  %tmp.i309 = alloca %union.map_word, align 4
  %tmp.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %0 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end23 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %entry.sw.epilog.sink.split_crit_edge326
  ]

entry.sw.epilog.sink.split_crit_edge326:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  %mfr_id = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 1
  %3 = ptrtoint ptr %mfr_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mfr_id, align 4
  %5 = and i16 %4, 255
  %dev_id = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 2
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dev_id, align 2
  %8 = and i16 %7, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp = icmp ugt i16 %7, 255
  br i1 %cmp, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then9)) #8
          to label %match_done [label %if.then9], !srcloc !340

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20) #8
  br label %match_done

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %1) #11
  br label %match_done

sw.epilog.sink.split:                             ; preds = %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge326
  %mfr_id17 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 1
  %9 = ptrtoint ptr %mfr_id17 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mfr_id17, align 4
  %dev_id19 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 2
  %11 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dev_id19, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge
  %id.0.in = phi i16 [ %8, %sw.bb.sw.epilog_crit_edge ], [ %12, %sw.epilog.sink.split ]
  %mfr.0.in = phi i16 [ %5, %sw.bb.sw.epilog_crit_edge ], [ %10, %sw.epilog.sink.split ]
  %mfr.0 = zext i16 %mfr.0.in to i32
  %mfr27 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 9
  %13 = ptrtoint ptr %mfr27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mfr27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mfr.0)
  %cmp28.not = icmp eq i32 %14, %mfr.0
  br i1 %cmp28.not, label %lor.lhs.false, label %sw.epilog.match_done_crit_edge

sw.epilog.match_done_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_done

lor.lhs.false:                                    ; preds = %sw.epilog
  %id.0 = zext i16 %id.0.in to i32
  %id30 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 10
  %15 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %id.0)
  %cmp31.not = icmp eq i32 %16, %id.0
  br i1 %cmp31.not, label %do.body35, label %lor.lhs.false.match_done_crit_edge

lor.lhs.false.match_done_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_done

do.body35:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then47)) #8
          to label %do.end54 [label %if.then47], !srcloc !340

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %dev_size = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 3
  %17 = ptrtoint ptr %dev_size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dev_size, align 4
  %conv48 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv48
  %add = add i32 %shl, %base
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %base, i32 noundef %shl, i32 noundef %add) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %do.body35
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  %19 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interleave, align 4
  %dev_size55 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 3
  %21 = ptrtoint ptr %dev_size55 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dev_size55, align 4
  %conv56 = zext i8 %22 to i32
  %mul = shl i32 %20, %conv56
  %add58 = add i32 %mul, %base
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add58, i32 %24)
  %cmp59 = icmp ugt i32 %add58, %24
  br i1 %cmp59, label %do.body62, label %if.end85

do.body62:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then74)) #8
          to label %match_done [label %if.then74], !srcloc !340

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %mfr_id75 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 1
  %25 = ptrtoint ptr %mfr_id75 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mfr_id75, align 4
  %conv76 = zext i16 %26 to i32
  %dev_id77 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 2
  %27 = ptrtoint ptr %dev_id77 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dev_id77, align 2
  %conv78 = zext i16 %28 to i32
  %29 = ptrtoint ptr %dev_size55 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dev_size55, align 4
  %conv80 = zext i8 %30 to i32
  %shl81 = shl nuw i32 1, %conv80
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef %conv76, i32 noundef %conv78, i32 noundef %shl81) #8
  br label %match_done

if.end85:                                         ; preds = %do.end54
  %devtypes = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 7
  %31 = ptrtoint ptr %devtypes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %devtypes, align 4
  %conv86 = zext i8 %32 to i32
  %33 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_type, align 4
  %and = and i32 %34, %conv86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  br i1 %tobool88.not, label %if.end85.match_done_crit_edge, label %if.end90

if.end85.match_done_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_done

if.end90:                                         ; preds = %if.end85
  %uaddr91 = getelementptr inbounds %struct.amd_flash_info, ptr %finfo, i32 0, i32 8
  %35 = ptrtoint ptr %uaddr91 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %uaddr91, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then104)) #8
          to label %do.end107 [label %if.then104], !srcloc !340

if.then104:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %37 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr_unlock1, align 4
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %39 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr_unlock2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.20, i32 noundef %38, i32 noundef %40) #8
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %if.end90
  %conv108 = zext i8 %36 to i32
  %.off = add i8 %36, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %do.end107.do.body151_crit_edge, label %land.lhs.true114

do.end107.do.body151_crit_edge:                   ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body151

land.lhs.true114:                                 ; preds = %do.end107
  %arrayidx = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %conv108
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_type, align 4
  %div = udiv i32 %42, %44
  %addr_unlock1116 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %45 = ptrtoint ptr %addr_unlock1116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr_unlock1116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %46)
  %cmp117.not = icmp eq i32 %div, %46
  br i1 %cmp117.not, label %lor.lhs.false119, label %land.lhs.true114.do.body128_crit_edge

land.lhs.true114.do.body128_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

lor.lhs.false119:                                 ; preds = %land.lhs.true114
  %addr2 = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %conv108, i32 1
  %47 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr2, align 4
  %div123 = udiv i32 %48, %44
  %addr_unlock2124 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %49 = ptrtoint ptr %addr_unlock2124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr_unlock2124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div123, i32 %50)
  %cmp125.not = icmp eq i32 %div123, %50
  br i1 %cmp125.not, label %lor.lhs.false119.do.body151_crit_edge, label %lor.lhs.false119.do.body128_crit_edge

lor.lhs.false119.do.body128_crit_edge:            ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

lor.lhs.false119.do.body151_crit_edge:            ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body151

do.body128:                                       ; preds = %lor.lhs.false119.do.body128_crit_edge, %land.lhs.true114.do.body128_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then140)) #8
          to label %match_done [label %if.then140], !srcloc !340

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %addr2146 = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %conv108, i32 1
  %51 = ptrtoint ptr %addr2146 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr2146, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef %42, i32 noundef %52) #8
  br label %match_done

do.body151:                                       ; preds = %lor.lhs.false119.do.body151_crit_edge, %do.end107.do.body151_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then163)) #8
          to label %do.end166 [label %if.then163], !srcloc !340

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug196, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20) #8
  br label %do.end166

do.end166:                                        ; preds = %if.then163, %do.body151
  tail call fastcc void @jedec_reset(i32 noundef %base, ptr noundef %map, ptr noundef %cfi)
  %read.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.end166
  %bank.0.i = phi i32 [ 0, %do.end166 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %shl.i = shl i32 %bank.0.i, 8
  %call.i = call i32 @cfi_build_cmd_addr(i32 noundef %shl.i, ptr noundef %map, ptr noundef %cfi) #8
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %54)
  %cmp.not.i = icmp ult i32 %call.i, %54
  br i1 %cmp.not.i, label %do.cond.i, label %do.body.i.jedec_read_mfr.exit_crit_edge

do.body.i.jedec_read_mfr.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit

do.cond.i:                                        ; preds = %do.body.i
  %55 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %device_type, align 4
  %mul.i = shl i32 %56, 3
  %notmask.i = shl nsw i32 -1, %mul.i
  %sub.i = xor i32 %notmask.i, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #8
  %57 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read.i, align 4
  %add2.i = add i32 %call.i, %base
  call void %58(ptr nonnull sret(%union.map_word) align 4 %tmp.i, ptr noundef %map, i32 noundef %add2.i) #8
  %59 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %result.sroa.0.0.copyload.i = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #8
  %inc.i = add i32 %bank.0.i, 1
  %and.i = and i32 %result.sroa.0.0.copyload.i, %sub.i
  %cmp3.i = icmp eq i32 %and.i, 127
  br i1 %cmp3.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.jedec_read_mfr.exit_crit_edge

do.cond.i.jedec_read_mfr.exit_crit_edge:          ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jedec_read_mfr.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

jedec_read_mfr.exit:                              ; preds = %do.cond.i.jedec_read_mfr.exit_crit_edge, %do.body.i.jedec_read_mfr.exit_crit_edge
  %retval.2.i = phi i32 [ %and.i, %do.cond.i.jedec_read_mfr.exit_crit_edge ], [ 0, %do.body.i.jedec_read_mfr.exit_crit_edge ]
  %call.i310 = call i32 @cfi_build_cmd_addr(i32 noundef 1, ptr noundef %map, ptr noundef %cfi) #8
  %60 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %device_type, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i309) #8
  %62 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read.i, align 4
  %add.i = add i32 %call.i310, %base
  call void %63(ptr nonnull sret(%union.map_word) align 4 %tmp.i309, ptr noundef %map, i32 noundef %add.i) #8
  %64 = ptrtoint ptr %tmp.i309 to i32
  call void @__asan_load4_noabort(i32 %64)
  %result.sroa.0.0.copyload.i316 = load i32, ptr %tmp.i309, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i309) #8
  %65 = ptrtoint ptr %mfr27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mfr27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i, i32 %66)
  %cmp170 = icmp eq i32 %retval.2.i, %66
  br i1 %cmp170, label %land.lhs.true172, label %jedec_read_mfr.exit.if.end195_crit_edge

jedec_read_mfr.exit.if.end195_crit_edge:          ; preds = %jedec_read_mfr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

land.lhs.true172:                                 ; preds = %jedec_read_mfr.exit
  %mul.i312 = shl i32 %61, 3
  %notmask.i313 = shl nsw i32 -1, %mul.i312
  %sub.i314 = xor i32 %notmask.i313, -1
  %and.i317 = and i32 %result.sroa.0.0.copyload.i316, %sub.i314
  %67 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i317, i32 %68)
  %cmp174 = icmp eq i32 %and.i317, %68
  br i1 %cmp174, label %do.body177, label %land.lhs.true172.if.end195_crit_edge

land.lhs.true172.if.end195_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

do.body177:                                       ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then189)) #8
          to label %match_done [label %if.then189], !srcloc !340

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %mfr27 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mfr27, align 4
  %71 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id30, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug197, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.20, i32 noundef %70, i32 noundef %72) #8
  br label %match_done

if.end195:                                        ; preds = %land.lhs.true172.if.end195_crit_edge, %jedec_read_mfr.exit.if.end195_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jedec_match.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jedec_match, %if.then208)) #8
          to label %do.end211 [label %if.then208], !srcloc !340

if.then208:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @jedec_match.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.20) #8
  br label %do.end211

do.end211:                                        ; preds = %if.then208, %if.end195
  %addr_unlock1212 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %73 = ptrtoint ptr %addr_unlock1212 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr_unlock1212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool213.not = icmp eq i32 %74, 0
  br i1 %tobool213.not, label %do.end211.if.end221_crit_edge, label %if.then214

do.end211.if.end221_crit_edge:                    ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then214:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %device_type, align 4
  %call217 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -86, i32 noundef %74, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %76, ptr noundef null) #8
  %addr_unlock2218 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %77 = ptrtoint ptr %addr_unlock2218 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr_unlock2218, align 4
  %79 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %device_type, align 4
  %call220 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext 85, i32 noundef %78, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %80, ptr noundef null) #8
  br label %if.end221

if.end221:                                        ; preds = %if.then214, %do.end211.if.end221_crit_edge
  %81 = ptrtoint ptr %addr_unlock1212 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr_unlock1212, align 4
  %83 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %device_type, align 4
  %call224 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -112, i32 noundef %82, i32 noundef %base, ptr noundef %map, ptr noundef %cfi, i32 noundef %84, ptr noundef null) #8
  br label %match_done

match_done:                                       ; preds = %if.end221, %if.then189, %do.body177, %if.then140, %do.body128, %if.end85.match_done_crit_edge, %if.then74, %do.body62, %lor.lhs.false.match_done_crit_edge, %sw.epilog.match_done_crit_edge, %do.end23, %if.then9, %do.body
  %rc.0 = phi i32 [ 0, %do.end23 ], [ 0, %sw.epilog.match_done_crit_edge ], [ 0, %lor.lhs.false.match_done_crit_edge ], [ 0, %if.then74 ], [ 0, %if.then140 ], [ 0, %if.then189 ], [ 1, %if.end221 ], [ 0, %if.end85.match_done_crit_edge ], [ 0, %if.then9 ], [ 0, %do.body ], [ 0, %do.body62 ], [ 0, %do.body128 ], [ 0, %do.body177 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfi_jedec_setup(ptr noundef %map, ptr noundef %cfi, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %tmp31 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index
  %devtypes = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 7
  %0 = ptrtoint ptr %devtypes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %devtypes, align 4
  %conv = zext i8 %1 to i32
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_type, align 4
  %and = and i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfi_jedec_setup.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cfi_jedec_setup, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !340

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_type, align 4
  %mul = shl i32 4, %7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfi_jedec_setup.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.151, ptr noundef %5, i32 noundef %mul) #8
  br label %cleanup

do.end10:                                         ; preds = %entry
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %9) #11
  %nr_regions = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 4
  %10 = ptrtoint ptr %nr_regions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_regions, align 1
  %conv16 = zext i8 %11 to i32
  %mul17 = shl nuw nsw i32 %conv16, 2
  %add = add nuw nsw i32 %mul17, 29
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 8
  %12 = ptrtoint ptr %cfiq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %cfiq, align 4
  %tobool20.not = icmp eq ptr %call9.i, null
  br i1 %tobool20.not, label %do.end10.cleanup_crit_edge, label %for.body.preheader

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %do.end10
  %13 = call ptr @memset(ptr %call9.i, i32 0, i32 29)
  %cmd_set = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 5
  %14 = ptrtoint ptr %cmd_set to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_set, align 2
  %P_ID = getelementptr inbounds %struct.cfi_ident, ptr %call9.i, i32 0, i32 1
  %16 = ptrtoint ptr %P_ID to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %P_ID, align 1
  %NumEraseRegions = getelementptr inbounds %struct.cfi_ident, ptr %call9.i, i32 0, i32 20
  %17 = ptrtoint ptr %NumEraseRegions to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %11, ptr %NumEraseRegions, align 4
  %dev_size = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 3
  %18 = ptrtoint ptr %dev_size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dev_size, align 4
  %DevSize = getelementptr inbounds %struct.cfi_ident, ptr %call9.i, i32 0, i32 17
  %20 = ptrtoint ptr %DevSize to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %DevSize, align 1
  %cfi_mode = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 4
  %21 = ptrtoint ptr %cfi_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cfi_mode, align 4
  %sector_erase_cmd = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp31) #8
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp31, i32 noundef 48, ptr noundef %map, ptr noundef %cfi) #8
  %22 = call ptr @memcpy(ptr %sector_erase_cmd, ptr %tmp31, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp31) #8
  %umax = call i32 @llvm.umax.i32(i32 %conv16, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx34 = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 6, i32 %i.086
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx34, align 4
  %25 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfiq, align 4
  %arrayidx36 = getelementptr %struct.cfi_ident, ptr %26, i32 0, i32 21, i32 %i.086
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %24, ptr %arrayidx36, align 1
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 1
  %28 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cmdset_priv, align 4
  %mfr_id = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 1
  %29 = ptrtoint ptr %mfr_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mfr_id, align 4
  %conv38 = zext i16 %30 to i32
  %mfr = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 9
  %31 = ptrtoint ptr %mfr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv38, ptr %mfr, align 4
  %dev_id = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 2
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dev_id, align 2
  %conv40 = zext i16 %33 to i32
  %id = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 10
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv40, ptr %id, align 4
  %uaddr42 = getelementptr [120 x %struct.amd_flash_info], ptr @jedec_table, i32 0, i32 %index, i32 8
  %35 = ptrtoint ptr %uaddr42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %uaddr42, align 1
  %idxprom = zext i8 %36 to i32
  %arrayidx43 = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx43, align 4
  %39 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device_type, align 4
  %div = udiv i32 %38, %40
  %addr_unlock1 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 5
  %41 = ptrtoint ptr %addr_unlock1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div, ptr %addr_unlock1, align 4
  %addr2 = getelementptr [9 x %struct.unlock_addr], ptr @unlock_addrs, i32 0, i32 %idxprom, i32 1
  %42 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr2, align 4
  %div48 = udiv i32 %43, %40
  %addr_unlock2 = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 6
  %44 = ptrtoint ptr %addr_unlock2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div48, ptr %addr_unlock2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end10.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then4 ], [ 0, %do.end10.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_build_cmd(ptr sret(%union.map_word) align 4, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_chip_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !326, !327, !329, !330}
!llvm.module.flags = !{!331, !332, !333, !334, !335, !336, !337, !338}
!llvm.ident = !{!339}

!0 = !{ptr @__initcall__kmod_jedec_probe__201_2310_jedec_probe_init6, !1, !"__initcall__kmod_jedec_probe__201_2310_jedec_probe_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2310, i32 1}
!2 = !{ptr @__exitcall_jedec_probe_exit, !3, !"__exitcall_jedec_probe_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2311, i32 1}
!4 = !{ptr @__UNIQUE_ID_file202, !5, !"__UNIQUE_ID_file202", i1 false, i1 false}
!5 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2313, i32 1}
!6 = !{ptr @__UNIQUE_ID_license203, !5, !"__UNIQUE_ID_license203", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author204, !8, !"__UNIQUE_ID_author204", i1 false, i1 false}
!8 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2314, i32 1}
!9 = !{ptr @__UNIQUE_ID_description205, !10, !"__UNIQUE_ID_description205", i1 false, i1 false}
!10 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2315, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2295, i32 10}
!13 = !{ptr @jedec_chipdrv, !14, !"jedec_chipdrv", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2293, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2280, i32 10}
!17 = !{ptr @jedec_chip_probe, !18, !"jedec_chip_probe", i1 false, i1 false}
!18 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2279, i32 26}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2169, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jedec_probe_chip._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @jedec_probe_chip._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2199, i32 3}
!27 = !{ptr @jedec_probe_chip.__UNIQUE_ID_ddebug199, !26, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2203, i32 5}
!30 = !{ptr @jedec_probe_chip.__UNIQUE_ID_ddebug200, !29, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2221, i32 4}
!33 = !{ptr @jedec_probe_chip._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @jedec_probe_chip._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2244, i32 5}
!37 = !{ptr @jedec_probe_chip._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @jedec_probe_chip._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @jedec_probe_chip._entry.13, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2256, i32 5}
!41 = !{ptr @jedec_probe_chip._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2272, i32 2}
!44 = !{ptr @jedec_probe_chip._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @jedec_probe_chip._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @unlock_addrs, !47, !"unlock_addrs", i1 false, i1 false}
!47 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 220, i32 34}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1955, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @jedec_reset.__UNIQUE_ID_ddebug189, !49, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2058, i32 4}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @jedec_match.__UNIQUE_ID_ddebug191, !53, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2072, i32 3}
!58 = !{ptr @jedec_match._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @jedec_match._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2082, i32 2}
!62 = !{ptr @jedec_match.__UNIQUE_ID_ddebug192, !61, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2085, i32 3}
!65 = !{ptr @jedec_match.__UNIQUE_ID_ddebug193, !64, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2096, i32 2}
!68 = !{ptr @jedec_match.__UNIQUE_ID_ddebug194, !67, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2101, i32 3}
!71 = !{ptr @jedec_match.__UNIQUE_ID_ddebug195, !70, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2117, i32 2}
!74 = !{ptr @jedec_match.__UNIQUE_ID_ddebug196, !73, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2123, i32 3}
!77 = !{ptr @jedec_match.__UNIQUE_ID_ddebug197, !76, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 2136, i32 2}
!80 = !{ptr @jedec_match.__UNIQUE_ID_ddebug198, !79, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 300, i32 12}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 312, i32 12}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 327, i32 12}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 342, i32 12}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 357, i32 12}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 372, i32 12}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 388, i32 12}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 405, i32 12}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 422, i32 12}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 437, i32 12}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 452, i32 12}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 467, i32 12}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 479, i32 12}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 491, i32 12}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 503, i32 12}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 515, i32 12}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 527, i32 12}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 542, i32 12}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 557, i32 12}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 572, i32 12}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 584, i32 12}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 597, i32 12}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 610, i32 12}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 623, i32 12}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 636, i32 12}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 649, i32 12}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 664, i32 12}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 679, i32 12}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 694, i32 12}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 709, i32 12}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 721, i32 12}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 736, i32 12}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 748, i32 12}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 761, i32 12}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 774, i32 12}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 789, i32 12}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 804, i32 12}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 819, i32 12}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 834, i32 12}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 849, i32 12}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 864, i32 12}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 879, i32 12}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 892, i32 12}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 905, i32 12}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 918, i32 12}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 931, i32 12}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 944, i32 12}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 957, i32 12}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 969, i32 12}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 981, i32 12}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 993, i32 12}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1006, i32 12}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1019, i32 12}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1032, i32 12}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1044, i32 12}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1057, i32 12}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1070, i32 12}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1083, i32 12}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1096, i32 12}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1109, i32 12}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1122, i32 12}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1135, i32 12}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1148, i32 12}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1160, i32 12}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1172, i32 12}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1184, i32 12}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1199, i32 12}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1213, i32 12}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1228, i32 12}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1240, i32 12}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1252, i32 12}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1267, i32 12}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1282, i32 12}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1297, i32 12}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1309, i32 12}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1321, i32 12}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1333, i32 12}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1346, i32 12}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1358, i32 12}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1370, i32 12}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1381, i32 12}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1392, i32 12}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1404, i32 12}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1416, i32 12}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1428, i32 12}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1440, i32 12}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1452, i32 12}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1465, i32 12}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1477, i32 12}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1489, i32 12}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1501, i32 12}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1513, i32 12}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1525, i32 12}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1538, i32 12}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1552, i32 12}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1566, i32 12}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1579, i32 12}
!275 = !{ptr @.str.127, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1594, i32 12}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1606, i32 12}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1621, i32 12}
!281 = !{ptr @.str.130, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1636, i32 12}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1651, i32 21}
!285 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1666, i32 21}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1681, i32 12}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1696, i32 12}
!291 = !{ptr @.str.135, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1711, i32 12}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1723, i32 12}
!295 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1735, i32 12}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1747, i32 12}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1759, i32 12}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1771, i32 12}
!303 = !{ptr @.str.141, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1786, i32 12}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1801, i32 12}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1813, i32 12}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1828, i32 12}
!311 = !{ptr @.str.145, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1843, i32 12}
!313 = !{ptr @.str.146, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1856, i32 12}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1869, i32 12}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1882, i32 12}
!319 = !{ptr @.str.149, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1895, i32 12}
!321 = !{ptr @jedec_table, !322, !"jedec_table", i1 false, i1 false}
!322 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 296, i32 36}
!323 = !{ptr @.str.150, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1978, i32 3}
!325 = !{ptr @.str.151, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @cfi_jedec_setup.__UNIQUE_ID_ddebug190, !324, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!327 = !{ptr @.str.152, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/mtd/chips/jedec_probe.c", i32 1983, i32 2}
!329 = !{ptr @cfi_jedec_setup._entry, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @cfi_jedec_setup._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{i32 1, !"wchar_size", i32 2}
!332 = !{i32 1, !"min_enum_size", i32 4}
!333 = !{i32 8, !"branch-target-enforcement", i32 0}
!334 = !{i32 8, !"sign-return-address", i32 0}
!335 = !{i32 8, !"sign-return-address-all", i32 0}
!336 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!337 = !{i32 7, !"uwtable", i32 1}
!338 = !{i32 7, !"frame-pointer", i32 2}
!339 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!340 = !{i64 2149010155, i64 2149010160, i64 2149010173, i64 2149010217, i64 2149010251, i64 2149010272}
