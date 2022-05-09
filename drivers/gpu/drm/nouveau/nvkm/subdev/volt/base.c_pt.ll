; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.133], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.133 = type { i32, i8 }
%struct.nvbios_vmap_entry = type { i8, i8, i32, i32, [6 x i32] }
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
%struct.nvbios_volt_entry = type { i32, i8 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvbios_vmap = type { i8, i8, i8 }

@nvkm_volt = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_volt_dtor, ptr null, ptr @nvkm_volt_oneinit, ptr null, ptr @nvkm_volt_init, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_volt_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: min: %iuv max: %iuv\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_volt_ctor\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_volt_ctor._entry_ptr = internal global ptr @nvkm_volt_ctor._entry, section ".printk_index", align 4
@nvkm_volt_ctor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: VID %02x: %duv\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_volt_ctor._entry_ptr.7 = internal global ptr @nvkm_volt_ctor._entry.5, section ".printk_index", align 4
@nvkm_volt_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 71, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: couldn't set %iuv\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_volt_set\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_volt_set._entry_ptr = internal global ptr @nvkm_volt_set._entry, section ".printk_index", align 4
@nvkm_volt_set._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: set req %duv to %duv: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_volt_set._entry_ptr.13 = internal global ptr @nvkm_volt_set._entry.11, section ".printk_index", align 4
@nvkm_volt_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: speedo %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_volt_oneinit\00", [46 x i8] zeroinitializer }, align 32
@nvkm_volt_oneinit._entry_ptr = internal global ptr @nvkm_volt_oneinit._entry, section ".printk_index", align 4
@nvkm_volt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: current voltage unknown\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_volt_init\00", [17 x i8] zeroinitializer }, align 32
@nvkm_volt_init._entry_ptr = internal global ptr @nvkm_volt_init._entry, section ".printk_index", align 4
@nvkm_volt_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: current voltage: %duv\0A\00", [37 x i8] zeroinitializer }, align 32
@nvkm_volt_init._entry_ptr.20 = internal global ptr @nvkm_volt_init._entry.18, section ".printk_index", align 4
@nvkm_volt_parse_bios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: found ranged based VIDs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_volt_parse_bios\00", [43 x i8] zeroinitializer }, align 32
@nvkm_volt_parse_bios._entry_ptr = internal global ptr @nvkm_volt_parse_bios._entry, section ".printk_index", align 4
@nvkm_volt_parse_bios._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: found entry based VIDs\0A\00", [36 x i8] zeroinitializer }, align 32
@nvkm_volt_parse_bios._entry_ptr.25 = internal global ptr @nvkm_volt_parse_bios._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"nvkm_volt\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 276, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 298, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 314, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 71, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 76, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 261, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 247, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 250, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 197, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 211, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @nvkm_volt_ctor._entry, ptr @nvkm_volt_ctor._entry.5, ptr @nvkm_volt_ctor._entry_ptr, ptr @nvkm_volt_ctor._entry_ptr.7, ptr @nvkm_volt_init._entry, ptr @nvkm_volt_init._entry.18, ptr @nvkm_volt_init._entry_ptr, ptr @nvkm_volt_init._entry_ptr.20, ptr @nvkm_volt_oneinit._entry, ptr @nvkm_volt_oneinit._entry_ptr, ptr @nvkm_volt_parse_bios._entry, ptr @nvkm_volt_parse_bios._entry.23, ptr @nvkm_volt_parse_bios._entry_ptr, ptr @nvkm_volt_parse_bios._entry_ptr.25, ptr @nvkm_volt_set._entry, ptr @nvkm_volt_set._entry.11, ptr @nvkm_volt_set._entry_ptr, ptr @nvkm_volt_set._entry_ptr.13, ptr @nvkm_volt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_ctor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_set._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_parse_bios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_volt_parse_bios._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_get(ptr noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volt, align 4
  %volt_get = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %volt_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volt_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %volt) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vid_get = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vid_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vid_get, align 4
  %call4 = tail call i32 %5(ptr noundef %volt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %vid_nr = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %6 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vid_nr, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp631.not = icmp eq i8 %7, 0
  br i1 %cmp631.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %vid8 = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.032, i32 1
  %8 = ptrtoint ptr %vid8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vid8, align 4
  %conv9 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv9)
  %cmp10 = icmp eq i32 %call4, %conv9
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.032
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then12, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %11, %if.then12 ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_map_min(ptr nocapture noundef readonly %volt, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.nvbios_vmap_entry, align 4
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info) #7
  %4 = call ptr @memset(ptr %info, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %5 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ver, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %len, align 1, !annotation !56
  %conv = zext i8 %id to i32
  %call = call i32 @nvbios_vmap_entry_parse(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %ver, ptr noundef nonnull %len, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.not = icmp eq i8 %8, -1
  br i1 %cmp.not, label %if.then.if.end10_crit_edge, label %if.then4

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.then
  %call6 = call i32 @nvkm_volt_map_min(ptr noundef %volt, i8 noundef zeroext %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup16_crit_edge, label %if.end

if.then4.cleanup16_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %min = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min, align 4
  %add = add i32 %10, %call6
  store i32 %add, ptr %min, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then.if.end10_crit_edge
  %min11 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %min11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min11, align 4
  br label %cleanup16

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id)
  %tobool14.not = icmp eq i8 %id, 0
  %mul = mul nuw nsw i32 %conv, 10000
  %spec.select = select i1 %tobool14.not, i32 -19, i32 %mul
  br label %cleanup16

cleanup16:                                        ; preds = %if.end12, %if.end10, %if.then4.cleanup16_crit_edge
  %retval.1 = phi i32 [ %12, %if.end10 ], [ %spec.select, %if.end12 ], [ %call6, %if.then4.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vmap_entry_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_map(ptr nocapture noundef readonly %volt, i8 noundef zeroext %id, i8 noundef zeroext %temp) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.nvbios_vmap_entry, align 4
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info) #7
  %4 = call ptr @memset(ptr %info, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %5 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ver, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %len, align 1, !annotation !56
  %conv = zext i8 %id to i32
  %call = call i32 @nvbios_vmap_entry_parse(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %ver, ptr noundef nonnull %len, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end131, label %if.then

if.then:                                          ; preds = %entry
  %speedo = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 10
  %7 = ptrtoint ptr %speedo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speedo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.cleanup140_crit_edge, label %if.end

if.then.cleanup140_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ver, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end.cleanup140_crit_edge [
    i8 16, label %if.end.if.then14_crit_edge
    i8 32, label %land.lhs.true
  ]

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end.cleanup140_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12 = icmp eq i8 %13, 0
  br i1 %cmp12, label %land.lhs.true.if.then14_crit_edge, label %if.then37

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %land.lhs.true.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %arg = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  %conv15 = sext i32 %15 to i64
  %call16 = call i64 @div64_s64(i64 noundef %conv15, i64 noundef 10) #7
  %arrayidx18 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  %conv19 = sext i32 %17 to i64
  %18 = ptrtoint ptr %speedo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speedo, align 4
  %conv21 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv21, %conv19
  %call22 = call i64 @div64_s64(i64 noundef %mul, i64 noundef 10) #7
  %add = add i64 %call22, %call16
  %arrayidx24 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  %conv25 = sext i32 %21 to i64
  %22 = ptrtoint ptr %speedo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speedo, align 4
  %conv27 = sext i32 %23 to i64
  %mul28 = mul nsw i64 %conv27, %conv25
  %mul31 = mul i64 %mul28, %conv27
  %call32 = call i64 @div64_s64(i64 noundef %mul31, i64 noundef 100000) #7
  %add33 = add i64 %add, %call32
  br label %if.end102

if.then37:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %info, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %25, label %sw.default [
    i8 1, label %sw.bb
    i8 3, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %arg40 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %arg40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arg40, align 4
  %conv42 = sext i32 %28 to i64
  %mul43 = mul nsw i64 %conv42, 15625
  %shr = ashr i64 %mul43, 18
  %arrayidx45 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx45, align 4
  %conv46 = sext i32 %30 to i64
  %conv48185 = zext i32 %8 to i64
  %mul49 = mul nuw nsw i64 %conv48185, 15625
  %mul50 = mul i64 %mul49, %conv46
  %shr51 = ashr i64 %mul50, 18
  %add52 = add nsw i64 %shr51, %shr
  %arrayidx54 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx54, align 4
  %conv55 = sext i32 %32 to i64
  %conv56 = zext i8 %temp to i64
  %mul57 = mul nuw nsw i64 %conv56, 15625
  %mul58 = mul nsw i64 %mul57, %conv55
  %shr59 = ashr i64 %mul58, 10
  %add60 = add nsw i64 %add52, %shr59
  %arrayidx62 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx62, align 4
  %conv63 = sext i32 %34 to i64
  %mul68 = mul nuw nsw i64 %mul57, %conv48185
  %mul69 = mul i64 %mul68, %conv63
  %shr70 = ashr i64 %mul69, 18
  %add71 = add nsw i64 %add60, %shr70
  %arrayidx73 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx73, align 4
  %conv74 = sext i32 %36 to i64
  %mul80 = mul i64 %mul49, %conv48185
  %mul81 = mul i64 %mul80, %conv74
  %shr82 = ashr i64 %mul81, 30
  %add83 = add nsw i64 %add71, %shr82
  %arrayidx85 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 4, i32 5
  %37 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx85, align 4
  %conv86 = sext i32 %38 to i64
  %mul90 = mul nuw nsw i64 %mul57, %conv56
  %mul91 = mul nsw i64 %mul90, %conv86
  %shr92 = ashr i64 %mul91, 18
  %add93 = add nsw i64 %add83, %shr92
  br label %if.end102

sw.bb94:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %min = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %min, align 4
  %max = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 3
  %41 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max, align 4
  %add95 = add i32 %42, %40
  %div177 = lshr i32 %add95, 1
  %conv96 = zext i32 %div177 to i64
  br label %if.end102

sw.default:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %min98 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %43 = ptrtoint ptr %min98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min98, align 4
  %conv99 = zext i32 %44 to i64
  br label %if.end102

if.end102:                                        ; preds = %sw.default, %sw.bb94, %sw.bb, %if.then14
  %result.0 = phi i64 [ %add33, %if.then14 ], [ %conv99, %sw.default ], [ %conv96, %sw.bb94 ], [ %add93, %sw.bb ]
  %min103 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 2
  %45 = ptrtoint ptr %min103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min103, align 4
  %conv104 = zext i32 %46 to i64
  %47 = call i64 @llvm.smax.i64(i64 %result.0, i64 %conv104)
  %max107 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 3
  %48 = ptrtoint ptr %max107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max107, align 4
  %conv108 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %conv108)
  %cmp110 = icmp ult i64 %47, %conv108
  %extract.t182 = trunc i64 %47 to i32
  %cond115.off0 = select i1 %cmp110, i32 %extract.t182, i32 %49
  %link = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %info, i32 0, i32 1
  %50 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp117.not = icmp eq i8 %51, -1
  br i1 %cmp117.not, label %if.end102.if.end128_crit_edge, label %if.then119

if.end102.if.end128_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then119:                                       ; preds = %if.end102
  %call121 = call i32 @nvkm_volt_map(ptr noundef %volt, i8 noundef zeroext %51, i8 noundef zeroext %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  %extract.t180 = add i32 %call121, %cond115.off0
  br i1 %cmp122, label %if.then119.cleanup140_crit_edge, label %if.then119.if.end128_crit_edge

if.then119.if.end128_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then119.cleanup140_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end128:                                        ; preds = %if.then119.if.end128_crit_edge, %if.end102.if.end128_crit_edge
  %result.2.off0 = phi i32 [ %extract.t180, %if.then119.if.end128_crit_edge ], [ %cond115.off0, %if.end102.if.end128_crit_edge ]
  br label %cleanup140

if.end131:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id)
  %tobool133.not = icmp eq i8 %id, 0
  %mul136 = mul nuw nsw i32 %conv, 10000
  %spec.select = select i1 %tobool133.not, i32 -19, i32 %mul136
  br label %cleanup140

cleanup140:                                       ; preds = %if.end131, %if.end128, %if.then119.cleanup140_crit_edge, %if.end.cleanup140_crit_edge, %if.then.cleanup140_crit_edge
  %retval.2 = phi i32 [ %spec.select, %if.end131 ], [ %result.2.off0, %if.end128 ], [ %call121, %if.then119.cleanup140_crit_edge ], [ %8, %if.then.cleanup140_crit_edge ], [ -19, %if.end.cleanup140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_set_id(ptr noundef %volt, i8 noundef zeroext %id, i8 noundef zeroext %min_id, i8 noundef zeroext %temp, i32 noundef %condition) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volt, align 4
  %set_id = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %volt, i8 noundef zeroext %id, i32 noundef %condition) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @nvkm_volt_map(ptr noundef %volt, i8 noundef zeroext %id, i8 noundef zeroext %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volt, align 4
  %volt_get.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %volt_get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %volt_get.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %7(ptr noundef %volt) #7
  br label %nvkm_volt_get.exit

if.end.i:                                         ; preds = %if.then4
  %vid_get.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %vid_get.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vid_get.i, align 4
  %call4.i = tail call i32 %9(ptr noundef %volt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, -1
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.cond.preheader.i:                             ; preds = %if.end.i
  %vid_nr.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %10 = ptrtoint ptr %vid_nr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vid_nr.i, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp631.not.i = icmp eq i8 %11, 0
  br i1 %cmp631.not.i, label %for.cond.preheader.i.if.then15_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then15_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %vid8.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.032.i, i32 1
  %12 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vid8.i, align 4
  %conv9.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %call4.i, %conv9.i
  br i1 %cmp10.i, label %if.then12.i, label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.032.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %nvkm_volt_get.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then15_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

nvkm_volt_get.exit:                               ; preds = %if.then12.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %tobool6.not = icmp eq i32 %condition, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %nvkm_volt_get.exit.if.then15_crit_edge, label %lor.lhs.false8

nvkm_volt_get.exit.if.then15_crit_edge:           ; preds = %nvkm_volt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false8:                                   ; preds = %nvkm_volt_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %cmp9 = icmp slt i32 %condition, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %call3, %retval.0.i
  %or.cond45 = select i1 %cmp9, i1 %cmp10, i1 false
  br i1 %or.cond45, label %lor.lhs.false8.if.then15_crit_edge, label %lor.lhs.false11

lor.lhs.false8.if.then15_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %condition)
  %cmp12 = icmp sgt i32 %condition, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %retval.0.i)
  %cmp14 = icmp sgt i32 %call3, %retval.0.i
  %or.cond46 = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond46, label %lor.lhs.false11.if.then15_crit_edge, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false11.if.then15_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11.if.then15_crit_edge, %lor.lhs.false8.if.then15_crit_edge, %nvkm_volt_get.exit.if.then15_crit_edge, %for.inc.i.if.then15_crit_edge, %for.cond.preheader.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %call16 = tail call i32 @nvkm_volt_map(ptr noundef %volt, i8 noundef zeroext %min_id, i8 noundef zeroext %temp)
  %16 = tail call i32 @llvm.smax.i32(i32 %call16, i32 %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp1763 = icmp slt i32 %call16, 0
  %ret.0 = select i1 %cmp1763, i32 %call3, i32 %16
  %17 = ptrtoint ptr %volt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %volt, align 4
  %volt_set.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %volt_set.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %volt_set.i, align 4
  %tobool.not.i47 = icmp eq ptr %20, null
  br i1 %tobool.not.i47, label %if.end.i52, label %if.then.i49

if.then.i49:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i48 = tail call i32 %20(ptr noundef %volt, i32 noundef %ret.0) #7
  br label %cleanup

if.end.i52:                                       ; preds = %if.then15
  %vid_nr.i50 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %21 = ptrtoint ptr %vid_nr.i50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vid_nr.i50, align 1
  %conv.i51 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp84.not.i = icmp eq i8 %22, 0
  br i1 %cmp84.not.i, label %if.end.i52.do.body.i_crit_edge, label %for.body.preheader.i

if.end.i52.do.body.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.preheader.i:                             ; preds = %if.end.i52
  %max_uv.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 5
  %23 = ptrtoint ptr %max_uv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_uv.i, align 4
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i57.for.body.i54_crit_edge, %for.body.preheader.i
  %best.087.i = phi i32 [ %best.1.i, %for.inc.i57.for.body.i54_crit_edge ], [ -1, %for.body.preheader.i ]
  %best_err.086.i = phi i32 [ %best_err.1.i, %for.inc.i57.for.body.i54_crit_edge ], [ %24, %for.body.preheader.i ]
  %i.085.i = phi i32 [ %inc.i55, %for.inc.i57.for.body.i54_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i53 = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.085.i
  %25 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i53, align 4
  %sub.i = sub i32 %26, %ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %best_err.086.i)
  %cmp8.i = icmp sgt i32 %sub.i, %best_err.086.i
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %ret.0)
  %cmp12.i = icmp eq i32 %26, %ret.0
  %best.1.i = select i1 %or.cond.i, i32 %best.087.i, i32 %i.085.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  %switch.i = select i1 %not.or.cond.i, i1 %cmp12.i, i1 false
  br i1 %switch.i, label %for.body.i54.for.end.i_crit_edge, label %for.inc.i57

for.body.i54.for.end.i_crit_edge:                 ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i57:                                      ; preds = %for.body.i54
  %best_err.1.i = select i1 %or.cond.i, i32 %best_err.086.i, i32 %sub.i
  %inc.i55 = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i56 = icmp eq i32 %inc.i55, %conv.i51
  br i1 %exitcond.not.i56, label %for.inc.i57.for.end.i_crit_edge, label %for.inc.i57.for.body.i54_crit_edge

for.inc.i57.for.body.i54_crit_edge:               ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i54

for.inc.i57.for.end.i_crit_edge:                  ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i57.for.end.i_crit_edge, %for.body.i54.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.1.i)
  %cmp16.i = icmp eq i32 %best.1.i, -1
  br i1 %cmp16.i, label %for.end.i.do.body.i_crit_edge, label %if.end26.i

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %if.end.i52.do.body.i_crit_edge
  %debug.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp19.not.i = icmp eq i32 %28, 0
  br i1 %cmp19.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %ret.0) #10
  br label %cleanup

if.end26.i:                                       ; preds = %for.end.i
  %vid_set.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %18, i32 0, i32 4
  %33 = ptrtoint ptr %vid_set.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vid_set.i, align 4
  %vid30.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %best.1.i, i32 1
  %35 = ptrtoint ptr %vid30.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vid30.i, align 4
  %call31.i = tail call i32 %34(ptr noundef %volt, i8 noundef zeroext %36) #7
  %debug34.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %debug34.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp35.i = icmp ugt i32 %38, 3
  br i1 %cmp35.i, label %do.end40.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %best.1.i
  %device41.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %device41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device41.i, align 4
  %dev42.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev42.i, align 8
  %name43.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef %name43.i, i32 noundef %ret.0, i32 noundef %44, i32 noundef %call31.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end40.i, %if.end26.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %if.then.i49, %lor.lhs.false11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false11.cleanup_crit_edge ], [ %call.i48, %if.then.i49 ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ %call31.i, %do.end40.i ], [ %call31.i, %if.end26.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_volt_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  %ivid.i = alloca %struct.nvbios_volt_entry, align 8
  %info.i = alloca %struct.nvbios_volt, align 4
  %ver.i = alloca i8, align 1
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %vmap = alloca %struct.nvbios_vmap, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bios1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %bios1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios1, align 8
  %subdev = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_volt, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #7
  %2 = ptrtoint ptr %volt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %volt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ver, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #7
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %hdr, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #7
  %5 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cnt, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %len, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %vmap) #7
  %7 = ptrtoint ptr %vmap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %vmap, align 1, !annotation !56
  %8 = getelementptr inbounds %struct.nvbios_vmap, ptr %vmap, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !56
  %10 = getelementptr inbounds %struct.nvbios_vmap, ptr %vmap, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ivid.i) #7
  %12 = ptrtoint ptr %ivid.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %ivid.i, align 8, !annotation !56
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #7
  %13 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 5
  %18 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 6
  %19 = getelementptr inbounds %struct.nvbios_volt, ptr %info.i, i32 0, i32 8
  %20 = call ptr @memset(ptr %info.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver.i) #7
  %21 = ptrtoint ptr %ver.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %ver.i, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #7
  %22 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %hdr.i, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #7
  %23 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %cnt.i, align 1, !annotation !56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #7
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %len.i, align 1, !annotation !56
  %call.i = call i32 @nvbios_volt_parse(ptr noundef nonnull %1, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef nonnull %info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.nvkm_volt_parse_bios.exit_crit_edge, label %land.lhs.true.i

if.then.nvkm_volt_parse_bios.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_volt_parse_bios.exit

land.lhs.true.i:                                  ; preds = %if.then
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i = icmp eq i8 %26, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.land.lhs.true116.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.land.lhs.true116.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true116.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i = icmp eq i32 %28, 0
  br i1 %tobool4.not.i, label %land.lhs.true3.i.land.lhs.true50.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.land.lhs.true50.i_crit_edge:     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool7.not.i = icmp eq i16 %30, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.land.lhs.true50.i_crit_edge, label %land.lhs.true8.i

land.lhs.true5.i.land.lhs.true50.i_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true50.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %16, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not.i = icmp eq i8 %32, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.do.body54.i_crit_edge, label %do.body.i

land.lhs.true8.i.do.body54.i_crit_edge:           ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54.i

do.body.i:                                        ; preds = %land.lhs.true8.i
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i = icmp ugt i32 %34, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end.i_crit_edge

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.21, ptr noundef %name.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body.i.if.end.i_crit_edge
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %13, align 4
  %min_uv.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 6
  %41 = ptrtoint ptr %min_uv.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %min_uv.i, align 4
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %14, align 4
  %max_uv.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 5
  %44 = ptrtoint ptr %max_uv.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_uv.i, align 4
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %17, align 1
  %conv17.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %18, align 2
  %conv40.i = sext i16 %48 to i32
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.promoted.i = load i32, ptr %15, align 4
  %vid_nr.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %if.end.i
  %i.0179.i = phi i32 [ 0, %if.end.i ], [ %inc43.i, %if.end38.i.for.body.i_crit_edge ]
  %add42176177.i = phi i32 [ %.promoted.i, %if.end.i ], [ %add42.i, %if.end38.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add42176177.i, i32 %40)
  %cmp22.not.i = icmp ult i32 %add42176177.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add42176177.i, i32 %43)
  %cmp27.not.i = icmp ugt i32 %add42176177.i, %43
  %or.cond.i = select i1 %cmp22.not.i, i1 true, i1 %cmp27.not.i
  br i1 %or.cond.i, label %for.body.i.if.end38.i_crit_edge, label %if.then29.i

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then29.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %vid_nr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vid_nr.i, align 1
  %idxprom.i = zext i8 %51 to i32
  %arrayidx.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %idxprom.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add42176177.i, ptr %arrayidx.i, align 4
  %conv31.i = trunc i32 %i.0179.i to i8
  %vid36.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %idxprom.i, i32 1
  %53 = ptrtoint ptr %vid36.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv31.i, ptr %vid36.i, align 4
  %inc.i = add i8 %51, 1
  store i8 %inc.i, ptr %vid_nr.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then29.i, %for.body.i.if.end38.i_crit_edge
  %add42.i = add i32 %add42176177.i, %conv40.i
  %inc43.i = add nuw nsw i32 %i.0179.i, 1
  %exitcond.i = icmp eq i32 %i.0179.i, %conv17.i
  br i1 %exitcond.i, label %for.end.i, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %vid_mask.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 2
  %54 = ptrtoint ptr %vid_mask.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %46, ptr %vid_mask.i, align 4
  br label %nvkm_volt_parse_bios.exit

land.lhs.true50.i:                                ; preds = %land.lhs.true5.i.land.lhs.true50.i_crit_edge, %land.lhs.true3.i.land.lhs.true50.i_crit_edge
  %55 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr.i = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool52.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true50.i.do.body54.i_crit_edge, label %land.lhs.true50.i.land.lhs.true116.i_crit_edge

land.lhs.true50.i.land.lhs.true116.i_crit_edge:   ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true116.i

land.lhs.true50.i.do.body54.i_crit_edge:          ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54.i

do.body54.i:                                      ; preds = %land.lhs.true50.i.do.body54.i_crit_edge, %land.lhs.true8.i.do.body54.i_crit_edge
  %debug56.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %debug56.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp57.i = icmp ugt i32 %57, 3
  br i1 %cmp57.i, label %do.end62.i, label %do.body54.i.if.end67.i_crit_edge

do.body54.i.if.end67.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

do.end62.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  %device63.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %device63.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device63.i, align 4
  %dev64.i = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev64.i, align 8
  %name65.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.24, ptr noundef %name65.i) #10
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end62.i, %do.body54.i.if.end67.i_crit_edge
  %min_uv70.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 6
  %62 = ptrtoint ptr %min_uv70.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %min_uv70.i, align 4
  %max_uv71.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 5
  %63 = ptrtoint ptr %max_uv71.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %max_uv71.i, align 4
  %64 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp74182.not.i = icmp eq i8 %65, 0
  br i1 %cmp74182.not.i, label %if.end67.i.for.end111.i_crit_edge, label %for.body76.lr.ph.i

if.end67.i.for.end111.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111.i

for.body76.lr.ph.i:                               ; preds = %if.end67.i
  %vid_nr81.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %vid85.i = getelementptr inbounds %struct.nvbios_volt_entry, ptr %ivid.i, i32 0, i32 1
  br label %for.body76.i

for.body76.i:                                     ; preds = %for.inc109.i.for.body76.i_crit_edge, %for.body76.lr.ph.i
  %i.1183.i = phi i32 [ 0, %for.body76.lr.ph.i ], [ %inc110.i, %for.inc109.i.for.body76.i_crit_edge ]
  %call77.i = call i32 @nvbios_volt_entry_parse(ptr noundef nonnull %1, i32 noundef %i.1183.i, ptr noundef nonnull %ver.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %ivid.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %for.body76.i.for.inc109.i_crit_edge, label %if.then79.i

for.body76.i.for.inc109.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109.i

if.then79.i:                                      ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %ivid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ivid.i, align 8
  %68 = ptrtoint ptr %vid_nr81.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vid_nr81.i, align 1
  %idxprom82.i = zext i8 %69 to i32
  %arrayidx83.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %idxprom82.i
  %70 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %arrayidx83.i, align 4
  %71 = ptrtoint ptr %vid85.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %vid85.i, align 4
  %vid90.i = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %idxprom82.i, i32 1
  %73 = ptrtoint ptr %vid90.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %vid90.i, align 4
  %inc92.i = add i8 %69, 1
  store i8 %inc92.i, ptr %vid_nr81.i, align 1
  %74 = ptrtoint ptr %min_uv70.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %min_uv70.i, align 4
  %76 = call i32 @llvm.umin.i32(i32 %75, i32 %67) #7
  %77 = ptrtoint ptr %min_uv70.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %min_uv70.i, align 4
  %78 = ptrtoint ptr %max_uv71.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_uv71.i, align 4
  %80 = call i32 @llvm.umax.i32(i32 %79, i32 %67) #7
  %81 = ptrtoint ptr %max_uv71.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_uv71.i, align 4
  br label %for.inc109.i

for.inc109.i:                                     ; preds = %if.then79.i, %for.body76.i.for.inc109.i_crit_edge
  %inc110.i = add nuw nsw i32 %i.1183.i, 1
  %82 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cnt.i, align 1
  %conv73.i = zext i8 %83 to i32
  %cmp74.i = icmp ult i32 %inc110.i, %conv73.i
  br i1 %cmp74.i, label %for.inc109.i.for.body76.i_crit_edge, label %for.inc109.i.for.end111.i_crit_edge

for.inc109.i.for.end111.i_crit_edge:              ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111.i

for.inc109.i.for.body76.i_crit_edge:              ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body76.i

for.end111.i:                                     ; preds = %for.inc109.i.for.end111.i_crit_edge, %if.end67.i.for.end111.i_crit_edge
  %84 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %17, align 1
  %vid_mask113.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 2
  %86 = ptrtoint ptr %vid_mask113.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %vid_mask113.i, align 4
  br label %nvkm_volt_parse_bios.exit

land.lhs.true116.i:                               ; preds = %land.lhs.true50.i.land.lhs.true116.i_crit_edge, %land.lhs.true.i.land.lhs.true116.i_crit_edge
  %87 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp117.i = icmp eq i32 %88, 1
  br i1 %cmp117.i, label %if.then119.i, label %land.lhs.true116.i.nvkm_volt_parse_bios.exit_crit_edge

land.lhs.true116.i.nvkm_volt_parse_bios.exit_crit_edge: ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_volt_parse_bios.exit

if.then119.i:                                     ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %15, align 4
  %min_uv121.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 6
  %91 = ptrtoint ptr %min_uv121.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %min_uv121.i, align 4
  %92 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %19, align 4
  %add123.i = add i32 %93, %90
  %max_uv124.i = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 5
  %94 = ptrtoint ptr %max_uv124.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add123.i, ptr %max_uv124.i, align 4
  br label %nvkm_volt_parse_bios.exit

nvkm_volt_parse_bios.exit:                        ; preds = %if.then119.i, %land.lhs.true116.i.nvkm_volt_parse_bios.exit_crit_edge, %for.end111.i, %for.end.i, %if.then.nvkm_volt_parse_bios.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ivid.i) #7
  %debug = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %95 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp = icmp ugt i32 %96, 3
  br i1 %cmp, label %do.end, label %nvkm_volt_parse_bios.exit.if.end_crit_edge

nvkm_volt_parse_bios.exit.if.end_crit_edge:       ; preds = %nvkm_volt_parse_bios.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %nvkm_volt_parse_bios.exit
  call void @__sanitizer_cov_trace_pc() #9
  %device6 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device6, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  %min_uv = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 6
  %101 = ptrtoint ptr %min_uv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %min_uv, align 4
  %max_uv = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 5
  %103 = ptrtoint ptr %max_uv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_uv, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %102, i32 noundef %104) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %nvkm_volt_parse_bios.exit.if.end_crit_edge
  %call = call i32 @nvbios_vmap_parse(ptr noundef nonnull %1, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %vmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %vmap to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vmap, align 1
  %107 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %8, align 1
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %10, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %.sink74 = phi i8 [ %106, %if.then10 ], [ -1, %if.end.if.end14_crit_edge ]
  %.sink73 = phi i8 [ %108, %if.then10 ], [ -1, %if.end.if.end14_crit_edge ]
  %.sink = phi i8 [ %110, %if.then10 ], [ -1, %if.end.if.end14_crit_edge ]
  %111 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 7
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %.sink74, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink73, ptr %113, align 1
  %115 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 9
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %.sink, ptr %115, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %vmap) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry.if.end15_crit_edge
  %vid_nr = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 3
  %117 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %vid_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool16.not = icmp eq i8 %118, 0
  br i1 %tobool16.not, label %if.end15.if.end42_crit_edge, label %for.cond.preheader

if.end15.if.end42_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

for.cond.preheader:                               ; preds = %if.end15
  %119 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %vid_nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp1970.not = icmp eq i8 %120, 0
  br i1 %cmp1970.not, label %for.cond.preheader.if.end42_crit_edge, label %do.body21.lr.ph

for.cond.preheader.if.end42_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body21.lr.ph:                                  ; preds = %for.cond.preheader
  %debug24 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 5
  %device31 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 1
  %name33 = getelementptr inbounds %struct.nvkm_volt, ptr %volt, i32 0, i32 1, i32 4
  br label %do.body21

do.body21:                                        ; preds = %if.end39.do.body21_crit_edge, %do.body21.lr.ph
  %i.071 = phi i32 [ 0, %do.body21.lr.ph ], [ %inc, %if.end39.do.body21_crit_edge ]
  %121 = ptrtoint ptr %debug24 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %debug24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %122)
  %cmp25 = icmp ugt i32 %122, 3
  br i1 %cmp25, label %do.end30, label %do.body21.if.end39_crit_edge

do.body21.if.end39_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end30:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device31, align 4
  %dev32 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev32, align 8
  %arrayidx = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.071
  %vid35 = getelementptr %struct.nvkm_volt, ptr %volt, i32 0, i32 4, i32 %i.071, i32 1
  %127 = ptrtoint ptr %vid35 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %vid35, align 4
  %conv36 = zext i8 %128 to i32
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.6, ptr noundef %name33, i32 noundef %conv36, i32 noundef %130) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end30, %do.body21.if.end39_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %131 = ptrtoint ptr %vid_nr to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %vid_nr, align 1
  %conv = zext i8 %132 to i32
  %cmp19 = icmp ult i32 %inc, %conv
  br i1 %cmp19, label %if.end39.do.body21_crit_edge, label %if.end39.if.end42_crit_edge

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end39.do.body21_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.end42:                                         ; preds = %if.end39.if.end42_crit_edge, %for.cond.preheader.if.end42_crit_edge, %if.end15.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vmap_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pvolt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2124) #11
  %1 = ptrtoint ptr %pvolt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pvolt, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_volt_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_volt_dtor(ptr noundef readnone %subdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_volt_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %speedo_read.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %speedo_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speedo_read.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %nvkm_volt_speedo_read.exit.thread, label %nvkm_volt_speedo_read.exit

nvkm_volt_speedo_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %speedo25 = getelementptr i8, ptr %subdev, i32 2116
  %4 = ptrtoint ptr %speedo25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -22, ptr %speedo25, align 4
  br label %if.end9

nvkm_volt_speedo_read.exit:                       ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %add.ptr) #7
  %speedo = getelementptr i8, ptr %subdev, i32 2116
  %5 = ptrtoint ptr %speedo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %speedo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %nvkm_volt_speedo_read.exit.if.end9_crit_edge

nvkm_volt_speedo_read.exit.if.end9_crit_edge:     ; preds = %nvkm_volt_speedo_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %nvkm_volt_speedo_read.exit
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3 = icmp ugt i32 %7, 3
  br i1 %cmp3, label %do.end, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %call.i) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %nvkm_volt_speedo_read.exit.if.end9_crit_edge, %nvkm_volt_speedo_read.exit.thread
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then10

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %15(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_volt_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %volt_get.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %volt_get.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volt_get.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %add.ptr) #7
  br label %nvkm_volt_get.exit

if.end.i:                                         ; preds = %entry
  %vid_get.i = getelementptr inbounds %struct.nvkm_volt_func, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vid_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vid_get.i, align 4
  %call4.i = tail call i32 %5(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i = icmp sgt i32 %call4.i, -1
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.preheader.i:                             ; preds = %if.end.i
  %vid_nr.i = getelementptr i8, ptr %subdev, i32 53
  %6 = ptrtoint ptr %vid_nr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vid_nr.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp631.not.i = icmp eq i8 %7, 0
  br i1 %cmp631.not.i, label %for.cond.preheader.i.do.body_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %vid8.i = getelementptr %struct.nvkm_volt, ptr %add.ptr, i32 0, i32 4, i32 %i.032.i, i32 1
  %8 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vid8.i, align 4
  %conv9.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %conv9.i)
  %cmp10.i = icmp eq i32 %call4.i, %conv9.i
  br i1 %cmp10.i, label %if.then12.i, label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.nvkm_volt, ptr %add.ptr, i32 0, i32 4, i32 %i.032.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  br label %nvkm_volt_get.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

nvkm_volt_get.exit:                               ; preds = %if.then12.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %11, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %nvkm_volt_get.exit.if.then_crit_edge, label %do.body10

nvkm_volt_get.exit.if.then_crit_edge:             ; preds = %nvkm_volt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %nvkm_volt_get.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i36 = phi i32 [ %retval.0.i, %nvkm_volt_get.exit.if.then_crit_edge ], [ %call4.i, %if.end.i.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.i36)
  %cmp1.not = icmp eq i32 %retval.0.i36, -19
  br i1 %cmp1.not, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %for.cond.preheader.i.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp3 = icmp ugt i32 %13, 3
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef %name) #10
  br label %cleanup

do.body10:                                        ; preds = %nvkm_volt_get.exit
  %debug12 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %18 = ptrtoint ptr %debug12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp13 = icmp ugt i32 %19, 3
  br i1 %cmp13, label %do.end17, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %device18 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %20 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device18, align 4
  %dev19 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19, align 8
  %name20 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.19, ptr noundef %name20, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.body10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_entry_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 298, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_volt_ctor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_volt_ctor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 314, i32 4}
!10 = !{ptr @nvkm_volt_ctor._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_volt_ctor._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 71, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_volt_set._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_volt_set._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 76, i32 2}
!20 = !{ptr @nvkm_volt_set._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nvkm_volt_set._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nvkm_volt, !23, !"nvkm_volt", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 276, i32 1}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 261, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nvkm_volt_oneinit._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_volt_oneinit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 247, i32 4}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nvkm_volt_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_volt_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 250, i32 2}
!36 = !{ptr @nvkm_volt_init._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nvkm_volt_init._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 197, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nvkm_volt_parse_bios._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_volt_parse_bios._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c", i32 211, i32 3}
!45 = !{ptr @nvkm_volt_parse_bios._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nvkm_volt_parse_bios._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i8 0, i8 2}
