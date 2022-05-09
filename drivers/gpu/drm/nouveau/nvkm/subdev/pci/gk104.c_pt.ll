; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pci_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.133 }
%struct.anon.133 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.135, %struct.anon.136, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.135 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.136 = type { i32, i8 }
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

@gk104_pci_func = internal constant { %struct.nvkm_pci_func, [48 x i8] } { %struct.nvkm_pci_func { ptr @g84_pci_init, ptr @nv40_pci_rd32, ptr @nv40_pci_wr08, ptr @nv40_pci_wr32, ptr @nv40_pci_msi_rearm, %struct.anon.133 { ptr @gk104_pcie_init, ptr @gk104_pcie_set_link, ptr @gk104_pcie_max_speed, ptr @g84_pcie_cur_speed, ptr @gf100_pcie_set_version, ptr @gf100_pcie_version, ptr @gk104_pcie_version_supported } }, [48 x i8] zeroinitializer }, align 32
@gk104_pcie_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: adjusting cap to max speed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gk104_pcie_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk104_pcie_init._entry_ptr = internal global ptr @gk104_pcie_init._entry, section ".printk_index", align 4
@gk104_pcie_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to adjust cap speed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gk104_pcie_init._entry_ptr.8 = internal global ptr @gk104_pcie_init._entry.5, section ".printk_index", align 4
@gk104_pcie_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: adjusting lnkctl to max speed\0A\00", [61 x i8] zeroinitializer }, align 32
@gk104_pcie_init._entry_ptr.11 = internal global ptr @gk104_pcie_init._entry.9, section ".printk_index", align 4
@gk104_pcie_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 175, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to adjust lnkctl speed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gk104_pcie_init._entry_ptr.15 = internal global ptr @gk104_pcie_init._entry.12, section ".printk_index", align 4
@gk104_pcie_set_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 191, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: dropping requested speed due too low cap speed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gk104_pcie_set_link\00", [44 x i8] zeroinitializer }, align 32
@gk104_pcie_set_link._entry_ptr = internal global ptr @gk104_pcie_set_link._entry, section ".printk_index", align 4
@gk104_pcie_set_link._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 197, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: dropping requested speed due too low lnkctl speed\0A\00", [41 x i8] zeroinitializer }, align 32
@gk104_pcie_set_link._entry_ptr.20 = internal global ptr @gk104_pcie_set_link._entry.18, section ".printk_index", align 4
@switch.table.gk104_pcie_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.gk104_pcie_init.21 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.gk104_pcie_init.22 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.gk104_pcie_init.23 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.gk104_pcie_set_link = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.gk104_pcie_set_link.24 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1048576, i64 2097152]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1048576, i64 2097152]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"gk104_pci_func\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 206, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 163, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 167, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 171, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 175, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 190, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 196, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [29 x i8] c"switch.table.gk104_pcie_init\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [32 x i8] c"switch.table.gk104_pcie_init.21\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"switch.table.gk104_pcie_init.22\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [32 x i8] c"switch.table.gk104_pcie_init.23\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [33 x i8] c"switch.table.gk104_pcie_set_link\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [36 x i8] c"switch.table.gk104_pcie_set_link.24\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @gk104_pcie_init._entry, ptr @gk104_pcie_init._entry.12, ptr @gk104_pcie_init._entry.5, ptr @gk104_pcie_init._entry.9, ptr @gk104_pcie_init._entry_ptr, ptr @gk104_pcie_init._entry_ptr.11, ptr @gk104_pcie_init._entry_ptr.15, ptr @gk104_pcie_init._entry_ptr.8, ptr @gk104_pcie_set_link._entry, ptr @gk104_pcie_set_link._entry.18, ptr @gk104_pcie_set_link._entry_ptr, ptr @gk104_pcie_set_link._entry_ptr.20, ptr @gk104_pci_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @switch.table.gk104_pcie_init, ptr @switch.table.gk104_pcie_init.21, ptr @switch.table.gk104_pcie_init.22, ptr @switch.table.gk104_pcie_init.23, ptr @switch.table.gk104_pcie_set_link, ptr @switch.table.gk104_pcie_set_link.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pci_func to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_set_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_pcie_set_link._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_init.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_init.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_init.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_set_link to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gk104_pcie_set_link.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_pci_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_pci_new_(ptr noundef nonnull @gk104_pci_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppci) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_pci_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pci_rd32(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_wr08(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_wr32(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_msi_rearm(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_pcie_init(ptr noundef %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_pcie_version(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @nvkm_pci_rd32(ptr noundef %pci, i16 noundef zeroext 168) #3
  %conv.i = and i32 %call.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_init, i32 0, i32 %conv.i
  %0 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %0)
  %switch.load = load i32, ptr %switch.gep, align 4
  %device.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 573888
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %and.i = and i32 %5, 3145728
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.epilog.i [
    i32 0, label %if.end.gk104_pcie_max_speed.exit_crit_edge
    i32 1048576, label %sw.bb1.i
    i32 2097152, label %sw.bb2.i99
  ]

if.end.gk104_pcie_max_speed.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_max_speed.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_max_speed.exit

sw.bb2.i99:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_max_speed.exit

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_max_speed.exit

gk104_pcie_max_speed.exit:                        ; preds = %sw.epilog.i, %sw.bb2.i99, %sw.bb1.i, %if.end.gk104_pcie_max_speed.exit_crit_edge
  %retval.0.i100 = phi i32 [ 0, %sw.epilog.i ], [ 0, %sw.bb2.i99 ], [ 1, %sw.bb1.i ], [ 2, %if.end.gk104_pcie_max_speed.exit_crit_edge ]
  %call.i101 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i = icmp eq i32 %call.i101, 0
  br i1 %cmp.i, label %gk104_pcie_max_speed.exit.gk104_pcie_cap_speed.exit_crit_edge, label %if.end.i

gk104_pcie_max_speed.exit.gk104_pcie_cap_speed.exit_crit_edge: ; preds = %gk104_pcie_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_cap_speed.exit

if.end.i:                                         ; preds = %gk104_pcie_max_speed.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp1.i = icmp sgt i32 %call.i101, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %pri.i103 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %pri.i103 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %10, i32 573888
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  %and.i105 = lshr i32 %11, 16
  %12 = and i32 %and.i105, 3
  %switch.gep141 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_init.21, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep141 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load142 = load i32, ptr %switch.gep141, align 4
  br label %gk104_pcie_cap_speed.exit

gk104_pcie_cap_speed.exit:                        ; preds = %if.then2.i, %gk104_pcie_max_speed.exit.gk104_pcie_cap_speed.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %gk104_pcie_max_speed.exit.gk104_pcie_cap_speed.exit_crit_edge ], [ %switch.load142, %if.then2.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %retval.0.i100)
  %cmp5.not = icmp eq i32 %retval.1.i, %retval.0.i100
  br i1 %cmp5.not, label %gk104_pcie_cap_speed.exit.if.end32_crit_edge, label %gk104_pcie_cap_speed.exit.do.body_crit_edge

gk104_pcie_cap_speed.exit.do.body_crit_edge:      ; preds = %gk104_pcie_cap_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

gk104_pcie_cap_speed.exit.if.end32_crit_edge:     ; preds = %gk104_pcie_cap_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

do.body:                                          ; preds = %gk104_pcie_cap_speed.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp7 = icmp ugt i32 %15, 4
  br i1 %cmp7, label %do.end, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %22 = zext i32 %retval.0.i100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.0.i100, label %if.end10.gk104_pcie_set_cap_speed.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i109
    i32 2, label %sw.bb22.i
  ]

if.end10.gk104_pcie_set_cap_speed.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_set_cap_speed.exit

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %pci, i1 noundef zeroext false) #3
  %pri.i106 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %24, i32 573888
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %and.i108 = and i32 %25, -196609
  %or.i = or i32 %and.i108, 65536
  %26 = ptrtoint ptr %pri.i106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri.i106, align 4
  %add.ptr3.i = getelementptr i8, ptr %27, i32 573888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or.i) #3, !srcloc !47
  br label %gk104_pcie_set_cap_speed.exit

sw.bb5.i109:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %pci, i1 noundef zeroext true) #3
  %pri10.i = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %28 = ptrtoint ptr %pri10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %29, i32 573888
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %and17.i = and i32 %30, -196609
  %or18.i = or i32 %and17.i, 131072
  %31 = ptrtoint ptr %pri10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri10.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %32, i32 573888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %or18.i) #3, !srcloc !47
  br label %gk104_pcie_set_cap_speed.exit

sw.bb22.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %pci, i1 noundef zeroext true) #3
  %pri27.i = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %33 = ptrtoint ptr %pri27.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri27.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %34, i32 573888
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %or35.i = or i32 %35, 196608
  %36 = ptrtoint ptr %pri27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri27.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %37, i32 573888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %or35.i) #3, !srcloc !47
  br label %gk104_pcie_set_cap_speed.exit

gk104_pcie_set_cap_speed.exit:                    ; preds = %sw.bb22.i, %sw.bb5.i109, %sw.bb.i, %if.end10.gk104_pcie_set_cap_speed.exit_crit_edge
  %call.i111 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp eq i32 %call.i111, 0
  br i1 %cmp.i112, label %gk104_pcie_set_cap_speed.exit.gk104_pcie_cap_speed.exit124_crit_edge, label %if.end.i114

gk104_pcie_set_cap_speed.exit.gk104_pcie_cap_speed.exit124_crit_edge: ; preds = %gk104_pcie_set_cap_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_cap_speed.exit124

if.end.i114:                                      ; preds = %gk104_pcie_set_cap_speed.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp1.i113 = icmp sgt i32 %call.i111, 0
  br i1 %cmp1.i113, label %if.then2.i119, label %if.end.i114.do.body16_crit_edge

if.end.i114.do.body16_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

if.then2.i119:                                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device.i, align 4
  %pri.i116 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %41, i32 573888
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  %and.i118 = lshr i32 %42, 16
  %43 = and i32 %and.i118, 3
  %switch.gep143 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_init.22, i32 0, i32 %43
  %44 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load144 = load i32, ptr %switch.gep143, align 4
  br label %gk104_pcie_cap_speed.exit124

gk104_pcie_cap_speed.exit124:                     ; preds = %if.then2.i119, %gk104_pcie_set_cap_speed.exit.gk104_pcie_cap_speed.exit124_crit_edge
  %retval.1.i123 = phi i32 [ 0, %gk104_pcie_set_cap_speed.exit.gk104_pcie_cap_speed.exit124_crit_edge ], [ %switch.load144, %if.then2.i119 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i123, i32 %retval.0.i100)
  %cmp14.not = icmp eq i32 %retval.1.i123, %retval.0.i100
  br i1 %cmp14.not, label %gk104_pcie_cap_speed.exit124.if.end32_crit_edge, label %gk104_pcie_cap_speed.exit124.do.body16_crit_edge

gk104_pcie_cap_speed.exit124.do.body16_crit_edge: ; preds = %gk104_pcie_cap_speed.exit124
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16

gk104_pcie_cap_speed.exit124.if.end32_crit_edge:  ; preds = %gk104_pcie_cap_speed.exit124
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

do.body16:                                        ; preds = %gk104_pcie_cap_speed.exit124.do.body16_crit_edge, %if.end.i114.do.body16_crit_edge
  %45 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp19 = icmp ugt i32 %46, 1
  br i1 %cmp19, label %do.end23, label %do.body16.if.end32_crit_edge

do.body16.if.end32_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

do.end23:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device.i, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev25, align 8
  %name26 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef %name26) #6
  br label %if.end32

if.end32:                                         ; preds = %do.end23, %do.body16.if.end32_crit_edge, %gk104_pcie_cap_speed.exit124.if.end32_crit_edge, %gk104_pcie_cap_speed.exit.if.end32_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %retval.0.i100)
  %cmp33.not = icmp eq i32 %switch.load, %retval.0.i100
  br i1 %cmp33.not, label %if.end32.cleanup_crit_edge, label %do.body35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body35:                                        ; preds = %if.end32
  %debug37 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %debug37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp38 = icmp ugt i32 %52, 3
  br i1 %cmp38, label %do.end42, label %do.body35.if.end47_crit_edge

do.body35.if.end47_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

do.end42:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i, align 4
  %dev44 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev44, align 8
  %name45 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.10, ptr noundef %name45) #6
  br label %if.end47

if.end47:                                         ; preds = %do.end42, %do.body35.if.end47_crit_edge
  %switch.offset = add nuw nsw i32 %retval.0.i100, 1
  %call.i128 = tail call i32 @nvkm_pci_mask(ptr noundef %pci, i16 noundef zeroext 168, i32 noundef 3, i32 noundef %switch.offset) #3
  %call.i130 = tail call i32 @nvkm_pci_rd32(ptr noundef %pci, i16 noundef zeroext 168) #3
  %conv.i131 = and i32 %call.i130, 3
  %switch.gep145 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_init.23, i32 0, i32 %conv.i131
  %57 = ptrtoint ptr %switch.gep145 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load146, i32 %retval.0.i100)
  %cmp51.not = icmp eq i32 %switch.load146, %retval.0.i100
  br i1 %cmp51.not, label %if.end47.cleanup_crit_edge, label %do.body53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body53:                                        ; preds = %if.end47
  %58 = ptrtoint ptr %debug37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp56.not = icmp eq i32 %59, 0
  br i1 %cmp56.not, label %do.body53.cleanup_crit_edge, label %do.end60

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end60:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device.i, align 4
  %dev62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev62, align 8
  %name63 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.13, ptr noundef %name63) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.body53.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_pcie_set_link(ptr noundef %pci, i32 noundef %speed, i8 noundef zeroext %width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @nvkm_pci_rd32(ptr noundef %pci, i16 noundef zeroext 168) #3
  %conv.i = and i32 %call.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link, i32 0, i32 %conv.i
  %0 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %0)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i39 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i = icmp eq i32 %call.i39, 0
  br i1 %cmp.i, label %entry.gk104_pcie_cap_speed.exit_crit_edge, label %if.end.i

entry.gk104_pcie_cap_speed.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_cap_speed.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp1.i = icmp sgt i32 %call.i39, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.gk104_pcie_cap_speed.exit_crit_edge

if.end.i.gk104_pcie_cap_speed.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_pcie_cap_speed.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %device.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 573888
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  %and.i = lshr i32 %5, 16
  %6 = and i32 %and.i, 3
  %switch.gep43 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.24, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  br label %gk104_pcie_cap_speed.exit

gk104_pcie_cap_speed.exit:                        ; preds = %if.then2.i, %if.end.i.gk104_pcie_cap_speed.exit_crit_edge, %entry.gk104_pcie_cap_speed.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %entry.gk104_pcie_cap_speed.exit_crit_edge ], [ -22, %if.end.i.gk104_pcie_cap_speed.exit_crit_edge ], [ %switch.load44, %if.then2.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i, i32 %speed)
  %cmp = icmp ult i32 %retval.1.i, %speed
  br i1 %cmp, label %if.then, label %gk104_pcie_cap_speed.exit.if.end8_crit_edge

gk104_pcie_cap_speed.exit.if.end8_crit_edge:      ; preds = %gk104_pcie_cap_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then:                                          ; preds = %gk104_pcie_cap_speed.exit
  %debug = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp ugt i32 %9, 1
  br i1 %cmp3, label %do.end, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef %name) #6
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %gk104_pcie_cap_speed.exit.if.end8_crit_edge
  %speed.addr.0 = phi i32 [ %speed, %gk104_pcie_cap_speed.exit.if.end8_crit_edge ], [ %retval.1.i, %do.end ], [ %retval.1.i, %if.then.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %speed.addr.0, i32 %switch.load)
  %cmp9 = icmp ugt i32 %speed.addr.0, %switch.load
  br i1 %cmp9, label %if.then10, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then10:                                        ; preds = %if.end8
  %debug13 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %debug13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp14 = icmp ugt i32 %15, 1
  br i1 %cmp14, label %do.end18, label %if.then10.if.end26_crit_edge

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  %device19 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev20, align 8
  %name21 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %19, ptr noundef nonnull @.str.19, ptr noundef %name21) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end18, %if.then10.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %speed.addr.1 = phi i32 [ %speed.addr.0, %if.end8.if.end26_crit_edge ], [ %switch.load, %do.end18 ], [ %switch.load, %if.then10.if.end26_crit_edge ]
  %device1.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %speed.addr.1)
  %switch.selectcmp.i = icmp eq i32 %speed.addr.1, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 262144, i32 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %speed.addr.1)
  %switch.selectcmp30.i = icmp eq i32 %speed.addr.1, 2
  %switch.select31.i = select i1 %switch.selectcmp30.i, i32 0, i32 %switch.select.i
  %pri.i40 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %pri.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %23, i32 573504
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %and.i42 = and i32 %24, -786433
  %or.i = or i32 %and.i42, %switch.select31.i
  %25 = ptrtoint ptr %pri.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i40, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 573504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %or.i) #3, !srcloc !47
  %27 = ptrtoint ptr %pri.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i40, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 573504
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  %or19.i = or i32 %29, 1
  %30 = ptrtoint ptr %pri.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i40, align 4
  %add.ptr21.i = getelementptr i8, ptr %31, i32 573504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %or19.i) #3, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_pcie_max_speed(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 573888
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %and = and i32 %4, 3145728
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 1048576, label %sw.bb1
    i32 2097152, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_pcie_cur_speed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pcie_set_version(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pcie_version(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk104_pcie_version_supported(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 573888
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_rd32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pcie_cap_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pcie_set_cap_speed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_mask(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @gk104_pci_func, !1, !"gk104_pci_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 206, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 163, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gk104_pcie_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @gk104_pcie_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 167, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gk104_pcie_init._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @gk104_pcie_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 171, i32 3}
!17 = !{ptr @gk104_pcie_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @gk104_pcie_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 175, i32 4}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gk104_pcie_init._entry.12, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @gk104_pcie_init._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 190, i32 3}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gk104_pcie_set_link._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @gk104_pcie_set_link._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c", i32 196, i32 3}
!31 = !{ptr @gk104_pcie_set_link._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gk104_pcie_set_link._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 5389825}
!43 = !{i64 2156230000}
!44 = !{i64 2156229579}
!45 = !{i64 2156226174}
!46 = !{i64 2156226564}
!47 = !{i64 5389407}
!48 = !{i64 2156227424}
!49 = !{i64 2156227814}
!50 = !{i64 2156228674}
!51 = !{i64 2156229064}
!52 = !{i64 2156230766}
!53 = !{i64 2156231162}
!54 = !{i64 2156232017}
!55 = !{i64 2156232391}
!56 = !{i64 2156225411}
